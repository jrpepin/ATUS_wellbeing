clear
set more off

use wellbeing_sample.dta


*********************************************************************************************************
/// Create measures
*********************************************************************************************************
#delimit cr

cap drop	_spemp
gen 		_spemp=0
replace 	_spemp=1 if (spempstat==1 | spempstat==2) | spempnot==1
egen 		resp_sppres=min(spousepres),by(caseid)

*********************************************************************************************************
/*create work/family arrangement definitions*/
*********************************************************************************************************
cap drop 	wfa
gen 		wfa=.
/*MALE resp full-time, FEMALE sp homemaker*/
		replace wfa=1 if 					/// 
		sex==1 & 							///				/*resp is male */
		(empstat==1 | empstat==2) & 		///				/*resp is employed*/
		(uhrsworkt>=35 & uhrsworkt<=9995) & ///				/*resp works 35+ hrs*/
		(_spemp==0) & 						///				/*spouse is not employed*/
		(spusualhrs==0 | spusualhrs==999)					/*spouse works no hours*/

		replace wfa=1 if 					///	
		sex==2 & 							///				/*resp is female */
		(empstat!=1 & empstat!=2) &			///				/*resp not employed*/
		(uhrsworkt==0 | uhrsworkt==9999) &  ///				/*respondent no hours*/
		(_spemp==1) &						///				/*sp employed*/
		(spusualhrs>=35 & spusualhrs<995)  					/*sp works 35+ hrs*/

		
/*FEMALE resp full-time, MALE sp homemaker*/
		replace wfa=2 if 					///
		sex==1	&							///				/*resp is male */
		(empstat!=1 & empstat!=2) &			///				/*resp not employed*/
		(uhrsworkt==0 | uhrsworkt==9999) &  ///				/*respondent no hours*/
		(_spemp==1) &						///				/*sp employed*/
		(spusualhrs>=35 & spusualhrs<995)   				/*sp works 35+ hrs*/

		replace wfa=2 if 					/// 
		sex==2 & 							///				/*resp is female */
		(empstat==1 | empstat==2) & 		///				/*resp is employed*/
		(uhrsworkt>=35 & uhrsworkt<=9995) & ///				/*resp works 35+ hrs*/
		(_spemp==0) & 						///				/*spouse is not employed*/
		(spusualhrs==0 | spusualhrs==999)   				/*spouse works no hours*/
		
/*Dual earners*/
		replace wfa=3 if 					///				
		(empstat==1 | empstat==2) & 		///				/*resp employed*/
		(uhrsworkt>=35 & uhrsworkt<=9995) & ///				/* resp works 35+hrs*/
		(_spemp==1) & 						///				/*sp works*/
		(spusualhrs>=35 & spusualhrs<=995)					/*sp works 35+ hrs*/
		
/*MALE full-time FEMALE sp part-time*/
		replace wfa=4 if 					///				
		sex==1	&							///				/*resp is male */
		(empstat==1 | empstat==2) & 		///				/*resp employed*/
		(uhrsworkt>35 | uhrsworkt<=9995) & 	///				/*resp works 35+hrs*/
		(_spemp==1) & 						///				/*sp employed*/
		(spusualhrs>=0 & spusualhrs<35) | spusualhrs==995  ///	/*sp hrs < 35 */


		replace wfa=4 if 					///				
		sex==2	& 							///				/*resp is female */
		(empstat==1 | empstat==2) & 		///				/*resp employed*/
		(uhrsworkt<=35 | uhrsworkt>=9995) & ///				/*resp hrs < 35*/
		(_spemp==1) & 						///				/*sp employed*/
		(spusualhrs>=35 & spusualhrs<995)	///				/*sp works 35+ hrs*/


