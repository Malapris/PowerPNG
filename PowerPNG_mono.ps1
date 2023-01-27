param(
[string]$folder
)

$pngquant = ".\pngquant.exe"
$initialSize = 0
$finalSize = 0

$files = Get-ChildItem -Path $folder -Recurse -Filter "*.png"
$total = $files.Count
$count = 0

$files | ForEach-Object {
    $count++
    #Write-Host "Compressing $($count)/$($total) $($_.Name)..."
	$initialSize += $_.Length
    & $pngquant  --skip-if-larger --force --speed=1 $_.FullName -o $_.FullName
	$finalSize += (Get-Item $_.FullName).Length
	
    $percent = ($count / $total) * 100
    Write-Progress -Activity "Compressing PNG files" -Status "$($count)/$($total) $($_.Name)" -PercentComplete $percent
}

$gain = ($initialSize - $finalSize) / 1MB
Write-Host ""
Write-Host "Total GAIN: $($gain) MB"