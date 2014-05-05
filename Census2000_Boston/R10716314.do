/* 
* TODO: 1. Place the .txt data file and the dictionary file you downloaded in the work folder, or enter the full path to these files!
*       2. You may have to increase memory using the 'set mem' statement. It is commented out in the code bellow.
*
* If you have any questions or need assistance contact info@socialexplorer.com.
*/
cd "C:\Users\Jackie\Dropbox\Civic Tech\CFB_Gentrification\Census2000_Boston"
///set mem 512m
set more off
infile using "R10716314.dct", using("R10716314_SL140.txt")

rename FIPS tractid00
drop NAME QName SUMLEV GEOCOMP STATECE STATE COUNTY COUNTYSC COUSUB TRACT

rename T001_001 totalpop
drop T003_002 T003_001 T003_003 T004_001 T004_002 T004_003 PCT_T004_002 PCT_T004_003 
drop T005_001 T005_002 T005_003 PCT_T005_002 PCT_T005_003 
drop T008_001 T008_002 T008_003 T008_004 T008_005 T008_006 T008_007 T008_008 T008_009 T008_010 T008_011 T008_012 T008_013 
drop PCT_T008_002 PCT_T008_003 PCT_T008_004 PCT_T008_005 PCT_T008_006 PCT_T008_007 PCT_T008_008 PCT_T008_009 PCT_T008_010 PCT_T008_011 PCT_T008_012 PCT_T008_013 
drop T014_001 T014_002 T014_003 T014_004 T014_005 T014_006 T014_007 T014_008 
drop PCT_T014_002 PCT_T014_003 PCT_T014_004 PCT_T014_005 PCT_T014_006 PCT_T014_007 PCT_T014_008

rename T020_001 households
rename PCT_T025_006 pcthhchild

drop T020_002 T020_003 T020_004 T020_005 T020_006 T020_007 T020_008 T020_009 
drop PCT_T020_002 PCT_T020_003 PCT_T020_004 PCT_T020_005 PCT_T020_006 PCT_T020_007 PCT_T020_008 PCT_T020_009 
drop T025_001 T025_002 T025_003 T025_004 T025_005 T025_006 T025_007 T025_008 T025_009 T025_010 
drop T025_011 T025_012 T025_013 T025_014 T025_015 T025_016 T025_017 T025_018 
drop PCT_T025_002 PCT_T025_003 PCT_T025_004 PCT_T025_005 PCT_T025_007 PCT_T025_008 PCT_T025_009 PCT_T025_010 
drop PCT_T025_011 PCT_T025_012 PCT_T025_013 PCT_T025_014 PCT_T025_015 PCT_T025_016 PCT_T025_017 PCT_T025_018

gen pctcollege = PCT_T040_005 + PCT_T040_005 + PCT_T040_006 + PCT_T040_007 + PCT_T040_008
drop T040_001 T040_002 T040_003 T040_004 T040_005 T040_006 T040_007 T040_008 
drop PCT_T040_002 PCT_T040_003 PCT_T040_004 PCT_T040_005 PCT_T040_006 PCT_T040_007 PCT_T040_008 
drop T041_001 T041_002 T041_003 T041_004 T041_005 T041_006 T041_007 T041_008 
drop PCT_T041_002 PCT_T041_003 PCT_T041_004 PCT_T041_005 PCT_T041_006 PCT_T041_007 PCT_T041_008 
drop T042_001 T042_002 T042_003 T042_004 T042_005 T042_006 T042_007 T042_008 
drop PCT_T042_002 PCT_T042_003 PCT_T042_004 PCT_T042_005 PCT_T042_006 PCT_T042_007 PCT_T042_008

drop T055_001 T055_002 T055_003 PCT_T055_002 PCT_T055_003 T059_001 T059_002 T059_003 
drop PCT_T059_002 PCT_T059_003 T060_001 T060_002 T060_003 PCT_T060_002 PCT_T060_003 
drop T061_001 T061_002 T061_003 PCT_T061_002 PCT_T061_003 T062_001 T062_002 T062_003 
drop PCT_T062_002 PCT_T062_003 T063_001 T063_002 T063_003 PCT_T063_002 PCT_T063_003 
drop T064_001 T064_002 T064_003 PCT_T064_002 PCT_T064_003 T065_001 T065_002 T065_003 PCT_T065_002 PCT_T065_003 
drop T066_001 T066_002 T066_003 PCT_T066_002 PCT_T066_003 T067_001 T067_002 T067_003 
drop PCT_T067_002 PCT_T067_003 T068_001 T068_002 T068_003 PCT_T068_002 PCT_T068_003

rename PCT_T085_013 pctind_finance
rename PCT_T085_016 pctind_professional
gen pctocc_profmanage = ( T088_002 + T088_003 + T087_002 + T087_003) / ( T087_001 + T088_001) * 100

