** Econometrics I
*  Manuel V. Montesinos
*  PS #1: Exercise 2
********************************************************************************
clear all

cd "write your path"

** Import data to do the exercise
use caltest

** Write labels for the variables
label var observat "Observations"
label var dist_cod "District code"
label var county "County"
label var district "District"
label var gr_span "Grade span of district"
label var enrl_tot "Total enrollment"
label var teachers "Number of teachers"
label var calw_pct "Percentage qualifying for CALWORKS"
label var meal_pct "Percentage qualifying for reduced-price lunch"
label var computer "Number of computers"
label var testscr "Average test score"
label var comp_stu "Computers per student"
label var expn_stu "Expenditures per student"
label var str "Student-teacher ratio"
label var avginc "District average income"
label var el_pct "Percentage of English learners"
label var read_scr "Average Reading Score"
label var math_scr "Average Math Score"

********************************************************************************
** Exercise 2 a)

reg testscr str

/*
In this simple linear regression model, the estimate for the coefficient of
the student-teacher ratio suggests that a rise in the level of this variable
causes a decrease in the average test score. Namely, the effect of an increase
in one standard deviation of the student-teacher ratio is a drop of 2.28 points
in the average test score. According to the p-value, this effect is significant
at a 1% significance level. Meanwhile, the R-squared  is very low, implying
that only a 5% of the variability of the dependent variable can be attributed to
the variation in the explanatory variable.
*/

********************************************************************************
** Exercise 2 b)
reg testscr str el_pct meal_pct

/*
After the inclusion of the percentage of English learners and the percentage of
eligible students for subsidized lunch, the influence of the student-teacher
ratio on the dependent variable has decreased. In this case, the marginal effect
of this variable is a drop of 1 point in the average test score. The standard
error of this estimate is also lower in this model.

The other two regressors also have a negative impact on the average test score.
The effect of an increase in one standard deviation in the percentage of English
learners is a decrease in 0.12 points in the average test score, while for the
rise in the percentage of eligible students for subsidized meals that effect is
-0.55 points. All these results are significant at a 1% significance level.

As evidenced by the R-squared, the explanatory power of the model has risen with
respect to the previous section.
*/

********************************************************************************
** Exercise 2 c)
reg testscr str el_pct calw_pct

/*
After the substitution of the percentage of students eligible for subsidized
lunch by the percentage of students on public income assistance, the sign of all
the coefficients of the model remains being negative and significant at a 1%
significance level, but their magnitude has changed. In fact, the influence of
the student-teacher ratio has increased again with respect to the previous model
(marginal effect of -1.3), and the same has happened with the percentage of
English learners (marginal effect of -0.79). At the same time, the standard
errors of both variables are greater in this model.

The explanatory power is lower than in the model of section b). Now, the model
can explain a 62.9% of the variability of the dependent variable.
*/

********************************************************************************
** Exercise 2 d)
reg testscr str el_pct calw_pct meal_pct

/*
Comparing this model with the one in section c), we see that the sign of all the
coefficients remains being negative, but there is much variation in their
levels, since the marginal effect of the percentage of eligible students for
subsidized lunch becomes the second largest (-0.52). Moreover, now the estimate
of the coefficient of the percentage of students on public income assistance is
not significant at a 10% significance level. Except for the student-ratio test,
the standard errors of the coefficient estimates have increased.

Finally, under this specification, the model has won explanatory power in terms
of variability (R-squared of 0.78 and adjusted R-squared of 0.77 against 0.63 in
the model of the previous section).
*/

********************************************************************************
