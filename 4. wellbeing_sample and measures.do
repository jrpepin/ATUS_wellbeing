clear
set more off

use "wellbeing_who", clear

*********************************************************************************************************
/// Define types of people respondents might be with during activities
*********************************************************************************************************;
#delimit ;
/*adults*/
local sp relatew==200 | relatew==201; //spouse or partner
local othad (relatew>=202 & relatew<=210 & age>=18) | relatew==400 | (relatew>=402 & relatew<=405) | (relatew>=407 & relatew<=411) | (agew>=18 & agew<9996 & relatew>=9996); /*include adult children here 03.24.15*/
local anyad (`sp') | (`othad'); /*add 2.10.15 -- indicator of adult presence during activity*/
local work relatew>=408 & relatew<=411; /*add 03.25.15: with work colleagues*/

/*own children*/
local ykid relatew==202 & agew<18;
local okid relatew==202 & agew>=18;
local nrkid relatew==300; //non-residential children identified only if they're under 18

/*other child*/
local othch (relatew>=203 & relatew<=210 & age<18) | relatew==401 | relatew==406; //hh members <18 & non-hh fam < 18 & non-hh ch < 18
local othnork relatew>=203 & relatew<=210 & age<18; /*non-own residential kids <18*/
local othnonrk relatew==401 | relatew==406; /*non-own non-residential kids<18*/
local nokid relatew==200 | relatew==201 | relatew==400 | (relatew>=402 & relatew<=405) | (relatew>=407 & relatew<=411) | relatew==100 | (age>=18 & agew<=85);
local genkid (agew<18 & relatew!=200 & relatew!=201 & relatew!=100) | relatew==300 | relatew==401 | relatew==406;

/*miscellaneous*/
local self relatew==100;
local othg relatew!=200 /*spouse*/ & relatew!=201 /*partner*/ & relatew!=202 /*own hh child*/ & relatew!=100 & relatew<9996;
local miss relatew>=9996 & relatew<=9998;

*********************************************************************************************************
/// Create summary variables of types of people respondents might be with during activities
*********************************************************************************************************;
/*assign attributes of each who record that belongs to an activity to the rest of the who records
that also belong to that activity. essentially--flag each who record as having a type of person (0/1).
then, find the max value for each type of person variable among the who records that belong to an 
activity and assign the max value to each who record that belongs to an activity.*/

foreach x in ykid okid nrkid sp othad othch othnork othnonrk nokid genkid self anyad work othg {;
	disp "...`x'";
	gen _w`x'=0;
		replace _w`x'=1 if ``x'';
		label variable _w`x' "flag";
	egen w`x'=max(_w`x'), by(caseid actlinew);
		label variable w`x' `l`x'';
	};

	
#delimit cr
egen maxrelatew=max(relatew), by(caseid actline)

	
*********************************************************************************************************
/// Combo variables using those that have just been created
*********************************************************************************************************
/* only spouse/partner */
cap drop sponly
gen		 sponly = 0
replace  sponly = 1 if	  ///
		(wsp	==1 	& ///
		wothad	==0		& ///
		wwork	==0		& ///
		wykid	==0 	& ///
		wokid	==0  	& ///
		wnrkid	==0 	& ///
		wothch	==0 )
label variable sponly "only with spouse/partner"

/* spouse/partner & HH kids < 18*/
cap drop spkids
gen		 spkids = 0
replace  spkids = 1 if	  ///
		(wsp	==1 	& ///
		wykid	==1 	& ///
		wothad	==0		& ///
		wwork	==0		& ///
		wokid	==0  	& ///
		wnrkid	==0 	& ///
		wothch	==0 )
label variable spkids "Spouse/partner & HH kids <18"


/* spouse/partner & other adults*/
cap drop spadul
gen		 spadul = 0
replace  spadul = 1 if	  ///
		(wsp	==1 	& ///
		wothad	==1		& ///
		wykid	==0 	& ///
		wwork	==0		& ///
		wokid	==0  	& ///
		wnrkid	==0 	& ///
		wothch	==0 )
label variable spadul "Spouse/partner & other adults"


gen walone=(maxrelatew==100)


sort caseid actlinew

keep if wholine==1 //need only one who record per activity to merge with activity record
drop pernum lineno activity actline interact rectype wholine year relatewu agew sexw
rename actlinew actline
drop _*

save wellbeing_who_r1.dta, replace

*********************************************************************************************************
/// Merge activity and who data
*********************************************************************************************************
use "wellbeing_activity", clear
sort caseid actline

merge 1:1 caseid actline using "wellbeing_who_r1.dta"
tab _merge
drop _merge

*********************************************************************************************************
/// Create sample selection 
*********************************************************************************************************
count if actline ==1 // 37,088

/* We limit our sample to respondents with a spouse or partner who lives in the household at the time of the 
ATUS interview, aged 18-54 to focus on adults in prime work and family life stages, and who reported subjective 
well-being measures for an activity conducted with a spouse or partner, resulting in a final sample of 
XX,XXX men and women and XX,XXX activities. 
*/

// Spouse or partner present
keep if spousepres !=3
count if actline ==1 // 19,065

// Different-sex partner
drop if sex == spsex
count if actline ==1 // 18,935

// Ages 18-54
keep if age >=18 & age <=54 
count if actline ==1 // 12,554

// Well-being w/ spouse or partner
cap drop spwell
egen spwell = max(wsp == 1 & (schappy <=6 & scstress <=6 & meaning <=6)), by(caseid actline)
egen ok 	= max(spwell == 1), by(caseid)
keep if ok 	==1
count if actline ==1 //  7,383 people
count if spwell ==1  // 13,034 activities

save wellbeing_sample.dta, replace

merge 1:1 caseid actline using tod

keep if _merge==3

save,replace