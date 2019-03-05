* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

cd "C:\Users\Joanna\Dropbox\Repositories\ATUS_Wellbeing"

set more off

clear
quietly infix                     ///
  byte    rectype        1-1      ///
  long    year           2-6      ///
  double  caseid         7-20     ///
  int     famincome      21-23    ///
  byte    hh_numkids     24-25    ///
  int     ageychild      26-28    ///
  byte    pernum         29-30    ///
  int     lineno         31-33    ///
  int     lineno_cps8    34-36    ///
  byte    day            37-38    ///
  double  wt06           39-55    ///
  int     age            56-58    ///
  byte    sex            59-60    ///
  int     race           61-64    ///
  int     hispan         65-68    ///
  byte    marst          69-70    ///
  int     relate         71-73    ///
  int     educ           74-76    ///
  int     educyrs        77-79    ///
  byte    schlcoll       80-81    ///
  byte    empstat        82-83    ///
  byte    fullpart       84-85    ///
  int     uhrsworkt      86-89    ///
  int     uhrswork1      90-92    ///
  int     uhrswork2      93-95    ///
  byte    spousepres     96-97    ///
  int     spage          98-100   ///
  int     spsex          101-103  ///
  byte    spempnot       104-105  ///
  byte    spempstat      106-107  ///
  int     spusualhrs     108-110  ///
  byte    hh_numownkids  111-112  ///
  byte    kidund1        113-114  ///
  byte    kid1to2        115-116  ///
  double  wbwt           117-131  ///
  int     age_sp         132-134  ///
  byte    sex_sp         135-136  ///
  int     race_sp        137-140  ///
  int     hispan_sp      141-144  ///
  int     educ_sp        145-147  ///
  int     educyrs_sp     148-150  ///
  byte    empstat_sp     151-152  ///
  int     uhrsworkt_sp   153-156  ///
  byte    actline        157-158  ///
  long    activity       159-164  ///
  int     where          165-168  ///
  int     duration       169-172  ///
  str     start          173-180  ///
  str     stop           181-188  ///
  byte    scpain         189-190  ///
  byte    schappy        191-192  ///
  byte    scsad          193-194  ///
  byte    sctired        195-196  ///
  byte    scstress       197-198  ///
  byte    interact       199-200  ///
  byte    meaning        201-202  ///
  byte    osad           203-204  ///
  byte    ohappy         205-206  ///
  byte    opain          207-208  ///
  byte    otired         209-210  ///
  byte    ostress        211-212  ///
  byte    wbelig         213-213  ///
  double  awbwt          214-228  ///
  using `"atus_00029.dat"'

replace wbwt          = wbwt          / 1000000
replace awbwt         = awbwt         / 1000000

format caseid        %14.0g
format wt06          %17.0g
format wbwt          %15.6f
format awbwt         %15.6f

label var rectype       `"Record Type"'
label var year          `"Survey year"'
label var caseid        `"ATUS Case ID"'
label var famincome     `"Family income"'
label var hh_numkids    `"Number of children under 18 in household"'
label var ageychild     `"Age of youngest household child"'
label var pernum        `"Person number (general)"'
label var lineno        `"Person line number"'
label var lineno_cps8   `"Person line number (CPS)"'
label var day           `"ATUS interview day of the week"'
label var wt06          `"Person weight, 2006 methodology"'
label var age           `"Age"'
label var sex           `"Sex"'
label var race          `"Race"'
label var hispan        `"Hispanic origin"'
label var marst         `"Marital status"'
label var relate        `"Relationship to ATUS respondent"'
label var educ          `"Highest level of school completed"'
label var educyrs       `"Years of education"'
label var schlcoll      `"Enrollment in school or college"'
label var empstat       `"Labor force status"'
label var fullpart      `"Full time/part time employment status"'
label var uhrsworkt     `"Hours usually worked per week"'
label var uhrswork1     `"Hours usually worked per week at main job"'
label var uhrswork2     `"Hours usually worked per week at other jobs"'
label var spousepres    `"Spouse or unmarried partner in household"'
label var spage         `"Age (spouse or partner)"'
label var spsex         `"Sex of respondent's spouse or unmarried partner"'
label var spempnot      `"Employed (spouse or partner)"'
label var spempstat     `"Employment status (spouse or partner)"'
label var spusualhrs    `"Usual work hours (spouse or partner)"'
label var hh_numownkids `"Number of own children under 18 in household"'
label var kidund1       `"Own child under 1 in household"'
label var kid1to2       `"Own child age 1 to 2 in household"'
label var wbwt          `"Well-being Module final statistical weight, person-level"'
label var age_sp        `"Age [of spouse]"'
label var sex_sp        `"Sex [of spouse]"'
label var race_sp       `"Race [of spouse]"'
label var hispan_sp     `"Hispanic origin [of spouse]"'
label var educ_sp       `"Highest level of school completed [of spouse]"'
label var educyrs_sp    `"Years of education [of spouse]"'
label var empstat_sp    `"Labor force status [of spouse]"'
label var uhrsworkt_sp  `"Hours usually worked per week [of spouse]"'
label var actline       `"Activity line number"'
label var activity      `"Activity"'
label var where         `"Location of activity"'
label var duration      `"Duration of activity"'
label var start         `"Activity start time"'
label var stop          `"Activity stop time"'
label var scpain        `"Pain scale"'
label var schappy       `"Happiness scale"'
label var scsad         `"Sadness scale"'
label var sctired       `"Fatigue scale"'
label var scstress      `"Stress scale"'
label var interact      `"Interacting during activity"'
label var meaning       `"Meaningfulness scale"'
label var osad          `"Order of SCSAD"'
label var ohappy        `"Order of SCHAPPY"'
label var opain         `"Order of SCPAIN"'
label var otired        `"Order of SCTIRED"'
label var ostress       `"Order of SCSTRESS"'
label var wbelig        `"Activity eligible for well-being module selection"'
label var awbwt         `"Well-being Module final statistical weight, activity-level"'

label define rectype_lbl 1 `"H"'
label define rectype_lbl 2 `"P"', add
label define rectype_lbl 3 `"A"', add
label define rectype_lbl 4 `"W"', add
label define rectype_lbl 5 `"R"', add
label values rectype rectype_lbl

label define famincome_lbl 001 `"Less than $5,000"'
label define famincome_lbl 002 `"$5,000 to $7,499"', add
label define famincome_lbl 003 `"$7,500 to $9,999"', add
label define famincome_lbl 004 `"$10,000 to $12,499"', add
label define famincome_lbl 005 `"$12,500 to $14,999"', add
label define famincome_lbl 006 `"$15,000 to $19,999"', add
label define famincome_lbl 007 `"$20,000 to $24,999"', add
label define famincome_lbl 008 `"$25,000 to $29,999"', add
label define famincome_lbl 009 `"$30,000 to $34,999"', add
label define famincome_lbl 010 `"$35,000 to $39,999"', add
label define famincome_lbl 011 `"$40,000 to $49,999"', add
label define famincome_lbl 012 `"$50,000 to $59,999"', add
label define famincome_lbl 013 `"$60,000 to $74,999"', add
label define famincome_lbl 014 `"$75,000 to $99,999"', add
label define famincome_lbl 015 `"$100,000 to $149,999"', add
label define famincome_lbl 016 `"$150,000 and over"', add
label define famincome_lbl 996 `"Refused"', add
label define famincome_lbl 997 `"Don't know"', add
label define famincome_lbl 998 `"Blank"', add
label values famincome famincome_lbl

label define hh_numkids_lbl 00 `"0"'
label define hh_numkids_lbl 01 `"1"', add
label define hh_numkids_lbl 02 `"2"', add
label define hh_numkids_lbl 03 `"3"', add
label define hh_numkids_lbl 04 `"4"', add
label define hh_numkids_lbl 05 `"5"', add
label define hh_numkids_lbl 06 `"6"', add
label define hh_numkids_lbl 07 `"7"', add
label define hh_numkids_lbl 08 `"8"', add
label define hh_numkids_lbl 09 `"9"', add
label define hh_numkids_lbl 10 `"10"', add
label define hh_numkids_lbl 11 `"11"', add
label define hh_numkids_lbl 12 `"12"', add
label define hh_numkids_lbl 99 `"NIU (Not in universe)"', add
label values hh_numkids hh_numkids_lbl

label define ageychild_lbl 000 `"0"'
label define ageychild_lbl 001 `"1"', add
label define ageychild_lbl 002 `"2"', add
label define ageychild_lbl 003 `"3"', add
label define ageychild_lbl 004 `"4"', add
label define ageychild_lbl 005 `"5"', add
label define ageychild_lbl 006 `"6"', add
label define ageychild_lbl 007 `"7"', add
label define ageychild_lbl 008 `"8"', add
label define ageychild_lbl 009 `"9"', add
label define ageychild_lbl 010 `"10"', add
label define ageychild_lbl 011 `"11"', add
label define ageychild_lbl 012 `"12"', add
label define ageychild_lbl 013 `"13"', add
label define ageychild_lbl 014 `"14"', add
label define ageychild_lbl 015 `"15"', add
label define ageychild_lbl 016 `"16"', add
label define ageychild_lbl 017 `"17"', add
label define ageychild_lbl 999 `"NIU (Not in universe)"', add
label values ageychild ageychild_lbl

label define pernum_lbl 01 `"1"'
label define pernum_lbl 02 `"2"', add
label define pernum_lbl 03 `"3"', add
label define pernum_lbl 04 `"4"', add
label define pernum_lbl 05 `"5"', add
label define pernum_lbl 06 `"6"', add
label define pernum_lbl 07 `"7"', add
label define pernum_lbl 08 `"8"', add
label define pernum_lbl 09 `"9"', add
label define pernum_lbl 10 `"10"', add
label define pernum_lbl 11 `"11"', add
label define pernum_lbl 12 `"12"', add
label define pernum_lbl 13 `"13"', add
label define pernum_lbl 14 `"14"', add
label define pernum_lbl 15 `"15"', add
label define pernum_lbl 16 `"16"', add
label values pernum pernum_lbl

label define lineno_lbl 001 `"1"'
label define lineno_lbl 002 `"2"', add
label define lineno_lbl 003 `"3"', add
label define lineno_lbl 004 `"4"', add
label define lineno_lbl 005 `"5"', add
label define lineno_lbl 006 `"6"', add
label define lineno_lbl 007 `"7"', add
label define lineno_lbl 008 `"8"', add
label define lineno_lbl 009 `"9"', add
label define lineno_lbl 010 `"10"', add
label define lineno_lbl 011 `"11"', add
label define lineno_lbl 012 `"12"', add
label define lineno_lbl 013 `"13"', add
label define lineno_lbl 014 `"14"', add
label define lineno_lbl 015 `"15"', add
label define lineno_lbl 016 `"16"', add
label define lineno_lbl 017 `"17"', add
label define lineno_lbl 018 `"18"', add
label define lineno_lbl 019 `"19"', add
label define lineno_lbl 999 `"NIU (Not in universe)"', add
label values lineno lineno_lbl

label define lineno_cps8_lbl 001 `"1"'
label define lineno_cps8_lbl 002 `"2"', add
label define lineno_cps8_lbl 003 `"3"', add
label define lineno_cps8_lbl 004 `"4"', add
label define lineno_cps8_lbl 005 `"5"', add
label define lineno_cps8_lbl 006 `"6"', add
label define lineno_cps8_lbl 007 `"7"', add
label define lineno_cps8_lbl 008 `"8"', add
label define lineno_cps8_lbl 009 `"9"', add
label define lineno_cps8_lbl 010 `"10"', add
label define lineno_cps8_lbl 011 `"11"', add
label define lineno_cps8_lbl 012 `"12"', add
label define lineno_cps8_lbl 013 `"13"', add
label define lineno_cps8_lbl 014 `"14"', add
label define lineno_cps8_lbl 015 `"15"', add
label define lineno_cps8_lbl 016 `"16"', add
label define lineno_cps8_lbl 999 `"NIU (Not in universe)"', add
label values lineno_cps8 lineno_cps8_lbl

