# Example of using dictionaries/associative array/maps/etc
$example_dict = @{
    "key1" = "value1"
    "key2" = "value2"
    "key3" = "value3"
}

Write-Host $example_dict

Write-Host $example_dict["key1"]

$example_dict["key2"] = 10
$example_dict["new key"] = "new value"

Write-Host $example_dict

Write-Host $example_dict.ContainsKey("key5")

Write-Host $example_dict.Count
