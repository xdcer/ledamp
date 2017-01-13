$regfile = "attiny13.dat"
$crystal = 9600000
$hwstack = 24
$swstack = 8
$framesize = 24

Config Portb = Input
Portb = 0
Config Adc = Single , Prescaler = Auto , Reference = Avcc
Start Adc
Dim X As Byte
Do
X = Getadc(3)

Select Case X

Case 1 To 40
 Ddrb = 00000011
Portb = 00000001
Case 41 To 80
 Ddrb = 00000011
Portb = 00000010
Case 81 To 120
 Ddrb = 00000101
Portb = 00000100
Case 121 To 160
 Ddrb = 00000101
Portb = 00000001
Case 161 To 200
 Ddrb = 00000110
Portb = 00000100
Case 201 To 255
 Ddrb = 00000110
Portb = 00000010
End Select





' Ddrb = 00000111
'Portb = 00000100
'  Waitms 200
' Ddrb = 00000111
'Portb = 00000001
'  Waitms 200
Loop