label define day_lbl 01 `"Sunday"'
label define day_lbl 02 `"Monday"', add
label define day_lbl 03 `"Tuesday"', add
label define day_lbl 04 `"Wednesday"', add
label define day_lbl 05 `"Thursday"', add
label define day_lbl 06 `"Friday"', add
label define day_lbl 07 `"Saturday"', add
label define day_lbl 99 `"NIU (Not in universe)"', add
label values day day_lbl

label define sex_lbl 01 `"Male"'
label define sex_lbl 02 `"Female"', add
label define sex_lbl 99 `"NIU (Not in universe)"', add
label values sex sex_lbl

label define race_lbl 0100 `"White only"'
label define race_lbl 0110 `"Black only"', add
label define race_lbl 0120 `"American Indian, Alaskan Native"', add
label define race_lbl 0130 `"Asian or Pacific Islander"', add
label define race_lbl 0131 `"Asian only"', add
label define race_lbl 0132 `"Hawaiian Pacific Islander only"', add
label define race_lbl 0200 `"White-Black"', add
label define race_lbl 0201 `"White-American Indian"', add
label define race_lbl 0202 `"White-Asian"', add
label define race_lbl 0203 `"White-Hawaiian"', add
label define race_lbl 0210 `"Black-American Indian"', add
label define race_lbl 0211 `"Black-Asian"', add
label define race_lbl 0212 `"Black-Hawaiian"', add
label define race_lbl 0220 `"American Indian-Asian"', add
label define race_lbl 0221 `"American Indian-Hawaiian"', add
label define race_lbl 0230 `"Asian-Hawaiian"', add
label define race_lbl 0300 `"White-Black-American Indian"', add
label define race_lbl 0301 `"White-Black-Asian"', add
label define race_lbl 0302 `"White-Black-Hawaiian"', add
label define race_lbl 0310 `"White-American Indian-Asian"', add
label define race_lbl 0311 `"White-American Indian-Hawaiian"', add
label define race_lbl 0320 `"White-Asian-Hawaiian"', add
label define race_lbl 0330 `"Black-American Indian-Asian"', add
label define race_lbl 0331 `"Black-American Indian-Hawaiian"', add
label define race_lbl 0340 `"Black-Asian-Hawaiian"', add
label define race_lbl 0350 `"American Indian-Asian-Hawaiian"', add
label define race_lbl 0398 `"Other 3 race combinations"', add
label define race_lbl 0399 `"2 or 3 races, unspecified"', add
label define race_lbl 0400 `"White-Black-American Indian-Asian"', add
label define race_lbl 0401 `"White-Black-American Indian-Hawaiian"', add
label define race_lbl 0402 `"White-Black-Asian-Hawaiian"', add
label define race_lbl 0403 `"Black-American Indian-Asian-Hawaiian"', add
label define race_lbl 0404 `"White-American Indian-Asian-Hawaiian"', add
label define race_lbl 0500 `"White-Black-American Indian-Asian-Hawaiian"', add
label define race_lbl 0599 `"4 or 5 races, unspecified"', add
label define race_lbl 9999 `"NIU (Not in universe)"', add
label values race race_lbl

label define hispan_lbl 0100 `"Not Hispanic"'
label define hispan_lbl 0210 `"Mexican"', add
label define hispan_lbl 0211 `"Mexican American"', add
label define hispan_lbl 0212 `"Chicano"', add
label define hispan_lbl 0213 `"Mexican (Mexicano)"', add
label define hispan_lbl 0220 `"Puerto Rican"', add
label define hispan_lbl 0230 `"Cuban"', add
label define hispan_lbl 0240 `"Central-South American"', add
label define hispan_lbl 0241 `"Dominican"', add
label define hispan_lbl 0242 `"Salvadoran"', add
label define hispan_lbl 0243 `"Other Central American"', add
label define hispan_lbl 0244 `"South American"', add
label define hispan_lbl 0250 `"Other Spanish"', add
label define hispan_lbl 9999 `"NIU (Not in universe)"', add
label values hispan hispan_lbl

label define marst_lbl 01 `"Married - spouse present"'
label define marst_lbl 02 `"Married - spouse absent"', add
label define marst_lbl 03 `"Widowed"', add
label define marst_lbl 04 `"Divorced"', add
label define marst_lbl 05 `"Separated"', add
label define marst_lbl 06 `"Never married"', add
label define marst_lbl 99 `"NIU (Not in universe)"', add
label values marst marst_lbl

label define relate_lbl 010 `"Self"'
label define relate_lbl 020 `"Spouse"', add
label define relate_lbl 021 `"Unmarried Partner"', add
label define relate_lbl 022 `"Own household child"', add
label define relate_lbl 023 `"Grandchild"', add
label define relate_lbl 024 `"Parent"', add
label define relate_lbl 025 `"Brother/Sister"', add
label define relate_lbl 026 `"Other relative"', add
label define relate_lbl 027 `"Foster child"', add
label define relate_lbl 028 `"Housemate/roommate"', add
label define relate_lbl 029 `"Roomer/boarder"', add
label define relate_lbl 030 `"Other nonrelative"', add
label define relate_lbl 040 `"Own non-household child lt 18"', add
label define relate_lbl 996 `"Refused"', add
label define relate_lbl 997 `"Don't know"', add
label define relate_lbl 999 `"NIU (Not in universe)"', add
label values relate relate_lbl

label define educ_lbl 010 `"Less than 1st grade"'
label define educ_lbl 011 `"1st, 2nd, 3rd, or 4th grade"', add
label define educ_lbl 012 `"5th or 6th grade"', add
label define educ_lbl 013 `"7th or 8th grade"', add
label define educ_lbl 014 `"9th grade"', add
label define educ_lbl 015 `"10th grade"', add
label define educ_lbl 016 `"11th grade"', add
label define educ_lbl 017 `"12th grade - no diploma"', add
label define educ_lbl 020 `"High school graduate - GED"', add
label define educ_lbl 021 `"High school graduate - diploma"', add
label define educ_lbl 030 `"Some college but no degree"', add
label define educ_lbl 031 `"Associate degree - occupational vocational"', add
label define educ_lbl 032 `"Associate degree - academic program"', add
label define educ_lbl 040 `"Bachelor's degree (BA, AB, BS, etc.)"', add
label define educ_lbl 041 `"Master's degree (MA, MS, MEng, MEd, MSW, etc.)"', add
label define educ_lbl 042 `"Professional school degree (MD, DDS, DVM, etc.)"', add
label define educ_lbl 043 `"Doctoral degree (PhD, EdD, etc.)"', add
label define educ_lbl 999 `"NIU (Not in universe)"', add
label values educ educ_lbl

label define educyrs_lbl 100 `"Grades 1-12"'
label define educyrs_lbl 101 `"Less than first grade"', add
label define educyrs_lbl 102 `"First through fourth grade"', add
label define educyrs_lbl 105 `"Fifth through sixth grade"', add
label define educyrs_lbl 107 `"Seventh through eighth grade"', add
label define educyrs_lbl 109 `"Ninth grade"', add
label define educyrs_lbl 110 `"Tenth grade"', add
label define educyrs_lbl 111 `"Eleventh grade"', add
label define educyrs_lbl 112 `"Twelfth grade"', add
label define educyrs_lbl 200 `"College"', add
label define educyrs_lbl 213 `"College--one year"', add
label define educyrs_lbl 214 `"College--two years"', add
label define educyrs_lbl 215 `"College--three years"', add
label define educyrs_lbl 216 `"College--four years"', add
label define educyrs_lbl 217 `"Bachelor's degree"', add
label define educyrs_lbl 300 `"Advanced degree"', add
label define educyrs_lbl 316 `"Master's degree"', add
label define educyrs_lbl 317 `"Master's degree--one year program"', add
label define educyrs_lbl 318 `"Master's degree--two year program"', add
label define educyrs_lbl 319 `"Master's degree--three+ year program"', add
label define educyrs_lbl 320 `"Professional degree"', add
label define educyrs_lbl 321 `"Doctoral degree"', add
label define educyrs_lbl 999 `"NIU (Not in universe)"', add
label values educyrs educyrs_lbl

label define schlcoll_lbl 01 `"Not enrolled"'
label define schlcoll_lbl 02 `"High school part time"', add
label define schlcoll_lbl 03 `"High school full time"', add
label define schlcoll_lbl 04 `"College/university part time"', add
label define schlcoll_lbl 05 `"College/university full time"', add
label define schlcoll_lbl 96 `"Refused"', add
label define schlcoll_lbl 99 `"NIU (Not in universe)"', add
label values schlcoll schlcoll_lbl

label define empstat_lbl 01 `"Employed - at work"'
label define empstat_lbl 02 `"Employed - absent"', add
label define empstat_lbl 03 `"Unemployed - on layoff"', add
label define empstat_lbl 04 `"Unemployed - looking"', add
label define empstat_lbl 05 `"Not in labor force"', add
label define empstat_lbl 99 `"NIU (Not in universe)"', add
label values empstat empstat_lbl

label define fullpart_lbl 01 `"Full time"'
label define fullpart_lbl 02 `"Part time"', add
label define fullpart_lbl 99 `"NIU (Not in universe)"', add
label values fullpart fullpart_lbl

label define spousepres_lbl 01 `"Spouse present"'
label define spousepres_lbl 02 `"Unmarried partner present"', add
label define spousepres_lbl 03 `"No spouse or unmarried partner present"', add
label define spousepres_lbl 99 `"NIU (Not in universe)"', add
label values spousepres spousepres_lbl

label define spsex_lbl 001 `"Male"'
label define spsex_lbl 002 `"Female"', add
label define spsex_lbl 099 `"NIU (Not in universe)"', add
label values spsex spsex_lbl

