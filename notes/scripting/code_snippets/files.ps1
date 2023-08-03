# File manipulation example

# If the copy directory doesn't exist make one
if (!(Test-Path -Path "copy" )) {
    New-Item -ItemType Directory -Path "copy"
}

# Read in the original file names from this file
$file_path = "main_input.txt"

# Read the file line by line using a loop
foreach ($file in Get-Content -Path $file_path -ReadCount 1) {
    Write-Host "About to copy $file file."

    # Process each file here

    # If copy file already exists, delete it
    if ((Test-Path -Path "copy/$file" )) {
        rm "copy/$file"
    }

    # Create a new empty copy file
    New-Item -ItemType File -Path "copy/$file"

    # Copy over the contents of the original file line by line
    foreach ($line in Get-Content -Path $file -ReadCount 1) {
        Write-Host $line

        $line | Out-File -Append -FilePath "copy/$file"
    }
}
