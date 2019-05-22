clear
set more off
#delimit cr

cd "C:\Users\jpepin\Dropbox\Repositories\ATUS_Wellbeing"
use wellbeing.dta
keep if awbwt>0 & awbwt!=.
keep if sphappy!=. & spmeaning!=. &  spstress!=. &  sptired!=. &  spsad!=.
bysort caseid (actline): gen actnum=_n

/* Change file path to where the tables should be saved */
cd "C:\Users\jpepin\Dropbox\Wellbeing\Stata Tables"

*********************************************************************************************************
/*Set the data as panel data*/
*********************************************************************************************************
xtset caseid actnum
xtdescribe

*********************************************************************************************************
/*Basic descriptives*/
*********************************************************************************************************
/*couple-types are the rows and gender is the columns. 
We want column percents with Total Ns for men and women (
want to be able to figure out how many men and women are in each couple type).
*/

tab wfa sex 					if actnum==1, col
tab wfa sex [aweight=wbwt] 		if actnum==1, col

// Well-being averages by couple-type
tabstat sphappy spmeaning spstress sptired spsad if sex ==1, by (wfa)
tabstat sphappy spmeaning spstress sptired spsad if sex ==2, by (wfa)

// ttests
foreach var in sphappy spmeaning spstress sptired spsad {
	ttest `var' if wfa!=., by(sex)
}

foreach var in sphappy spmeaning spstress sptired spsad {
	forvalues i = 1/7{
		ttest `var' if wfa==`i', by(sex)
}
}

// By marital status
tabstat sphappy spstress spmeaning sptired spsad if marr_cohab ==1, by (wfa)
tabstat sphappy spstress spmeaning sptired spsad if marr_cohab ==2, by (wfa)


*********************************************************************************************************
/* estimate random effects models */
*********************************************************************************************************
// ssc install outreg2

// Create a list of the independent variables
global demo "marr_cohab age i.numkids kidu2 i.raceth collgrad inschool"
global diary "i.year weekend i.acttype i.tod duration i.location"


// delete any previous output files
capture erase "wellbeing_rem_m1.txt"
capture erase "wellbeing_rem_m1.xml"
capture erase "wellbeing_rem_m2.txt"
capture erase "wellbeing_rem_m2.xml"
capture erase "wellbeing_rem_m3.txt"
capture erase "wellbeing_rem_m3.xml"

/// estimate models using xtreg
foreach var of varlist sphappy spmeaning spstress sptired spsad {
    xtreg `var' i.wfa i.sex , i(caseid) robust re
	outreg2 using "wellbeing_rem_m1", excel dec(2) alpha(0.001, 0.01, 0.05) addstat("sigma_u",e(sigma_u),"sigma_e",e(sigma_e),"rho",e(rho))
    xtreg `var' i.wfa##i.sex , i(caseid) robust re
	outreg2 using "wellbeing_rem_m2", excel dec(2) alpha(0.001, 0.01, 0.05) addstat("sigma_u",e(sigma_u),"sigma_e",e(sigma_e),"rho",e(rho))
    xtreg `var' i.wfa##i.sex $demo $diary, i(caseid) robust re
    estimates store `var'_m
    outreg2 using "wellbeing_rem_m3", excel dec(2) alpha(0.001, 0.01, 0.05) addstat("sigma_u",e(sigma_u),"sigma_e",e(sigma_e),"rho",e(rho))
}

// Generate predicted means by wfa & sex
foreach var in sphappy_m spmeaning_m spstress_m sptired_m spsad_m {
	estimates restore `var'
	margins i.wfa#i.sex, post
	est store pm_`var'
}

esttab pm_sphappy_m pm_spmeaning_m pm_spstress_m pm_sptired_m pm_spsad_m using "predictedmeans.csv",  ///
replace label mtitles not nostar noobs
