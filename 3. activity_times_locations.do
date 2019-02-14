#delimit;
clear;
set more off;


use wellbeing_activity;

/*activity level variables***********************************************/
gen athome=0 if where<9997;
	replace athome=1 if where==101; //respondent's home or yard
gen atwork=0 if where<9997;
	replace atwork=1 if where==102; //respondent's work
gen atpublic=0 if where<9997;
	replace atpublic=1 if where>102 & where<9997; //not at home or work



/**********************************************************************************
basic setup for times
***********************************************************************************/

disp "running setup times";
/*flag the last activity record for each person for use below*/
gen last_act=1 if caseid!=caseid[_n+1];

/*get start/stop HH:MM from HH:MM:SS formatted time variable*/
gen _start=substr(start,1,5); 
gen _stop=substr(stop,1,5);

/*convert start/stop times to minutes*/
/*the stata egenmore package that the next commands use need to be installed
. ssc inst egenmore 

or replaced by 

. ssc inst egenmore, replace 
*/


egen _minstart=minutes(_start);
egen _minstop=minutes(_stop);

/*fix start/stop minutes so that minutes after midnight keep getting bigger instead or starting over at zero*/
gen minstart=_minstart;
	replace minstart=_minstart+1440 if _minstart>=0 & _minstart<240;

gen minstop=_minstop;
	replace minstop=_minstop+1440 if _minstop>=0 & _minstop<240;
	replace minstop=1680 if last_act==1; //the stop time for the last activity may extend beyond 4:00 a.m. (see DURATION_EXT)


/*create start/stop times for each hour of the day*/
foreach num in 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 {; //start/stop hours
	gen hour`num'start=0;
		replace hour`num'start=241 + ((`num'-4)*60); 
	gen hour`num'stop=0;
		replace hour`num'stop=241 + ((`num'-4)*60) + 59;
	};

/*make sure calculations worked correctly*/
assert hour04stop==hour04start+59;
assert hour04stop==300;
assert hour23stop==hour23start+59;
assert hour27stop==1680;
save setup_times.dta, replace;



/**********************************************************************************
create times of day: 4am-9am, 9am-2pm, 2pm-5pm, 5pm-9pm, 9pm-4am
***********************************************************************************/
disp "running create times of day";
use setup_times.dta;

local timedef1 minstop<=hour08stop; //activity ends before 9:00 a.m.
local timedef2 minstart>=hour09start & minstop<=hour14start; //activity starts at or after 9:00 a.m. and ends before 2:00 p.m.
local timedef3 minstart>=hour14start & minstop<=hour17start; //activity starts at or after 2:00 p.m. and ends before 5:00 p.m.
local timedef4 minstart>=hour17start & minstop<=hour21start; //activity starts at or after 5:00 p.m. and ends before 9:00 p.m.
local timedef5 minstart>=hour21start; //activity starts at or after 9:00 p.m.


/*how much of each activity is spent in each hour of the day?*/
foreach num in 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 {; //start/stop hours
	gen in`num'=0;
		replace in`num'=duration if minstart>=hour`num'start & minstart<=hour`num'stop & minstop<=hour`num'stop; //entire activity occurs within hour
		replace in`num'=hour`num'stop-minstart+1 if minstart>=hour`num'start & minstart<=hour`num'stop & minstop>hour`num'stop; //activity begins within hour
		replace in`num'=minstop-hour`num'start+1 if minstart<=hour`num'start & minstop<=hour`num'stop & minstop>=hour`num'start; //activity ends within hour
		replace in`num'=60 if minstart<hour`num'start & minstop>hour`num'stop;
		};


/*now assign activity into time blocks*/
gen intod1=in04+in05+in06+in07+in08;
gen intod2=in09+in10+in11+in12+in13;
gen intod3=in14+in15+in16;
gen intod4=in17+in18+in19+in20;
gen intod5=in21+in22+in23+in24+in25+in26+in27;


/*assign activities into time blocks*/
gen tod=0;
	replace tod=1 if minstop<hour09start; //activity ends before 9:00 a.m.
	replace tod=2 if minstart>=hour09start & minstop<hour14start; //activity starts at or after 9:00 a.m. and ends before 2:00 p.m.
	replace tod=3 if minstart>=hour14start & minstop<hour17start; //activity starts at or after 2:00 p.m. and ends before 5:00 p.m.
	replace tod=4 if minstart>=hour17start & minstop<hour21start; //activity starts at or after 5:00 p.m. and ends before 9:00 p.m.
	replace tod=5 if minstart>=hour21start; //activity starts at or after 9:00 p.m.

tab tod; //activities that span two time blocks need to be handled differently

/*based on assignment to time blocks, assign activity to time of day where majority occurs*/
	replace tod=1 if tod==0 & intod1>intod2 & intod1!=0 & intod2!=0;
	replace tod=2 if tod==0 & intod1<intod2 & intod1!=0 & intod2!=0;
	replace tod=2 if tod==0 & intod2>intod3 & intod2!=0 & intod3!=0;
	replace tod=3 if tod==0 & intod2<intod3 & intod2!=0 & intod3!=0;
	replace tod=3 if tod==0 & intod3>intod4 & intod3!=0 & intod4!=0;
	replace tod=4 if tod==0 & intod3<intod4 & intod3!=0 & intod4!=0;
	replace tod=4 if tod==0 & intod4>intod5 & intod4!=0 & intod5!=0;
	replace tod=5 if tod==0 & intod4<intod5 & intod4!=0 & intod5!=0;

tab tod;

gen todeq=0;
	replace todeq=1 if intod1==intod2 & intod1!=0 & intod2!=0;
	replace todeq=1 if intod2==intod3 & intod2!=0 & intod3!=0;
	replace todeq=1 if intod3==intod4 & intod3!=0 & intod4!=0;
	replace todeq=1 if intod4==intod5 & intod4!=0 & intod5!=0;

set seed 4998;
gen random=runiform() if tod==0;
gen low=0 if tod==0;
	replace low=1 if random<.5 & tod==0;

	replace low=1 if caseid==20100605100634 & actline==13;
	replace low=1 if caseid==20100706101094 & actline==8;
	replace low=0 if caseid==20101009101411 & actline==22;
	replace low=0 if caseid==20120503121823 & actline==14;
	replace low=1 if caseid==20121110120889 & actline==9;
	replace low=1 if caseid==20130201130898 & actline==13;
	replace low=0 if caseid==20130302131199 & actline==14;
	replace low=0 if caseid==20130908131330 & actline==27;
	replace low=0 if caseid==20131211130719 & actline==6;

/*assign activity randomly if occurs evenly across two time blocks*/
	replace tod=1 if intod1==intod2 & intod1!=0 & intod2!=0 & low==1;
	replace tod=2 if intod1==intod2 & intod1!=0 & intod2!=0 & low==0;
	replace tod=2 if intod2==intod3 & intod2!=0 & intod3!=0 & low==1;
	replace tod=3 if intod2==intod3 & intod2!=0 & intod3!=0 & low==0;
	replace tod=3 if intod3==intod4 & intod3!=0 & intod4!=0 & low==1;
	replace tod=4 if intod3==intod4 & intod3!=0 & intod4!=0 & low==0;
	replace tod=4 if intod4==intod5 & intod4!=0 & intod5!=0 & low==1;
	replace tod=5 if intod4==intod5 & intod4!=0 & intod5!=0 & low==0;

tab tod, gen(tod); //generate dummies 1-5 for time of day variables


drop last_act - intod5;
drop rawbwt_*;
save tod.dta, replace;
