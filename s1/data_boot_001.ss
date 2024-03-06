#V3.30.21.00;_safe;_compile_date:_Feb 10 2023;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-stock-synthesis/stock-synthesis

#_Start_time: Wed Mar  6 15:47:10 2024
#_bootdata:_3
#C data file for simple example
#_bootstrap file: 1  irand_seed: 1709736430 first rand#: -0.711065
#V3.30.21.00;_safe;_compile_date:_Feb 10 2023;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
1994 #_StartYr
2022 #_EndYr
1 #_Nseas
 12 #_months/season
2 #_Nsubseasons (even number, minimum is 2)
1 #_spawn_month
1 #_Ngenders: 1, 2, -1  (use -1 for 1 sex setup with SSB multiplied by female_frac parameter)
12 #_Nages=accumulator age, first age is always age 0
1 #_Nareas
3 #_Nfleets (including surveys)
#_fleet_type: 1=catch fleet; 2=bycatch only fleet; 3=survey; 4=predator(M2) 
#_sample_timing: -1 for fishing fleet to use season-long catch-at-age for observations, or 1 to use observation month;  (always 1 for surveys)
#_fleet_area:  area the fleet/survey operates in 
#_units of catch:  1=bio; 2=num (ignored for surveys; their units read later)
#_catch_mult: 0=no; 1=yes
#_rows are fleets
#_fleet_type fishery_timing area catch_units need_catch_mult fleetname
 1 -1 1 1 0 ESPINEL  # 1
 1 -1 1 1 0 ENMALLE  # 2
 1 -1 1 1 0 INDUSTRIAL  # 3
#Bycatch_fleet_input_goes_next
#a:  fleet index
#b:  1=include dead bycatch in total dead catch for F0.1 and MSY optimizations and forecast ABC; 2=omit from total catch for these purposes (but still include the mortality)
#c:  1=Fmult scales with other fleets; 2=bycatch F constant at input value; 3=bycatch F from range of years
#d:  F or first year of range
#e:  last year of range
#f:  not used
# a   b   c   d   e   f 
#_catch_biomass(mtons):_columns_are_fisheries,year,season
#_catch:_columns_are_year,season,fleet,catch,catch_se
#_Catch data: yr, seas, fleet, catch, catch_se
-999 1 1 0 1
1994 1 1 1165.8 0.05
1995 1 1 4245.63 0.05
1996 1 1 4912.14 0.05
1997 1 1 5563.94 0.05
1998 1 1 5542.62 0.05
1999 1 1 6358.61 0.05
2000 1 1 7678.38 0.05
2001 1 1 14930.6 0.05
2002 1 1 4142.12 0.05
2003 1 1 2393.34 0.05
2004 1 1 1239.59 0.05
2005 1 1 1632.45 0.05
2006 1 1 1322.97 0.05
2007 1 1 2660.84 0.05
2008 1 1 3786.77 0.05
2009 1 1 7228.23 0.05
2010 1 1 10417.3 0.05
2011 1 1 17463.3 0.05
2012 1 1 15298.6 0.05
2013 1 1 7900.99 0.05
2014 1 1 18468.8 0.05
2015 1 1 14222.6 0.05
2016 1 1 9599.38 0.05
2017 1 1 13164.3 0.05
2018 1 1 14180.9 0.05
2019 1 1 25392.5 0.05
2020 1 1 27164.4 0.05
2021 1 1 28720.7 0.05
2022 1 1 30258.9 0.05
-999 1 2 0 0.01
1994 1 2 20.1451 0.05
1995 1 2 72.3466 0.05
1996 1 2 95.0568 0.05
1997 1 2 106.857 0.05
1998 1 2 104.7 0.05
1999 1 2 129.256 0.05
2000 1 2 145.171 0.05
2001 1 2 268.664 0.05
2002 1 2 80.0594 0.05
2003 1 2 46.0457 0.05
2004 1 2 22.8741 0.05
2005 1 2 87.8414 0.05
2006 1 2 168.08 0.05
2007 1 2 753.242 0.05
2008 1 2 2287.48 0.05
2009 1 2 7088.89 0.05
2010 1 2 5897.71 0.05
2011 1 2 7264.1 0.05
2012 1 2 5567.69 0.05
2013 1 2 3934.72 0.05
2014 1 2 13557.4 0.05
2015 1 2 15263.9 0.05
2016 1 2 15963.8 0.05
2017 1 2 9600.47 0.05
2018 1 2 9835.14 0.05
2019 1 2 12534.1 0.05
2020 1 2 6692.06 0.05
2021 1 2 11058 0.05
2022 1 2 11892.6 0.05
-999 1 3 0 0.01
1994 1 3 3.74278 0.05
1995 1 3 24.8062 0.05
1996 1 3 424.912 0.05
1997 1 3 263.113 0.05
1998 1 3 394.52 0.05
1999 1 3 117.933 0.05
2000 1 3 214.666 0.05
2001 1 3 685.005 0.05
2002 1 3 42.8871 0.05
2003 1 3 49.6674 0.05
2004 1 3 295.892 0.05
2005 1 3 292.102 0.05
2006 1 3 259.968 0.05
2007 1 3 318.84 0.05
2008 1 3 113.035 0.05
2009 1 3 108.819 0.05
2010 1 3 143.181 0.05
2011 1 3 3002.02 0.05
2012 1 3 2706.54 0.05
2013 1 3 718.819 0.05
2014 1 3 3076 0.05
2015 1 3 4314.73 0.05
2016 1 3 2476.85 0.05
2017 1 3 3037.02 0.05
2018 1 3 2522.73 0.05
2019 1 3 5435.08 0.05
2020 1 3 3850.02 0.05
2021 1 3 4424.25 0.05
2022 1 3 4120.6 0.05
-9999 0 0 0 0
#
 #_CPUE_and_surveyabundance_observations
