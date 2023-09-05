<#
Dez-to-Bin.ps1
v1.0 / 04.09.2023 / Tori


A Converter for Decimal to Binary
#>

# Set up variables
[INT64]$number = Read-Host "Input number"
[INT64]$bin = 1
$binnumber = "Binäre Nummer: "

# Figuring out what the highest length the binary number can be
while($true)
{
    $bin = $bin + $bin
    if($bin -gt $number){break}
}
$bin = $bin / 2

#Converting the decimal number into binary
while($true)
{
    if($bin -le $number)
    {
        $number = $number - $bin
        $binnumber = $binnumber.insert(15,"1")
    }
    else{$binnumber = $binnumber.insert(15,"0")}
    if($bin -eq 1){break}
    $bin = $bin / 2
}

#write the coverted number
Write-Host $binnumber
pause