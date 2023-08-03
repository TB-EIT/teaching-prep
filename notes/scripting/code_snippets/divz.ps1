# Exception handling example
$v1 = 54582745071645071465071645074650714651874123764523465923645
$v2 = 0

Try {
   Write-Host "$($v1 / $v2)"
}
Catch {
   Write-Host "Some error happen. Did you try to divide by zero?"
}
Finally {
   Write-Host "Tried dividing $v1 by $v2. See the result above."
}