/*FEMALE full-time MALE resp part-time*/
		replace wfa=5 if 					///				
		sex==1 & 							///				/*resp is male */ 
		(empstat==1 | empstat==2) & 		///				/*resp employed*/
		(uhrsworkt<=35 | uhrsworkt>=9995) & ///				/*resp hrs < 35*/
		(_spemp==1) & 						///				/*sp employed*/
		(spusualhrs>=35 & spusualhrs<995)	///				/*sp works 35+ hrs*/

		
		replace wfa=5 if 					///				
		sex==2 & 							///				/*resp is female */
		(empstat==1 | empstat==2) & 		///				/*resp employed*/
		(uhrsworkt>35 | uhrsworkt<=9995) & 	///				/*resp works 35+hrs*/
		(_spemp==1) & 						///				/*sp employed*/
		(spusualhrs>=0 & spusualhrs<35) | spusualhrs==995  ///	/*sp hrs < 35 */

		
/*neither works*/
		replace wfa=6 if 					///	
		(empstat!=1 & empstat!=2) & 		///				/*respondent not employed*/
		((_spemp==0)| (_spemp==1 & spusualhrs==999))  		/*spouse not employed*/


/*both work <35 hrs*/
		replace wfa=7 if 					///				
		(empstat==1 | empstat==2) & 		///				/*resp is employed*/
		(uhrsworkt<35 | uhrsworkt>=9995) &  ///				/*respondent works <35 hrs or varies*/
		((_spemp==1) & (spusualhrs<35 | spusualhrs==995)) 	/*spouse employed & sp works <35 hrs or varies*/

/* Other */
		replace wfa=7 if wfa==.

		label variable wfa "empstat & hrs definition"
		label define wfal 	1 "Male breadwinner/Sp homemaker"   2 "Female breadwinner/SP homemaker" 3 "dual-earners" ///
							4 "Male full-time/Female part-time" 5 "Female full-time/Male part-time" 6 "neither works" ///
							7 "Other"
		label values wfa wfal

// dummy wfa variables
tab 	wfa, 		gen(wfa)
rename	wfa1 		mbw
rename	wfa2 		wbw
rename	wfa3 		dual
rename	wfa4 		mneo
rename	wfa5 		wneo
rename	wfa6 		neither
rename	wfa7 		otherwfa

		
*********************************************************************************************************
/*create well-being measures*/
*********************************************************************************************************
/*create a count of the number of wb activites per person*/
	gen wb_act=1 if awbwt!=. & awbwt>0
	egen wb_count=sum(wb_act==1), by(caseid)
	gen wb_max=(wb_count==3)
	
// address NIU & missing
replace schappy=. 	if schappy>=96
replace scstress=. 	if scstress>=96
replace meaning=.	if meaning>=96
replace sctired=. 	if sctired>=96
replace scsad=.		if scsad>=96

cap drop sphappy
gen sphappy		= schappy 	if spwell==1
cap drop spstress
gen spstress	= scstress 	if spwell==1
cap drop spmeaning
gen spmeaning	= meaning 	if spwell==1
cap drop sptired
gen sptired 	= sctired 	if spwell==1
cap drop spsad
gen	spsad		= scsad		if spwell==1


*********************************************************************************************************
/*create demographic measures*/
*********************************************************************************************************
#delimit;

gen marr_cohab=spousepres;
	replace marr_cohab=. if spousepres>=3;

	lab def marr_cohab_lb 1 "married" 2 "cohab";
	lab values marr_cohab marr_cohab_lb;


/*10 year age categories*/
gen age2=0;
	replace age2=1 if age<30;
	replace age2=2 if age>=30 & age<40;
	replace age2=3 if age>=40 & age<50;
	replace age2=4 if age>=50 & age<60;
	replace age2=5 if age>=60;

	label define age_lb 1 "Less 30" 2 "30-39" 3 "40-49" 4 "50-59" 5 "60 and over";
	label values age2 age_lb;

gen income=9;
	replace income=1 if famincome <= 7;
	replace income=2 if famincome >=8 & famincome<=11;
	replace income=3 if famincome >=12 & famincome<=13;
	replace income=4 if famincome >=14 & famincome <=15;
	replace income=5 if famincome==16;

	lab def inc_lb 1 "Less than 25" 2 "25-49999" 3 "50-74999" 4 "75-149999" 5 "150 and over" 9 "missing";
	lab values income inc_lb;