#_Units:  0=numbers; 1=biomass; 2=F; 30=spawnbio; 31=recdev; 32=spawnbio*recdev; 33=recruitment; 34=depletion(&see Qsetup); 35=parm_dev(&see Qsetup)
#_Errtype:  -1=normal; 0=lognormal; >0=T
#_SD_Report: 0=no sdreport; 1=enable sdreport
#_Fleet Units Errtype SD_Report
1 2 0 0 # ESPINEL
2 2 0 0 # ENMALLE
3 2 0 0 # INDUSTRIAL
#_year month index obs err
1998 7 1 0.373056 0.2 #_orig_obs: 0.4438 ESPINEL
1999 7 1 0.459469 0.2 #_orig_obs: 0.9452 ESPINEL
2000 7 1 0.99328 0.2 #_orig_obs: 1.0603 ESPINEL
2001 7 1 2.33208 0.2 #_orig_obs: 1.0902 ESPINEL
2002 7 1 1.20222 0.2 #_orig_obs: 0.6828 ESPINEL
2003 7 1 0.506285 0.2 #_orig_obs: 0.3796 ESPINEL
2004 7 1 0.489085 0.2 #_orig_obs: 0.4219 ESPINEL
2005 7 1 0.928165 0.2 #_orig_obs: 0.7327 ESPINEL
2006 7 1 0.857178 0.2 #_orig_obs: 0.7959 ESPINEL
2007 7 1 0.736248 0.2 #_orig_obs: 0.9779 ESPINEL
2008 7 1 0.637052 0.2 #_orig_obs: 0.8669 ESPINEL
2009 7 1 0.704603 0.2 #_orig_obs: 0.4168 ESPINEL
2010 7 1 1.24411 0.2 #_orig_obs: 2.2297 ESPINEL
2011 7 1 1.08412 0.2 #_orig_obs: 2.0979 ESPINEL
2012 7 1 1.16953 0.2 #_orig_obs: 1.6871 ESPINEL
2013 7 1 0.651157 0.2 #_orig_obs: 0.7829 ESPINEL
2014 7 1 1.00555 0.2 #_orig_obs: 1.418 ESPINEL
2015 7 1 0.774383 0.2 #_orig_obs: 0.9533 ESPINEL
2016 7 1 0.594619 0.2 #_orig_obs: 0.3226 ESPINEL
2017 7 1 0.931958 0.2 #_orig_obs: 0.594 ESPINEL
2018 7 1 0.713138 0.2 #_orig_obs: 0.6849 ESPINEL
2019 7 1 0.951523 0.2 #_orig_obs: 1.2262 ESPINEL
2020 7 1 1.39866 0.2 #_orig_obs: 1.9732 ESPINEL
2021 7 1 1.31232 0.2 #_orig_obs: 1.216 ESPINEL
2022 7 1 1.29297 0.2 #_orig_obs: 1.216 ESPINEL
2006 7 2 0.122858 0.2 #_orig_obs: 0.81 ENMALLE
2007 7 2 0.4265 0.2 #_orig_obs: 1.12 ENMALLE
2008 7 2 0.855332 0.2 #_orig_obs: 0.89 ENMALLE
2009 7 2 1.47783 0.2 #_orig_obs: 1.13 ENMALLE
2010 7 2 1.29944 0.2 #_orig_obs: 1.04 ENMALLE
2011 7 2 1.42794 0.2 #_orig_obs: 1.46 ENMALLE
2012 7 2 0.695513 0.2 #_orig_obs: 1.51 ENMALLE
2013 7 2 0.370264 0.2 #_orig_obs: 0.93 ENMALLE
2014 7 2 2.68941 0.2 #_orig_obs: 1.03 ENMALLE
2015 7 2 1.87922 0.2 #_orig_obs: 1.01 ENMALLE
2016 7 2 1.47079 0.2 #_orig_obs: 1.19 ENMALLE
2017 7 2 0.976625 0.2 #_orig_obs: 0.65 ENMALLE
2018 7 2 1.22103 0.2 #_orig_obs: 0.78 ENMALLE
2019 7 2 1.03059 0.2 #_orig_obs: 0.78 ENMALLE
2020 7 2 0.723654 0.2 #_orig_obs: 0.81 ENMALLE
2021 7 2 1.09182 0.2 #_orig_obs: 0.85 ENMALLE
2022 7 2 1.16468 0.2 #_orig_obs: 0.85 ENMALLE
2011 7 3 0.718174 0.2 #_orig_obs: 0.4766 INDUSTRIAL
2012 7 3 0.626874 0.2 #_orig_obs: 0.5196 INDUSTRIAL
2013 7 3 0.213206 0.2 #_orig_obs: 0.4007 INDUSTRIAL
2014 7 3 0.623012 0.2 #_orig_obs: 1.0543 INDUSTRIAL
2015 7 3 0.836721 0.2 #_orig_obs: 0.8181 INDUSTRIAL
2016 7 3 0.415052 0.2 #_orig_obs: 0.6152 INDUSTRIAL
2017 7 3 0.507862 0.2 #_orig_obs: 0.497 INDUSTRIAL
2018 7 3 0.382412 0.2 #_orig_obs: 0.4368 INDUSTRIAL
2019 7 3 0.939685 0.2 #_orig_obs: 0.6283 INDUSTRIAL
2020 7 3 0.634052 0.2 #_orig_obs: 0.5584 INDUSTRIAL
2021 7 3 0.779233 0.2 #_orig_obs: 0.6711 INDUSTRIAL
2022 7 3 0.456393 0.2 #_orig_obs: 0.6711 INDUSTRIAL
-9999 1 1 1 1 # terminator for survey observations 
#
0 #_N_fleets_with_discard
#_discard_units (1=same_as_catchunits(bio/num); 2=fraction; 3=numbers)
#_discard_errtype:  >0 for DF of T-dist(read CV below); 0 for normal with CV; -1 for normal with se; -2 for lognormal; -3 for trunc normal with CV
# note: only enter units and errtype for fleets with discard 
# note: discard data is the total for an entire season, so input of month here must be to a month in that season
#_Fleet units errtype
# -9999 0 0 0.0 0.0 # terminator for discard data 
#
0 #_use meanbodysize_data (0/1)
#_COND_0 #_DF_for_meanbodysize_T-distribution_like
# note:  type=1 for mean length; type=2 for mean body weight 
#_yr month fleet part type obs stderr
#  -9999 0 0 0 0 0 0 # terminator for mean body size data 
#
# set up population length bin structure (note - irrelevant if not using size data and using empirical wtatage
2 # length bin method: 1=use databins; 2=generate from binwidth,min,max below; 3=read vector
1 # binwidth for population size comp 
5 # minimum size in the population (lower edge of first bin and size at age 0.00) 
70 # maximum size in the population (lower edge of last bin) 
1 # use length composition data (0/1/2) where 2 invokes new comp_comtrol format
#_mintailcomp: upper and lower distribution for females and males separately are accumulated until exceeding this level.
#_addtocomp:  after accumulation of tails; this value added to all bins
#_combM+F: males and females treated as combined gender below this bin number 
#_compressbins: accumulate upper tail by this number of bins; acts simultaneous with mintailcomp; set=0 for no forced accumulation
#_Comp_Error:  0=multinomial, 1=dirichlet using Theta*n, 2=dirichlet using beta, 3=MV_Tweedie
#_ParmSelect:  consecutive index for dirichlet or MV_Tweedie
#_minsamplesize: minimum sample size; set to 1 to match 3.24, minimum value is 0.001
#
#_Using old format for composition controls
#_mintailcomp addtocomp combM+F CompressBins CompError ParmSelect minsamplesize
-1 0.001 0 0 0 0 0.001 #_fleet:1_ESPINEL
-1 0.001 0 0 0 0 0.001 #_fleet:2_ENMALLE
-1 0.001 0 0 0 0 0.001 #_fleet:3_INDUSTRIAL
66 #_N_LengthBins
 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69 70
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
#_yr month fleet sex part Nsamp datavector(female-male)
 1998 6 1 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0 0 1 2 2 5 4 1 8 4 4 4 2 3 1 2 1 0 1 1 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0
 1999 6 1 0 0 50  0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 0 0 0 2 3 4 5 6 4 5 4 0 2 1 0 5 0 1 0 1 1 1 1 0 0 0 0 0 0 0 1 0 0 0 0 0
 2000 6 1 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 3 7 2 3 5 4 5 3 3 4 4 3 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2001 6 1 0 0 50  1 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 4 3 2 3 4 12 6 2 3 1 1 3 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0
 2002 6 1 0 0 50  1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 0 2 2 2 5 7 4 5 5 5 4 1 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2003 6 1 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 0 9 5 7 3 6 5 4 2 4 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2004 6 1 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 2 5 6 7 4 5 8 3 3 3 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2005 6 1 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 2 3 0 4 4 7 6 4 7 5 1 2 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1
 2006 6 1 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 3 1 1 5 4 3 5 1 2 7 1 3 2 1 2 2 0 0 0 0 1 0 0 0 0 1 1 0 0 0 0 0 0 0 1 0
 2007 6 1 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 1 5 7 5 4 4 7 5 4 4 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2008 6 1 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 2 2 2 7 7 3 5 6 6 0 1 2 0 0 2 1 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2009 6 1 0 0 50  0 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 2 2 1 2 4 6 7 7 7 5 1 2 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0
 2010 6 1 0 0 50  0 0 0 1 0 0 1 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 2 2 4 2 2 3 3 5 8 4 3 1 3 0 0 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2011 6 1 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 2 6 7 7 2 5 2 8 5 1 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2012 6 1 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 1 0 2 5 6 2 6 9 10 2 0 1 1 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0
 2013 6 1 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0 1 2 2 2 4 5 6 3 7 6 4 1 2 0 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0
 2014 6 1 0 0 50  0 0 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 1 0 2 5 4 4 5 8 4 3 3 3 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 1 0
 2015 6 1 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 5 5 5 9 9 2 3 6 1 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2016 6 1 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 1 3 7 4 2 6 5 3 4 2 3 1 2 2 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1
 2017 6 1 0 0 50  0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 3 3 4 0 6 2 3 7 8 3 2 4 0 0 2 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2018 6 1 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 2 4 5 6 12 8 4 1 1 1 1 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0
 2019 6 1 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 5 1 4 4 9 3 6 2 8 1 3 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2020 6 1 0 0 50  0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 1 1 1 0 4 3 5 5 3 5 6 5 3 2 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0
 2021 6 1 0 0 50  0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 4 0 3 8 5 11 3 3 5 2 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0
 2022 6 1 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 3 5 5 4 7 8 4 4 5 3 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2004 6 2 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 1 1 0 0 0 2 7 8 9 8 2 3 3 3 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0
 2005 6 2 0 0 50  0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 0 0 1 3 1 5 7 9 6 9 3 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2006 6 2 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 2 4 2 7 1 8 5 5 8 3 1 0 0 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0
 2007 6 2 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 1 0 1 1 1 2 4 0 4 6 11 4 6 5 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2008 6 2 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 6 2 2 1 5 4 4 4 4 4 7 1 2 2 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2009 6 2 0 0 50  0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 2 0 0 0 1 0 0 0 0 0 2 0 0 0 0 4 3 2 3 7 9 5 2 2 1 2 3 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0
 2010 6 2 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 2 1 1 2 2 3 4 7 7 9 7 1 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2011 6 2 0 0 50  0 0 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 2 4 4 7 6 4 7 6 1 1 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0
 2012 6 2 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1 2 1 0 3 1 3 5 8 7 6 2 6 1 1 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2013 6 2 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 0 1 1 2 5 10 9 5 8 2 2 0 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0
 2014 6 2 0 0 50  0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 1 0 3 2 2 1 4 3 3 11 4 4 5 3 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0
 2015 6 2 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 0 4 2 3 5 7 8 3 3 8 0 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0
 2016 6 2 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 1 1 0 2 2 5 1 3 5 14 4 5 0 3 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2017 6 2 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 2 0 1 3 2 5 4 9 8 7 4 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2018 6 2 0 0 50  0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 1 1 2 3 2 1 6 9 5 9 1 2 3 0 0 0 0 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0
 2019 6 2 0 0 50  0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 1 1 0 0 0 0 2 2 1 3 6 8 9 6 3 3 0 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2011 4 3 0 0 50  0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 2 2 5 5 12 5 5 4 2 1 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0
 2012 4 3 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 5 4 4 7 6 8 6 1 3 3 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0
 2013 4 3 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 1 1 1 0 0 2 0 3 7 3 6 9 1 4 3 1 2 2 1 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2014 4 3 0 0 50  0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 5 9 5 5 9 3 2 2 3 0 3 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0
 2015 4 3 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 2 1 2 6 5 9 6 6 2 4 3 1 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2016 4 3 0 0 50  0 0 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0 0 4 2 8 4 6 7 4 0 4 4 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2017 4 3 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 2 2 3 8 3 7 10 2 4 0 1 0 3 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0
 2018 4 3 0 0 50  0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 1 2 4 4 7 6 6 3 6 4 0 1 0 0 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2019 4 3 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 3 3 3 1 3 4 3 7 9 5 0 2 0 1 1 1 0 0 2 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0
 2020 4 3 0 0 50  0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 1 1 1 1 3 6 5 7 10 3 2 0 3 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 0
