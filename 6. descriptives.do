clear
set more off
#delimit cr

cd "C:\Users\Joanna\Dropbox\Repositories\ATUS_Wellbeing"
use wellbeing.dta

/* Change file path to where the tables should be saved */
cd "C:\Users\Joanna\Dropbox\Wellbeing\Stata Tables"

*********************************************************************************************************
/*Set the data as panel data*/
*********************************************************************************************************
xtset caseid actline /* is actline the time variable? */
xtdescribe

*********************************************************************************************************
/*Basic descriptives*/
*********************************************************************************************************
/*couple-types are the rows and gender is the columns. 
We want column percents with Total Ns for men and women (
want to be able to figure out how many men and women are in each couple type).
*/
tab wfa sex 				if actline==1, col
tab wfa sex [aweight=wt06] 	if actline==1, col // Do we use the weights? Which ones?

// Well-being averages by couple-type
tabstat sphappy spmeaning spstress sptired spsad if sex ==1, by (wfa)
tabstat sphappy spmeaning spstress sptired spsad if sex ==2, by (wfa)

ttest sphappy if wfa!=., by(sex)
ttest sphappy if wfa==1, by(sex)
ttest sphappy if wfa==2, by(sex)
ttest sphappy if wfa==3, by(sex)
ttest sphappy if wfa==4, by(sex)
ttest sphappy if wfa==5, by(sex)
ttest sphappy if wfa==6, by(sex)
ttest sphappy if wfa==7, by(sex)

ttest spmeaning if wfa!=., by(sex)
ttest spmeaning if wfa==1, by(sex)
ttest spmeaning if wfa==2, by(sex)
ttest spmeaning if wfa==3, by(sex)
ttest spmeaning if wfa==4, by(sex)
ttest spmeaning if wfa==5, by(sex)
ttest spmeaning if wfa==6, by(sex)
ttest spmeaning if wfa==7, by(sex)

ttest spstress if wfa!=., by(sex)
ttest spstress if wfa==1, by(sex)
ttest spstress if wfa==2, by(sex)
ttest spstress if wfa==3, by(sex)
ttest spstress if wfa==4, by(sex)
ttest spstress if wfa==5, by(sex)
ttest spstress if wfa==6, by(sex)
ttest spstress if wfa==7, by(sex)

ttest sptired if wfa!=., by(sex)
ttest sptired if wfa==1, by(sex)
ttest sptired if wfa==2, by(sex)
ttest sptired if wfa==3, by(sex)
ttest sptired if wfa==4, by(sex)
ttest sptired if wfa==5, by(sex)
ttest sptired if wfa==6, by(sex)
ttest sptired if wfa==7, by(sex)

ttest spsad if wfa!=., by(sex)
ttest spsad if wfa==1, by(sex)
ttest spsad if wfa==2, by(sex)
ttest spsad if wfa==3, by(sex)
ttest spsad if wfa==4, by(sex)
ttest spsad if wfa==5, by(sex)
ttest spsad if wfa==6, by(sex)
ttest spsad if wfa==7, by(sex)

tabstat sphappy spstress spmeaning sptired spsad if spousepres ==1, by (wfa)
tabstat sphappy spstress spmeaning sptired spsad if spousepres ==2, by (wfa)


*********************************************************************************************************
/* estimate random effects models */
*********************************************************************************************************
// ssc install outreg2
/* 
marital status (cohabiting or married), age (in years), number of children (none, one, two, or more), 
presence of a child under the age of two, race/ethnicity (non-Hispanic White, non-Hispanic black, Hispanic, other), 
family income (under $25,000; $25,000 to $99,000; $100,000 or more; and missing information on income), 
whether the respondent was a college graduate, and whether the respondent was enrolled in school. */

/// START HERE -- CHECK RACE VARIABLES AND ADD OTHER IV TO MODEL 

// Create a list of the independent variables
global ivars "marr_cohab age i.numkids kidu2 black hisp other weekend"

// delete any previous output files
capture erase "wellbeing_rem.txt"
capture erase "wellbeing_rem.xml"

/// estimate models using xtreg
foreach var of varlist sphappy spmeaning spstress sptired spsad {
    xtreg `var' i.wfa##i.sex $ivars, i(caseid) robust re
    estimates store `var'_m
    outreg2 using "wellbeing_rem", excel dec(2) addstat("sigma_u",e(sigma_u),"sigma_e",e(sigma_e),"rho",e(rho))
}

// Generate predicted means by wfa & sex
estimates restore sphappy_m
margins i.wfa#i.sex, post
est store happy_pm

estimates restore spmeaning_m
margins i.wfa#i.sex, post
est store meaning_pm

estimates restore spstress_m
margins i.wfa#i.sex, post
est store stress_pm

estimates restore sptired_m
margins i.wfa#i.sex, post
est store tired_pm

estimates restore spsad_m
margins i.wfa#i.sex, post
est store sad_pm

esttab happy_pm meaning_pm stress_pm tired_pm sad_pm using "predictedmeans.csv",  replace label mtitles not nostar noobs