gen collgrad=0;
	replace collgrad=1 if educ>=40 & educ<999;
	lab var collgrad "college graduate";
	label values collgrad dummyl;

gen inschool=0 if schlcoll==1 | schlcoll==99; /*only available for those 15-49!*/
	replace inschool=1 if schlcoll>=2 & schlcoll<=5;
	lab var inschool "currently in school";
	label values inschool dummyl;

gen weekend=0;
	replace weekend=1 if day==1 | day==7;
	label values weekend dummyl;
	


/*generally I use white black hisp other in models*/

gen hisp=1 if hispan>=200;
	replace hisp=0 if hispan==100;

gen white = (race==100 & hispan==100);
gen black = (race==110 & hispan==100);
gen aian  =(race==120 & hispan==100);
gen asian = (race>=130 & race<140 & hispan==100);
gen mixed_race = (race>=200 & race<600 & hispan==100);
gen other = (aian==1 | asian==1 | mixed_race==1 /*| hisp==1*/) & (white==0 & black==0 & hisp==0);

/* Parent variables */
cap drop 	kidu2
gen 		kidu2 = 0
replace 	kidu2 = 1 if ageychild <= 2

/* Number of kids */
gen hh_numkids 	= numkids

*********************************************************************************************************
/*create activity categories*/
*********************************************************************************************************
#delimit; 
local mwcodes 
(activity>=050000 & activity<060000) | /*paid work*/
(activity>=180500 & activity<180600) /*travel related to paid work*/;

local mwlabel "Mareket work";

local cwcodes
(activity>=030000 & activity<050000) | /*hh & non-hh care*/
(activity>=180300 & activity<180500)   /*travel related to care work*/;
local cwlabel "A&H: care work";

local nmcodes
(activity>=020000 & activity<020903) | /*hh tasks 1*/
(activity>020904 & activity<030000)  | /*hh tasks 2*/
(activity>=180200 & activity<180300) | /*travel hh tasks*/
(activity>=070000 & activity<080000) | /*goods 1*/
(activity>=180700 & activity<180800)   /*travel goods 1*/;
local nmlabel "A&H: non-market work";

local lecodes
(activity>=080000 & activity<110000) | /*goods 2*/
(activity>180800 & activity<181100)  | /*travel goods 2*/
(activity>=110000 & activity<140000) | /*eating, socializing, sports*/
(activity>=181100 & activity<181400) | /*travel related to eating, socializing, sports*/
(activity>=160000 & activity<170000) | /*phone calls*/
(activity>=181600 & activity<181700) | /*travel related to phone calls*/
(activity>=020903 & activity<=020904)| /*hh/pers mail/email*/
(activity>=010101 & activity<010103) | /*sleeping & personal care 1*/
(activity>=010301 & activity<020000) | /*sleeping & personal care 2*/
(activity>=180100 & activity<180200) | /*travel related to personal care*/
(activity>=060000 & activity<070000) | /*education*/
(activity>=180600 & activity<180700) | /*ed travel*/
(activity>=140000 & activity<160000) | /*relig, civic*/
(activity>=181400 & activity<181600) | /*relig, civic travel*/
(activity>=010300 & activity<010400) | /*health self care*/
(activity>=080400 & activity<080500) | /*med svcs*/
(activity==180804)                   | /*travel med svcs*/
(activity>=500000 & activity<600000) | /*unable to code*/
(activity>=181800 & activity<190000) /*security rel to travel, other travel*/;
local lelabel "A&H: leisure";

/*create dichotomous indicators of activity & childcare groupings*/
foreach x in mw cw nm le {;
    gen act`x'=0;
        replace act`x'=1 if ``x'codes';
        label variable act`x' "``x'label' (yes/no)";
    };

gen acttype=1 if actmw==1;
    replace acttype=2 if actcw==1;
    replace acttype=3 if actnm==1;
    replace acttype=4 if actle==1;

    label define acttypel 1 "market work" 2 "care work" 3 "nonmarket work" 4 "leisure";
    label values acttype acttypel;

#delimit cr

save wellbeing.dta, replace