label define spempnot_lbl 00 `"Not employed"'
label define spempnot_lbl 01 `"Employed"', add
label define spempnot_lbl 99 `"NIU (Not in universe)"', add
label values spempnot spempnot_lbl

label define spempstat_lbl 01 `"Employed - at work"'
label define spempstat_lbl 02 `"Employed - not at work"', add
label define spempstat_lbl 03 `"Not employed"', add
label define spempstat_lbl 04 `"Retired"', add
label define spempstat_lbl 05 `"Disabled"', add
label define spempstat_lbl 06 `"Unable to work"', add
label define spempstat_lbl 96 `"Refused"', add
label define spempstat_lbl 97 `"Don't know"', add
label define spempstat_lbl 98 `"Blank"', add
label define spempstat_lbl 99 `"NIU (Not in universe)"', add
label values spempstat spempstat_lbl

label define spusualhrs_lbl 000 `"0"'
label define spusualhrs_lbl 001 `"1"', add
label define spusualhrs_lbl 002 `"2"', add
label define spusualhrs_lbl 003 `"3"', add
label define spusualhrs_lbl 004 `"4"', add
label define spusualhrs_lbl 005 `"5"', add
label define spusualhrs_lbl 006 `"6"', add
label define spusualhrs_lbl 007 `"7"', add
label define spusualhrs_lbl 008 `"8"', add
label define spusualhrs_lbl 009 `"9"', add
label define spusualhrs_lbl 010 `"10"', add
label define spusualhrs_lbl 011 `"11"', add
label define spusualhrs_lbl 012 `"12"', add
label define spusualhrs_lbl 013 `"13"', add
label define spusualhrs_lbl 014 `"14"', add
label define spusualhrs_lbl 015 `"15"', add
label define spusualhrs_lbl 016 `"16"', add
label define spusualhrs_lbl 017 `"17"', add
label define spusualhrs_lbl 018 `"18"', add
label define spusualhrs_lbl 019 `"19"', add
label define spusualhrs_lbl 020 `"20"', add
label define spusualhrs_lbl 021 `"21"', add
label define spusualhrs_lbl 022 `"22"', add
label define spusualhrs_lbl 023 `"23"', add
label define spusualhrs_lbl 024 `"24"', add
label define spusualhrs_lbl 025 `"25"', add
label define spusualhrs_lbl 026 `"26"', add
label define spusualhrs_lbl 027 `"27"', add
label define spusualhrs_lbl 028 `"28"', add
label define spusualhrs_lbl 029 `"29"', add
label define spusualhrs_lbl 030 `"30"', add
label define spusualhrs_lbl 031 `"31"', add
label define spusualhrs_lbl 032 `"32"', add
label define spusualhrs_lbl 033 `"33"', add
label define spusualhrs_lbl 034 `"34"', add
label define spusualhrs_lbl 035 `"35"', add
label define spusualhrs_lbl 036 `"36"', add
label define spusualhrs_lbl 037 `"37"', add
label define spusualhrs_lbl 038 `"38"', add
label define spusualhrs_lbl 039 `"39"', add
label define spusualhrs_lbl 040 `"40"', add
label define spusualhrs_lbl 041 `"41"', add
label define spusualhrs_lbl 042 `"42"', add
label define spusualhrs_lbl 043 `"43"', add
label define spusualhrs_lbl 044 `"44"', add
label define spusualhrs_lbl 045 `"45"', add
label define spusualhrs_lbl 046 `"46"', add
label define spusualhrs_lbl 047 `"47"', add
label define spusualhrs_lbl 048 `"48"', add
label define spusualhrs_lbl 049 `"49"', add
label define spusualhrs_lbl 050 `"50"', add
label define spusualhrs_lbl 051 `"51"', add
label define spusualhrs_lbl 052 `"52"', add
label define spusualhrs_lbl 053 `"53"', add
label define spusualhrs_lbl 054 `"54"', add
label define spusualhrs_lbl 055 `"55"', add
label define spusualhrs_lbl 056 `"56"', add
label define spusualhrs_lbl 057 `"57"', add
label define spusualhrs_lbl 058 `"58"', add
label define spusualhrs_lbl 059 `"59"', add
label define spusualhrs_lbl 060 `"60"', add
label define spusualhrs_lbl 061 `"61"', add
label define spusualhrs_lbl 062 `"62"', add
label define spusualhrs_lbl 063 `"63"', add
label define spusualhrs_lbl 064 `"64"', add
label define spusualhrs_lbl 065 `"65"', add
label define spusualhrs_lbl 066 `"66"', add
label define spusualhrs_lbl 067 `"67"', add
label define spusualhrs_lbl 068 `"68"', add
label define spusualhrs_lbl 069 `"69"', add
label define spusualhrs_lbl 070 `"70"', add
label define spusualhrs_lbl 071 `"71"', add
label define spusualhrs_lbl 072 `"72"', add
label define spusualhrs_lbl 073 `"73"', add
label define spusualhrs_lbl 074 `"74"', add
label define spusualhrs_lbl 075 `"75"', add
label define spusualhrs_lbl 076 `"76"', add
label define spusualhrs_lbl 077 `"77"', add
label define spusualhrs_lbl 078 `"78"', add
label define spusualhrs_lbl 079 `"79"', add
label define spusualhrs_lbl 080 `"80"', add
label define spusualhrs_lbl 081 `"81"', add
label define spusualhrs_lbl 082 `"82"', add
label define spusualhrs_lbl 083 `"83"', add
label define spusualhrs_lbl 084 `"84"', add
label define spusualhrs_lbl 085 `"85"', add
label define spusualhrs_lbl 086 `"86"', add
label define spusualhrs_lbl 087 `"87"', add
label define spusualhrs_lbl 088 `"88"', add
label define spusualhrs_lbl 089 `"89"', add
label define spusualhrs_lbl 090 `"90"', add
label define spusualhrs_lbl 091 `"91"', add
label define spusualhrs_lbl 092 `"92"', add
label define spusualhrs_lbl 093 `"93"', add
label define spusualhrs_lbl 094 `"94"', add
label define spusualhrs_lbl 095 `"95"', add
label define spusualhrs_lbl 096 `"96"', add
label define spusualhrs_lbl 097 `"97"', add
label define spusualhrs_lbl 098 `"98"', add
label define spusualhrs_lbl 099 `"99"', add
label define spusualhrs_lbl 995 `"Hours vary"', add
label define spusualhrs_lbl 999 `"NIU (Not in universe)"', add
label values spusualhrs spusualhrs_lbl

label define hh_numownkids_lbl 00 `"0"'
label define hh_numownkids_lbl 01 `"1"', add
label define hh_numownkids_lbl 02 `"2"', add
label define hh_numownkids_lbl 03 `"3"', add
label define hh_numownkids_lbl 04 `"4"', add
label define hh_numownkids_lbl 05 `"5"', add
label define hh_numownkids_lbl 06 `"6"', add
label define hh_numownkids_lbl 07 `"7"', add
label define hh_numownkids_lbl 08 `"8"', add
label define hh_numownkids_lbl 09 `"9"', add
label define hh_numownkids_lbl 10 `"10"', add
label define hh_numownkids_lbl 99 `"NIU (Not in universe)"', add
label values hh_numownkids hh_numownkids_lbl

label define kidund1_lbl 00 `"No"'
label define kidund1_lbl 01 `"Yes"', add
label define kidund1_lbl 99 `"NIU (Not in universe)"', add
label values kidund1 kidund1_lbl

label define kid1to2_lbl 00 `"No"'
label define kid1to2_lbl 01 `"Yes"', add
label define kid1to2_lbl 99 `"NIU (Not in universe)"', add
label values kid1to2 kid1to2_lbl

label define wbwt_lbl 000000000000000 `"0"'
label values wbwt wbwt_lbl

label define sex_sp_lbl 01 `"Male"'
label define sex_sp_lbl 02 `"Female"', add
label define sex_sp_lbl 99 `"NIU (Not in universe)"', add
label values sex_sp sex_sp_lbl

label define race_sp_lbl 0100 `"White only"'
label define race_sp_lbl 0110 `"Black only"', add
label define race_sp_lbl 0120 `"American Indian, Alaskan Native"', add
label define race_sp_lbl 0130 `"Asian or Pacific Islander"', add
label define race_sp_lbl 0131 `"Asian only"', add
label define race_sp_lbl 0132 `"Hawaiian Pacific Islander only"', add
label define race_sp_lbl 0200 `"White-Black"', add
label define race_sp_lbl 0201 `"White-American Indian"', add
label define race_sp_lbl 0202 `"White-Asian"', add
label define race_sp_lbl 0203 `"White-Hawaiian"', add
label define race_sp_lbl 0210 `"Black-American Indian"', add
label define race_sp_lbl 0211 `"Black-Asian"', add
label define race_sp_lbl 0212 `"Black-Hawaiian"', add
label define race_sp_lbl 0220 `"American Indian-Asian"', add
label define race_sp_lbl 0221 `"American Indian-Hawaiian"', add
label define race_sp_lbl 0230 `"Asian-Hawaiian"', add
label define race_sp_lbl 0300 `"White-Black-American Indian"', add
label define race_sp_lbl 0301 `"White-Black-Asian"', add
label define race_sp_lbl 0302 `"White-Black-Hawaiian"', add
label define race_sp_lbl 0310 `"White-American Indian-Asian"', add
label define race_sp_lbl 0311 `"White-American Indian-Hawaiian"', add
label define race_sp_lbl 0320 `"White-Asian-Hawaiian"', add
label define race_sp_lbl 0330 `"Black-American Indian-Asian"', add
label define race_sp_lbl 0331 `"Black-American Indian-Hawaiian"', add
label define race_sp_lbl 0340 `"Black-Asian-Hawaiian"', add
label define race_sp_lbl 0350 `"American Indian-Asian-Hawaiian"', add
label define race_sp_lbl 0398 `"Other 3 race combinations"', add
label define race_sp_lbl 0399 `"2 or 3 races, unspecified"', add
label define race_sp_lbl 0400 `"White-Black-American Indian-Asian"', add
label define race_sp_lbl 0401 `"White-Black-American Indian-Hawaiian"', add
label define race_sp_lbl 0402 `"White-Black-Asian-Hawaiian"', add
label define race_sp_lbl 0403 `"Black-American Indian-Asian-Hawaiian"', add
label define race_sp_lbl 0404 `"White-American Indian-Asian-Hawaiian"', add
label define race_sp_lbl 0500 `"White-Black-American Indian-Asian-Hawaiian"', add
label define race_sp_lbl 0599 `"4 or 5 races, unspecified"', add
label define race_sp_lbl 9999 `"NIU (Not in universe)"', add
label values race_sp race_sp_lbl

label define hispan_sp_lbl 0100 `"Not Hispanic"'
label define hispan_sp_lbl 0210 `"Mexican"', add
label define hispan_sp_lbl 0211 `"Mexican American"', add
label define hispan_sp_lbl 0212 `"Chicano"', add
label define hispan_sp_lbl 0213 `"Mexican (Mexicano)"', add
label define hispan_sp_lbl 0220 `"Puerto Rican"', add
label define hispan_sp_lbl 0230 `"Cuban"', add
label define hispan_sp_lbl 0240 `"Central-South American"', add
label define hispan_sp_lbl 0241 `"Dominican"', add
label define hispan_sp_lbl 0242 `"Salvadoran"', add
label define hispan_sp_lbl 0243 `"Other Central American"', add
label define hispan_sp_lbl 0244 `"South American"', add
label define hispan_sp_lbl 0250 `"Other Spanish"', add
label define hispan_sp_lbl 9999 `"NIU (Not in universe)"', add
label values hispan_sp hispan_sp_lbl

label define educ_sp_lbl 010 `"Less than 1st grade"'
label define educ_sp_lbl 011 `"1st, 2nd, 3rd, or 4th grade"', add
label define educ_sp_lbl 012 `"5th or 6th grade"', add
label define educ_sp_lbl 013 `"7th or 8th grade"', add
label define educ_sp_lbl 014 `"9th grade"', add
label define educ_sp_lbl 015 `"10th grade"', add
label define educ_sp_lbl 016 `"11th grade"', add
label define educ_sp_lbl 017 `"12th grade - no diploma"', add
label define educ_sp_lbl 020 `"High school graduate - GED"', add
label define educ_sp_lbl 021 `"High school graduate - diploma"', add
label define educ_sp_lbl 030 `"Some college but no degree"', add
label define educ_sp_lbl 031 `"Associate degree - occupational vocational"', add
label define educ_sp_lbl 032 `"Associate degree - academic program"', add
label define educ_sp_lbl 040 `"Bachelor's degree (BA, AB, BS, etc.)"', add
label define educ_sp_lbl 041 `"Master's degree (MA, MS, MEng, MEd, MSW, etc.)"', add
label define educ_sp_lbl 042 `"Professional school degree (MD, DDS, DVM, etc.)"', add
label define educ_sp_lbl 043 `"Doctoral degree (PhD, EdD, etc.)"', add
label define educ_sp_lbl 999 `"NIU (Not in universe)"', add
label values educ_sp educ_sp_lbl

label define educyrs_sp_lbl 100 `"Grades 1-12"'
label define educyrs_sp_lbl 101 `"Less than first grade"', add
label define educyrs_sp_lbl 102 `"First through fourth grade"', add
label define educyrs_sp_lbl 105 `"Fifth through sixth grade"', add
label define educyrs_sp_lbl 107 `"Seventh through eighth grade"', add
label define educyrs_sp_lbl 109 `"Ninth grade"', add
label define educyrs_sp_lbl 110 `"Tenth grade"', add
label define educyrs_sp_lbl 111 `"Eleventh grade"', add
label define educyrs_sp_lbl 112 `"Twelfth grade"', add
label define educyrs_sp_lbl 200 `"College"', add
label define educyrs_sp_lbl 213 `"College--one year"', add
label define educyrs_sp_lbl 214 `"College--two years"', add
label define educyrs_sp_lbl 215 `"College--three years"', add
label define educyrs_sp_lbl 216 `"College--four years"', add
label define educyrs_sp_lbl 217 `"Bachelor's degree"', add
label define educyrs_sp_lbl 300 `"Advanced degree"', add
label define educyrs_sp_lbl 316 `"Master's degree"', add
label define educyrs_sp_lbl 317 `"Master's degree--one year program"', add
label define educyrs_sp_lbl 318 `"Master's degree--two year program"', add
label define educyrs_sp_lbl 319 `"Master's degree--three+ year program"', add
label define educyrs_sp_lbl 320 `"Professional degree"', add
label define educyrs_sp_lbl 321 `"Doctoral degree"', add
label define educyrs_sp_lbl 999 `"NIU (Not in universe)"', add
label values educyrs_sp educyrs_sp_lbl

