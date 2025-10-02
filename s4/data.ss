#V3.30.21.00;_safe;_compile_date:_Feb 10 2023;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
#_Stock_Synthesis_is_a_work_of_the_U.S._Government_and_is_not_subject_to_copyright_protection_in_the_United_States.
# Model assessment to Donax trunculus, Cadiz Gulf, Spain
#_Foreign_copyrights_may_apply._See_copyright.txt_for_more_information.
#_User_support_available_at:NMFS.Stock.Synthesis@noaa.gov
#_User_info_available_at:https://vlab.noaa.gov/group/stock-synthesis
#_Source_code_at:_https://github.com/nmfs-stock-synthesis/stock-synthesis

#_Start_time: Tue Feb 28 13:44:05 2023
#_echo_input_data
#C data file for simple example
#V3.30.21.00;_safe;_compile_date:_Feb 10 2023;_Stock_Synthesis_by_Richard_Methot_(NOAA)_using_ADMB_13.1
2004 #_StartYr
2023 #_EndYr
1 #_Nseas
12 #_months/season
2 #_Nsubseasons (even number, minimum is 2)
2 #_spawn_month
1 #_Ngenders: 1, 2, -1  (use -1 for 1 sex setup with SSB multiplied by female_frac parameter)
5 #_Nages=accumulator age, first age is always age 0
1 #_Nareas
2 #_Nfleets (including surveys and predators)
#_fleet_type: 1=catch fleet; 2=bycatch only fleet; 3=survey; 4=predator(M2)
#_sample_timing: -1 for fishing fleet to use season-long catch-at-age for observations, or 1 to use observation month;  (always 1 for surveys)
#_fleet_area:  area the fleet/survey operates in
#_units of catch:  1=bio; 2=num (ignored for surveys; their units read later)
#_catch_mult: 0=no; 1=yes
#_rows are fleets
#_fleet_type fishery_timing area catch_units need_catch_mult fleetname
1 -1 1 1 0   COMERCIAL  # 1
3 1 1 1 0   POBLACIONAL  # 2
#Bycatch_fleet_input_goes_next
#a:  fleet index
#b:  1=include dead bycatch in total dead catch for F0.1 and MSY optimizations and forecast ABC; 2=omit from total catch for these purposes (but still include the mortality)
#c:  1=Fmult scales with other fleets; 2=bycatch F constant at input value; 3=bycatch F from range of years
#d:  F or first year of range
#e:  last year of range
#f:  not used
# a   b   c   d   e   f
#_Catch data: yr, seas, fleet, catch, catch_se
#_catch_se:  standard error of log(catch)
#_NOTE:  catch data is ignored for survey fleets
-999 1 1 10 0.05
2004	1	1	0	0.05
2005	1	1	23	0.05
2006	1	1	50	0.05
2007	1	1	38	0.05
2008	1	1	56	0.05
2009	1	1	70	0.05
2010	1	1	73	0.05
2011	1	1	80	0.05
2012	1	1	30	0.05
2013	1	1	85.2	0.05
2014	1	1	75.0	0.05
2015	1	1	81.1	0.05
2016	1	1	48.6	0.05
2017	1	1	34.7	0.05
2018	1	1	86.6	0.05
2019	1	1	72.0	0.05
2020	1	1	193.7	0.05
2021	1	1	205.4	0.05
2022	1	1	174.9	0.05
2023	1	1	135.2 0.05
-9999 0 0 0 0
#
#_CPUE_and_surveyabundance_and_index_observations
#_Units: 0=numbers; 1=biomass; 2=F; 30=spawnbio; 31=exp(recdev); 36=recdev; 32=spawnbio*recdev; 33=recruitment; 34=depletion(&see Qsetup); 35=parm_dev(&see Qsetup)
#_Errtype:  -1=normal; 0=lognormal; >0=T
#_SD_Report: 0=no sdreport; 1=enable sdreport
#_note that link functions are specified in Q_setup section of control file
#_Fleet Units Errtype SD_Report
1 2 0 0 # COMERCIAL #
2 0 0 0 # POBLACIONAL #
#_yr month fleet obs stderr
2018	6	1	4.06	0.2	#_	COMERCIAL
2019	6	1	5.12	0.2	#_	COMERCIAL
2020	6	1	3.94	0.2	#_	COMERCIAL
2021	6	1	5.15	0.2	#_	COMERCIAL
2022	6	1	4.02	0.2	#_	COMERCIAL
2023	6	1	1.89	0.2	#_	COMERCIAL
2017	7	2	18.89	0.10	#_	POBLACIONAL
2018	7	2	23.61	0.18	#_	POBLACIONAL
2019	7	2	20.91	0.17	#_	POBLACIONAL
2020	7	2	25.10	0.25	#_	POBLACIONAL
2021	7	2	36.88	0.37	#_	POBLACIONAL
2022	7	2	20.90	0.22	#_	POBLACIONAL
2023	7	2	12.07	0.15	#_	POBLACIONAL
-9999 1 1 1 1 # terminator for survey observations
#
0 #_N_fleets_with_discard
#_discard_units (1=same_as_catchunits(bio/num); 2=fraction; 3=numbers)
#_discard_errtype:  >0 for DF of T-dist(read CV below); 0 for normal with CV; -1 for normal with se; -2 for lognormal; -3 for trunc normal with CV
# note, only have units and errtype for fleets with discard
#_Fleet units errtype
# -9999 0 0 0.0 0.0 # terminator for discard data
#
0 #_use meanbodysize_data (0/1)
#_COND_30 #_DF_for_meanbodysize_T-distribution_like
# note:  use positive partition value for mean body wt, negative partition for mean body length
#_yr month fleet part obs stderr
#  -9999 0 0 0 0 0 # terminator for mean body size data
#
# set up population length bin structure (note - irrelevant if not using size data and using empirical wtatage
2 # length bin method: 1=use databins; 2=generate from binwidth,min,max below; 3=read vector
0.1 # binwidth for population size comp
0.2 # minimum size in the population (lower edge of first bin and size at age 0.00)
5.5 # maximum size in the population (lower edge of last bin)
1 # use length composition data (0/1)
#_mintailcomp: upper and lower distribution for females and males separately are accumulated until exceeding this level.
#_addtocomp:  after accumulation of tails; this value added to all bins
#_males and females treated as combined gender below this bin number
#_compressbins: accumulate upper tail by this number of bins; acts simultaneous with mintailcomp; set=0 for no forced accumulation
#_Comp_Error:  0=multinomial, 1=dirichlet
#_Comp_Error2:  parm number  for dirichlet
#_minsamplesize: minimum sample size; set to 1 to match 3.24, minimum value is 0.001
#_mintailcomp addtocomp combM+F CompressBins CompError ParmSelect minsamplesize
-1 0.001 0 0 0 0 0.001 #_fleet:1_COMERCIAL
-1 0.001 0 0 0 0 0.001 #_fleet:2_POBLACIONAL

# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
48	#_N_LengthBins; then enter lower edge of each length bin
0.2	0.3	0.4	0.5	0.6	0.7	0.8	0.9	1	1.1	1.2	1.3	1.4	1.5	1.6	1.7	1.8	1.9	2	2.1	2.2	2.3	2.4	2.5	2.6	2.7	2.8	2.9	3	3.1	3.2	3.3	3.4	3.5	3.6	3.7	3.8	3.9	4	4.1	4.2	4.3	4.4	4.5	4.6	4.7	4.8	4.9
#_yr month fleet sex part Nsamp datavector(female-male)
2013	4	1	0	0	50	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.00044	0.00044	0.0102	0.02794	0.06031	0.09579	0.13747	0.13392	0.13969	0.12639	0.10599	0.07672	0.04523	0.02217	0.00931	0.00532	0.00266	0	0	0	0	0	0	0	0	0	0	0	0	0
2014	4	1	0	0	50	0	0	0	0	0	0	0	0	0	0	0	0	0.00029	0	0	0.00012	0.00012	0.00041	0.0033	0.00784	0.01657	0.03325	0.06103	0.13768	0.17217	0.18691	0.15183	0.09646	0.06716	0.03343	0.0184	0.00802	0.0033	0.00029	0.00142	0	0	0	0	0	0	0	0	0	0	0	0	0
2015	4	1	0	0	50	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.00105	0.01464	0.05439	0.12762	0.1705	0.15481	0.15063	0.09937	0.10774	0.05126	0.03243	0.01778	0.00837	0.00418	0.00418	0.00105	0	0	0	0	0	0	0	0	0	0	0	0
2017	4	1	0	0	50	0	0	0	0	0	0	0	0	0	0	0.00028	0.00198	0.00198	0.00142	0.0017	0.00368	0.00737	0.01332	0.0326	0.04195	0.05896	0.08333	0.14768	0.19955	0.1627	0.10488	0.06321	0.0394	0.01956	0.00879	0.00312	0.0017	0.00057	0	0.00028	0	0	0	0	0	0	0	0	0	0	0	0	0
2018	4	1	0	0	50	0	0	0	0	0	0	0	0	0	0	0	0	0.00019	0	0	0.00019	0	0.00038	0.00019	0.00188	0.0045	0.01539	0.08594	0.19234	0.22199	0.17264	0.12591	0.08125	0.04485	0.02721	0.01389	0.00638	0.00375	0.00075	0.00038	0	0	0	0	0	0	0	0	0	0	0	0	0
2019	4	1	0	0	50	0	0	0	0	0	0	0	0	0	0	0	0	0.00016	0.00016	0.0013	0.00163	0.00179	0.00293	0.0044	0.00619	0.0057	0.01776	0.08165	0.2104	0.2104	0.16688	0.11587	0.07546	0.0458	0.02608	0.01418	0.00684	0.00293	0.00065	0.00033	0.00016	0.00016	0	0	0	0	0	0	0	0.00016	0	0	0
2020	4	1	0	0	50	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.00112	0.00112	0.00252	0.01566	0.0828	0.17986	0.20392	0.17483	0.1242	0.08615	0.05902	0.03524	0.0193	0.00839	0.00196	0.00168	0.00056	0.00028	0	0.00028	0	0	0.00028	0	0	0.00028	0	0	0.00028	0.00028
2021	4	1	0	0	50	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.00014	0	0.00056	0.00154	0.01614	0.0998	0.23063	0.23905	0.1749	0.1064	0.07089	0.03523	0.01474	0.00393	0.00211	0.00337	0.00014	0.00014	0.00014	0	0	0	0	0.00014	0	0	0	0	0	0	0
2022	4	1	0	0	50	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.00035	0.0014	0.00419	0.02041	0.09578	0.20813	0.22383	0.17202	0.12456	0.07275	0.04065	0.02146	0.0096	0.00244	0.00192	0.00035	0	0.00017	0	0	0	0	0	0	0	0	0	0	0	0
2023	4	1	0	0	50	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0.00076	0.0099	0.07004	0.19528	0.2166	0.16445	0.12219	0.0807	0.05976	0.0373	0.02018	0.01256	0.00685	0.00266	0.00076	0	0	0	0	0	0	0	0	0	0	0	0	0
2013	2	2	0	0	50	0	0	0	0.00384	0.00537	0.00972	0.01432	0.01483	0.01918	0.02558	0.02251	0.02762	0.0312	0.03862	0.03708	0.04425	0.05371	0.06368	0.0555	0.05192	0.04987	0.0491	0.05038	0.04808	0.05192	0.05038	0.04143	0.03555	0.03913	0.02685	0.01637	0.00997	0.0087	0.00205	0.00102	0.00026	0	0	0	0	0	0	0	0	0	0	0	0
2014	2	2	0	0	50	0	0.00037	0.00155	0.01148	0.01988	0.02113	0.02412	0.02822	0.0275	0.03102	0.03217	0.033	0.03143	0.03549	0.04252	0.04285	0.04669	0.05123	0.05514	0.05363	0.05684	0.05374	0.04859	0.05285	0.05119	0.04876	0.03709	0.0291	0.01665	0.00751	0.00351	0.00286	0.001	0.00059	0.00028	0.00004	0	0	0	0	0	0	0	0	0	0	0	0
2015	2	2	0	0	50	0	0	0.00045	0.00114	0.00354	0.00813	0.01485	0.02925	0.03402	0.03734	0.03806	0.04297	0.04983	0.05174	0.05959	0.05505	0.05174	0.04987	0.05537	0.05169	0.04633	0.05682	0.05378	0.04906	0.04965	0.03507	0.02203	0.01835	0.01404	0.00822	0.00618	0.00191	0.00177	0.00132	0.00059	0.00027	0	0	0	0	0	0	0	0	0	0	0	0
2017	2	2	0	0	50	0	0	0.00015	0.00167	0.00455	0.0088	0.02063	0.02533	0.0405	0.04733	0.04961	0.05795	0.0581	0.06038	0.0628	0.06159	0.06887	0.06963	0.06993	0.06326	0.05112	0.0446	0.03641	0.03277	0.02306	0.01714	0.01411	0.00485	0.00288	0.00121	0.00061	0.00015	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2018	2	2	0	0	50	0.00007	0.00007	0.00073	0.00795	0.01644	0.02147	0.02843	0.03519	0.03897	0.04487	0.05501	0.05296	0.05137	0.0513	0.04898	0.04467	0.04633	0.05196	0.05733	0.05673	0.0517	0.04507	0.04666	0.03957	0.034	0.02545	0.01902	0.01147	0.00842	0.00424	0.00166	0.00106	0.00053	0.00033	0	0	0	0	0	0	0	0	0	0	0	0	0	0
2019	2	2	0	0	50	0	0.00025	0.00084	0.00894	0.01086	0.00952	0.01169	0.01854	0.02414	0.0289	0.03099	0.03733	0.04118	0.04067	0.04368	0.04644	0.0436	0.05354	0.06072	0.06774	0.07316	0.072	0.06907	0.05596	0.04986	0.03533	0.02723	0.0167	0.00994	0.00626	0.00259	0.00092	0.00084	0.00042	0.00017	0	0	0	0	0	0	0	0	0	0	0	0	0
2020	2	2	0	0	50	0	0.0001	0.00091	0.00722	0.01403	0.01718	0.02104	0.02592	0.02663	0.03384	0.03862	0.04838	0.04746	0.05244	0.0622	0.06119	0.05549	0.05641	0.05844	0.05549	0.05285	0.04899	0.04462	0.04259	0.03486	0.02744	0.02358	0.01718	0.01118	0.00681	0.00447	0.00132	0.00081	0.0002	0.0001	0	0	0	0	0	0	0	0	0	0	0	0	0
2021	2	2	0	0	50	0	0.00007	0.00101	0.007	0.0128	0.0167	0.02802	0.03657	0.03758	0.03913	0.04122	0.04109	0.04257	0.04897	0.04506	0.04055	0.04533	0.0526	0.05597	0.06015	0.06958	0.07059	0.05772	0.04721	0.03704	0.02465	0.01711	0.01212	0.0062	0.00283	0.00108	0.00101	0.00027	0.00013	0.00007	0	0	0	0	0	0	0	0	0	0	0	0	0
2022	2	2	0	0	50	0	0	0.00231	0.01086	0.00795	0.00847	0.01026	0.01762	0.02018	0.0295	0.0325	0.03506	0.04002	0.04464	0.04772	0.0508	0.0478	0.05191	0.05387	0.05875	0.05823	0.06585	0.07688	0.06815	0.05456	0.04122	0.02617	0.01924	0.01001	0.00513	0.00316	0.00068	0.00017	0.00009	0.00009	0.00009	0.00009	0	0	0	0	0	0	0	0	0	0	0
2023	2	2	0	0	50	0	0	0.00062	0.00562	0.00983	0.01233	0.01529	0.02309	0.03058	0.03308	0.03152	0.03011	0.03433	0.0362	0.03542	0.04119	0.04899	0.05586	0.06054	0.06678	0.07645	0.07021	0.06834	0.0543	0.05211	0.0376	0.02777	0.01482	0.01311	0.00655	0.00452	0.00172	0.00078	0.00016	0.00016	0	0	0	0	0	0	0	0	0	0	0	0	0
-9999	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0	0
0 #_N_age_bins
#1 2 3 4 5 6 7 8
#0 #_N_ageerror_definitions
# 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5
# 0.05 0.15 0.25 0.35 0.45 0.55 0.65 0.75 0.85 0.95 1.05 1.15 1.25
# 0.5 1.5 2.5 3.5 4.5 5.5 6.5 7.5 8.5 9.5 10.5 11.5 12.5
# 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001
# 10.5 10.5 10.5 10.5 10.5 10.5 10.5 10.5 10.5 10.5 10.5 10.5 10.5
# 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001 0.001
#_mintailcomp: upper and lower distribution for females and males separately are accumulated until exceeding this level.
#_addtocomp:  after accumulation of tails; this value added to all bins
#_males and females treated as combined gender below this bin number
#_compressbins: accumulate upper tail by this number of bins; acts simultaneous with mintailcomp; set=0 for no forced accumulation
#_Comp_Error:  0=multinomial, 1=dirichlet
#_Comp_Error2:  parm number  for dirichlet
#_minsamplesize: minimum sample size; set to 1 to match 3.24, minimum value is 0.001
#_mintailcomp addtocomp combM+F CompressBins CompError ParmSelect minsamplesize
#0 0.0001 -1 0 0 0 1 #_fleet:1_ALB
#0 0.0001 -1 0 0 0 1 #_fleet:Dep
#2 #_Lbin_method_for_Age_Data: 1=poplenbins; 2=datalenbins; 3=lengths
# sex codes:  0=combined; 1=use female only; 2=use male only; 3=use both as joint sexxlength distribution
# partition codes:  (0=combined; 1=discard; 2=retained
#_yr month fleet sex part ageerr Lbin_lo Lbin_hi Nsamp datavector(female-male)
#-9999  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0
#
0 #_Use_MeanSize-at-Age_obs (0/1)
#1
0 #_N_environ_variables
#Yr Variable Value
#
0 # N sizefreq methods to read
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

ENDDATA
