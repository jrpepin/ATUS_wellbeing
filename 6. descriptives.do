clear
set more off

use wellbeing.dta

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
