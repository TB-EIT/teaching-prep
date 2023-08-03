# Using lists example

$other_name = 1, 2, 3, 4, 5

Write-Host $other_name

$other_name[2] = 30

Write-Host $other_name[2]

$other_name += 4

$array = 5, 6
$other_name += $array

Write-Host $other_name.Length
