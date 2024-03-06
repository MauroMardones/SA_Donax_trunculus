#V3.30.21.00;_safe;_compile_date:_Feb 10 2023;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-stock-synthesis/stock-synthesis

#_Start_time: Mon Mar  4 16:47:08 2024
#_bootdata:_3
#C data file for simple example
#_bootstrap file: 1  irand_seed: 1709567228 first rand#: 1.11734
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
1994 1 1 1229.71 0.05
1995 1 1 3897.12 0.05
1996 1 1 5789.18 0.05
1997 1 1 5322.4 0.05
1998 1 1 5736.34 0.05
1999 1 1 6440.86 0.05
2000 1 1 6955.49 0.05
2001 1 1 13952.4 0.05
2002 1 1 4376.56 0.05
2003 1 1 2408.55 0.05
2004 1 1 1192.24 0.05
2005 1 1 1582.92 0.05
2006 1 1 1361.77 0.05
2007 1 1 2553.01 0.05
2008 1 1 3896 0.05
2009 1 1 7863.26 0.05
2010 1 1 11450.8 0.05
2011 1 1 19721.3 0.05
2012 1 1 15806.3 0.05
2013 1 1 7583.8 0.05
2014 1 1 20446.5 0.05
2015 1 1 14488.9 0.05
2016 1 1 11130.6 0.05
2017 1 1 12629.1 0.05
2018 1 1 15292.3 0.05
2019 1 1 26759.4 0.05
2020 1 1 28164 0.05
2021 1 1 27703.6 0.05
2022 1 1 25243.1 0.05
-999 1 2 0 0.01
1994 1 2 22.1184 0.05
1995 1 2 71.8126 0.05
1996 1 2 93.6981 0.05
1997 1 2 95.3452 0.05
1998 1 2 114.577 0.05
1999 1 2 121.914 0.05
2000 1 2 151.381 0.05
2001 1 2 285.454 0.05
2002 1 2 81.219 0.05
2003 1 2 46.8552 0.05
2004 1 2 22.1057 0.05
2005 1 2 81.1298 0.05
2006 1 2 180.464 0.05
2007 1 2 776.97 0.05
2008 1 2 2276.45 0.05
2009 1 2 6882.37 0.05
2010 1 2 5612.85 0.05
2011 1 2 7236.2 0.05
2012 1 2 4920.14 0.05
2013 1 2 4142.44 0.05
2014 1 2 14024.4 0.05
2015 1 2 15284.4 0.05
2016 1 2 15720 0.05
2017 1 2 9856.48 0.05
2018 1 2 10414.7 0.05
2019 1 2 11834.4 0.05
2020 1 2 7066.51 0.05
2021 1 2 11207.3 0.05
2022 1 2 11116.3 0.05
-999 1 3 0 0.01
1994 1 3 4.11955 0.05
1995 1 3 22.3991 0.05
1996 1 3 381.265 0.05
1997 1 3 285.883 0.05
1998 1 3 430.392 0.05
1999 1 3 117.661 0.05
2000 1 3 200.039 0.05
2001 1 3 808.202 0.05
2002 1 3 44.3037 0.05
2003 1 3 52.0766 0.05
2004 1 3 264.208 0.05
2005 1 3 278.721 0.05
2006 1 3 282.558 0.05
2007 1 3 325.343 0.05
2008 1 3 106.184 0.05
2009 1 3 115.367 0.05
2010 1 3 128.879 0.05
2011 1 3 3114.07 0.05
2012 1 3 2886.44 0.05
2013 1 3 714.223 0.05
2014 1 3 2774.46 0.05
2015 1 3 4872.38 0.05
2016 1 3 2643.11 0.05
2017 1 3 2922.16 0.05
2018 1 3 2545.8 0.05
2019 1 3 5665.01 0.05
2020 1 3 3818.45 0.05
2021 1 3 3988.33 0.05
2022 1 3 4134.97 0.05
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
1998 7 1 0.631337 0.2 #_orig_obs: 0.4438 ESPINEL
1999 7 1 0.655598 0.2 #_orig_obs: 0.9452 ESPINEL
2000 7 1 0.857321 0.2 #_orig_obs: 1.0603 ESPINEL
2001 7 1 2.88251 0.2 #_orig_obs: 1.0902 ESPINEL
2002 7 1 0.990317 0.2 #_orig_obs: 0.6828 ESPINEL
2003 7 1 0.613916 0.2 #_orig_obs: 0.3796 ESPINEL
2004 7 1 0.462242 0.2 #_orig_obs: 0.4219 ESPINEL
2005 7 1 0.72853 0.2 #_orig_obs: 0.7327 ESPINEL
2006 7 1 0.441399 0.2 #_orig_obs: 0.7959 ESPINEL
2007 7 1 0.863441 0.2 #_orig_obs: 0.9779 ESPINEL
2008 7 1 0.453204 0.2 #_orig_obs: 0.8669 ESPINEL
2009 7 1 0.807151 0.2 #_orig_obs: 0.4168 ESPINEL
2010 7 1 0.887393 0.2 #_orig_obs: 2.2297 ESPINEL
2011 7 1 1.07434 0.2 #_orig_obs: 2.0979 ESPINEL
2012 7 1 1.16607 0.2 #_orig_obs: 1.6871 ESPINEL
2013 7 1 0.455076 0.2 #_orig_obs: 0.7829 ESPINEL
2014 7 1 0.861487 0.2 #_orig_obs: 1.418 ESPINEL
2015 7 1 0.618265 0.2 #_orig_obs: 0.9533 ESPINEL
2016 7 1 0.719165 0.2 #_orig_obs: 0.3226 ESPINEL
2017 7 1 0.900989 0.2 #_orig_obs: 0.594 ESPINEL
2018 7 1 0.770887 0.2 #_orig_obs: 0.6849 ESPINEL
2019 7 1 1.61312 0.2 #_orig_obs: 1.2262 ESPINEL
2020 7 1 1.00263 0.2 #_orig_obs: 1.9732 ESPINEL
2021 7 1 1.36058 0.2 #_orig_obs: 1.216 ESPINEL
2022 7 1 0.888291 0.2 #_orig_obs: 1.216 ESPINEL
2006 7 2 0.129836 0.2 #_orig_obs: 0.81 ENMALLE
2007 7 2 0.523716 0.2 #_orig_obs: 1.12 ENMALLE
2008 7 2 1.04564 0.2 #_orig_obs: 0.89 ENMALLE
2009 7 2 3.01289 0.2 #_orig_obs: 1.13 ENMALLE
2010 7 2 1.34127 0.2 #_orig_obs: 1.04 ENMALLE
2011 7 2 1.16694 0.2 #_orig_obs: 1.46 ENMALLE
2012 7 2 0.933613 0.2 #_orig_obs: 1.51 ENMALLE
2013 7 2 0.372179 0.2 #_orig_obs: 0.93 ENMALLE
2014 7 2 1.2363 0.2 #_orig_obs: 1.03 ENMALLE
2015 7 2 1.21332 0.2 #_orig_obs: 1.01 ENMALLE
2016 7 2 1.52276 0.2 #_orig_obs: 1.19 ENMALLE
2017 7 2 0.876503 0.2 #_orig_obs: 0.65 ENMALLE
2018 7 2 1.22412 0.2 #_orig_obs: 0.78 ENMALLE
2019 7 2 0.982172 0.2 #_orig_obs: 0.78 ENMALLE
2020 7 2 0.649627 0.2 #_orig_obs: 0.81 ENMALLE
2021 7 2 0.933043 0.2 #_orig_obs: 0.85 ENMALLE
2022 7 2 1.05014 0.2 #_orig_obs: 0.85 ENMALLE
2011 7 3 1.04899 0.2 #_orig_obs: 0.4766 INDUSTRIAL
2012 7 3 1.26229 0.2 #_orig_obs: 0.5196 INDUSTRIAL
2013 7 3 0.191 0.2 #_orig_obs: 0.4007 INDUSTRIAL
2014 7 3 0.583287 0.2 #_orig_obs: 1.0543 INDUSTRIAL
2015 7 3 0.752586 0.2 #_orig_obs: 0.8181 INDUSTRIAL
2016 7 3 0.563358 0.2 #_orig_obs: 0.6152 INDUSTRIAL
2017 7 3 0.651697 0.2 #_orig_obs: 0.497 INDUSTRIAL
2018 7 3 0.4264 0.2 #_orig_obs: 0.4368 INDUSTRIAL
2019 7 3 1.2888 0.2 #_orig_obs: 0.6283 INDUSTRIAL
2020 7 3 0.501943 0.2 #_orig_obs: 0.5584 INDUSTRIAL
2021 7 3 0.455891 0.2 #_orig_obs: 0.6711 INDUSTRIAL
2022 7 3 0.853987 0.2 #_orig_obs: 0.6711 INDUSTRIAL
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
 1998 6 1 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 1 3 3 3 8 3 4 4 3 3 2 1 1 4 0 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1 0 0 0 2
 1999 6 1 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 4 1 6 5 3 1 3 3 5 3 2 1 2 1 2 0 1 3 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2000 6 1 0 0 50  0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 1 1 1 3 1 1 3 7 9 1 2 3 3 2 0 1 0 3 0 3 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0
 2001 6 1 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 3 0 3 4 7 11 4 2 3 5 1 0 0 2 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2002 6 1 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 1 0 0 0 0 0 1 0 1 0 0 3 1 2 8 5 5 6 4 4 3 1 0 0 2 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2003 6 1 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 2 0 1 1 2 0 5 3 4 7 7 5 4 2 0 1 1 3 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2004 6 1 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 4 3 4 5 7 1 7 2 5 4 1 2 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2005 6 1 0 0 50  0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 1 2 2 0 6 3 8 4 3 0 4 3 2 2 1 1 2 0 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2006 6 1 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 2 2 2 2 7 2 4 3 5 4 4 4 2 1 1 0 0 0 1 0 0 2 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0
 2007 6 1 0 0 50  0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 1 1 2 2 1 3 1 9 6 5 3 2 2 5 2 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2008 6 1 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 2 0 3 3 2 4 7 6 6 7 2 4 1 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2009 6 1 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0 0 1 2 1 4 6 9 2 3 2 9 3 2 2 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0
 2010 6 1 0 0 50  0 0 0 0 0 0 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 4 1 6 9 6 3 6 3 4 1 1 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0
 2011 6 1 0 0 50  1 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 3 11 6 5 3 9 2 3 1 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2012 6 1 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1 0 0 1 0 0 2 2 4 4 7 4 6 6 2 2 3 4 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2013 6 1 0 0 50  0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 2 0 2 3 7 5 4 5 5 2 3 2 2 1 2 1 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0
 2014 6 1 0 0 50  0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 1 6 6 9 6 5 4 3 3 1 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2015 6 1 0 0 50  0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 5 0 4 5 10 10 5 1 1 1 1 1 2 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2016 6 1 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 0 0 2 8 5 5 8 7 3 3 2 2 0 0 0 1 0 0 0 0 1 0 0 0 0 0 0 0 0 1 0 0 0 0 0
 2017 6 1 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 2 0 3 0 2 5 5 3 6 6 4 2 3 1 1 0 0 1 1 1 0 0 1 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0
 2018 6 1 0 0 50  0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0 3 6 2 4 9 8 2 2 4 1 3 1 1 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2019 6 1 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 0 0 0 0 0 3 0 2 2 5 10 5 3 6 3 4 0 1 1 0 2 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2020 6 1 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 1 4 3 5 4 10 6 6 6 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2021 6 1 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 2 1 4 1 5 6 6 6 6 4 3 0 2 0 1 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2022 6 1 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 2 7 3 7 10 5 4 1 3 2 1 0 0 2 0 1 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0
 2004 6 2 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 2 0 1 1 2 3 3 11 8 5 4 2 4 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1
 2005 6 2 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 2 2 4 3 4 6 8 8 3 1 3 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2006 6 2 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 2 2 0 3 7 9 8 3 5 3 1 1 1 1 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0
 2007 6 2 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 1 2 1 1 2 1 3 2 3 3 5 8 3 6 3 4 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2008 6 2 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 1 2 1 0 2 1 5 3 4 9 7 6 2 2 2 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0
 2009 6 2 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 2 1 2 2 7 6 8 3 9 2 1 2 1 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1 0 0 0 0
 2010 6 2 0 0 50  0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 2 1 2 2 8 5 6 6 4 3 6 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2011 6 2 0 0 50  0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 4 1 1 0 6 8 3 6 6 6 4 0 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2012 6 2 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 1 1 4 2 4 7 7 8 6 4 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2013 6 2 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 1 1 1 2 5 5 5 9 6 7 2 2 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2014 6 2 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 1 1 0 3 3 4 6 2 4 6 5 5 6 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2015 6 2 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 2 0 2 1 8 8 4 8 3 6 1 4 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2016 6 2 0 0 50  1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 0 1 0 0 0 0 1 0 0 2 1 2 3 6 5 6 10 4 3 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1
 2017 6 2 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 1 0 1 0 3 5 9 11 6 6 1 2 1 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2018 6 2 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 1 0 0 0 2 6 5 7 8 7 5 4 0 0 0 1 0 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 1
 2019 6 2 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 2 0 0 4 2 2 6 3 7 9 6 3 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0
 2011 4 3 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 1 6 6 9 7 5 2 4 2 1 1 1 0 0 0 0 0 0 1 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0
 2012 4 3 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 1 1 1 8 4 8 4 3 10 2 1 3 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0
 2013 4 3 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 2 2 1 0 3 6 2 8 5 2 6 2 3 0 3 2 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0
 2014 4 3 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 3 3 1 3 9 5 5 7 1 2 5 1 0 2 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 1 0
 2015 4 3 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0 1 4 3 3 4 6 5 5 4 4 2 3 2 0 1 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0
 2016 4 3 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 2 1 1 5 3 5 3 7 5 3 3 6 2 1 3 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2017 4 3 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 3 4 2 4 7 6 10 1 4 1 2 1 1 0 1 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0
 2018 4 3 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 4 5 5 3 7 7 6 5 2 1 1 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2019 4 3 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 1 0 0 0 2 2 6 3 5 10 4 1 6 3 0 1 1 1 2 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
 2020 4 3 0 0 50  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 3 3 2 1 5 4 9 7 5 6 2 0 1 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
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

