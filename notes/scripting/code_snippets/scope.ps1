# Script scope demonstration. $PI value defined in the shell outside of scripts remains unchanged.

$PI = 5
Write-Host "The value of `$PI is now $PI, inside the script"