label define empstat_sp_lbl 01 `"Employed - at work"'
label define empstat_sp_lbl 02 `"Employed - absent"', add
label define empstat_sp_lbl 03 `"Unemployed - on layoff"', add
label define empstat_sp_lbl 04 `"Unemployed - looking"', add
label define empstat_sp_lbl 05 `"Not in labor force"', add
label define empstat_sp_lbl 99 `"NIU (Not in universe)"', add
label values empstat_sp empstat_sp_lbl

label define activity_lbl 010000 `"Personal Care"'
label define activity_lbl 010100 `"Sleeping"', add
label define activity_lbl 010101 `"Sleeping"', add
label define activity_lbl 010102 `"Sleeplessness"', add
label define activity_lbl 010199 `"Sleeping, n.e.c."', add
label define activity_lbl 010200 `"Grooming"', add
label define activity_lbl 010201 `"Washing, dressing and grooming oneself"', add
label define activity_lbl 010299 `"Grooming, n.e.c."', add
label define activity_lbl 010300 `"Health-Related Self Care"', add
label define activity_lbl 010301 `"Health-related self care"', add
label define activity_lbl 010399 `"Self care, n.e.c."', add
label define activity_lbl 010400 `"Personal Activities"', add
label define activity_lbl 010401 `"Personal/Private activities"', add
label define activity_lbl 010499 `"Personal activities, n.e.c."', add
label define activity_lbl 010500 `"Personal Care Emergencies"', add
label define activity_lbl 010501 `"Personal emergencies"', add
label define activity_lbl 010599 `"Personal care emergencies, n.e.c."', add
label define activity_lbl 019900 `"Personal Care, n.e.c."', add
label define activity_lbl 019999 `"Personal care, n.e.c."', add
label define activity_lbl 020000 `"Household Activities"', add
label define activity_lbl 020100 `"Housework"', add
label define activity_lbl 020101 `"Interior cleaning"', add
label define activity_lbl 020102 `"Laundry"', add
label define activity_lbl 020103 `"Sewing, repairing, and maintaining textiles"', add
label define activity_lbl 020104 `"Storing interior hh items, inc. food"', add
label define activity_lbl 020199 `"Housework, n.e.c."', add
label define activity_lbl 020200 `"Food and Drink Preparation, Presentation, and Clean-up"', add
label define activity_lbl 020201 `"Food and drink preparation"', add
label define activity_lbl 020202 `"Food presentation"', add
label define activity_lbl 020203 `"Kitchen and food clean-up"', add
label define activity_lbl 020299 `"Food and drink prep, serving and clean-up, n.e.c."', add
label define activity_lbl 020300 `"Interior Maintenance, Repair, and Decoration"', add
label define activity_lbl 020301 `"Interior arrangement, decoration, and repairs"', add
label define activity_lbl 020302 `"Building and repairing furniture"', add
label define activity_lbl 020303 `"Heating and cooling"', add
label define activity_lbl 020399 `"Interior maintenance, repair, and decoration, n.e.c."', add
label define activity_lbl 020400 `"Exterior Maintenance, Repair, and Decoration"', add
label define activity_lbl 020401 `"Exterior cleaning"', add
label define activity_lbl 020402 `"Exterior repair, improvements, and decoration"', add
label define activity_lbl 020499 `"Exterior maintenance, repair and decoration, n.e.c."', add
label define activity_lbl 020500 `"Lawn, Garden, and Houseplants"', add
label define activity_lbl 020501 `"Lawn, garden, and houseplant care"', add
label define activity_lbl 020502 `"Ponds, pools, and hot tubs"', add
label define activity_lbl 020599 `"Lawn and garden, n.e.c."', add
label define activity_lbl 020600 `"Animals and Pets"', add
label define activity_lbl 020601 `"Care for animals and pets (not veterinary care)"', add
label define activity_lbl 020602 `"Care for animals and pets (not veterinary care) (2008+)"', add
label define activity_lbl 020603 `"Walking, exercising, playing with animals (2008+)"', add
label define activity_lbl 020699 `"Pet and animal care, n.e.c."', add
label define activity_lbl 020700 `"Vehicles"', add
label define activity_lbl 020701 `"Vehicle repair and maintenance (by self)"', add
label define activity_lbl 020799 `"Vehicles, n.e.c."', add
label define activity_lbl 020800 `"Appliances, Tools, and Toys"', add
label define activity_lbl 020801 `"App, tool, toy set-up, repair, and maint (by self)"', add
label define activity_lbl 020899 `"Appliances and tools, n.e.c."', add
label define activity_lbl 020900 `"Household Management"', add
label define activity_lbl 020901 `"Financial management"', add
label define activity_lbl 020902 `"Household and personal organization and planning"', add
label define activity_lbl 020903 `"HH and personal mail and messages (except e-mail)"', add
label define activity_lbl 020904 `"HH and personal e-mail and messages"', add
label define activity_lbl 020905 `"Home security"', add
label define activity_lbl 020999 `"Household management, n.e.c."', add
label define activity_lbl 029900 `"Household Activities, n.e.c."', add
label define activity_lbl 029999 `"Household activities, n.e.c."', add
label define activity_lbl 030000 `"Caring for and Helping Household Members"', add
label define activity_lbl 030100 `"Caring for and Helping Household Children"', add
label define activity_lbl 030101 `"Physical care for hh children"', add
label define activity_lbl 030102 `"Reading to/with hh children"', add
label define activity_lbl 030103 `"Playing with hh children, not sports"', add
label define activity_lbl 030104 `"Arts and crafts with hh children"', add
label define activity_lbl 030105 `"Playing sports with hh children"', add
label define activity_lbl 030106 `"Talking with/listening to hh children"', add
label define activity_lbl 030107 `"Helping or teaching hh children"', add
label define activity_lbl 030108 `"Organization and planning for hh children"', add
label define activity_lbl 030109 `"Looking after hh children (as a primary activity)"', add
label define activity_lbl 030110 `"Attending hh children's events"', add
label define activity_lbl 030111 `"Waiting for/with hh children"', add
label define activity_lbl 030112 `"Picking up/dropping off hh children"', add
label define activity_lbl 030199 `"Caring for and helping hh children, n.e.c."', add
label define activity_lbl 030200 `"Activities Related to Household Children's Education"', add
label define activity_lbl 030201 `"Homework (hh children)"', add
label define activity_lbl 030202 `"Meetings and school conferences (hh children)"', add
label define activity_lbl 030203 `"Home schooling of hh children"', add
label define activity_lbl 030204 `"Waiting associated with hh children's education"', add
label define activity_lbl 030299 `"Activities related to hh child's education, n.e.c."', add
label define activity_lbl 030300 `"Activities Related to Household Children's Health"', add
label define activity_lbl 030301 `"Providing medical care to hh children"', add
label define activity_lbl 030302 `"Obtaining medical care for hh children"', add
label define activity_lbl 030303 `"Waiting associated with hh children's health"', add
label define activity_lbl 030399 `"Activities related to hh child's health, n.e.c."', add
label define activity_lbl 030400 `"Caring for Household Adults"', add
label define activity_lbl 030401 `"Physical care for hh adults"', add
label define activity_lbl 030402 `"Looking after hh adult (as a primary activity)"', add
label define activity_lbl 030403 `"Providing medical care to hh adult"', add
label define activity_lbl 030404 `"Obtaining medical and care services for hh adult"', add
label define activity_lbl 030405 `"Waiting associated with caring for hh adults"', add
label define activity_lbl 030499 `"Caring for household adults, n.e.c."', add
label define activity_lbl 030500 `"Helping Household Adults"', add
label define activity_lbl 030501 `"Helping hh adults"', add
label define activity_lbl 030502 `"Organization and planning for hh adults"', add
label define activity_lbl 030503 `"Picking up/dropping off hh adult"', add
label define activity_lbl 030504 `"Waiting associated with helping hh adults"', add
label define activity_lbl 030599 `"Helping household adults, n.e.c."', add
label define activity_lbl 039900 `"Caring for and Helping Household Members, n.e.c."', add
label define activity_lbl 039999 `"Caring for and helping hh members, n.e.c."', add
label define activity_lbl 040000 `"Caring for and Helping Non-Household Members"', add
label define activity_lbl 040100 `"Caring for and Helping Non-Household Children"', add
label define activity_lbl 040101 `"Physical care for nonhh children"', add
label define activity_lbl 040102 `"Reading to/with nonhh children"', add
label define activity_lbl 040103 `"Playing with nonhh children, not sports"', add
label define activity_lbl 040104 `"Arts and crafts with nonhh children"', add
label define activity_lbl 040105 `"Playing sports with nonhh children"', add
label define activity_lbl 040106 `"Talking with/listening to nonhh children"', add
label define activity_lbl 040107 `"Helping or teaching nonhh children"', add
label define activity_lbl 040108 `"Organization and planning for nonhh children"', add
label define activity_lbl 040109 `"Looking after nonhh children (as primary activity)"', add
label define activity_lbl 040110 `"Attending nonhh children's events"', add
label define activity_lbl 040111 `"Waiting for/with nonhh children"', add
label define activity_lbl 040112 `"Dropping off/picking up nonhh children"', add
label define activity_lbl 040199 `"Caring for and helping nonhh children, n.e.c."', add
label define activity_lbl 040200 `"Activities Related to Non-Household Children's Education"', add
label define activity_lbl 040201 `"Homework (nonhh children)"', add
label define activity_lbl 040202 `"Mtgs and school conferences (nonhh children)"', add
label define activity_lbl 040203 `"Home schooling of nonhh children"', add
label define activity_lbl 040204 `"Waiting assoc w/ nonhh children's education"', add
label define activity_lbl 040299 `"Activities related to nonhh child's educ., n.e.c."', add
label define activity_lbl 040300 `"Activities Related to Non-Household Children's Health"', add
label define activity_lbl 040301 `"Providing medical care to nonhh children"', add
label define activity_lbl 040302 `"Obtaining medical care for nonhh children"', add
label define activity_lbl 040303 `"Waiting associated with nonhh children's health"', add
label define activity_lbl 040399 `"Activities related to nonhh child's health, n.e.c."', add
label define activity_lbl 040400 `"Caring for Non-Household Adults"', add
label define activity_lbl 040401 `"Physical care for nonhh adults"', add
label define activity_lbl 040402 `"Looking after nonhh adult (as a primary activity)"', add
label define activity_lbl 040403 `"Providing medical care to nonhh adult"', add
label define activity_lbl 040404 `"Obtaining medical and care svcs for nonhh adult"', add
label define activity_lbl 040405 `"Waiting associated with caring for nonhh adults"', add
label define activity_lbl 040499 `"Caring for nonhh adults, n.e.c."', add
label define activity_lbl 040500 `"Helping Non-Household Adults"', add
label define activity_lbl 040501 `"Hswrk, cooking, and shopping asst, nonhh adults"', add
label define activity_lbl 040502 `"House and lawn maint and repair asst, nonhh adults"', add
label define activity_lbl 040503 `"Animal and pet care assistance for nonhh adults"', add
label define activity_lbl 040504 `"Vehicle/appliance maint/repair asst, nonhh adults"', add
label define activity_lbl 040505 `"Financial mgmt asst for nonhh adults"', add
label define activity_lbl 040506 `"HH mgmt and paperwork asst, nonhh adults"', add
label define activity_lbl 040507 `"Picking up/dropping off nonhh adult"', add
label define activity_lbl 040508 `"Waiting associated with helping nonhh adults"', add
label define activity_lbl 040599 `"Helping nonhh adults, n.e.c."', add
label define activity_lbl 049900 `"Caring for and Helping Non-Household Members, n.e.c."', add
label define activity_lbl 049999 `"Caring for and helping nonhh members, n.e.c."', add
label define activity_lbl 050000 `"Work and Work-Related Activities"', add
label define activity_lbl 050100 `"Working"', add
label define activity_lbl 050101 `"Work, main job"', add
label define activity_lbl 050102 `"Work, other job(s)"', add
label define activity_lbl 050103 `"Security procedures related to work"', add
label define activity_lbl 050104 `"Waiting associated with working"', add
label define activity_lbl 050199 `"Working, n.e.c."', add
label define activity_lbl 050200 `"Work-Related Activities"', add
label define activity_lbl 050201 `"Socializing, relaxing, and leisure as part of job"', add
label define activity_lbl 050202 `"Eating and drinking as part of job"', add
label define activity_lbl 050203 `"Sports and exercise as part of job"', add
label define activity_lbl 050204 `"Security procedures as part of job"', add
label define activity_lbl 050205 `"Waiting associated with work-related activities"', add
label define activity_lbl 050299 `"Work-related activities, n.e.c."', add
label define activity_lbl 050300 `"Other Income-Generating Activities"', add
label define activity_lbl 050301 `"Income-generating hobbies, crafts, and food"', add
label define activity_lbl 050302 `"Income-generating performances"', add
label define activity_lbl 050303 `"Income-generating services"', add
label define activity_lbl 050304 `"Income-generating rental property activities"', add
label define activity_lbl 050305 `"Waiting assoc w/other income-generating acts"', add
label define activity_lbl 050399 `"Other income-generating activities, n.e.c."', add
label define activity_lbl 050400 `"Job Search and Interviewing"', add
label define activity_lbl 050401 `"Job search activities"', add
label define activity_lbl 050403 `"Job interviewing"', add
label define activity_lbl 050404 `"Waiting associated with job search or interview"', add
label define activity_lbl 050405 `"Sec. procedures rel. to job search/interviewing"', add
label define activity_lbl 050499 `"Job search and Interviewing, n.e.c."', add
label define activity_lbl 059900 `"Work and Work-Related Activities, n.e.c."', add
label define activity_lbl 059999 `"Work and work-related activities, n.e.c."', add
label define activity_lbl 060000 `"Education"', add
label define activity_lbl 060100 `"Taking Class"', add
label define activity_lbl 060101 `"Taking class for degree, certification, or lic"', add
label define activity_lbl 060102 `"Taking class for personal interest"', add
label define activity_lbl 060103 `"Waiting associated with taking classes"', add
label define activity_lbl 060104 `"Security procedures rel. to taking classes"', add
label define activity_lbl 060199 `"Taking class, n.e.c."', add
label define activity_lbl 060200 `"Extracurricular School Activities (except sports)"', add
label define activity_lbl 060201 `"Extracurricular club activities"', add
label define activity_lbl 060202 `"Extracurricular music and performance activities"', add
label define activity_lbl 060203 `"Extracurricular student government activities"', add
label define activity_lbl 060204 `"Waiting associated with extracurricular activities"', add
label define activity_lbl 060299 `"Education-related extracurricular activities, n.e.c."', add
label define activity_lbl 060300 `"Research or Homework"', add
label define activity_lbl 060301 `"Rsrch/HW for class for degree, cert, or lic"', add
label define activity_lbl 060302 `"Research/homework for class for pers. interest"', add
label define activity_lbl 060303 `"Waiting associated with research/homework"', add
label define activity_lbl 060399 `"Research/homework n.e.c."', add
label define activity_lbl 060400 `"Registration or Administrative Activities"', add
label define activity_lbl 060401 `"Admin activities: class for degree, cert, or lic"', add
label define activity_lbl 060402 `"Admin activities: class for personal interest"', add
label define activity_lbl 060403 `"Waiting assoc w/admin. activities (education)"', add
label define activity_lbl 060499 `"Administrative for education, n.e.c."', add
label define activity_lbl 069900 `"Education, n.e.c."', add
label define activity_lbl 069999 `"Education, n.e.c."', add
label define activity_lbl 070000 `"Consumer Purchases"', add
label define activity_lbl 070100 `"Shopping (store, telephone, internet)"', add
label define activity_lbl 070101 `"Grocery shopping"', add
label define activity_lbl 070102 `"Purchasing gas"', add
label define activity_lbl 070103 `"Purchasing food (not groceries)"', add
label define activity_lbl 070104 `"Shopping, except groceries, food and gas"', add
label define activity_lbl 070105 `"Waiting associated with shopping"', add
label define activity_lbl 070199 `"Shopping, n.e.c."', add
label define activity_lbl 070200 `"Researching Purchases"', add
label define activity_lbl 070201 `"Comparison shopping"', add
label define activity_lbl 070299 `"Researching purchases, n.e.c."', add
label define activity_lbl 070300 `"Security Procedures Related to Consumer Purchases"', add
label define activity_lbl 070301 `"Security procedures rel. to consumer purchases"', add
label define activity_lbl 070399 `"Sec procedures rel. to cons purchases, n.e.c."', add
label define activity_lbl 079900 `"Consumer Purchases, n.e.c."', add
label define activity_lbl 079999 `"Consumer purchases, n.e.c."', add
label define activity_lbl 080000 `"Professional and Personal Care Services"', add
label define activity_lbl 080100 `"Childcare Services"', add
label define activity_lbl 080101 `"Using paid childcare services"', add
label define activity_lbl 080102 `"Waiting associated w/purchasing childcare svcs"', add
label define activity_lbl 080199 `"Using paid childcare services, n.e.c."', add
label define activity_lbl 080200 `"Financial Services and Banking"', add
label define activity_lbl 080201 `"Banking"', add
label define activity_lbl 080202 `"Using other financial services"', add
label define activity_lbl 080203 `"Waiting associated w/banking/financial services"', add
label define activity_lbl 080299 `"Using financial services and banking, n.e.c."', add
label define activity_lbl 080300 `"Legal Services"', add
label define activity_lbl 080301 `"Using legal services"', add
label define activity_lbl 080302 `"Waiting associated with legal services"', add
label define activity_lbl 080399 `"Using legal services, n.e.c."', add
label define activity_lbl 080400 `"Medical and Care Services"', add
label define activity_lbl 080401 `"Using health and care services outside the home"', add
label define activity_lbl 080402 `"Using in-home health and care services"', add
label define activity_lbl 080403 `"Waiting associated with medical services"', add
label define activity_lbl 080499 `"Using medical services, n.e.c."', add
label define activity_lbl 080500 `"Personal Care Services"', add
label define activity_lbl 080501 `"Using personal care services"', add
label define activity_lbl 080502 `"Waiting associated w/personal care services"', add
label define activity_lbl 080599 `"Using personal care services, n.e.c."', add
label define activity_lbl 080600 `"Real Estate"', add
label define activity_lbl 080601 `"Activities rel. to purchasing/selling real estate"', add
label define activity_lbl 080602 `"Waiting assoc w/purchasing/selling real estate"', add
label define activity_lbl 080699 `"Using real estate services, n.e.c."', add
label define activity_lbl 080700 `"Veterinary Services (excluding grooming)"', add
label define activity_lbl 080701 `"Using veterinary services"', add
label define activity_lbl 080702 `"Waiting associated with veterinary services"', add
label define activity_lbl 080799 `"Using veterinary services, n.e.c."', add
label define activity_lbl 080800 `"Security Procedures Related to Professional or Personal Services"', add
label define activity_lbl 080801 `"Security procedures rel. to prof/personal svcs."', add
label define activity_lbl 080899 `"Sec procedures rel. to prof/personal svcs n.e.c."', add
label define activity_lbl 089900 `"Professional and Personal Services, n.e.c."', add
label define activity_lbl 089999 `"Professional and personal services, n.e.c."', add
label define activity_lbl 090000 `"Household Services"', add
label define activity_lbl 090100 `"Household Services (not done by self)"', add
label define activity_lbl 090101 `"Using interior cleaning services"', add
label define activity_lbl 090102 `"Using meal preparation services"', add
label define activity_lbl 090103 `"Using clothing repair and cleaning services"', add
label define activity_lbl 090104 `"Waiting associated with using household services"', add
label define activity_lbl 090199 `"Using household services, n.e.c."', add
label define activity_lbl 090200 `"Home Maintenance, Repair, Decoration, and Construction (not done by self)"', add
label define activity_lbl 090201 `"Using home maint/repair/décor/construction svcs"', add
label define activity_lbl 090202 `"Wtg assoc w/ home main/repair/décor/constr"', add
label define activity_lbl 090299 `"Using home maint/repair/décor/constr svcs n.e.c."', add
label define activity_lbl 090300 `"Pet Services (not done by self and not veterinary care)"', add
label define activity_lbl 090301 `"Using pet services"', add
label define activity_lbl 090302 `"Waiting associated with pet services"', add
label define activity_lbl 090399 `"Using pet services, n.e.c."', add
label define activity_lbl 090400 `"Lawn and Garden Services (not done by self)"', add
label define activity_lbl 090401 `"Using lawn and garden services"', add
label define activity_lbl 090402 `"Waiting assoc with using lawn and garden svcs"', add
label define activity_lbl 090499 `"Using lawn and garden services, n.e.c."', add
label define activity_lbl 090500 `"Vehicle Maintenance and Repair Services (not done by self)"', add
label define activity_lbl 090501 `"Using vehicle maintenance or repair services"', add
label define activity_lbl 090502 `"Waiting assoc with vehicle main. or repair svcs"', add
label define activity_lbl 090599 `"Using vehicle maint. and repair svcs, n.e.c."', add
label define activity_lbl 099900 `"Household Services, n.e.c."', add
label define activity_lbl 099999 `"Using household services, n.e.c."', add
label define activity_lbl 100000 `"Government Services and Civic Obligations"', add
label define activity_lbl 100100 `"Using Government Services"', add
label define activity_lbl 100101 `"Using police and fire services"', add
label define activity_lbl 100102 `"Using social services"', add
label define activity_lbl 100103 `"Obtaining licenses and paying fines, fees, taxes"', add
label define activity_lbl 100199 `"Using government services, n.e.c."', add
label define activity_lbl 100200 `"Civic Obligations and Participation"', add
label define activity_lbl 100201 `"Civic obligations and participation"', add
label define activity_lbl 100299 `"Civic obligations and participation, n.e.c."', add
label define activity_lbl 100300 `"Waiting Associated with Government Services or Civic Obligations"', add
label define activity_lbl 100303 `"Waiting assoc w/civic obligations and participation"', add
label define activity_lbl 100304 `"Waiting associated with using government services"', add
label define activity_lbl 100399 `"Wtg assoc w/govt svcs or civic obligations, n.e.c."', add
label define activity_lbl 100400 `"Security Procedures Related to Government Services or Civic Obligations"', add
label define activity_lbl 100401 `"Sec procedures rel. to govt svcs/civic obligations"', add
label define activity_lbl 100499 `"Sec procs rel. to govt svcs/civic obligations, n.e.c."', add
label define activity_lbl 109900 `"Government Services, n.e.c."', add
label define activity_lbl 109999 `"Government services, n.e.c."', add
label define activity_lbl 110000 `"Eating and Drinking"', add
label define activity_lbl 110100 `"Eating and Drinking"', add
label define activity_lbl 110101 `"Eating and drinking"', add
label define activity_lbl 110199 `"Eating and drinking, n.e.c."', add
label define activity_lbl 110200 `"Waiting Associated with Eating and Drinking"', add
label define activity_lbl 110201 `"Waiting associated w/eating and drinking"', add
label define activity_lbl 110299 `"Waiting associated with eating and drinking, n.e.c."', add
label define activity_lbl 119900 `"Eating and Drinking, n.e.c."', add
label define activity_lbl 119999 `"Eating and drinking, n.e.c."', add
label define activity_lbl 120000 `"Socializing, Relaxing, and Leisure"', add
label define activity_lbl 120100 `"Socializing and Communicating"', add
label define activity_lbl 120101 `"Socializing and communicating with others"', add
label define activity_lbl 120199 `"Socializing and communicating, n.e.c."', add
label define activity_lbl 120200 `"Attending or Hosting Social Events"', add
label define activity_lbl 120201 `"Attending or hosting parties/receptions/ceremonies"', add
label define activity_lbl 120202 `"Attending meetings for personal interest (not volunteering)"', add
label define activity_lbl 120299 `"Attending/hosting social events, n.e.c."', add
label define activity_lbl 120300 `"Relaxing and Leisure"', add
label define activity_lbl 120301 `"Relaxing, thinking"', add
label define activity_lbl 120302 `"Tobacco and drug use"', add
label define activity_lbl 120303 `"Television and movies (not religious)"', add
label define activity_lbl 120304 `"Television (religious)"', add
label define activity_lbl 120305 `"Listening to the radio"', add
label define activity_lbl 120306 `"Listening to/playing music (not radio)"', add
label define activity_lbl 120307 `"Playing games"', add
label define activity_lbl 120308 `"Computer use for leisure (exc. Games)"', add
label define activity_lbl 120309 `"Arts and crafts as a hobby"', add
label define activity_lbl 120310 `"Collecting as a hobby"', add
label define activity_lbl 120311 `"Hobbies, except arts and crafts and collecting"', add
label define activity_lbl 120312 `"Reading for personal interest"', add
label define activity_lbl 120313 `"Writing for personal interest"', add
label define activity_lbl 120399 `"Relaxing and leisure, n.e.c."', add
label define activity_lbl 120400 `"Arts and Entertainment (other than sports)"', add
label define activity_lbl 120401 `"Attending performing arts"', add
label define activity_lbl 120402 `"Attending museums"', add
label define activity_lbl 120403 `"Attending movies/film"', add
label define activity_lbl 120404 `"Attending gambling establishments"', add
label define activity_lbl 120405 `"Security procedures rel. to arts and entertainment"', add
label define activity_lbl 120499 `"Arts and entertainment, n.e.c."', add
label define activity_lbl 120500 `"Waiting Associated with Socializing, Relaxing, and Leisure"', add
label define activity_lbl 120501 `"Waiting assoc. w/socializing and communicating"', add
label define activity_lbl 120502 `"Waiting assoc. w/attending/hosting social events"', add
label define activity_lbl 120503 `"Waiting associated with relaxing/leisure"', add
label define activity_lbl 120504 `"Waiting associated with arts and entertainment"', add
label define activity_lbl 120599 `"Waiting associated with socializing, n.e.c."', add
label define activity_lbl 129900 `"Socializing, Relaxing, and Leisure, n.e.c."', add
label define activity_lbl 129999 `"Socializing, relaxing, and leisure, n.e.c."', add
label define activity_lbl 130000 `"Sports, Exercise, and Recreation"', add
label define activity_lbl 130100 `"Participating in Sports, Exercise, or Recreation"', add
label define activity_lbl 130101 `"Doing aerobics"', add
label define activity_lbl 130102 `"Playing baseball"', add
label define activity_lbl 130103 `"Playing basketball"', add
label define activity_lbl 130104 `"Biking"', add
label define activity_lbl 130105 `"Playing billiards"', add
label define activity_lbl 130106 `"Boating"', add
label define activity_lbl 130107 `"Bowling"', add
label define activity_lbl 130108 `"Climbing, spelunking, caving"', add
label define activity_lbl 130109 `"Dancing"', add
label define activity_lbl 130110 `"Participating in equestrian sports"', add
label define activity_lbl 130111 `"Fencing"', add
label define activity_lbl 130112 `"Fishing"', add
label define activity_lbl 130113 `"Playing football"', add
label define activity_lbl 130114 `"Golfing"', add
label define activity_lbl 130115 `"Doing gymnastics"', add
label define activity_lbl 130116 `"Hiking"', add
label define activity_lbl 130117 `"Playing hockey"', add
label define activity_lbl 130118 `"Hunting"', add
label define activity_lbl 130119 `"Participating in martial arts"', add
label define activity_lbl 130120 `"Playing racquet sports"', add
label define activity_lbl 130121 `"Participating in rodeo competitions"', add
label define activity_lbl 130122 `"Rollerblading"', add
label define activity_lbl 130123 `"Playing rugby"', add
label define activity_lbl 130124 `"Running"', add
label define activity_lbl 130125 `"Skiing, ice skating, snowboarding"', add
label define activity_lbl 130126 `"Playing soccer"', add
label define activity_lbl 130127 `"Playing softball"', add
label define activity_lbl 130128 `"Using cardiovascular equipment"', add
label define activity_lbl 130129 `"Vehicle touring/racing"', add
label define activity_lbl 130130 `"Playing volleyball"', add
label define activity_lbl 130131 `"Walking"', add
label define activity_lbl 130132 `"Participating in water sports"', add
label define activity_lbl 130133 `"Weightlifting/strength training"', add
label define activity_lbl 130134 `"Working out, unspecified"', add
label define activity_lbl 130135 `"Wrestling"', add
label define activity_lbl 130136 `"Doing yoga"', add
label define activity_lbl 130199 `"Playing sports n.e.c."', add
label define activity_lbl 130200 `"Attending Sports or Recreational Events"', add
label define activity_lbl 130201 `"Watching aerobics"', add
label define activity_lbl 130202 `"Watching baseball"', add
label define activity_lbl 130203 `"Watching basketball"', add
label define activity_lbl 130204 `"Watching biking"', add
label define activity_lbl 130205 `"Watching billiards"', add
label define activity_lbl 130206 `"Watching boating"', add
label define activity_lbl 130207 `"Watching bowling"', add
label define activity_lbl 130208 `"Watching climbing, spelunking, caving"', add
label define activity_lbl 130209 `"Watching dancing"', add
label define activity_lbl 130210 `"Watching equestrian sports"', add
label define activity_lbl 130211 `"Watching fencing"', add
label define activity_lbl 130212 `"Watching fishing"', add
label define activity_lbl 130213 `"Watching football"', add
label define activity_lbl 130214 `"Watching golfing"', add
label define activity_lbl 130215 `"Watching gymnastics"', add
label define activity_lbl 130216 `"Watching hockey"', add
label define activity_lbl 130217 `"Watching martial arts"', add
label define activity_lbl 130218 `"Watching racquet sports"', add
label define activity_lbl 130219 `"Watching rodeo competitions"', add
label define activity_lbl 130220 `"Watching rollerblading"', add
label define activity_lbl 130221 `"Watching rugby"', add
label define activity_lbl 130222 `"Watching running"', add
label define activity_lbl 130223 `"Watching skiing, ice skating, snowboarding"', add
label define activity_lbl 130224 `"Watching soccer"', add
label define activity_lbl 130225 `"Watching softball"', add
label define activity_lbl 130226 `"Watching vehicle touring/racing"', add
label define activity_lbl 130227 `"Watching volleyball"', add
label define activity_lbl 130228 `"Watching walking"', add
label define activity_lbl 130229 `"Watching water sports"', add
label define activity_lbl 130230 `"Watching weightlifting/strength training"', add
label define activity_lbl 130231 `"Watching people working out, unspecified"', add
label define activity_lbl 130232 `"Watching wrestling"', add
label define activity_lbl 130299 `"Attending sporting events, n.e.c."', add
label define activity_lbl 130300 `"Waiting Associated with Sports, Exercise, and Recreation"', add
label define activity_lbl 130301 `"Waiting related to playing sports or exercising"', add
label define activity_lbl 130302 `"Waiting related to attending sporting events"', add
label define activity_lbl 130399 `"Wtg assoc with sports, exercise, and rec, n.e.c."', add
label define activity_lbl 130400 `"Security Procedures Related to Sports, Exercise, and Recreation"', add
label define activity_lbl 130401 `"Security related to playing sports or exercising"', add
label define activity_lbl 130402 `"Security related to attending sporting events"', add
label define activity_lbl 130499 `"Sec related to sports, exercise, and rec, n.e.c."', add
label define activity_lbl 139900 `"Sports, Exercise, and Recreation, n.e.c."', add
label define activity_lbl 139999 `"Sports, exercise, and recreation, n.e.c."', add
label define activity_lbl 140000 `"Religious and Spiritual Activities"', add
label define activity_lbl 140100 `"Religious or Spiritual Practices"', add
label define activity_lbl 140101 `"Attending religious services"', add
label define activity_lbl 140102 `"Participation in religious practices"', add
label define activity_lbl 140103 `"Waiting assoc w/religious and spiritual activities"', add
label define activity_lbl 140104 `"Sec procedures rel. to relig and spiritual activities"', add
label define activity_lbl 140105 `"Religious education activities (2007+)"', add
label define activity_lbl 149900 `"Religious and Spiritual Activities, n.e.c."', add
label define activity_lbl 149999 `"Religious and spiritual activities, n.e.c."', add
label define activity_lbl 150000 `"Volunteer Activities"', add
label define activity_lbl 150100 `"Administrative and Support Activities"', add
label define activity_lbl 150101 `"Computer use"', add
label define activity_lbl 150102 `"Organizing and preparing"', add
label define activity_lbl 150103 `"Reading"', add
label define activity_lbl 150104 `"Telephone calls (except hotline counseling)"', add
label define activity_lbl 150105 `"Writing"', add
label define activity_lbl 150106 `"Fundraising"', add
label define activity_lbl 150199 `"Administrative and support activities, n.e.c."', add
label define activity_lbl 150200 `"Social Service and Care Activities (except medical)"', add
label define activity_lbl 150201 `"Food preparation, presentation, clean-up"', add
label define activity_lbl 150202 `"Collecting and delivering clothing and other goods"', add
label define activity_lbl 150203 `"Providing care"', add
label define activity_lbl 150204 `"Teaching, leading, counseling, mentoring"', add
label define activity_lbl 150299 `"Social service and care activities, n.e.c."', add
label define activity_lbl 150300 `"Indoor and Outdoor Maintenance, Building, and Clean-Up Activities"', add
label define activity_lbl 150301 `"Building houses, wildlife sites, and other structures"', add
label define activity_lbl 150302 `"Indoor and outdoor maintenance, repair, and clean-up"', add
label define activity_lbl 150399 `"Indoor and outdoor maint, bldg and clean-up, n.e.c."', add
label define activity_lbl 150400 `"Participating in Performance and Cultural Activities"', add
label define activity_lbl 150401 `"Performing"', add
label define activity_lbl 150402 `"Serving at volunteer events and cultural activities"', add
label define activity_lbl 150499 `"Participating performance, cultural act., n.e.c."', add
label define activity_lbl 150500 `"Attending Meetings, Conferences, and Training"', add
label define activity_lbl 150501 `"Attending meetings, conferences, and training"', add
label define activity_lbl 150599 `"Attending mtgs conferences, and training, n.e.c."', add
label define activity_lbl 150600 `"Public Health and Safety Activities"', add
label define activity_lbl 150601 `"Public health activities"', add
label define activity_lbl 150602 `"Public safety activities"', add
label define activity_lbl 150699 `"Public health and safety activities, n.e.c."', add
label define activity_lbl 150700 `"Waiting Associated with Volunteer Activities"', add
label define activity_lbl 150701 `"Waiting associated with volunteer activities"', add
label define activity_lbl 150799 `"Waiting assoc with volunteer activities, n.e.c."', add
label define activity_lbl 150800 `"Security Procedures Related to Volunteer Activities"', add
label define activity_lbl 150801 `"Security procedures related to volunteer activities (2007+)"', add
label define activity_lbl 150899 `"Security proecdures related to voluteer activities, n.e.c. (2007+)"', add
label define activity_lbl 159900 `"Volunteer Activities, n.e.c."', add
label define activity_lbl 159999 `"Volunteer activities, n.e.c."', add
label define activity_lbl 160000 `"Telephone Calls"', add
label define activity_lbl 160100 `"Telephone Calls (to or from)"', add
label define activity_lbl 160101 `"Telephone calls to/from family members"', add
label define activity_lbl 160102 `"Phone calls to/from friends, neighbors"', add
label define activity_lbl 160103 `"Telephone calls to/from education svcs providers"', add
label define activity_lbl 160104 `"Telephone calls to/from salespeople"', add
label define activity_lbl 160105 `"Phone calls to/from prof, personal svcs providers"', add
label define activity_lbl 160106 `"Phone calls to/from household services providers"', add
label define activity_lbl 160107 `"Phone calls to/from child or adult care providers"', add
label define activity_lbl 160108 `"Telephone calls to/from government officials"', add
label define activity_lbl 160199 `"Telephone calls (to or from), n.e.c."', add
label define activity_lbl 160200 `"Waiting Associated with Telephone Calls"', add
label define activity_lbl 160201 `"Waiting associated with telephone calls"', add
label define activity_lbl 160299 `"Waiting associated with telephone calls, n.e.c."', add
label define activity_lbl 169900 `"Telephone Calls, n.e.c."', add
label define activity_lbl 169999 `"Telephone calls, n.e.c."', add
label define activity_lbl 180000 `"Traveling"', add
label define activity_lbl 180100 `"Travel Related to Personal Care"', add
label define activity_lbl 180101 `"Travel related to personal care"', add
label define activity_lbl 180199 `"Travel related to personal care, n.e.c."', add
label define activity_lbl 180200 `"Travel Related to Household Activities"', add
label define activity_lbl 180201 `"Travel related to housework"', add
label define activity_lbl 180202 `"Travel related to food and drink prep"', add
label define activity_lbl 180203 `"Travel related to int. maint, repair, and decoration"', add
label define activity_lbl 180204 `"Travel related to ext. maint, repair, and decoration"', add
label define activity_lbl 180205 `"Travel related to lawn, garden, and houseplants"', add
label define activity_lbl 180206 `"Travel related to care for animals (not vet care)"', add
label define activity_lbl 180207 `"Travel related to vehicle care and maint (by self)"', add
label define activity_lbl 180208 `"Trvl rel to app, tool, toy set-up, repair, and maint"', add
label define activity_lbl 180209 `"Travel related to household management"', add
label define activity_lbl 180299 `"Travel related to household activities, n.e.c."', add
label define activity_lbl 180300 `"Travel Related to Caring for and Helping Household Members"', add
label define activity_lbl 180301 `"Travel related to caring for and helping HH children"', add
label define activity_lbl 180302 `"Travel related to caring for and helping household children (2005+)"', add
label define activity_lbl 180303 `"Travel related to hh children's education"', add
label define activity_lbl 180304 `"Travel related to hh children's health"', add
label define activity_lbl 180305 `"Travel related to caring for hh adults"', add
label define activity_lbl 180306 `"Travel related to helping hh adults"', add
label define activity_lbl 180307 `"Travel related to caring for and helping HH adults"', add
label define activity_lbl 180399 `"Trvl rel. to caring for, helping HH members, n.e.c."', add
label define activity_lbl 180400 `"Travel Related to Caring for and Helping Non-Household Members"', add
label define activity_lbl 180401 `"Trvl rel to caring for and helping nonHH kids, inclusive"', add
label define activity_lbl 180402 `"Trvl rel to caring for and helping nonHH kids"', add
label define activity_lbl 180403 `"Travel related to nonhh children's education"', add
label define activity_lbl 180404 `"Travel related to nonhh children's health"', add
label define activity_lbl 180405 `"Travel related to caring for nonhh adults"', add
label define activity_lbl 180406 `"Travel related to helping nonhh adults"', add
label define activity_lbl 180407 `"Travel related to caring for, helping NonHH adults"', add
label define activity_lbl 180499 `"Trvl rel. to caring for, helping NonHH,  n.e.c."', add
label define activity_lbl 180500 `"Travel Related to Work"', add
label define activity_lbl 180501 `"Travel related to working"', add
label define activity_lbl 180502 `"Travel related to work-related activities"', add
label define activity_lbl 180503 `"Travel related to income-generating activities"', add
label define activity_lbl 180504 `"Travel related to job search and interviewing"', add
label define activity_lbl 180599 `"Travel related to work, n.e.c."', add
label define activity_lbl 180600 `"Travel Related to Education"', add
label define activity_lbl 180601 `"Travel related to taking class"', add
label define activity_lbl 180602 `"Trvl rel to extracurricular activities (ex. Sports)"', add
label define activity_lbl 180603 `"Travel related to research/homework"', add
label define activity_lbl 180604 `"Travel related to registration/admin activities"', add
label define activity_lbl 180605 `"Education-related travel, not commuting"', add
label define activity_lbl 180699 `"Education travel, n.e.c."', add
label define activity_lbl 180700 `"Travel Related to Consumer Purchases"', add
label define activity_lbl 180701 `"Traveling to/from the grocery store"', add
label define activity_lbl 180702 `"Travel related to other shopping"', add
label define activity_lbl 180703 `"Travel related to purchasing food (not groceries)"', add
label define activity_lbl 180704 `"Travel related to shopping, ex groc, food, gas"', add
label define activity_lbl 180705 `"Traveling to/from gas station"', add
label define activity_lbl 180799 `"Travel related to consumer purchases, n.e.c."', add
label define activity_lbl 180800 `"Travel Related to Using Professional and Personal Care Services"', add
label define activity_lbl 180801 `"Travel related to using childcare services"', add
label define activity_lbl 180802 `"Travel related to using financial svcs and banking"', add
label define activity_lbl 180803 `"Travel related to using legal services"', add
label define activity_lbl 180804 `"Travel related to using medical services"', add
label define activity_lbl 180805 `"Travel related to using personal care services"', add
label define activity_lbl 180806 `"Travel related to using real estate services"', add
label define activity_lbl 180807 `"Travel related to using veterinary services"', add
label define activity_lbl 180899 `"Travel rel. to using prof, personal care svcs n.e.c."', add
label define activity_lbl 180900 `"Travel Related to Using Household Services"', add
label define activity_lbl 180901 `"Travel related to using household services"', add
label define activity_lbl 180902 `"Trvl rel to using home maint etc svcs"', add
label define activity_lbl 180903 `"Travel related to using pet services (not vet)"', add
label define activity_lbl 180904 `"Travel related to using lawn and garden services"', add
label define activity_lbl 180905 `"Trvl rel to using vehicle maint and repair services"', add
label define activity_lbl 180999 `"Travel related to using household services, n.e.c."', add
label define activity_lbl 181000 `"Travel Related to Using Government Services and Civic Obligations"', add
label define activity_lbl 181001 `"Travel related to using government services"', add
label define activity_lbl 181002 `"Travel related to civic obligations and participation"', add
label define activity_lbl 181099 `"Travel rel. to govt svcs and civic obligations, n.e.c."', add
label define activity_lbl 181100 `"Travel Related to Eating and Drinking"', add
label define activity_lbl 181101 `"Travel related to eating and drinking"', add
label define activity_lbl 181199 `"Travel related to eating and drinking, n.e.c."', add
label define activity_lbl 181200 `"Travel Related to Socializing, Relaxing, and Leisure"', add
label define activity_lbl 181201 `"Travel related to socializing and communicating"', add
label define activity_lbl 181202 `"Trvl related to attending or hosting social events"', add
label define activity_lbl 181203 `"Travel related to relaxing and leisure (2003, 2004)"', add
label define activity_lbl 181204 `"Travel related to arts and entertainment"', add
label define activity_lbl 181205 `"Travel as a form of entertainment"', add
label define activity_lbl 181206 `"Travel related to relaxing and leisure (2005+)"', add
label define activity_lbl 181299 `"Travel rel. to socializing, relaxing, leisure, n.e.c."', add
label define activity_lbl 181300 `"Travel Related to Sports, Exercise, and Recreation"', add
label define activity_lbl 181301 `"Trvl rel to doing sports/exercise/recreation"', add
label define activity_lbl 181302 `"Trvl rel to attending sporting/recreational events"', add
label define activity_lbl 181399 `"Travel rel to sports, exercise, recreation, n.e.c."', add
label define activity_lbl 181400 `"Travel Related to Religious or Spiritual Activities"', add
label define activity_lbl 181401 `"Travel related to religious/spiritual practices"', add
label define activity_lbl 181499 `"Travel rel. to religious/spiritual activities, n.e.c."', add
label define activity_lbl 181500 `"Travel Related to Volunteering"', add
label define activity_lbl 181501 `"Travel related to volunteering"', add
label define activity_lbl 181599 `"Travel related to volunteer activities, n.e.c."', add
label define activity_lbl 181600 `"Travel Related to Phone Calls"', add
label define activity_lbl 181601 `"Travel related to phone calls"', add
label define activity_lbl 181699 `"Travel rel. to phone calls, n.e.c."', add
label define activity_lbl 181800 `"Security Procedures Related to Traveling"', add
label define activity_lbl 181801 `"Security procedures related to traveling"', add
label define activity_lbl 181899 `"Security procedures related to traveling, n.e.c."', add
label define activity_lbl 189900 `"Traveling, n.e.c."', add
label define activity_lbl 189999 `"Traveling, n.e.c."', add
label define activity_lbl 500000 `"Data Codes"', add
label define activity_lbl 500100 `"Unable to Code"', add
label define activity_lbl 500101 `"Insufficient detail in verbatim"', add
label define activity_lbl 500102 `"Recorded activity using incorrect words"', add
label define activity_lbl 500103 `"Missing travel or destination"', add
label define activity_lbl 500104 `"Recorded simultaneous activities incorrectly"', add
label define activity_lbl 500105 `"Respondent refused to provide information"', add
label define activity_lbl 500106 `"Gap/can't remember"', add
label define activity_lbl 500107 `"Unable to code activity at 1st tier"', add
label define activity_lbl 509900 `"Data codes, n.e.c."', add
label define activity_lbl 509999 `"Data codes, n.e.c."', add
label values activity activity_lbl

label define where_lbl 0100 `"Place"'
label define where_lbl 0101 `"R's home or yard"', add
label define where_lbl 0102 `"R's workplace"', add
label define where_lbl 0103 `"Someone else's home"', add
label define where_lbl 0104 `"Restaurant or bar"', add
label define where_lbl 0105 `"Place of worship"', add
label define where_lbl 0106 `"Grocery store"', add
label define where_lbl 0107 `"Other store/mall"', add
label define where_lbl 0108 `"School"', add
label define where_lbl 0109 `"Outdoors--not at home"', add
label define where_lbl 0110 `"Library"', add
label define where_lbl 0111 `"Bank"', add
label define where_lbl 0112 `"Gym/health club"', add
label define where_lbl 0113 `"Post Office"', add
label define where_lbl 0114 `"Other place"', add
label define where_lbl 0115 `"Unspecified place"', add
label define where_lbl 0200 `"Mode of Transportation"', add
label define where_lbl 0230 `"Driver of car, truck, or motorcycle"', add
label define where_lbl 0231 `"Passenger of car, truck, or motorcycle"', add
label define where_lbl 0232 `"Walking"', add
label define where_lbl 0233 `"Bus"', add
label define where_lbl 0234 `"Subway/train"', add
label define where_lbl 0235 `"Bicycle"', add
label define where_lbl 0236 `"Boat/ferry"', add
label define where_lbl 0237 `"Taxi/limousine service"', add
label define where_lbl 0238 `"Airplane"', add
label define where_lbl 0239 `"Other mode of transportation"', add
label define where_lbl 0240 `"Unspecified mode of transportation"', add
label define where_lbl 9997 `"Don't know"', add
label define where_lbl 9998 `"Refused"', add
label define where_lbl 9999 `"NIU (Not in universe)"', add
label values where where_lbl