drop T069_001 T069_002 T069_003 T069_004 T069_005 T069_006 T069_007 
drop PCT_T069_002 PCT_T069_003 PCT_T069_004 PCT_T069_005 PCT_T069_006 PCT_T069_007 
drop T073_001 T073_002 T073_003 PCT_T073_002 PCT_T073_003 
drop T085_001 T085_002 T085_003 T085_004 T085_005 T085_006 T085_007 T085_008 T085_009 T085_010 
drop T085_011 T085_012 T085_013 T085_014 T085_015 T085_016 T085_017 T085_018 T085_019 T085_020 
drop T085_021 T085_022 T085_023 T085_024 T085_025 T085_026 T085_027 
drop PCT_T085_002 PCT_T085_003 PCT_T085_004 PCT_T085_005 PCT_T085_006 PCT_T085_007 PCT_T085_008 PCT_T085_009 PCT_T085_010 
drop PCT_T085_011 PCT_T085_012 PCT_T085_014 PCT_T085_015 PCT_T085_017 PCT_T085_018 PCT_T085_019 PCT_T085_020 
drop PCT_T085_021 PCT_T085_022 PCT_T085_023 PCT_T085_024 PCT_T085_025 PCT_T085_026 PCT_T085_027
drop T087_001 T087_002 T087_003 T087_004 T087_005 T087_006 T087_007 T087_008 T087_009 T087_010 
drop T087_011 T087_012 T087_013 T087_014 
drop PCT_T087_002 PCT_T087_003 PCT_T087_004 PCT_T087_005 PCT_T087_006 PCT_T087_007 PCT_T087_008 PCT_T087_009 PCT_T087_010 
drop PCT_T087_011 PCT_T087_012 PCT_T087_013 PCT_T087_014 
drop T088_001 T088_002 T088_003 T088_004 T088_005 T088_006 T088_007 T088_008 T088_009 T088_010 
drop T088_011 T088_012 T088_013 T088_014 
drop PCT_T088_002 PCT_T088_003 PCT_T088_004 PCT_T088_005 PCT_T088_006 PCT_T088_007 PCT_T088_008 PCT_T088_009 PCT_T088_010 
drop PCT_T088_011 PCT_T088_012 PCT_T088_013 PCT_T088_014 
drop T089_001 T089_002 T089_003 T089_004 T089_005 T089_006 
drop PCT_T089_002 PCT_T089_003 PCT_T089_004 PCT_T089_005 PCT_T089_006 
drop T090_001 T090_002 T090_003 T090_004 T090_005 T090_006 PCT_T090_002 PCT_T090_003 PCT_T090_004 PCT_T090_005 PCT_T090_006 
drop T091_001 T091_002 T091_003 T091_004 T091_005 T091_006 PCT_T091_002 PCT_T091_003 PCT_T091_004 PCT_T091_005 PCT_T091_006

rename PCT_T092_002 pctinc_0_10K
rename PCT_T092_003 pctinc_10K_15K
rename PCT_T092_004 pctinc_15K_20K
rename PCT_T092_005 pctinc_20K_25K
rename PCT_T092_006 pctinc_25K_30K
rename PCT_T092_007 pctinc_30K_35K
rename PCT_T092_008 pctinc_35K_40K
rename PCT_T092_009 pctinc_40K_45K
rename PCT_T092_010 pctinc_45K_50K
rename PCT_T092_011 pctinc_50K_60K
rename PCT_T092_012 pctinc_60K_75K
rename PCT_T092_013 pctinc_75K_100K
rename PCT_T092_014 pctinc_100K_125K
rename PCT_T092_015 pctinc_125K_150K
gen pctinc_150K_more = T092_016 + T092_017
drop T092_001 T092_002 T092_003 T092_004 T092_005 T092_006 T092_007 T092_008 T092_009 T092_010 
drop T092_011 T092_012 T092_013 T092_014 T092_015 T092_016 T092_017 PCT_T092_016 PCT_T092_017

rename T093_001 medhhincome
drop T094_001 T094_002 T094_003 T094_004 T094_005 T094_006 T094_007 T094_008 T094_009 T094_010 
drop T096_001 T098_001 T099_001 T100_001 T101_001 T136_001 T136_002 T136_003 PCT_T136_002 PCT_T136_003 
drop T137_001 T137_002 T137_003 PCT_T137_002 PCT_T137_003 T138_001 T138_002 T138_003 
drop PCT_T138_002 PCT_T138_003 T139_001 T139_002 T139_003 PCT_T139_002 PCT_T139_003 
drop T140_001 T140_002 T140_003 PCT_T140_002 PCT_T140_003 T141_001 T141_002 T141_003 
drop PCT_T141_002 PCT_T141_003 T142_001 T142_002 T142_003 PCT_T142_003 T143_001 T143_002 T143_003 
drop PCT_T143_002 PCT_T143_003 T144_001 T144_002 T144_003 PCT_T144_002 PCT_T144_003
rename PCT_T142_002 pctpublicassist
drop T145_001 T146_001 T147_001 T148_001 T149_001 T150_001 T151_001 T152_001 T153_001 T154_001

