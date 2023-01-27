param(
[string]$folder,
[int]$threads
)

#pngquant in same dir as script
$pngquant=(Split-Path $MyInvocation.MyCommand.Path -Parent)+"\pngquant.exe"

$initialSize = [int]0
$finalSize = [int]0

#clear screen
#Get-Variable true | Out-Default; Clear-Host;
Write-Host "Analyzing : $($folder)"

$files = Get-ChildItem -Path $folder -Recurse -Filter "*.png"
$total = $files.Count
$count = 0
$initialSize = [int](( $files | Measure-Object -Property Length -Sum ).Sum /1Mb)

Write-Host "Total     : $($total) PNG files using $($initialSize) Mb"

$jobs = @()

foreach ($file in $files) {
    $job = Start-Job -ScriptBlock {
        param($file, $pngquant)
		#Write-Host "$($file.FullName)" 
		& $pngquant  --skip-if-larger --force --speed 1  "$($file.FullName)" -o "$($file.FullName)"
    } -ArgumentList $file, $pngquant
    $jobs += $job
    if ($jobs.Count -eq $threads) {
		#Get-Variable true | Out-Default; Clear-Host;
		Wait-Job -Job $jobs | Out-Null
        Receive-Job -Job $jobs
        $count += $jobs.Count
        $percent = ($count / $total) * 100
        Write-Progress -Activity "Compressing PNG with $($jobs.Count) threads : $($file.FullName)" -Status "$($count)/$($total)" -PercentComplete $percent
        $jobs = @()
    }
}

if ($jobs.Count -gt 0) {
	#Get-Variable true | Out-Default; Clear-Host;
	Wait-Job -Job $jobs -Timeout 30 | Out-Null
    Receive-Job -Job $jobs
    $count += $jobs.Count
    $percent = ($count / $total) * 100
    Write-Progress -Activity "Compressing PNG with $($jobs.Count) threads : $($file.FullName)" -Status "$($count)/$($total)" -PercentComplete $percent
}

 Write-Host "Done !"
# Start-Sleep -Seconds 2.0

$files = Get-ChildItem -Path $folder -Recurse -Filter "*.png"
$finalSize = [int](( $files | Measure-Object -Property Length -Sum ).Sum /1Mb)
$gain = [int]($initialSize - $finalSize)
$pc=[int]( ($gain/$initialSize+0.0000000000000001)*100 )

Write-Host "Total Size after re-compression : $($finalSize) Mb."
Write-Host "Gain : $($gain)MB ($($pc)%)."

