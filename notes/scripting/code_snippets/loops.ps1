# Using loops example.

$array = 1, 2, 3, 4, 5

foreach ($item in $array) {
    Write-Host "Element: $item"
}

$array | ForEach-Object {
    Write-Host "Element: $_"
}

$dictionary = @{
    "key1" = "value1"
    "key2" = "value2"
    "key3" = "value3"
}

foreach ($key in $dictionary.Keys) {
    $value = $dictionary[$key]
    Write-Host "Key: $key, Value: $value"
}
