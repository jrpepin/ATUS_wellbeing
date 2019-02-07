* NOTE: You need to set the Stata working directory to the path
* where the data file is located.

cd "D:\Dropbox\Well-being"
set more off

clear
quietly infix                      ///
  byte    rectype       1-1        ///
  double  caseid        2-15       ///
  long    year          16-20      ///
  byte    pernum        21-22      ///
  int     lineno        23-25      ///
  int     lineno_cps8   26-28      ///
  byte    day           29-30      ///
  double  wt06          31-47      ///
  int     age           48-50      ///
  byte    sex           51-52      ///
  int     race          53-56      ///
  int     hispan        57-60      ///
  byte    marst         61-62      ///
  int     relate        63-65      ///
  int     educ          66-68      ///
  int     educyrs       69-71      ///
  byte    empstat       72-73      ///
  byte    fullpart      74-75      ///
  int     uhrsworkt     76-79      ///
  int     uhrswork1     80-82      ///
  int     uhrswork2     83-85      ///
  byte    spousepres    86-87      ///
  int     spage         88-90      ///
  int     spsex         91-93      ///
  byte    spempnot      94-95      ///
  byte    spempstat     96-97      ///
  int     spusualhrs    98-100     ///
  byte    pernum_sp     101-102    ///
  int     lineno_sp     103-105    ///
  int     age_sp        106-108    ///
  byte    sex_sp        109-110    ///
  int     race_sp       111-114    ///
  int     hispan_sp     115-118    ///
  int     educ_sp       119-121    ///
  int     educyrs_sp    122-124    ///
  byte    empstat_sp    125-126    ///
  int     uhrsworkt_sp  127-130    ///
  long    activity      131-136    ///
  int     where         137-140    ///
  int     duration      141-144    ///
  byte    actline       145-146    ///
  str     start         147-154    ///
  str     stop          155-162    ///
  byte    scpain        163-164    ///
  byte    schappy       165-166    ///
  byte    scsad         167-168    ///
  byte    sctired       169-170    ///
  byte    scstress      171-172    ///
  byte    interact      173-174    ///
  byte    meaning       175-176    ///
  byte    osad          177-178    ///
  byte    ohappy        179-180    ///
  byte    opain         181-182    ///
  byte    otired        183-184    ///
  byte    ostress       185-186    ///
  byte    wbelig        187-187    ///
  double  awbwt         188-202    ///
  double  rawbwt_1      203-218    ///
  double  rawbwt_2      219-234    ///
  double  rawbwt_3      235-250    ///
  double  rawbwt_4      251-266    ///
  double  rawbwt_5      267-282    ///
  double  rawbwt_6      283-298    ///
  double  rawbwt_7      299-314    ///
  double  rawbwt_8      315-330    ///
  double  rawbwt_9      331-346    ///
  double  rawbwt_10     347-362    ///
  double  rawbwt_11     363-378    ///
  double  rawbwt_12     379-394    ///
  double  rawbwt_13     395-410    ///
  double  rawbwt_14     411-426    ///
  double  rawbwt_15     427-442    ///
  double  rawbwt_16     443-458    ///
  double  rawbwt_17     459-474    ///
  double  rawbwt_18     475-490    ///
  double  rawbwt_19     491-506    ///
  double  rawbwt_20     507-522    ///
  double  rawbwt_21     523-538    ///
  double  rawbwt_22     539-554    ///
  double  rawbwt_23     555-570    ///
  double  rawbwt_24     571-586    ///
  double  rawbwt_25     587-602    ///
  double  rawbwt_26     603-618    ///
  double  rawbwt_27     619-634    ///
  double  rawbwt_28     635-650    ///
  double  rawbwt_29     651-666    ///
  double  rawbwt_30     667-682    ///
  double  rawbwt_31     683-698    ///
  double  rawbwt_32     699-714    ///
  double  rawbwt_33     715-730    ///
  double  rawbwt_34     731-746    ///
  double  rawbwt_35     747-762    ///
  double  rawbwt_36     763-778    ///
  double  rawbwt_37     779-794    ///
  double  rawbwt_38     795-810    ///
  double  rawbwt_39     811-826    ///
  double  rawbwt_40     827-842    ///
  double  rawbwt_41     843-858    ///
  double  rawbwt_42     859-874    ///
  double  rawbwt_43     875-890    ///
  double  rawbwt_44     891-906    ///
  double  rawbwt_45     907-922    ///
  double  rawbwt_46     923-938    ///
  double  rawbwt_47     939-954    ///
  double  rawbwt_48     955-970    ///
  double  rawbwt_49     971-986    ///
  double  rawbwt_50     987-1002   ///
  double  rawbwt_51     1003-1018  ///
  double  rawbwt_52     1019-1034  ///
  double  rawbwt_53     1035-1050  ///
  double  rawbwt_54     1051-1066  ///
  double  rawbwt_55     1067-1082  ///
  double  rawbwt_56     1083-1098  ///
  double  rawbwt_57     1099-1114  ///
  double  rawbwt_58     1115-1130  ///
  double  rawbwt_59     1131-1146  ///
  double  rawbwt_60     1147-1162  ///
  double  rawbwt_61     1163-1178  ///
  double  rawbwt_62     1179-1194  ///
  double  rawbwt_63     1195-1210  ///
  double  rawbwt_64     1211-1226  ///
  double  rawbwt_65     1227-1242  ///
  double  rawbwt_66     1243-1258  ///
  double  rawbwt_67     1259-1274  ///
  double  rawbwt_68     1275-1290  ///
  double  rawbwt_69     1291-1306  ///
  double  rawbwt_70     1307-1322  ///
  double  rawbwt_71     1323-1338  ///
  double  rawbwt_72     1339-1354  ///
  double  rawbwt_73     1355-1370  ///
  double  rawbwt_74     1371-1386  ///
  double  rawbwt_75     1387-1402  ///
  double  rawbwt_76     1403-1418  ///
  double  rawbwt_77     1419-1434  ///
  double  rawbwt_78     1435-1450  ///
  double  rawbwt_79     1451-1466  ///
  double  rawbwt_80     1467-1482  ///
  double  rawbwt_81     1483-1498  ///
  double  rawbwt_82     1499-1514  ///
  double  rawbwt_83     1515-1530  ///
  double  rawbwt_84     1531-1546  ///
  double  rawbwt_85     1547-1562  ///
  double  rawbwt_86     1563-1578  ///
  double  rawbwt_87     1579-1594  ///
  double  rawbwt_88     1595-1610  ///
  double  rawbwt_89     1611-1626  ///
  double  rawbwt_90     1627-1642  ///
  double  rawbwt_91     1643-1658  ///
  double  rawbwt_92     1659-1674  ///
  double  rawbwt_93     1675-1690  ///
  double  rawbwt_94     1691-1706  ///
  double  rawbwt_95     1707-1722  ///
  double  rawbwt_96     1723-1738  ///
  double  rawbwt_97     1739-1754  ///
  double  rawbwt_98     1755-1770  ///
  double  rawbwt_99     1771-1786  ///
  double  rawbwt_100    1787-1802  ///
  double  rawbwt_101    1803-1818  ///
  double  rawbwt_102    1819-1834  ///
  double  rawbwt_103    1835-1850  ///
  double  rawbwt_104    1851-1866  ///
  double  rawbwt_105    1867-1882  ///
  double  rawbwt_106    1883-1898  ///
  double  rawbwt_107    1899-1914  ///
  double  rawbwt_108    1915-1930  ///
  double  rawbwt_109    1931-1946  ///
  double  rawbwt_110    1947-1962  ///
  double  rawbwt_111    1963-1978  ///
  double  rawbwt_112    1979-1994  ///
  double  rawbwt_113    1995-2010  ///
  double  rawbwt_114    2011-2026  ///
  double  rawbwt_115    2027-2042  ///
  double  rawbwt_116    2043-2058  ///
  double  rawbwt_117    2059-2074  ///
  double  rawbwt_118    2075-2090  ///
  double  rawbwt_119    2091-2106  ///
  double  rawbwt_120    2107-2122  ///
  double  rawbwt_121    2123-2138  ///
  double  rawbwt_122    2139-2154  ///
  double  rawbwt_123    2155-2170  ///
  double  rawbwt_124    2171-2186  ///
  double  rawbwt_125    2187-2202  ///
  double  rawbwt_126    2203-2218  ///
  double  rawbwt_127    2219-2234  ///
  double  rawbwt_128    2235-2250  ///
  double  rawbwt_129    2251-2266  ///
  double  rawbwt_130    2267-2282  ///
  double  rawbwt_131    2283-2298  ///
  double  rawbwt_132    2299-2314  ///
  double  rawbwt_133    2315-2330  ///
  double  rawbwt_134    2331-2346  ///
  double  rawbwt_135    2347-2362  ///
  double  rawbwt_136    2363-2378  ///
  double  rawbwt_137    2379-2394  ///
  double  rawbwt_138    2395-2410  ///
  double  rawbwt_139    2411-2426  ///
  double  rawbwt_140    2427-2442  ///
  double  rawbwt_141    2443-2458  ///
  double  rawbwt_142    2459-2474  ///
  double  rawbwt_143    2475-2490  ///
  double  rawbwt_144    2491-2506  ///
  double  rawbwt_145    2507-2522  ///
  double  rawbwt_146    2523-2538  ///
  double  rawbwt_147    2539-2554  ///
  double  rawbwt_148    2555-2570  ///
  double  rawbwt_149    2571-2586  ///
  double  rawbwt_150    2587-2602  ///
  double  rawbwt_151    2603-2618  ///
  double  rawbwt_152    2619-2634  ///
  double  rawbwt_153    2635-2650  ///
  double  rawbwt_154    2651-2666  ///
  double  rawbwt_155    2667-2682  ///
  double  rawbwt_156    2683-2698  ///
  double  rawbwt_157    2699-2714  ///
  double  rawbwt_158    2715-2730  ///
  double  rawbwt_159    2731-2746  ///
  double  rawbwt_160    2747-2762  ///
  byte    rawbwt        2763-2763  ///
  using `"atus_00020.dat"'

replace awbwt        = awbwt        / 1000000
replace rawbwt_1     = rawbwt_1     / 1000000
replace rawbwt_2     = rawbwt_2     / 1000000
replace rawbwt_3     = rawbwt_3     / 1000000
replace rawbwt_4     = rawbwt_4     / 1000000
replace rawbwt_5     = rawbwt_5     / 1000000
replace rawbwt_6     = rawbwt_6     / 1000000
replace rawbwt_7     = rawbwt_7     / 1000000
replace rawbwt_8     = rawbwt_8     / 1000000
replace rawbwt_9     = rawbwt_9     / 1000000
replace rawbwt_10    = rawbwt_10    / 1000000
replace rawbwt_11    = rawbwt_11    / 1000000
replace rawbwt_12    = rawbwt_12    / 1000000
replace rawbwt_13    = rawbwt_13    / 1000000
replace rawbwt_14    = rawbwt_14    / 1000000
replace rawbwt_15    = rawbwt_15    / 1000000
replace rawbwt_16    = rawbwt_16    / 1000000
replace rawbwt_17    = rawbwt_17    / 1000000
replace rawbwt_18    = rawbwt_18    / 1000000
replace rawbwt_19    = rawbwt_19    / 1000000
replace rawbwt_20    = rawbwt_20    / 1000000
replace rawbwt_21    = rawbwt_21    / 1000000
replace rawbwt_22    = rawbwt_22    / 1000000
replace rawbwt_23    = rawbwt_23    / 1000000
replace rawbwt_24    = rawbwt_24    / 1000000
replace rawbwt_25    = rawbwt_25    / 1000000
replace rawbwt_26    = rawbwt_26    / 1000000
replace rawbwt_27    = rawbwt_27    / 1000000
replace rawbwt_28    = rawbwt_28    / 1000000
replace rawbwt_29    = rawbwt_29    / 1000000
replace rawbwt_30    = rawbwt_30    / 1000000
replace rawbwt_31    = rawbwt_31    / 1000000
replace rawbwt_32    = rawbwt_32    / 1000000
replace rawbwt_33    = rawbwt_33    / 1000000
replace rawbwt_34    = rawbwt_34    / 1000000
replace rawbwt_35    = rawbwt_35    / 1000000
replace rawbwt_36    = rawbwt_36    / 1000000
replace rawbwt_37    = rawbwt_37    / 1000000
replace rawbwt_38    = rawbwt_38    / 1000000
replace rawbwt_39    = rawbwt_39    / 1000000
replace rawbwt_40    = rawbwt_40    / 1000000
replace rawbwt_41    = rawbwt_41    / 1000000
replace rawbwt_42    = rawbwt_42    / 1000000
replace rawbwt_43    = rawbwt_43    / 1000000
replace rawbwt_44    = rawbwt_44    / 1000000
replace rawbwt_45    = rawbwt_45    / 1000000
replace rawbwt_46    = rawbwt_46    / 1000000
replace rawbwt_47    = rawbwt_47    / 1000000
replace rawbwt_48    = rawbwt_48    / 1000000
replace rawbwt_49    = rawbwt_49    / 1000000
replace rawbwt_50    = rawbwt_50    / 1000000
replace rawbwt_51    = rawbwt_51    / 1000000
replace rawbwt_52    = rawbwt_52    / 1000000
replace rawbwt_53    = rawbwt_53    / 1000000
replace rawbwt_54    = rawbwt_54    / 1000000
replace rawbwt_55    = rawbwt_55    / 1000000
replace rawbwt_56    = rawbwt_56    / 1000000
replace rawbwt_57    = rawbwt_57    / 1000000
replace rawbwt_58    = rawbwt_58    / 1000000
replace rawbwt_59    = rawbwt_59    / 1000000
replace rawbwt_60    = rawbwt_60    / 1000000
replace rawbwt_61    = rawbwt_61    / 1000000
replace rawbwt_62    = rawbwt_62    / 1000000
replace rawbwt_63    = rawbwt_63    / 1000000
replace rawbwt_64    = rawbwt_64    / 1000000
replace rawbwt_65    = rawbwt_65    / 1000000
replace rawbwt_66    = rawbwt_66    / 1000000
replace rawbwt_67    = rawbwt_67    / 1000000
replace rawbwt_68    = rawbwt_68    / 1000000
replace rawbwt_69    = rawbwt_69    / 1000000
replace rawbwt_70    = rawbwt_70    / 1000000
replace rawbwt_71    = rawbwt_71    / 1000000
replace rawbwt_72    = rawbwt_72    / 1000000
replace rawbwt_73    = rawbwt_73    / 1000000
replace rawbwt_74    = rawbwt_74    / 1000000
replace rawbwt_75    = rawbwt_75    / 1000000
replace rawbwt_76    = rawbwt_76    / 1000000
replace rawbwt_77    = rawbwt_77    / 1000000
replace rawbwt_78    = rawbwt_78    / 1000000
replace rawbwt_79    = rawbwt_79    / 1000000
replace rawbwt_80    = rawbwt_80    / 1000000
replace rawbwt_81    = rawbwt_81    / 1000000
replace rawbwt_82    = rawbwt_82    / 1000000
replace rawbwt_83    = rawbwt_83    / 1000000
replace rawbwt_84    = rawbwt_84    / 1000000
replace rawbwt_85    = rawbwt_85    / 1000000
replace rawbwt_86    = rawbwt_86    / 1000000
replace rawbwt_87    = rawbwt_87    / 1000000
replace rawbwt_88    = rawbwt_88    / 1000000
replace rawbwt_89    = rawbwt_89    / 1000000
replace rawbwt_90    = rawbwt_90    / 1000000
replace rawbwt_91    = rawbwt_91    / 1000000
replace rawbwt_92    = rawbwt_92    / 1000000
replace rawbwt_93    = rawbwt_93    / 1000000
replace rawbwt_94    = rawbwt_94    / 1000000
replace rawbwt_95    = rawbwt_95    / 1000000
replace rawbwt_96    = rawbwt_96    / 1000000
replace rawbwt_97    = rawbwt_97    / 1000000
replace rawbwt_98    = rawbwt_98    / 1000000
replace rawbwt_99    = rawbwt_99    / 1000000
replace rawbwt_100   = rawbwt_100   / 1000000
replace rawbwt_101   = rawbwt_101   / 1000000
replace rawbwt_102   = rawbwt_102   / 1000000
replace rawbwt_103   = rawbwt_103   / 1000000
replace rawbwt_104   = rawbwt_104   / 1000000
replace rawbwt_105   = rawbwt_105   / 1000000
replace rawbwt_106   = rawbwt_106   / 1000000
replace rawbwt_107   = rawbwt_107   / 1000000
replace rawbwt_108   = rawbwt_108   / 1000000
replace rawbwt_109   = rawbwt_109   / 1000000
replace rawbwt_110   = rawbwt_110   / 1000000
replace rawbwt_111   = rawbwt_111   / 1000000
replace rawbwt_112   = rawbwt_112   / 1000000
replace rawbwt_113   = rawbwt_113   / 1000000
replace rawbwt_114   = rawbwt_114   / 1000000
replace rawbwt_115   = rawbwt_115   / 1000000
replace rawbwt_116   = rawbwt_116   / 1000000
replace rawbwt_117   = rawbwt_117   / 1000000
replace rawbwt_118   = rawbwt_118   / 1000000
replace rawbwt_119   = rawbwt_119   / 1000000
replace rawbwt_120   = rawbwt_120   / 1000000
replace rawbwt_121   = rawbwt_121   / 1000000
replace rawbwt_122   = rawbwt_122   / 1000000
replace rawbwt_123   = rawbwt_123   / 1000000
replace rawbwt_124   = rawbwt_124   / 1000000
replace rawbwt_125   = rawbwt_125   / 1000000
replace rawbwt_126   = rawbwt_126   / 1000000
replace rawbwt_127   = rawbwt_127   / 1000000
replace rawbwt_128   = rawbwt_128   / 1000000
replace rawbwt_129   = rawbwt_129   / 1000000
replace rawbwt_130   = rawbwt_130   / 1000000
replace rawbwt_131   = rawbwt_131   / 1000000
replace rawbwt_132   = rawbwt_132   / 1000000
replace rawbwt_133   = rawbwt_133   / 1000000
replace rawbwt_134   = rawbwt_134   / 1000000
replace rawbwt_135   = rawbwt_135   / 1000000
replace rawbwt_136   = rawbwt_136   / 1000000
replace rawbwt_137   = rawbwt_137   / 1000000
replace rawbwt_138   = rawbwt_138   / 1000000
replace rawbwt_139   = rawbwt_139   / 1000000
replace rawbwt_140   = rawbwt_140   / 1000000
replace rawbwt_141   = rawbwt_141   / 1000000
replace rawbwt_142   = rawbwt_142   / 1000000
replace rawbwt_143   = rawbwt_143   / 1000000
replace rawbwt_144   = rawbwt_144   / 1000000
replace rawbwt_145   = rawbwt_145   / 1000000
replace rawbwt_146   = rawbwt_146   / 1000000
replace rawbwt_147   = rawbwt_147   / 1000000
replace rawbwt_148   = rawbwt_148   / 1000000
replace rawbwt_149   = rawbwt_149   / 1000000
replace rawbwt_150   = rawbwt_150   / 1000000
replace rawbwt_151   = rawbwt_151   / 1000000
replace rawbwt_152   = rawbwt_152   / 1000000
replace rawbwt_153   = rawbwt_153   / 1000000
replace rawbwt_154   = rawbwt_154   / 1000000
replace rawbwt_155   = rawbwt_155   / 1000000
replace rawbwt_156   = rawbwt_156   / 1000000
replace rawbwt_157   = rawbwt_157   / 1000000
replace rawbwt_158   = rawbwt_158   / 1000000
replace rawbwt_159   = rawbwt_159   / 1000000
replace rawbwt_160   = rawbwt_160   / 1000000

format caseid       %14.0f
format wt06         %17.0f
format awbwt        %15.6f
format rawbwt_1     %16.6f
format rawbwt_2     %16.6f
format rawbwt_3     %16.6f
format rawbwt_4     %16.6f
format rawbwt_5     %16.6f
format rawbwt_6     %16.6f
format rawbwt_7     %16.6f
format rawbwt_8     %16.6f
format rawbwt_9     %16.6f
format rawbwt_10    %16.6f
format rawbwt_11    %16.6f
format rawbwt_12    %16.6f
format rawbwt_13    %16.6f
format rawbwt_14    %16.6f
format rawbwt_15    %16.6f
format rawbwt_16    %16.6f
format rawbwt_17    %16.6f
format rawbwt_18    %16.6f
format rawbwt_19    %16.6f
format rawbwt_20    %16.6f
format rawbwt_21    %16.6f
format rawbwt_22    %16.6f
format rawbwt_23    %16.6f
format rawbwt_24    %16.6f
format rawbwt_25    %16.6f
format rawbwt_26    %16.6f
format rawbwt_27    %16.6f
format rawbwt_28    %16.6f
format rawbwt_29    %16.6f
format rawbwt_30    %16.6f
format rawbwt_31    %16.6f
format rawbwt_32    %16.6f
format rawbwt_33    %16.6f
format rawbwt_34    %16.6f
format rawbwt_35    %16.6f
format rawbwt_36    %16.6f
format rawbwt_37    %16.6f
format rawbwt_38    %16.6f
format rawbwt_39    %16.6f
format rawbwt_40    %16.6f
format rawbwt_41    %16.6f
format rawbwt_42    %16.6f
format rawbwt_43    %16.6f
format rawbwt_44    %16.6f
format rawbwt_45    %16.6f
format rawbwt_46    %16.6f
format rawbwt_47    %16.6f
format rawbwt_48    %16.6f
format rawbwt_49    %16.6f
format rawbwt_50    %16.6f
format rawbwt_51    %16.6f
format rawbwt_52    %16.6f
format rawbwt_53    %16.6f
format rawbwt_54    %16.6f
format rawbwt_55    %16.6f
format rawbwt_56    %16.6f
format rawbwt_57    %16.6f
format rawbwt_58    %16.6f
format rawbwt_59    %16.6f
format rawbwt_60    %16.6f
format rawbwt_61    %16.6f
format rawbwt_62    %16.6f
format rawbwt_63    %16.6f
format rawbwt_64    %16.6f
format rawbwt_65    %16.6f
format rawbwt_66    %16.6f
format rawbwt_67    %16.6f
format rawbwt_68    %16.6f
format rawbwt_69    %16.6f
format rawbwt_70    %16.6f
format rawbwt_71    %16.6f
format rawbwt_72    %16.6f
format rawbwt_73    %16.6f
format rawbwt_74    %16.6f
format rawbwt_75    %16.6f
format rawbwt_76    %16.6f
format rawbwt_77    %16.6f
format rawbwt_78    %16.6f
format rawbwt_79    %16.6f
format rawbwt_80    %16.6f
format rawbwt_81    %16.6f
format rawbwt_82    %16.6f
format rawbwt_83    %16.6f
format rawbwt_84    %16.6f
format rawbwt_85    %16.6f
format rawbwt_86    %16.6f
format rawbwt_87    %16.6f
format rawbwt_88    %16.6f
format rawbwt_89    %16.6f
format rawbwt_90    %16.6f
format rawbwt_91    %16.6f
format rawbwt_92    %16.6f
format rawbwt_93    %16.6f
format rawbwt_94    %16.6f
format rawbwt_95    %16.6f
format rawbwt_96    %16.6f
format rawbwt_97    %16.6f
format rawbwt_98    %16.6f
format rawbwt_99    %16.6f
format rawbwt_100   %16.6f
format rawbwt_101   %16.6f
format rawbwt_102   %16.6f
format rawbwt_103   %16.6f
format rawbwt_104   %16.6f
format rawbwt_105   %16.6f
format rawbwt_106   %16.6f
format rawbwt_107   %16.6f
format rawbwt_108   %16.6f
format rawbwt_109   %16.6f
format rawbwt_110   %16.6f
format rawbwt_111   %16.6f
format rawbwt_112   %16.6f
format rawbwt_113   %16.6f
format rawbwt_114   %16.6f
format rawbwt_115   %16.6f
format rawbwt_116   %16.6f
format rawbwt_117   %16.6f
format rawbwt_118   %16.6f
format rawbwt_119   %16.6f
format rawbwt_120   %16.6f
format rawbwt_121   %16.6f
format rawbwt_122   %16.6f
format rawbwt_123   %16.6f
format rawbwt_124   %16.6f
format rawbwt_125   %16.6f
format rawbwt_126   %16.6f
format rawbwt_127   %16.6f
format rawbwt_128   %16.6f
format rawbwt_129   %16.6f
format rawbwt_130   %16.6f
format rawbwt_131   %16.6f
format rawbwt_132   %16.6f
format rawbwt_133   %16.6f
format rawbwt_134   %16.6f
format rawbwt_135   %16.6f
format rawbwt_136   %16.6f
format rawbwt_137   %16.6f
format rawbwt_138   %16.6f
format rawbwt_139   %16.6f
format rawbwt_140   %16.6f
format rawbwt_141   %16.6f
format rawbwt_142   %16.6f
format rawbwt_143   %16.6f
format rawbwt_144   %16.6f
format rawbwt_145   %16.6f
format rawbwt_146   %16.6f
format rawbwt_147   %16.6f
format rawbwt_148   %16.6f
format rawbwt_149   %16.6f
format rawbwt_150   %16.6f
format rawbwt_151   %16.6f
format rawbwt_152   %16.6f
format rawbwt_153   %16.6f
format rawbwt_154   %16.6f
format rawbwt_155   %16.6f
format rawbwt_156   %16.6f
format rawbwt_157   %16.6f
format rawbwt_158   %16.6f
format rawbwt_159   %16.6f
format rawbwt_160   %16.6f

label var rectype      `"Record Type"'
label var caseid       `"ATUS Case ID"'
label var year         `"Survey year"'
label var pernum       `"Person number (general)"'
label var lineno       `"Person line number"'
label var lineno_cps8  `"Person line number (CPS)"'
label var day          `"ATUS interview day of the week"'
label var wt06         `"Person weight, 2006 methodology"'
label var age          `"Age"'
label var sex          `"Sex"'
label var race         `"Race"'
label var hispan       `"Hispanic origin"'
label var marst        `"Marital status"'
label var relate       `"Relationship to ATUS respondent"'
label var educ         `"Highest level of school completed"'
label var educyrs      `"Years of education"'
label var empstat      `"Labor force status"'
label var fullpart     `"Full time/part time employment status"'
label var uhrsworkt    `"Hours usually worked per week"'
label var uhrswork1    `"Hours usually worked per week at main job"'
label var uhrswork2    `"Hours usually worked per week at other jobs"'
label var spousepres   `"Spouse or unmarried partner in household"'
label var spage        `"Age (spouse or partner)"'
label var spsex        `"Sex of respondent's spouse or unmarried partner"'
label var spempnot     `"Employed (spouse or partner)"'
label var spempstat    `"Employment status (spouse or partner)"'
label var spusualhrs   `"Usual work hours (spouse or partner)"'
label var pernum_sp    `"Person number (general) [of spouse]"'
label var lineno_sp    `"Person line number [of spouse]"'
label var age_sp       `"Age [of spouse]"'
label var sex_sp       `"Sex [of spouse]"'
label var race_sp      `"Race [of spouse]"'
label var hispan_sp    `"Hispanic origin [of spouse]"'
label var educ_sp      `"Highest level of school completed [of spouse]"'
label var educyrs_sp   `"Years of education [of spouse]"'
label var empstat_sp   `"Labor force status [of spouse]"'
label var uhrsworkt_sp `"Hours usually worked per week [of spouse]"'
label var activity     `"Activity"'
label var where        `"Location of activity"'
label var duration     `"Duration of activity"'
label var actline      `"Activity line number"'
label var start        `"Activity start time"'
label var stop         `"Activity stop time"'
label var scpain       `"Pain scale"'
label var schappy      `"Happiness scale"'
label var scsad        `"Sadness scale"'
label var sctired      `"Fatigue scale"'
label var scstress     `"Stress scale"'
label var interact     `"Interacting during activity"'
label var meaning      `"Meaningfulness scale"'
label var osad         `"Order of SCSAD"'
label var ohappy       `"Order of SCHAPPY"'
label var opain        `"Order of SCPAIN"'
label var otired       `"Order of SCTIRED"'
label var ostress      `"Order of SCSTRESS"'
label var wbelig       `"Activity eligible for well-being module selection"'
label var awbwt        `"Well-being Module final statistical weight, activity-level"'
label var rawbwt_1     `"Replicate weight 1, well-being module activity-level weight"'
label var rawbwt_2     `"Replicate weight 2, well-being module activity-level weight"'
label var rawbwt_3     `"Replicate weight 3, well-being module activity-level weight"'
label var rawbwt_4     `"Replicate weight 4, well-being module activity-level weight"'
label var rawbwt_5     `"Replicate weight 5, well-being module activity-level weight"'
label var rawbwt_6     `"Replicate weight 6, well-being module activity-level weight"'
label var rawbwt_7     `"Replicate weight 7, well-being module activity-level weight"'
label var rawbwt_8     `"Replicate weight 8, well-being module activity-level weight"'
label var rawbwt_9     `"Replicate weight 9, well-being module activity-level weight"'
label var rawbwt_10    `"Replicate weight 10, well-being module activity-level weight"'
label var rawbwt_11    `"Replicate weight 11, well-being module activity-level weight"'
label var rawbwt_12    `"Replicate weight 12, well-being module activity-level weight"'
label var rawbwt_13    `"Replicate weight 13, well-being module activity-level weight"'
label var rawbwt_14    `"Replicate weight 14, well-being module activity-level weight"'
label var rawbwt_15    `"Replicate weight 15, well-being module activity-level weight"'
label var rawbwt_16    `"Replicate weight 16, well-being module activity-level weight"'
label var rawbwt_17    `"Replicate weight 17, well-being module activity-level weight"'
label var rawbwt_18    `"Replicate weight 18, well-being module activity-level weight"'
label var rawbwt_19    `"Replicate weight 19, well-being module activity-level weight"'
label var rawbwt_20    `"Replicate weight 20, well-being module activity-level weight"'
label var rawbwt_21    `"Replicate weight 21, well-being module activity-level weight"'
label var rawbwt_22    `"Replicate weight 22, well-being module activity-level weight"'
label var rawbwt_23    `"Replicate weight 23, well-being module activity-level weight"'
label var rawbwt_24    `"Replicate weight 24, well-being module activity-level weight"'
label var rawbwt_25    `"Replicate weight 25, well-being module activity-level weight"'
label var rawbwt_26    `"Replicate weight 26, well-being module activity-level weight"'
label var rawbwt_27    `"Replicate weight 27, well-being module activity-level weight"'
label var rawbwt_28    `"Replicate weight 28, well-being module activity-level weight"'
label var rawbwt_29    `"Replicate weight 29, well-being module activity-level weight"'
label var rawbwt_30    `"Replicate weight 30, well-being module activity-level weight"'
label var rawbwt_31    `"Replicate weight 31, well-being module activity-level weight"'
label var rawbwt_32    `"Replicate weight 32, well-being module activity-level weight"'
label var rawbwt_33    `"Replicate weight 33, well-being module activity-level weight"'
label var rawbwt_34    `"Replicate weight 34, well-being module activity-level weight"'
label var rawbwt_35    `"Replicate weight 35, well-being module activity-level weight"'
label var rawbwt_36    `"Replicate weight 36, well-being module activity-level weight"'
label var rawbwt_37    `"Replicate weight 37, well-being module activity-level weight"'
label var rawbwt_38    `"Replicate weight 38, well-being module activity-level weight"'
label var rawbwt_39    `"Replicate weight 39, well-being module activity-level weight"'
label var rawbwt_40    `"Replicate weight 40, well-being module activity-level weight"'
label var rawbwt_41    `"Replicate weight 41, well-being module activity-level weight"'
label var rawbwt_42    `"Replicate weight 42, well-being module activity-level weight"'
label var rawbwt_43    `"Replicate weight 43, well-being module activity-level weight"'
label var rawbwt_44    `"Replicate weight 44, well-being module activity-level weight"'
label var rawbwt_45    `"Replicate weight 45, well-being module activity-level weight"'
label var rawbwt_46    `"Replicate weight 46, well-being module activity-level weight"'
label var rawbwt_47    `"Replicate weight 47, well-being module activity-level weight"'
label var rawbwt_48    `"Replicate weight 48, well-being module activity-level weight"'
label var rawbwt_49    `"Replicate weight 49, well-being module activity-level weight"'
label var rawbwt_50    `"Replicate weight 50, well-being module activity-level weight"'
label var rawbwt_51    `"Replicate weight 51, well-being module activity-level weight"'
label var rawbwt_52    `"Replicate weight 52, well-being module activity-level weight"'
label var rawbwt_53    `"Replicate weight 53, well-being module activity-level weight"'
label var rawbwt_54    `"Replicate weight 54, well-being module activity-level weight"'
label var rawbwt_55    `"Replicate weight 55, well-being module activity-level weight"'
label var rawbwt_56    `"Replicate weight 56, well-being module activity-level weight"'
label var rawbwt_57    `"Replicate weight 57, well-being module activity-level weight"'
label var rawbwt_58    `"Replicate weight 58, well-being module activity-level weight"'
label var rawbwt_59    `"Replicate weight 59, well-being module activity-level weight"'
label var rawbwt_60    `"Replicate weight 60, well-being module activity-level weight"'
label var rawbwt_61    `"Replicate weight 61, well-being module activity-level weight"'
label var rawbwt_62    `"Replicate weight 62, well-being module activity-level weight"'
label var rawbwt_63    `"Replicate weight 63, well-being module activity-level weight"'
label var rawbwt_64    `"Replicate weight 64, well-being module activity-level weight"'
label var rawbwt_65    `"Replicate weight 65, well-being module activity-level weight"'
label var rawbwt_66    `"Replicate weight 66, well-being module activity-level weight"'
label var rawbwt_67    `"Replicate weight 67, well-being module activity-level weight"'
label var rawbwt_68    `"Replicate weight 68, well-being module activity-level weight"'
label var rawbwt_69    `"Replicate weight 69, well-being module activity-level weight"'
label var rawbwt_70    `"Replicate weight 70, well-being module activity-level weight"'
label var rawbwt_71    `"Replicate weight 71, well-being module activity-level weight"'
label var rawbwt_72    `"Replicate weight 72, well-being module activity-level weight"'
label var rawbwt_73    `"Replicate weight 73, well-being module activity-level weight"'
label var rawbwt_74    `"Replicate weight 74, well-being module activity-level weight"'
label var rawbwt_75    `"Replicate weight 75, well-being module activity-level weight"'
label var rawbwt_76    `"Replicate weight 76, well-being module activity-level weight"'
label var rawbwt_77    `"Replicate weight 77, well-being module activity-level weight"'
label var rawbwt_78    `"Replicate weight 78, well-being module activity-level weight"'
label var rawbwt_79    `"Replicate weight 79, well-being module activity-level weight"'
label var rawbwt_80    `"Replicate weight 80, well-being module activity-level weight"'
label var rawbwt_81    `"Replicate weight 81, well-being module activity-level weight"'
label var rawbwt_82    `"Replicate weight 82, well-being module activity-level weight"'
label var rawbwt_83    `"Replicate weight 83, well-being module activity-level weight"'
label var rawbwt_84    `"Replicate weight 84, well-being module activity-level weight"'
label var rawbwt_85    `"Replicate weight 85, well-being module activity-level weight"'
label var rawbwt_86    `"Replicate weight 86, well-being module activity-level weight"'
label var rawbwt_87    `"Replicate weight 87, well-being module activity-level weight"'
label var rawbwt_88    `"Replicate weight 88, well-being module activity-level weight"'
label var rawbwt_89    `"Replicate weight 89, well-being module activity-level weight"'
label var rawbwt_90    `"Replicate weight 90, well-being module activity-level weight"'
label var rawbwt_91    `"Replicate weight 91, well-being module activity-level weight"'
label var rawbwt_92    `"Replicate weight 92, well-being module activity-level weight"'
label var rawbwt_93    `"Replicate weight 93, well-being module activity-level weight"'
label var rawbwt_94    `"Replicate weight 94, well-being module activity-level weight"'
label var rawbwt_95    `"Replicate weight 95, well-being module activity-level weight"'
label var rawbwt_96    `"Replicate weight 96, well-being module activity-level weight"'
label var rawbwt_97    `"Replicate weight 97, well-being module activity-level weight"'
label var rawbwt_98    `"Replicate weight 98, well-being module activity-level weight"'
label var rawbwt_99    `"Replicate weight 99, well-being module activity-level weight"'
label var rawbwt_100   `"Replicate weight 100, well-being module activity-level weight"'
label var rawbwt_101   `"Replicate weight 101, well-being module activity-level weight"'
label var rawbwt_102   `"Replicate weight 102, well-being module activity-level weight"'
label var rawbwt_103   `"Replicate weight 103, well-being module activity-level weight"'
label var rawbwt_104   `"Replicate weight 104, well-being module activity-level weight"'
label var rawbwt_105   `"Replicate weight 105, well-being module activity-level weight"'
label var rawbwt_106   `"Replicate weight 106, well-being module activity-level weight"'
label var rawbwt_107   `"Replicate weight 107, well-being module activity-level weight"'
label var rawbwt_108   `"Replicate weight 108, well-being module activity-level weight"'
label var rawbwt_109   `"Replicate weight 109, well-being module activity-level weight"'
label var rawbwt_110   `"Replicate weight 110, well-being module activity-level weight"'
label var rawbwt_111   `"Replicate weight 111, well-being module activity-level weight"'
label var rawbwt_112   `"Replicate weight 112, well-being module activity-level weight"'
label var rawbwt_113   `"Replicate weight 113, well-being module activity-level weight"'
label var rawbwt_114   `"Replicate weight 114, well-being module activity-level weight"'
label var rawbwt_115   `"Replicate weight 115, well-being module activity-level weight"'
label var rawbwt_116   `"Replicate weight 116, well-being module activity-level weight"'
label var rawbwt_117   `"Replicate weight 117, well-being module activity-level weight"'
label var rawbwt_118   `"Replicate weight 118, well-being module activity-level weight"'
label var rawbwt_119   `"Replicate weight 119, well-being module activity-level weight"'
label var rawbwt_120   `"Replicate weight 120, well-being module activity-level weight"'
label var rawbwt_121   `"Replicate weight 121, well-being module activity-level weight"'
label var rawbwt_122   `"Replicate weight 122, well-being module activity-level weight"'
label var rawbwt_123   `"Replicate weight 123, well-being module activity-level weight"'
label var rawbwt_124   `"Replicate weight 124, well-being module activity-level weight"'
label var rawbwt_125   `"Replicate weight 125, well-being module activity-level weight"'
label var rawbwt_126   `"Replicate weight 126, well-being module activity-level weight"'
label var rawbwt_127   `"Replicate weight 127, well-being module activity-level weight"'
label var rawbwt_128   `"Replicate weight 128, well-being module activity-level weight"'
label var rawbwt_129   `"Replicate weight 129, well-being module activity-level weight"'
label var rawbwt_130   `"Replicate weight 130, well-being module activity-level weight"'
label var rawbwt_131   `"Replicate weight 131, well-being module activity-level weight"'
label var rawbwt_132   `"Replicate weight 132, well-being module activity-level weight"'
label var rawbwt_133   `"Replicate weight 133, well-being module activity-level weight"'
label var rawbwt_134   `"Replicate weight 134, well-being module activity-level weight"'
label var rawbwt_135   `"Replicate weight 135, well-being module activity-level weight"'
label var rawbwt_136   `"Replicate weight 136, well-being module activity-level weight"'
label var rawbwt_137   `"Replicate weight 137, well-being module activity-level weight"'
label var rawbwt_138   `"Replicate weight 138, well-being module activity-level weight"'
label var rawbwt_139   `"Replicate weight 139, well-being module activity-level weight"'
label var rawbwt_140   `"Replicate weight 140, well-being module activity-level weight"'
label var rawbwt_141   `"Replicate weight 141, well-being module activity-level weight"'
label var rawbwt_142   `"Replicate weight 142, well-being module activity-level weight"'
label var rawbwt_143   `"Replicate weight 143, well-being module activity-level weight"'
label var rawbwt_144   `"Replicate weight 144, well-being module activity-level weight"'
label var rawbwt_145   `"Replicate weight 145, well-being module activity-level weight"'
label var rawbwt_146   `"Replicate weight 146, well-being module activity-level weight"'
label var rawbwt_147   `"Replicate weight 147, well-being module activity-level weight"'
label var rawbwt_148   `"Replicate weight 148, well-being module activity-level weight"'
label var rawbwt_149   `"Replicate weight 149, well-being module activity-level weight"'
label var rawbwt_150   `"Replicate weight 150, well-being module activity-level weight"'
label var rawbwt_151   `"Replicate weight 151, well-being module activity-level weight"'
label var rawbwt_152   `"Replicate weight 152, well-being module activity-level weight"'
label var rawbwt_153   `"Replicate weight 153, well-being module activity-level weight"'
label var rawbwt_154   `"Replicate weight 154, well-being module activity-level weight"'
label var rawbwt_155   `"Replicate weight 155, well-being module activity-level weight"'
label var rawbwt_156   `"Replicate weight 156, well-being module activity-level weight"'
label var rawbwt_157   `"Replicate weight 157, well-being module activity-level weight"'
label var rawbwt_158   `"Replicate weight 158, well-being module activity-level weight"'
label var rawbwt_159   `"Replicate weight 159, well-being module activity-level weight"'
label var rawbwt_160   `"Replicate weight 160, well-being module activity-level weight"'
label var rawbwt       `"Replicate weight, well-being module activity-level weight"'

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

label define pernum_sp_lbl 01 `"1"'
label define pernum_sp_lbl 02 `"2"', add
label define pernum_sp_lbl 03 `"3"', add
label define pernum_sp_lbl 04 `"4"', add
label define pernum_sp_lbl 05 `"5"', add
label define pernum_sp_lbl 06 `"6"', add
label define pernum_sp_lbl 07 `"7"', add
label define pernum_sp_lbl 08 `"8"', add
label define pernum_sp_lbl 09 `"9"', add
label define pernum_sp_lbl 10 `"10"', add
label define pernum_sp_lbl 11 `"11"', add
label define pernum_sp_lbl 12 `"12"', add
label define pernum_sp_lbl 13 `"13"', add
label define pernum_sp_lbl 14 `"14"', add
label define pernum_sp_lbl 15 `"15"', add
label define pernum_sp_lbl 16 `"16"', add
label values pernum_sp pernum_sp_lbl

label define lineno_sp_lbl 001 `"1"'
label define lineno_sp_lbl 002 `"2"', add
label define lineno_sp_lbl 003 `"3"', add
label define lineno_sp_lbl 004 `"4"', add
label define lineno_sp_lbl 005 `"5"', add
label define lineno_sp_lbl 006 `"6"', add
label define lineno_sp_lbl 007 `"7"', add
label define lineno_sp_lbl 008 `"8"', add
label define lineno_sp_lbl 009 `"9"', add
label define lineno_sp_lbl 010 `"10"', add
label define lineno_sp_lbl 011 `"11"', add
label define lineno_sp_lbl 012 `"12"', add
label define lineno_sp_lbl 013 `"13"', add
label define lineno_sp_lbl 014 `"14"', add
label define lineno_sp_lbl 015 `"15"', add
label define lineno_sp_lbl 016 `"16"', add
label define lineno_sp_lbl 017 `"17"', add
label define lineno_sp_lbl 018 `"18"', add
label define lineno_sp_lbl 019 `"19"', add
label define lineno_sp_lbl 999 `"NIU (Not in universe)"', add
label values lineno_sp lineno_sp_lbl

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

save "wellbeing_activity"