label define scpain_lbl 00 `"Not at all"'
label define scpain_lbl 01 `"1"', add
label define scpain_lbl 02 `"2"', add
label define scpain_lbl 03 `"3"', add
label define scpain_lbl 04 `"4"', add
label define scpain_lbl 05 `"5"', add
label define scpain_lbl 06 `"Very"', add
label define scpain_lbl 96 `"Refused"', add
label define scpain_lbl 97 `"Don't know"', add
label define scpain_lbl 99 `"NIU (Not in universe)"', add
label values scpain scpain_lbl

label define schappy_lbl 00 `"Not at all"'
label define schappy_lbl 01 `"1"', add
label define schappy_lbl 02 `"2"', add
label define schappy_lbl 03 `"3"', add
label define schappy_lbl 04 `"4"', add
label define schappy_lbl 05 `"5"', add
label define schappy_lbl 06 `"Very"', add
label define schappy_lbl 96 `"Refused"', add
label define schappy_lbl 97 `"Don't Know"', add
label define schappy_lbl 99 `"NIU (Not in universe)"', add
label values schappy schappy_lbl

label define scsad_lbl 00 `"Not at all"'
label define scsad_lbl 01 `"1"', add
label define scsad_lbl 02 `"2"', add
label define scsad_lbl 03 `"3"', add
label define scsad_lbl 04 `"4"', add
label define scsad_lbl 05 `"5"', add
label define scsad_lbl 06 `"Very"', add
label define scsad_lbl 96 `"Refused"', add
label define scsad_lbl 97 `"Don't Know"', add
label define scsad_lbl 99 `"NIU (Not in universe)"', add
label values scsad scsad_lbl

