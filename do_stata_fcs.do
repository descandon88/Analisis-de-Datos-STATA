******OPCIÃ“N 2***********
***Ejercicio 1"
use "P1_2019.dta", clear
***c)FusiÃ³n"
merge 1:1 NUMERO NPER using "P2_2019.dta"
tabulate _merge

***d)***


**Renombre de variable y Etiqueta de la variable y sus valores
rename E26 sexo

**label var sexo "sexo"

label define sexo 0 "Hombre" 1 "Mujer"

tabulate sexo generate(dummy)
rename E27 edad

label var edad "edad"

generate edadg = 1 if edad <= 15

replace edadg= 2 if edad >= 15 & edad <= 59

replace edadg = 3 if edad >= 60

***f***
generate edadg = 1 if edad <= 15

replace edadg= 2 if edad >= 15 & edad <= 59

replace edadg = 3 if edad >=60
