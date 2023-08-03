# Script that looks though the log files in $directoryPath, extracts error messages from them
# and stores them in archived LEE_output.log.gz file

$directoryPath = "/home/taras/logs"
$output_file = "LEE_output.log"

if (Test-Path -Path $directoryPath -PathType Container) {
    Write-Host "Logs directory found."
} else {
    Write-Host "Log directory does not exist. Terminating."
    exit 1
}

$target_files = Get-ChildItem -Path $directoryPath -Filter "*.log"

if (Test-Path -Path $output_file -PathType Leaf) {
    Remove-Item -Path $output_file
    Write-Host "Removed existing LEE_output.log file."
}

foreach ($file in $target_files) {
    Write-Host "Now processing: $file"

    foreach ($line in $(Get-Content -Path $file)) {
        if ($line | Select-String -Pattern "ERROR" -Quiet) {
            Add-Content -Path $output_file -Value $line
        }
    }
}

if (Test-Path -Path "$output_file.gz" -PathType Leaf) {
    Remove-Item -Path "$output_file.gz"
    Write-Host "Removed existing LEE_output.log.gz file."
}

Write-Host "Archiving $output_file"
Compress-Archive -Path $output_file -DestinationPath "$output_file.gz"
