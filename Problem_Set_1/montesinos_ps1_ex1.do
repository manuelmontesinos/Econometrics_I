** Econometrics I
*  Manuel V. Montesinos
*  PS #1: Exercise 1 d-e)
********************************************************************************
clear all

cd "write your path"

* Import data saved in Exercise 1 c)
insheet using dataex1_ps1.csv

* Write names and labels for the variables
rename v1 price
rename v2 year
rename v3 km
rename v4 epsilon

label var price "Price"
label var year "Year of design"
label var km "Kilometers ran"
label var epsilon "Error term"

* Estimate model by OLS
reg price year km

* Hypothesis test
test 20*km = 2*year

* The null hypothesis must be rejected

* The results of the exercise in Stata coincide with the ones in Matlab

********************************************************************************
