<#
Dez-to-Hex.ps1
v1.0 / 04.09.2023 / Tori


A Converter for Decimal to Hexadecimal
#>

# Set up variables
[INT64]$number = Read-Host "Input number"
[INT64]$hex = 16
$hexnumber = "Hexadezimale Nummer: "
$count = 0

# Figuring out what the highest length the hexadecimal number can be
while($true)
{
    if($hex -gt $number){break}
    $hex = $hex * 16
}
$hex = $hex / 16

#Converting the decimal number into hexadecimal
while($true)
{
   if($hex -eq 1)
   {
        if($number -le 9) {$hexnumber = $hexnumber + $number}
        elseif($number -eq 10) {$hexnumber = $hexnumber + "A"}
        elseif($number -eq 11) {$hexnumber = $hexnumber + "B"}
        elseif($number -eq 12) {$hexnumber = $hexnumber + "C"}
        elseif($number -eq 13) {$hexnumber = $hexnumber + "D"}
        elseif($number -eq 14) {$hexnumber = $hexnumber + "E"}
        elseif($number -eq 15) {$hexnumber = $hexnumber + "F"}
        break
   }
   if($hex -le $number)
   {
        $number = $number - $hex
        $count++
   }
   else
   {
        if($count -le 9) {$hexnumber = $hexnumber + $count}
        elseif($count -eq 10) {$hexnumber = $hexnumber + "A"}
        elseif($count -eq 11) {$hexnumber = $hexnumber + "B"}
        elseif($count -eq 12) {$hexnumber = $hexnumber + "C"}
        elseif($count -eq 13) {$hexnumber = $hexnumber + "D"}
        elseif($count -eq 14) {$hexnumber = $hexnumber + "E"}
        elseif($count -eq 15) {$hexnumber = $hexnumber + "F"}

        if($hex -eq 16)
        {
            if($number -le 9) {$hexnumber = $hexnumber + $number}
            elseif($number -eq 10) {$hexnumber = $hexnumber + "A"}
            elseif($number -eq 11) {$hexnumber = $hexnumber + "B"}
            elseif($number -eq 12) {$hexnumber = $hexnumber + "C"}
            elseif($number -eq 13) {$hexnumber = $hexnumber + "D"}
            elseif($number -eq 14) {$hexnumber = $hexnumber + "E"}
            elseif($number -eq 15) {$hexnumber = $hexnumber + "F"}
            break
        }
        $count = 0
        $hex = $hex / 16
   }
}

#write the coverted number
Write-Host $hexnumber
pause