rename T155_001 units
rename PCT_T156_002 pctown
rename PCT_T156_003 pctrent
rename PCT_T157_003 pctvacant
drop T156_001 T156_002 T156_003 T157_001 T157_002 T157_003 PCT_T157_002 
drop T158_001 T158_002 T158_003 T158_004 PCT_T158_002 PCT_T158_003 PCT_T158_004 
drop T159_001 T159_002 T159_003 T159_004 T159_005 T159_006 T159_007 T159_008 T159_009 T159_010 T159_011 T159_012 
drop PCT_T159_002 PCT_T159_003 PCT_T159_004 PCT_T159_005 PCT_T159_006 PCT_T159_007 PCT_T159_008 PCT_T159_009 PCT_T159_010 PCT_T159_011 PCT_T159_012

drop T160_001 T161_001 T161_002 T161_003 T161_004 T161_005 T161_006 T161_007 T161_008 
drop PCT_T161_002 PCT_T161_003 PCT_T161_004 PCT_T161_005 PCT_T161_006 PCT_T161_007 PCT_T161_008
drop T162_001 T162_002 T162_003 T162_004 T162_005 T162_006 T162_007 T162_008 T162_009 T162_010 
drop PCT_T162_002 PCT_T162_003 PCT_T162_004 PCT_T162_005 PCT_T162_006 PCT_T162_007 PCT_T162_008 PCT_T162_009 PCT_T162_010
rename T163_001 medianvalue

drop T164_001 T165_001 T165_002 T165_003 T165_004 T165_005 T165_006 T165_007 T165_008 T165_009
rename PCT_T165_002 pctrent_0_300
rename PCT_T165_003 pctrent_300_600
rename PCT_T165_004 pctrent_600_800
rename PCT_T165_005 pctrent_800_1000
rename PCT_T165_006 pctrent_1000_1250
rename PCT_T165_007 pctrent_1250_1500
rename PCT_T165_008 pctrent_1500_2000
rename PCT_T165_009 pctrent_2000_more
drop T166_001 T166_002 T166_003 T166_004 T166_005 T166_006
gen pctincomerent_30_more = PCT_T166_004 + PCT_T166_005
drop PCT_T166_002 PCT_T166_003 PCT_T166_004 PCT_T166_005 PCT_T166_006

rename T167_001 medianrent
rename T168_001 medianpctincomerent
drop T169_001 T171_001 T171_002 T171_003 T171_004 T171_005 T171_006 T171_007 T171_008
gen pctinc_mortgage_30_more = PCT_T172_004 + PCT_T172_005
gen pctinc_nomortgage_30_more = PCT_T172_009 + PCT_T172_010
drop PCT_T171_002 PCT_T171_003 PCT_T171_004 PCT_T171_005 PCT_T171_006 PCT_T171_007 PCT_T171_008 
drop T172_001 T172_002 T172_003 T172_004 T172_005 T172_006 T172_007 T172_008 T172_009 T172_010 
drop T172_011 PCT_T172_002 PCT_T172_003 PCT_T172_004 PCT_T172_005 PCT_T172_006 PCT_T172_007 PCT_T172_008 PCT_T172_009 PCT_T172_010 PCT_T172_011
drop T175_001 T175_002 T175_003 T175_004 T175_005 PCT_T175_002 PCT_T175_003 PCT_T175_004 PCT_T175_005 
drop T176_001 T176_002 T176_003 T176_004 T176_005 PCT_T176_002 PCT_T176_003 PCT_T176_004 PCT_T176_005
drop T177_001 T177_002 T177_003 T178_001 T178_002 T185_001 T185_002 T185_003 T185_004 T185_005 
drop PCT_T185_002 PCT_T185_003 PCT_T185_004 PCT_T185_005 NV004_001 NV004_002 NV004_003 NV004_004 NV004_005 NV004_006 NV004_007 NV004_008 NV004_009
drop PCT_NV004_002 PCT_NV004_003 PCT_NV004_004 PCT_NV004_005 PCT_NV004_006 PCT_NV004_007 PCT_NV004_008 PCT_NV004_009

order pctcollege, after(pctind_professional)
order pctocc_profmanage, after(pctind_professional)
order pctinc_150K_more, after(pctinc_125K_150K)
order pctincomerent_30_more, after(medianrent)

merge 1:1 tractid00 using "C:\Users\Jackie\Dropbox\Civic Tech\CFB_Gentrification\Census2000_Boston\Census2000_Boston_addvars.dta", nogenerate

order pctpoverty, after(medhhincome)

outsheet using "C:\Users\Jackie\Dropbox\Civic Tech\CFB_Gentrification\Census2000_Boston\Census2000_Boston.csv", comma replace