-9999 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
#
0 #_N_age_bins
# 0 #_N_ageerror_definitions
#_mintailcomp: upper and lower distribution for females and males separately are accumulated until exceeding this level.
#_addtocomp:  after accumulation of tails; this value added to all bins
#_combM+F: males and females treated as combined gender below this bin number 
#_compressbins: accumulate upper tail by this number of bins; acts simultaneous with mintailcomp; set=0 for no forced accumulation
#_Comp_Error:  0=multinomial, 1=dirichlet using Theta*n, 2=dirichlet using beta, 3=MV_Tweedie
#_ParmSelect:  consecutive index for dirichlet or MV_Tweedie
#_minsamplesize: minimum sample size; set to 1 to match 3.24, minimum value is 0.001
#
#_mintailcomp addtocomp combM+F CompressBins CompError ParmSelect minsamplesize
# 0 0 0 0 0 0 0 #_fleet:1_ESPINEL
# 0 0 0 0 0 0 0 #_fleet:2_ENMALLE
# 0 0 0 0 0 0 0 #_fleet:3_INDUSTRIAL
# 0 #_Lbin_method_for_Age_Data: 1=poplenbins; 2=datalenbins; 3=lengths
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sex*length distribution
# partition codes:  (0=combined; 1=discard; 2=retained
#_yr month fleet sex part ageerr Lbin_lo Lbin_hi Nsamp datavector(female-male)
# -9999  0 0 0 0 0 0 0 0
#
0 #_Use_MeanSize-at-Age_obs (0/1)
#
0 #_N_environ_variables
# -2 in yr will subtract mean for that env_var; -1 will subtract mean and divide by stddev (e.g. Z-score)
#Yr Variable Value
#
# Sizefreq data. Defined by method because a fleet can use multiple methods
0 # N sizefreq methods to read (or -1 for expanded options)
#
0 # do tags (0/1)
#
0 #    morphcomp data(0/1) 
#  Nobs, Nmorphs, mincomp
#  yr, seas, type, partition, Nsamp, datavector_by_Nmorphs
#
0  #  Do dataread for selectivity priors(0/1)
 # Yr, Seas, Fleet,  Age/Size,  Bin,  selex_prior,  prior_sd
 # feature not yet implemented
#
999