label define sctired_lbl 00 `"Not at all"'
label define sctired_lbl 01 `"1"', add
label define sctired_lbl 02 `"2"', add
label define sctired_lbl 03 `"3"', add
label define sctired_lbl 04 `"4"', add
label define sctired_lbl 05 `"5"', add
label define sctired_lbl 06 `"Very"', add
label define sctired_lbl 96 `"Refused"', add
label define sctired_lbl 97 `"Don't Know"', add
label define sctired_lbl 99 `"NIU (Not in universe)"', add
label values sctired sctired_lbl

label define scstress_lbl 00 `"Not at all"'
label define scstress_lbl 01 `"1"', add
label define scstress_lbl 02 `"2"', add
label define scstress_lbl 03 `"3"', add
label define scstress_lbl 04 `"4"', add
label define scstress_lbl 05 `"5"', add
label define scstress_lbl 06 `"Very"', add
label define scstress_lbl 96 `"Refused"', add
label define scstress_lbl 97 `"Don't know"', add
label define scstress_lbl 99 `"NIU (Not in universe)"', add
label values scstress scstress_lbl

label define interact_lbl 01 `"Yes"'
label define interact_lbl 02 `"No"', add
label define interact_lbl 96 `"Refused"', add
label define interact_lbl 97 `"Don't Know"', add
label define interact_lbl 99 `"NIU (Not in universe)"', add
label values interact interact_lbl

label define meaning_lbl 00 `"Not at all"'
label define meaning_lbl 01 `"1"', add
label define meaning_lbl 02 `"2"', add
label define meaning_lbl 03 `"3"', add
label define meaning_lbl 04 `"4"', add
label define meaning_lbl 05 `"5"', add
label define meaning_lbl 06 `"Very"', add
label define meaning_lbl 96 `"Refused"', add
label define meaning_lbl 97 `"Don't Know"', add
label define meaning_lbl 99 `"NIU (Not in universe)"', add
label values meaning meaning_lbl

label define osad_lbl 01 `"1"'
label define osad_lbl 02 `"2"', add
label define osad_lbl 03 `"3"', add
label define osad_lbl 04 `"4"', add
label define osad_lbl 05 `"5"', add
label define osad_lbl 99 `"NIU (Not in universe)"', add
label values osad osad_lbl

label define ohappy_lbl 01 `"1"'
label define ohappy_lbl 02 `"2"', add
label define ohappy_lbl 03 `"3"', add
label define ohappy_lbl 04 `"4"', add
label define ohappy_lbl 05 `"5"', add
label define ohappy_lbl 99 `"NIU (Not in universe)"', add
label values ohappy ohappy_lbl

label define opain_lbl 01 `"1"'
label define opain_lbl 02 `"2"', add
label define opain_lbl 03 `"3"', add
label define opain_lbl 04 `"4"', add
label define opain_lbl 05 `"5"', add
label define opain_lbl 99 `"NIU (Not in universe)"', add
label values opain opain_lbl

label define otired_lbl 01 `"1"'
label define otired_lbl 02 `"2"', add
label define otired_lbl 03 `"3"', add
label define otired_lbl 04 `"4"', add
label define otired_lbl 05 `"5"', add
label define otired_lbl 99 `"NIU (Not in universe)"', add
label values otired otired_lbl

label define ostress_lbl 01 `"1"'
label define ostress_lbl 02 `"2"', add
label define ostress_lbl 03 `"3"', add
label define ostress_lbl 04 `"4"', add
label define ostress_lbl 05 `"5"', add
label define ostress_lbl 99 `"NIU (Not in universe)"', add
label values ostress ostress_lbl

label define wbelig_lbl 0 `"No"'
label define wbelig_lbl 1 `"Yes"', add
label values wbelig wbelig_lbl

save "wellbeing_activity", replace
