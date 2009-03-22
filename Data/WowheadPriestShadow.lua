
local _, c = UnitClass('player')
if c ~= 'PRIEST' then return end

local WOWHEAD_SCORE = [[
791 0.241
812 3.488
862 1.145
873 5.697
890 1.153
940 3.123
942 2.944
944 4.743
1155 1.429
1156 1.228
1315 0.241
1443 2.236
1447 0.129
1484 2.394
1486 1.153
1491 0.048
1607 1.686
1714 0.92
1716 4.37
1720 2.252
1974 1.038
1980 2.059
1992 1.472
1992 1.472
2039 0.346
2042 0.753
2043 0.217
2169 0.67
2236 0.032
2243 1.66
2271 2.174
2277 2.576
2280 3.115
2292 1.383
2549 2.944
2565 1.799
2565 1.799
2567 0.493
2721 3.04
2800 1.383
2816 1.488
2879 0.818
2879 0.818
2911 0.922
2912 0.231
2933 0.509
3075 7.038
3414 0.231
3415 0.523
3748 1.445
4120 2.992
4134 3.78
4197 1.249
4320 0.574
4327 0.097
4454 0.032
4696 0.834
4696 0.834
4743 1.928
5183 0.981
5183 0.981
5195 1.836
5201 1.003
5202 0.177
5266 0.885
5970 1.836
6318 0.193
6324 3.048
6332 0.212
6341 0.818
6341 0.818
6392 1.528
6440 1.81
6461 0.29
6463 0.442
6465 1.241
6505 0.92
6629 0.064
6631 1.174
6632 0.818
6682 2.627
6685 2.327
6689 0.818
6691 0.064
6693 0.145
6695 0.129
6697 1.887
6803 1.383
6803 1.383
6901 0.475
6903 2.866
6908 1.769
6910 0.818
7001 0.016
7054 3.802
7673 0.276
7684 2.327
7685 1.962
7685 1.962
7691 3.558
7709 3.271
7711 2.499
7712 3.563
7713 3.07
7714 2.442
7720 1.839
7721 1.437
7722 0.92
7728 1.512
7731 0.818
7752 0.048
7757 3.692
7888 0.276
9393 2.027
9393 2.027
9395 0.769
9397 0.161
9407 1.713
9415 3.255
9429 4.488
9431 4.067
9433 2.038
9434 3.434
9447 0.145
9448 0.217
9454 1.804
9457 0.113
9470 5.799
9482 4.56
9484 4.914
9491 1.657
9492 1.922
9508 1.729
9538 0.064
9588 0.064
9623 0.29
9641 0.981
9649 3.547
9683 2.767
10019 3.517
10021 4.206
10041 4.78
10574 3.268
10578 0.901
10581 1.131
10629 3.405
10630 5.115
10634 2.394
10710 0.064
10711 0.08
10751 3.231
10762 3.029
10769 2.456
10770 2.126
10770 2.126
10771 3.115
10776 0.08
10787 1.472
10796 1.145
10796 1.145
10802 2.155
10806 3.971
10807 4.185
10808 3.842
10824 0.161
10829 2.123
10836 1.34
10843 3.405
10844 3.201
11123 1.906
11262 0.869
11262 0.869
11310 2.123
11311 0.129
11623 2.831
11624 3.885
11625 3.193
11625 3.193
11634 1.716
11662 5.375
11748 1.799
11750 5.874
11782 4.684
11807 4.456
11808 2.944
11819 1.962
11822 4.635
11824 3.416
11832 1.962
11839 4.544
11841 4.531
11922 0.981
11923 2.617
11924 4.488
11928 2.7
11928 2.7
11929 1.834
11932 4.74
11935 3.008
11935 3.008
11962 1.729
12059 0.08
12103 3.311
12344 3.619
12462 7.877
12466 4.845
12471 0.67
12471 0.67
12532 1.96
12542 1.708
12543 3.815
12545 3.815
12546 1.826
12548 1.877
12554 4.635
12556 2.075
12589 4.587
12604 5.351
12605 2.681
12608 2.145
12626 3.657
12752 6.059
12783 1.877
12926 3.271
12929 3.753
12930 4.743
12965 5.209
12967 2.855
12968 4.257
12977 0.641
12987 0.903
12996 0.097
12998 1.855
13000 3.236
13001 3.847
13002 0.241
13005 0.113
13007 2.944
13008 1.44
13013 4.105
13024 0.032
13025 0.113
13026 0.542
13028 0.193
13029 2.29
13029 2.29
13031 1.209
13031 1.209
13064 0.74
13084 0.525
13085 1.678
13088 0.048
13089 0.048
13093 0.129
13094 0.359
13095 0.08
13096 1.33
13098 1.877
13099 0.783
13100 1.064
13101 3.571
13102 3.906
13103 0.097
13105 1.249
13106 1.576
13107 1.96
13122 0.097
13141 1.831
13144 1.96
13161 5.172
13170 6.483
13178 2.815
13181 4.308
13185 4.651
13206 2.692
13249 3.619
13253 5.04
13261 2.952
13261 2.952
13282 3.241
13283 2.416
13314 5.898
13345 2.072
13346 6.641
13349 2.453
13353 1.89
13353 1.89
13360 1.249
13369 3.842
13374 2.681
13376 1.845
13385 1.051
13385 1.051
13386 0.29
13388 4.92
13389 2.627
13390 5.332
13391 2.971
13392 0.619
13396 1.962
13403 2.121
13503 1.971
13937 0.322
13938 2.26
13956 4.335
13958 1.279
13960 0.818
13964 3.212
13965 3.753
13968 3.753
13986 2.627
14136 6.78
14137 1.952
14138 2.611
14139 2.137
14140 2.893
14146 5.035
14148 0.917
14150 1.247
14152 9.802
14153 7.523
14154 6.812
14340 5.724
14538 2.836
14543 0.903
14558 2.351
14577 2.306
14626 2.885
14629 1.381
14631 3.097
14632 2.268
14633 1.413
15104 2.209
15200 0.064
15411 1.877
15421 1.842
15802 1.823
15805 1.445
15805 1.445
15854 1.85
15856 1.314
16058 3.847
16335 0.113
16486 0.807
16682 1.839
16683 1.81
16684 1.839
16685 2.517
16686 3.539
16687 2.643
16688 3.702
16689 2.633
16690 3.008
16691 1.426
16692 1.426
16693 3.008
16694 2.099
16695 2.566
16696 2.45
16697 1.314
16698 2.845
16699 1.952
16700 2.63
16701 1.874
16702 2.105
16703 1.265
16704 1.198
16705 1.263
16811 3.788
16812 3.877
16813 5.397
16814 5.485
16815 5.349
16816 4.284
16817 4.458
16819 4.046
16887 0.807
16887 0.807
16919 5.34
16920 6.845
16921 7.718
16922 7.354
16923 8.276
16924 5.381
16925 5.432
16926 4.7
16975 1.038
16979 1.614
16980 1.314
16997 0.576
16999 1.282
17045 1.153
17050 1.314
17055 0.772
17061 0.576
17063 5.362
17064 1.158
17067 1.906
17067 1.906
17070 9.861
17077 1.153
17078 4.249
17105 5.603
17109 4.257
17110 1.662
17113 10.37
17191 5.292
17594 3.692
17596 3.434
17598 4.922
17599 4.863
17600 4.922
17601 3.692
17602 8.914
17603 7.944
17604 6.394
17605 8.914
17607 5.836
17608 5.26
17610 4.922
17611 4.863
17612 4.922
17613 3.692
17616 3.692
17617 3.434
17618 5.836
17620 5.26
17622 6.394
17623 8.914
17624 8.914
17625 7.944
17707 1.249
17710 1.413
17713 2.681
17715 2.483
17732 2.137
17733 0.08
17737 3.276
17737 3.276
17741 4.34
17743 0.579
17745 0.67
17748 3.866
17750 4.252
17755 3.692
18022 1.282
18048 2.866
18082 4.587
18083 1.429
18102 4.788
18103 2.239
18204 1.877
18205 1.877
18208 4.244
18263 1.574
18289 2.981
18295 0.692
18311 2.783
18314 1.587
18317 2.78
18321 2.866
18327 4.088
18338 2.126
18369 3.174
18371 0.796
18372 2.453
18385 5.995
18386 6.338
18387 3.606
18389 3.558
18395 2.82
18397 1.265
18398 0.871
18403 3.357
18404 4.558
18405 4.759
18407 4.416
18408 5.453
18409 2.086
18428 0.097
18437 0.692
18442 0.064
18443 0.113
18444 0.097
18456 0.807
18457 0.692
18469 3.233
18483 0.29
18486 3.075
18491 0.989
18496 3.029
18497 3.212
18500 2.681
18507 3.818
18509 1.877
18510 4.751
18523 3.271
18523 3.271
18526 4.129
18532 2.223
18534 7.365
18536 1.241
18536 1.241
18541 2.681
18543 3.504
18545 7.735
18586 0.756
18608 16.678
18609 13.239
18678 0.576
18681 5.115
18684 0.807
18691 3.424
18693 3.818
18695 2.008
18695 2.008
18697 1.903
18709 1.973
18720 3.882
18723 3.04
18727 5.957
18728 1.799
18730 2.091
18735 4.635
18740 3.359
18743 1.241
18745 4.673
18757 0.579
18761 1.268
18762 2.126
18762 2.126
18805 1.877
18808 5.753
18809 4.416
18811 1.166
18814 6.367
18821 1.877
18838 1.877
18840 1.877
18842 12.909
18865 1.877
18866 1.877
18872 2.627
18873 14.536
18874 14.536
18878 5.231
19047 2.71
19050 2.855
19056 0.113
19059 0.129
19085 2.29
19086 2.29
19090 4.097
19094 4.097
19096 1.442
19098 1.442
19101 4.298
19102 4.298
19105 6.713
19108 2.126
19109 3.115
19121 3
19130 3.424
19131 6.748
19132 9.836
19133 8.668
19135 3.504
19136 7.81
19138 2.812
19140 5.472
19142 4.22
19142 4.22
19145 9.405
19147 5.397
19156 3.761
19165 7.032
19308 4.796
19308 4.796
19309 4.579
19309 4.579
19310 5.617
19310 5.617
19311 5.397
19311 5.397
19312 4.796
19312 4.796
19315 5.397
19315 5.397
19325 4.558
19347 12.716
19355 14.043
19356 21.123
19360 15.941
19366 6.193
19366 6.193
19367 2.365
19369 1.898
19370 7.405
19371 2.035
19374 6.962
19375 12.389
19377 2.681
19378 6.193
19379 11.485
19382 5.893
19384 2.681
19385 10.351
19388 6.804
19391 2.828
19395 6.375
19397 3.759
19399 2.81
19400 7.469
19403 6.962
19406 5.362
19407 7.107
19426 3.727
19430 4.646
19434 5.107
19435 1.169
19437 6.973
19438 8.925
19518 2.579
19519 2.252
19520 1.689
19521 1.29
19522 2.579
19523 2.252
19524 1.689
19525 1.29
19526 2.418
19527 2.059
19528 1.552
19529 1.209
19530 2.418
19531 2.059
19532 1.552
19533 1.209
19566 2.078
19567 1.775
19568 1.472
19569 1.097
19570 2.078
19571 1.775
19572 1.472
19573 1.097
19592 2.113
19593 2.603
19594 2.603
19595 4.633
19596 4.059
19597 3.389
19682 10.204
19683 8.887
19684 7.097
19841 4.971
19842 4.788
19843 3.587
19856 1.877
19857 7.059
19859 1.877
19861 2.944
19863 3.965
19870 3.764
19876 4.118
19884 10.871
19885 5.126
19886 7.858
19890 7.33
19891 6.357
19891 6.357
19893 5.097
19895 6.885
19897 6.483
19898 1.877
19899 5.206
19903 5.378
19905 3.933
19907 2.681
19909 6.842
19920 1.587
19922 3.839
19922 3.839
19923 3.815
19925 2.681
19927 1.365
19929 6.566
19965 3.051
19967 0.362
19982 2.681
19999 6.818
20006 1.877
20032 6.635
20035 0.461
20037 3.308
20047 4.858
20054 2.885
20061 4.212
20069 11.611
20070 6.783
20082 1.472
20094 2.164
20095 1.654
20096 1.145
20097 3.925
20098 2.751
20099 2.145
20159 2.885
20160 2.164
20161 1.654
20162 1.145
20163 4.858
20164 2.145
20165 3.925
20166 2.751
20176 4.212
20214 6.783
20217 2.466
20218 1.357
20220 11.611
20258 7.078
20425 0.678
20426 0.962
20427 0.85
20428 0.85
20431 0.962
20434 0.678
20505 2.115
20530 4.26
20536 5.416
20537 0.29
20538 0.434
20539 0.217
20556 5.595
20581 9.836
20582 5.139
20582 5.139
20618 6.622
20622 0.788
20625 3.212
20626 4.614
20631 3.375
20632 6.166
20635 9.399
20647 2.598
20648 1.255
20654 6.598
20666 1.673
20672 1.855
20674 1.877
20682 4.866
20685 3.397
20686 2.145
20691 0.807
20697 3.732
20705 2.453
20706 2.453
20707 2.453
20716 4.992
20717 5.072
20720 3.107
20832 1.126
20969 5.29
21128 12.284
21179 3.016
21182 4.558
21183 8.501
21185 3.204
21185 3.204
21186 6.56
21187 2.681
21189 2.681
21201 2.681
21202 2.681
21203 2.681
21204 2.681
21205 2.681
21206 4.458
21207 4.737
21208 5.3
21209 5.464
21210 5.979
21244 4.558
21273 22.399
21275 16.282
21348 10.024
21349 5.804
21350 5.922
21351 11.003
21352 8.823
21410 9.408
21411 1.861
21412 3.917
21452 16.71
21461 10.555
21462 5.775
21464 4.818
21466 8.571
21468 5.276
21470 3.391
21471 6.233
21471 6.233
21472 8.078
21477 2.681
21483 4.603
21489 4.408
21496 1.788
21499 8.853
21500 4.145
21504 5.472
21507 4.523
21517 4.225
21523 12.29
21527 7.193
21529 0.113
21531 3.673
21563 1.877
21582 7.93
21583 5.509
21585 9.925
21597 8.33
21597 8.33
21600 7.751
21603 3.107
21604 5.877
21608 6.869
21611 6.078
21615 9.123
21619 4.973
21620 4.777
21648 4.769
21663 9.094
21664 1.877
21666 5.469
21666 5.469
21671 7.976
21676 10.338
21677 1.877
21678 2.807
21681 3.386
21686 6.721
21690 4.665
21694 6.043
21696 3.043
21697 4.818
21701 2.681
21707 4.252
21709 8.887
21712 5.34
21715 1.877
21753 2.617
21774 6.783
21779 3.761
21780 3.753
21791 3.324
21801 1.823
21802 4.166
21809 4.558
21810 5.523
21836 5.965
21838 9.196
21839 18.598
21846 11.193
21847 10.941
21848 15.198
21859 8.627
21860 6.761
21861 9.421
21862 8.973
21863 1.643
21864 1.906
21865 2.563
21868 0.651
21869 8.434
21870 8.724
21871 11.954
21873 9.172
21874 10.606
21875 13.818
21888 1.845
22062 4.016
22063 2.772
22064 5.44
22065 6.783
22066 5.882
22067 5.314
22068 3.544
22069 5.643
22070 3.807
22071 2.692
22072 5.038
22073 3.807
22074 7.528
22075 6.375
22076 3.576
22077 5.769
22078 3.654
22079 2.668
22080 6.327
22081 3.721
22082 3.654
22083 5.453
22084 4.161
22085 4.858
22149 3.509
22150 2.681
22225 4.673
22231 4.22
22234 3.775
22245 3.062
22247 3.866
22253 3.751
22253 3.751
22254 1.654
22256 3.997
22257 2.343
22266 2.866
22267 9.07
22301 1.729
22302 1.729
22303 1.729
22304 1.268
22305 1.268
22306 1.268
22311 1.268
22313 0.922
22315 2.29
22319 3.155
22319 3.155
22322 1.877
22326 2.786
22327 2.475
22329 5.493
22329 5.493
22330 3.413
22334 3.52
22335 8.204
22339 4.761
22340 2.681
22342 6.424
22379 2.126
22380 3.962
22384 4.558
22394 5.046
22403 4.539
22405 3.26
22406 5.917
22408 1.799
22412 4.038
22433 3.676
22458 5.327
22496 14.82
22497 12.826
22498 14.273
22499 8.107
22500 8.692
22501 8.239
22502 9.306
22503 6.145
22504 14.898
22505 10.81
22506 14.177
22507 9.416
22508 8.954
22509 8.088
22510 8.82
22511 5.375
22512 9.373
22513 9.172
22514 9.794
22515 6.981
22516 6.941
22517 6.499
22518 7.177
22519 5.437
22652 3.434
22654 2.453
22655 1.962
22657 3.952
22659 1.877
22667 2.933
22681 3.405
22688 4.029
22700 2.944
22711 4.453
22713 3.501
22716 5.55
22720 6.697
22721 4.799
22730 9.619
22731 8.204
22732 2.681
22747 6.93
22752 6.93
22756 1.962
22757 2.944
22758 1.145
22799 27.933
22800 28.105
22801 20.641
22802 4.558
22803 15.284
22804 2.681
22808 4.558
22820 4.914
22821 4.493
22859 4.019
22869 4.011
22882 5.598
22885 5.598
22937 5.241
22937 5.241
22938 2.681
22939 5.877
22942 15.509
22943 5.501
22947 2.871
22954 4.558
22960 6.19
22968 2.617
22980 1.217
22983 9.638
22988 17.397
22994 2.338
22994 2.338
23001 3.753
23009 3.26
23017 5.732
23018 2.681
23021 6.579
23023 1.877
23025 7.456
23027 0.724
23029 6.172
23029 6.172
23030 2.681
23031 8.032
23032 5.365
23035 11.107
23036 6.008
23037 2.338
23038 4.558
23044 4.558
23045 1.877
23046 6.542
23047 6.051
23048 6.839
23048 6.839
23049 9.196
23049 9.196
23050 9.542
23053 3.753
23056 22.453
23057 7.013
23061 6.845
23069 6.051
23070 12.563
23084 1.153
23085 1.499
23091 0.807
23124 7.885
23125 3.598
23126 4.231
23128 4.231
23129 2.718
23156 2.971
23156 2.971
23168 1.472
23169 1.836
23173 2.394
23177 1.308
23178 2.509
23220 10.858
23237 7.609
23261 5.944
23262 4.434
23288 4.011
23289 4.019
23302 5.598
23303 5.598
23316 5.944
23317 4.434
23451 14.574
23452 5.115
23452 5.115
23453 4.456
23453 4.456
23454 12.968
23464 12.968
23466 14.574
23468 5.115
23468 5.115
23469 4.456
23469 4.456
23554 32.48
23555 2.681
23556 30.287
23761 10.043
23762 0.756
23828 15.823
23838 9.346
24024 6.684
24045 4.26
24069 13.587
24073 1.877
24079 4.105
24080 4.105
24082 4.105
24083 6.836
24085 4.105
24086 4.105
24089 2.654
24096 4.635
24110 5.271
24114 5.63
24116 7.775
24117 2.697
24121 5.625
24122 4.611
24123 3.547
24126 2.651
24127 1.013
24154 5.048
24250 6.29
24251 3.847
24252 6.992
24254 5.74
24255 5.233
24256 10.558
24257 3.209
24259 3.083
24260 3.223
24261 8.614
24262 17.828
24263 10.635
24264 9.394
24266 16.413
24267 10.26
24356 3.217
24359 13.643
24362 6.311
24378 10.85
24380 2.866
24384 10.316
24390 5.233
24392 4.834
24393 5.115
24395 6.651
24397 6.799
24450 8.413
24453 14.807
24459 4.684
24462 7.292
24464 2.011
24481 6.831
24557 47.035
25536 6.973
25541 4.788
25562 3.485
25563 6.544
25564 4.113
25606 5.252
25607 5.252
25640 3.898
25711 10.257
25713 5.107
25714 5.107
25718 7.373
25759 15.761
25760 21.496
25774 14.121
25776 5.231
25777 7.668
25792 7.863
25804 2.413
25805 6.016
25806 4.292
25808 4.292
25810 6.016
25811 2.413
25822 6.37
25824 6.55
25826 6.55
25836 10.788
25939 4.713
25945 5.241
25950 22.268
25954 5.279
25957 8.914
25962 2.949
26055 5.397
27410 8.842
27411 5.885
27412 16.335
27418 11.48
27426 15.992
27431 17.373
27433 4.912
27440 4.686
27448 5.231
27451 7.952
27452 4.536
27460 2.413
27462 8.89
27463 3.753
27464 6.279
27465 7.375
27466 11.769
27476 3.753
27477 5.74
27477 5.74
27485 6.394
27488 13.265
27491 4.686
27493 12.335
27506 10.979
27508 9.579
27517 5.718
27523 6.279
27525 8.059
27534 6.067
27534 6.067
27536 7.139
27537 12.035
27538 21.635
27540 3.936
27542 7.641
27543 25.807
27546 5.63
27547 9.732
27551 3.217
27638 5.788
27649 6.702
27683 6.051
27707 6.885
27708 7.539
27709 11.472
27710 6.134
27711 8.231
27714 6.405
27714 6.405
27738 5.488
27741 23.893
27742 9.912
27746 6.635
27758 9.241
27761 6.3
27762 4.429
27764 10.046
27766 5.453
27768 7.783
27775 5.879
27778 6.702
27779 3.485
27780 6.794
27781 14.44
27784 7.442
27789 5.568
27791 23.641
27795 11.067
27796 7.375
27799 13.89
27805 2.437
27814 2.815
27816 7.29
27821 11.426
27822 4.29
27824 13.209
27828 0.941
27830 1.743
27832 1.743
27833 1.743
27834 1.743
27838 13.013
27842 29.839
27843 8.764
27848 9.126
27866 10.005
27868 23.737
27875 10.979
27876 19.788
27877 5.898
27878 4.558
27885 3.046
27889 8.115
27890 2.617
27892 6.702
27902 7.472
27904 4.021
27907 11.901
27919 6.153
27922 5.233
27924 5.233
27925 3.485
27937 23.893
27939 2.507
27942 2.507
27946 6.228
27948 13.399
27981 8.89
27994 10.842
27996 2.823
28029 4.161
28030 6.118
28031 3.485
28032 3.753
28033 24.692
28034 4.29
28040 3.485
28041 3.485
28052 10.603
28075 8.442
28121 8.043
28134 9.501
28168 5.764
28169 15.249
28174 5.164
28179 6.702
28183 8.509
28185 8.665
28187 8.89
28187 8.89
28188 28.383
28190 6.051
28191 9.903
28193 7.866
28210 2.815
28212 9.804
28213 5.499
28213 5.499
28216 21.692
28218 8.241
28223 6.702
28227 9.769
28229 8.705
28230 8.322
28232 8.847
28233 5.231
28244 1.34
28245 5.635
28246 2.145
28247 4.088
28250 7.713
28252 11.944
28254 7.327
28257 22.276
28259 5.413
28260 7.71
28260 7.71
28269 7.204
28278 10.676
28297 34.619
28304 8.247
28305 4.424
28312 4.424
28317 8.558
28320 3.558
28321 4.29
28322 19.788
28323 2.681
28327 5.509
28338 7.971
28341 31.944
28342 11.351
28345 4.021
28346 4.721
28346 4.721
28371 2.815
28373 5.732
28374 8.013
28377 2.547
28378 5.635
28379 5.635
28380 2.547
28386 5.424
28387 5.617
28387 5.617
28394 7.579
28402 8.346
28404 8.346
28405 5.212
28406 7.625
28409 10.448
28410 10.448
28411 6.839
28412 10.008
28412 10.008
28413 8.091
28415 10.231
28416 2.145
28418 4.021
28419 5.34
28477 6.898
28507 12.013
28508 6.718
28509 4.558
28510 7.509
28511 6.485
28515 7.769
28517 9.45
28522 32.995
28525 6.046
28525 6.046
28529 4.29
28530 10.694
28553 4.826
28555 7.796
28565 9.536
28570 7.962
28572 1.206
28578 11.375
28579 9.383
28582 7.295
28585 13.357
28586 15.702
28588 4.129
28590 6.378
28594 12.625
28602 12.18
28603 9.048
28603 9.048
28604 35.059
28609 6.52
28612 9.212
28633 42.3
28649 4.826
28652 8.863
28653 3.426
28654 11.863
28657 3.217
28658 6.702
28661 6.488
28663 8.622
28670 9.043
28672 4.558
28673 6.44
28704 5.818
28705 5.134
28706 8.539
28707 4.413
28708 6.145
28726 9.067
28727 4.611
28728 7.531
28728 7.531
28730 2.949
28731 6.815
28734 11.466
28734 11.466
28742 10.225
28744 20.579
28753 9.509
28756 11.928
28757 8.177
28759 7.625
28760 9.708
28762 9.968
28763 6.756
28765 7.737
28766 12.153
28768 4.021
28770 38.357
28771 36.105
28777 3.217
28780 11.469
28781 8.375
28781 8.375
28782 40.284
28783 5.761
28789 8.831
28790 8.204
28793 11.405
28797 9.968
28799 10.029
28804 15.271
28822 7.394
28823 3.761
28856 5.818
28857 5.134
28858 8.539
28859 4.413
28860 6.145
28924 3.887
28925 3.887
28929 3.887
28930 3.887
28931 24.772
28935 32.63
28938 3.673
28938 3.673
28941 3.673
28941 3.673
28950 3.887
28951 3.887
28954 3.887
28955 3.887
28957 24.772
28959 32.63
28980 8.346
28981 5.212
28982 8.346
29001 10.448
29002 6.839
29003 10.448
29049 11.134
29050 11.697
29053 12.531
29054 8.391
29055 8.917
29056 15.3
29057 11.458
29058 15.088
29059 15.198
29060 8.26
29117 7.319
29122 4.496
29123 3.662
29126 7.169
29129 9.413
29130 33.67
29132 8.579
29133 25.979
29139 3.432
29140 3.432
29145 3.239
29146 3.239
29149 2.836
29150 3.217
29157 1.638
29168 6.925
29169 6.925
29170 7.598
29170 7.598
29172 9.391
29174 11.244
29175 27.965
29179 4.29
29183 6.944
29240 7.279
29241 13.231
29242 9.231
29249 6.684
29250 8.67
29251 8.764
29255 6.767
29257 10.485
29258 8.847
29269 10.086
29269 10.086
29270 8.82
29270 8.82
29271 8.319
29271 8.319
29272 6.869
29272 6.869
29273 8.013
29273 8.013
29274 6.976
29274 6.976
29280 4.826
29281 5.898
29282 6.434
29283 6.702
29284 7.282
29285 8.684
29286 9.394
29287 9.673
29288 5.866
29289 6.751
29290 7.668
29291 7.225
29302 10.094
29303 10.834
29304 11.66
29305 11.66
29306 8.536
29307 7.858
29308 9.166
29309 9.166
29315 6.684
29317 6.818
29320 7.308
29322 4.394
29328 7.855
29330 7.231
29330 7.231
29333 7.997
29334 5.877
29335 5.63
29341 13.512
29345 3.389
29346 2.949
29347 5.721
29349 4.021
29350 4.745
29352 7.684
29353 30.054
29354 7.164
29355 37.276
29367 8.402
29368 7.115
29369 8.228
29370 7.196
29373 6.944
29374 6.962
29375 6.627
29376 7.196
29379 3.083
29381 4.826
29457 12.855
29780 13.566
29813 7.094
29814 6.531
29918 10.469
29920 8.233
29922 8.702
29923 8.434
29923 8.434
29972 13.335
29977 12.78
29981 42.212
29982 8.587
29986 20.761
29987 14.287
29988 51.426
29989 9.794
29990 14.491
29992 9.732
29997 8.579
30008 7.847
30010 6.971
30011 28.552
30012 24.169
30013 2.949
30015 11.767
30018 9.566
30020 14.85
30022 3.083
30024 16.903
30035 10.381
30036 8.984
30037 17.437
30038 18.365
30049 10.354
30049 10.354
30050 15.375
30052 5.094
30056 15.678
30059 3.083
30064 16.34
30067 13.893
30079 11.174
30080 5.155
30099 4.826
30100 8.282
30107 23.944
30108 41.697
30109 9
30110 8.59
30150 12.504
30151 10.718
30152 13.3
30153 14.284
30154 10.024
30159 18.445
30160 15.046
30161 19.965
30162 22.515
30163 12.137
30256 9.643
30365 2.681
30366 7.812
30368 7.552
30377 6.633
30459 15.15
30460 12.92
30461 11.043
30463 6.735
30464 5.33
30465 9.332
30531 11.507
30532 9.633
30543 9.501
30619 1.158
30626 5.362
30627 7.775
30642 7.729
30665 5.724
30666 6.869
30667 10
30668 13.713
30673 13.306
30709 14.255
30710 2.279
30723 37.839
30725 13.619
30726 9.193
30727 12.853
30729 4.021
30732 36.949
30734 18.89
30735 10.164
30736 9.625
30738 6.568
30787 3.949
30804 0.981
30832 29.858
30836 10.713
30837 0.922
30838 1.268
30839 2.19
30841 6.051
30859 3.946
30860 2.681
30865 8.445
30870 10.048
30871 8.316
30872 15.893
30872 15.893
30884 14.287
30885 11.249
30888 14.863
30894 17.673
30895 13.134
30901 3.217
30908 50.823
30911 9.067
30911 9.067
30912 16.005
30913 28.083
30916 22.71
30918 44.099
30924 9.437
30925 9.89
30932 7.638
30973 2.681
31013 19.44
31036 25.383
31038 22.756
31060 11.893
31061 16.914
31063 14.938
31064 18.072
31065 23.517
31066 14.987
31067 19.649
31068 15.07
31069 11.866
31070 16.855
31073 1.877
31075 7.812
31076 3.981
31077 2.681
31104 10.799
31133 10.694
31139 4.826
31140 8.038
31142 13.131
31143 2.145
31149 11.448
31150 5.828
31178 6.027
31196 3.949
31230 7.855
31255 3.485
31258 4.85
31272 9.716
31275 3.753
31282 9.861
31283 10.536
31289 20.3
31290 7.394
31297 18.871
31304 20.584
31305 2.145
31306 4.847
31308 28.992
31321 5.327
31326 0.507
31329 7.421
31338 6.177
31339 6.566
31340 16.147
31342 28.311
31343 13.359
31381 3.887
31382 6.177
31383 5.753
31409 6.885
31410 7.279
31411 9.651
31412 6.134
31413 7.751
31417 22.434
31461 11.257
31465 6.383
31492 4.021
31493 5.349
31493 5.349
31494 7.118
31494 7.118
31546 12.094
31620 5.818
31621 5.818
31622 5.941
31623 9.115
31624 4.759
31625 7.298
31626 6.056
31627 9.115
31628 4.759
31629 7.298
31691 6.33
31692 7.812
31693 5.895
31695 4.692
31717 10.802
31726 4.836
31747 4.416
31749 4.416
31756 2.547
31758 8.491
31920 7.775
31921 6.373
31922 6.442
31923 6.646
31978 7.587
31978 7.587
32015 7.212
32016 7.308
32017 9.552
32018 6.327
32019 7.925
32026 5.228
32034 7.097
32035 7.732
32036 11.453
32037 6.606
32038 8.491
32044 5.228
32053 42.893
32055 53.702
32089 10.914
32090 9.437
32237 43.965
32238 11.89
32239 13.448
32247 15.85
32256 13.839
32260 9.249
32261 5.63
32266 5.094
32270 14.268
32273 10.903
32323 7.775
32327 20.26
32329 13.928
32331 12.064
32335 4.021
32337 9.381
32338 19.362
32340 15.507
32343 7.574
32344 46.051
32349 14.761
32350 8.85
32350 8.85
32353 11.142
32361 15.147
32361 15.147
32362 5.362
32363 4.912
32367 21.625
32370 11.609
32374 56.287
32450 34.619
32451 34.619
32452 4.721
32452 4.721
32483 15.697
32494 17.121
32495 13.662
32496 10.139
32497 8.043
32500 44.52
32505 5.362
32513 8.268
32516 7.968
32519 9.66
32524 10.684
32525 25.971
32526 2.078
32527 10.761
32528 11.129
32531 6.925
32533 7.332
32533 7.332
32535 7.107
32537 19.788
32538 6.635
32541 7.241
32584 9.973
32585 11.3
32586 9.743
32587 12.74
32589 12.239
32590 13.933
32609 9.531
32650 3.231
32651 7.241
32651 7.241
32653 6.635
32655 7.214
32661 4.826
32662 28.576
32664 8.233
32665 1.743
32770 4.558
32771 4.558
32772 4.82
32774 4.088
32776 6.389
32779 8.357
32787 9.346
32795 11.965
32799 9.346
32807 11.965
32811 5.933
32820 7.55
32830 21.456
32831 2.453
32941 8.925
32942 3.217
32943 6.903
32961 7.587
32961 7.587
32962 4.115
32963 42.893
32964 39.217
32979 9.346
32980 5.933
32981 9.346
33054 4.088
33056 6.126
33057 2.949
33058 6.903
33064 6.083
33065 6.097
33066 2.413
33067 7.231
33068 5.622
33122 3.217
33192 4.673
33203 12.206
33281 11.826
33283 43.271
33285 9.239
33291 18.059
33293 7.426
33296 5.898
33297 1.676
33304 8.29
33317 15.233
33325 7.45
33325 7.45
33333 6.579
33334 9.15
33334 9.15
33354 44.509
33357 12.389
33453 24.491
33463 13.402
33466 9.349
33468 41.815
33471 9.834
33480 10.732
33484 2.681
33489 11.52
33490 41.901
33493 3.485
33494 45.062
33497 14.52
33498 9.946
33584 15.882
33585 15.882
33586 12.429
33587 9.48
33588 8.493
33589 9.239
33590 1.676
33591 8.397
33592 8.397
33681 8.145
33681 8.145
33687 47.257
33716 12.064
33717 8.375
33718 8.702
33719 11.273
33720 7.327
33721 8.997
33733 4.96
33736 8.145
33736 8.145
33743 43.046
33744 8.26
33745 9.29
33746 13.011
33747 7.769
33748 9.654
33754 4.96
33763 47.257
33764 4.558
33766 51.863
33820 0.643
33828 1.303
33829 8.668
33853 7.126
33882 10.394
33883 7.048
33884 10.394
33900 10.279
33901 7.048
33902 10.279
33912 12.936
33913 8.962
33914 12.936
33918 7.155
33919 3.485
33920 8.633
33921 7.212
33922 6.694
33923 2.949
34009 47.029
34010 6.702
34012 8.893
34033 4.579
34033 4.579
34049 7.686
34050 7.686
34059 4.558
34066 2.29
34073 7.684
34074 6.944
34138 6.174
34139 7.453
34162 5.362
34163 5.362
34165 1.676
34166 11.314
34170 19.788
34176 48.394
34177 2.011
34179 10.944
34179 10.944
34181 22.906
34182 69.469
34184 10.579
34189 4.29
34199 47.107
34202 14.528
34204 14.504
34205 10.086
34206 10.483
34206 10.483
34210 16.855
34230 13.182
34232 21.767
34233 19.011
34241 2.145
34242 12.011
34329 1.81
34335 52.992
34336 55.622
34337 57.204
34339 19.729
34340 24.212
34342 13.764
34344 21.027
34347 5.957
34348 5.346
34358 1.944
34359 12.777
34360 10.15
34361 1.877
34362 15.893
34363 11.378
34364 23.574
34365 19.37
34366 17.086
34367 12.721
34386 18.979
34393 16.311
34399 22.032
34405 21.74
34406 14.223
34416 3.115
34418 1.799
34424 4.743
34427 3.619
34429 3.619
34430 10.303
34434 10.989
34435 12.319
34470 7.196
34471 1.086
34527 13.568
34528 18.016
34540 59.37
34562 13.954
34563 16.145
34576 5.362
34577 5.362
34579 7.686
34580 7.686
34604 33.651
34606 1.139
34607 10.845
34608 34.603
34610 15.702
34611 40.33
34625 6.804
34665 2.949
34670 25.131
34671 22.013
34677 6.558
34678 8.126
34680 3.485
34697 5.957
34702 6.55
34704 6.188
34705 5.343
34708 4.424
34788 9.113
34790 22.456
34792 8.63
34793 6.877
34797 29.067
34798 1.206
34808 12.692
34837 2.89
34847 23.142
34889 15.421
34890 8.71
34894 3.217
34895 43.622
34896 43.622
34917 22.316
34918 21.475
34919 15.611
34924 14.979
34925 15.263
34926 10.952
34936 21.223
34937 19.544
34938 14.657
34985 5
34987 64.547
35008 9.424
35008 9.424
35014 51.016
35016 5.397
35016 5.397
35053 9.933
35054 10.981
35055 13.255
35056 8.885
35057 10.979
35065 2.617
35071 5.362
35074 9.424
35074 9.424
35082 46.383
35083 9.818
35084 11.405
35085 15.29
35086 9.164
35087 11.933
35093 5.362
35102 45.922
35103 13.673
35107 5
35109 55.968
35129 7.92
35130 8.064
35131 4.021
35132 9.871
35133 8.491
35134 7.603
35135 3.485
35138 11.952
35144 11.836
35149 14.866
35153 11.952
35159 11.836
35164 14.866
35168 8.327
35174 8.327
35179 10.201
35181 17.66
35282 11.043
35283 8.257
35284 3.753
35290 10.298
35291 8.33
35292 3.753
35317 7.802
35319 7.225
35320 4.547
35321 7.217
35324 7.217
35326 2.681
35327 2.681
35333 6.056
35334 9.115
35335 5.818
35336 4.759
35337 7.298
35338 5.818
35339 5.134
35340 8.539
35341 4.413
35342 6.145
35466 5.134
35467 7.298
35494 6.627
35497 8.228
35507 4.826
35508 7.115
35509 6.962
35511 5.094
35514 33.759
35570 41.37
35572 14.681
35580 10.501
35581 7.686
35584 24.217
35587 48.316
35589 11.442
35594 12.214
35595 1.944
35596 11.276
35597 8.635
35598 8.311
35598 8.311
35606 5.63
35609 9.638
35609 9.638
35610 6.367
35611 12.177
35612 14.113
35617 5.66
35630 9.383
35631 9.592
35632 19.416
35633 50.046
35635 16.7
35646 21.66
35652 4.981
35654 9.29
35657 11.424
35658 50.823
35663 15.987
35666 11.887
35673 18.764
35679 24.92
35681 3.15
35682 10.41
35683 4.826
35700 3.804
35703 1.303
35733 9.429
35749 10.303
35750 10.303
36871 2.949
36872 1.231
36874 2.882
36943 11.134
36944 5.362
36945 11.121
36947 2.547
36949 16.335
36954 18.043
36961 6.434
36972 11.121
36973 28.491
36975 59.22
36976 21.775
36979 1.81
36980 4.558
36982 15.244
36983 19.678
36985 24.638
36988 11.477
36989 9.815
36991 20.19
36997 11.394
37037 2.011
37038 6.55
37048 11.625
37051 13.777
37051 13.777
37055 15.244
37058 13.413
37064 4.357
37079 11.247
37086 15.343
37086 15.343
37096 2.48
37099 69.158
37111 12.265
37112 58.716
37113 11.727
37134 23.59
37134 23.59
37141 13.11
37151 5.63
37153 17.126
37166 14.745
37169 73.748
37172 22.534
37177 9.466
37181 8.579
37189 21.306
37192 16.737
37195 12.981
37196 17.247
37218 24.756
37222 23.126
37232 18.024
37238 11.437
37242 27.003
37258 23.847
37264 4.96
37289 17.11
37290 12.673
37291 14.499
37294 21.231
37360 84.107
37361 16.756
37364 13.212
37364 13.212
37369 29.504
37370 12.442
37371 14.45
37377 66.721
37384 73.062
37390 9.92
37397 5.764
37408 31.952
37594 24.643
37595 22.933
37613 14.397
37617 72.981
37619 8.137
37622 27.453
37624 2.882
37626 7.04
37629 23.834
37630 13.812
37637 21.504
37641 31.802
37647 4.558
37651 19.898
37655 20.737
37657 4.893
37660 9.786
37667 7.239
37673 18.072
37680 28.26
37681 62.802
37683 13.579
37684 19.544
37685 6.702
37687 15.574
37691 18.021
37694 16.92
37715 22.477
37718 14.729
37718 14.729
37725 14.912
37728 6.702
37730 18.542
37731 22.938
37732 12.635
37734 1.174
37739 2.421
37740 2.882
37746 15.421
37748 9.206
37752 11.984
37753 16.324
37754 12.534
37755 17.547
37756 10.646
37757 14.614
37758 12.434
37759 13.689
37760 10.954
37761 14.44
37797 4.662
37798 19.534
37799 10.89
37802 1.139
37803 39.182
37805 41.086
37806 61.552
37817 6.466
37817 6.466
37819 7.239
37821 11.046
37822 9.086
37823 9.115
37824 6.995
37825 18.708
37835 17.335
37843 23.705
37844 2.099
37848 6.032
37850 23.643
37851 31.456
37854 36.941
37856 6.568
37861 5.63
37867 16.847
37869 17.775
37873 19.571
37876 22.938
37884 20.732
37889 13.729
37889 13.729
37927 5.046
37928 8.263
37929 8.839
38218 4.826
38219 8.134
38220 8.662
38221 2.011
38222 9.257
38223 10.088
38226 5.362
38227 9.268
38228 11.413
38230 9.268
38231 5.362
38232 11.413
38239 50.676
38240 40.099
38242 2.011
38250 7.735
38251 8.043
38252 9.745
38257 5.764
38258 1.303
38288 7.196
38290 7.032
38322 12.284
38322 12.284
38353 3.753
38354 11.906
38356 6.161
38358 9.322
38458 7.638
38458 7.638
38459 7.638
38459 7.638
38460 5.619
38464 5.619
38530 12.847
38536 11.552
38540 15.298
38611 10.724
38613 10.836
38614 9.92
38662 1.877
38664 1.877
38671 1.609
38672 1.609
38674 2.681
39140 5.63
39141 6.702
39146 6.434
39170 12.606
39176 17.987
39181 14.121
39190 21.743
39192 24.622
39193 19.394
39199 22.115
39199 22.115
39216 25.354
39225 7.507
39226 1.944
39229 16.027
39231 19.306
39232 17.33
39241 22.279
39242 30.121
39244 19.713
39250 16.909
39252 23.424
39254 21.504
39256 94.349
39257 11.26
39271 78.276
39272 16.718
39273 25.239
39277 6.702
39281 74.466
39282 20.231
39284 24.85
39285 20.617
39295 26.043
39297 2.547
39309 29.413
39310 22.954
39311 19.603
39311 19.603
39320 1.877
39322 1.877
39388 1.351
39389 26.791
39390 16.161
39392 16.788
39394 81.976
39396 41.029
39401 6.568
39404 8.713
39407 17.019
39408 25.214
39409 26.694
39415 20.405
39420 7.507
39421 8.043
39423 88.172
39424 89.182
39425 21.93
39426 10.198
39427 3.887
39472 24.981
39473 10.292
39475 11.397
39478 2.547
39483 11.96
39484 3.887
39488 6.123
39514 24.729
39515 23.142
39517 28.96
39518 22.534
39519 22.134
39521 27.611
39523 34.233
39528 30.021
39529 29.485
39530 25.568
39536 16.777
39648 8.847
39649 10.906
39652 3.083
39653 9.233
39655 5.094
39676 8.432
39712 14.887
39714 9.786
39719 20.944
39720 51.882
39721 27.515
39731 18.858
39732 44.882
39733 24.697
39735 27.611
39766 18.357
39766 18.357
40060 33.22
40062 38.587
40064 23.705
40065 13.271
40069 7.507
40071 19.054
40074 10.255
40075 7.239
40080 21.236
40108 21.93
40189 10.59
40192 21.635
40192 21.635
40194 31.775
40197 28.048
40198 18.807
40233 6.836
40234 41.622
40236 28.979
40244 86.592
40245 10.791
40246 34.568
40247 30.555
40250 5.764
40251 22.558
40253 21.322
40254 21.7
40255 19.035
40256 22.252
40258 18.153
40264 3.887
40269 24.097
40271 21.34
40273 26.338
40273 26.338
40281 7.842
40284 12.011
40286 33.895
40287 28.992
40289 28.751
40290 21.011
40300 95.335
40301 36.043
40303 28.979
40325 28.282
40326 21.794
40335 11.024
40338 22.043
40339 32.399
40348 98.871
40350 21.209
40350 21.209
40351 29.397
40353 10.365
40368 7.842
40369 6.635
40370 7.507
40373 12.735
40374 22.718
40375 18.909
40376 39.373
40378 22.225
40380 36.914
40381 27.592
40382 12.735
40386 11.528
40388 12.668
40395 94.992
40398 37.389
40399 26.33
40403 8.646
40405 23.362
40408 92.552
40412 17.212
40427 25.936
40433 18.871
40445 25.252
40447 28.574
40448 32.847
40449 26.601
40450 25.761
40454 29.121
40455 98.308
40456 32.193
40457 33.909
40458 39.534
40459 33.67
40474 14.343
40486 20.775
40488 83.759
40489 116.708
40526 52.064
40532 3.113
40555 31.708
40558 26.265
40560 58.601
40561 28.689
40562 34.893
40585 20.271
40586 6.635
40602 31.839
40678 5.094
40679 5.63
40680 21.279
40681 19.528
40682 11.26
40684 11.26
40685 16.027
40696 28.777
40697 18.287
40698 27.107
40698 27.107
40699 16.086
40699 16.086
40717 8.311
40718 7.239
40719 18.753
40720 20.504
40721 7.909
40722 8.579
40723 18.354
40724 18.858
40740 23.555
40741 19.383
40750 33.375
40751 24.129
40758 17.536
40865 10.303
41184 9.383
41185 2.547
41384 78.625
41516 18.29
41523 11.708
41525 20.651
41528 8.885
41553 23.635
41554 23.078
41555 13.182
41587 4.021
41588 8.043
41590 11.448
41591 8.882
41592 3.485
41607 9.633
41608 10.761
41609 15.247
41610 18.965
41821 69.657
41822 51.684
41824 3.485
41825 6.971
41826 13.067
41847 13.231
41848 17.013
41849 17.013
41850 13.375
41851 17.013
41852 20.123
41853 22.775
41857 20.123
41858 22.611
41862 20.123
41863 22.775
41867 15.504
41868 17.697
41872 15.359
41873 17.536
41877 15.504
41878 12.962
41879 15.504
41880 17.697
41884 17.697
41890 15.357
41892 14.748
41896 19.751
41897 22.651
41900 36.013
41901 19.751
41902 22.651
41907 16.973
41908 19.231
41911 29
41912 21.26
41913 25.314
41914 28.791
41918 21.26
41919 25.314
41920 28.627
41924 21.26
41925 25.314
41926 28.791
41930 17.032
41931 19.751
41933 22.651
41937 15.826
41938 18.544
41939 21.311
41984 25.767
41985 16.716
41986 20.566
41987 8.244
42020 4.558
42021 9.115
42022 16.973
42023 14.694
42024 21.531
42025 12.962
42026 13.429
42027 5.094
42028 10.188
42029 19.231
42030 24.324
42031 16.684
42032 14.748
42033 15.223
42055 16.973
42056 14.694
42057 21.531
42058 13.429
42059 12.962
42060 4.558
42061 9.115
42062 19.231
42063 16.684
42064 24.324
42065 15.223
42066 14.748
42067 5.094
42068 10.188
42083 29
42093 16.834
42095 14.751
42096 15.244
42100 26.442
42101 45.662
42102 31.255
42103 19.386
42110 16.973
42111 33.874
42112 4.558
42113 23.11
42114 24.324
42115 10.188
42128 12.735
42129 25.469
42130 6.367
42132 18.153
42216 2.949
42222 2.949
42241 3.485
42242 3.887
42274 3.485
42275 3.887
42338 2.547
42339 8.885
42343 65.038
42344 62.08
42345 74.702
42346 84.367
42351 71.354
42352 80.555
42356 72.668
42359 83.349
42362 94.164
42382 64.882
42383 74.501
42384 84.137
42395 11.26
42413 4.842
42435 3.083
42443 49.225
42448 8.107
42501 9.442
42502 11.172
42511 6.22
42512 7.201
42513 8.118
42517 5.962
42518 6.895
42519 8.357
42523 14.485
42523 14.485
42524 16.973
42524 16.973
42525 19.231
42525 19.231
42529 11.064
42529 11.064
42530 12.962
42530 12.962
42531 14.748
42531 14.748
42535 10.598
42535 10.598
42536 12.416
42536 12.416
42537 14.137
42537 14.137
42553 30.93
42644 17.448
42647 17.66
42758 12.673
42760 11.828
42844 32.247
42988 16.354
42990 11.394
43072 13.003
43073 13.086
43074 9.534
43075 12.555
43160 15.349
43164 14.826
43171 13.772
43177 16.434
43178 7.775
43180 11.622
43181 14.81
43185 5.418
43186 8.483
43189 18.029
43191 3.619
43192 11.464
43193 13.413
43200 19.032
43210 17.558
43246 7.139
43251 14.343
43252 7.038
43253 19.426
43277 2.413
43278 9.686
43283 10.898
43285 17.381
43287 17.727
43305 17.338
43309 3.753
43313 18.936
43358 11.424
43375 21.823
43382 10.086
43401 35.477
43404 11.871
43406 7.775
43407 5.63
43408 14.633
43482 4.424
43498 5.319
43515 1.308
43515 1.308
43566 2.547
43573 4.893
43654 1.673
43654 1.673
43656 2.145
43656 2.145
43657 0.737
43657 0.737
43660 3.169
43660 3.169
43661 3.753
43661 3.753
43663 4.322
43663 4.322
43664 3.145
43664 3.145
43666 4.088
43666 4.088
43667 3.887
43667 3.887
43969 18.29
43970 18.29
43971 24.716
43972 24.716
43973 18.29
43974 13.544
43975 24.716
43992 16.82
43993 5.496
43995 30.086
44002 30.311
44005 23.142
44008 18.724
44013 7.239
44014 4.021
44015 1.592
44016 13.008
44017 16.011
44018 13.196
44019 33.038
44020 14.145
44021 16.627
44022 10.743
44022 10.743
44023 13.812
44023 13.812
44025 2.279
44027 11.349
44028 3.619
44033 2.413
44034 10.263
44039 2.413
44052 57.992
44061 16.651
44062 27.437
44073 4.759
44074 9.517
44104 14.898
44108 6.397
44116 15.244
44166 2.011
44167 13.413
44173 74.327
44180 30.121
44188 6.702
44193 11.93
44196 26.416
44199 65.946
44200 12.416
44202 21.775
44210 14.871
44210 14.871
44214 4.831
44215 2.488
44219 4.906
44242 19.678
44254 1.448
44255 10.375
44256 18.466
44283 17.662
44302 22.043
44308 1.944
44309 18.019
44310 10.724
44322 13
44324 6.702
44334 18.71
44336 11.185
44338 13.158
44343 17.225
44346 16.18
44350 16.598
44355 20.957
44358 13.997
44365 15.598
44366 11.306
44370 15.118
44374 9.257
44375 3.485
44376 15.056
44378 16.067
44382 19.534
44386 12.196
44387 15.064
44392 13.946
44394 4.646
44395 7.831
44396 15.359
44400 8.483
44403 10.812
44404 20.681
44408 24.686
44415 68.244
44416 81.515
44417 78.322
44418 93.402
44419 88.466
44420 105.558
44429 9.15
44431 8.051
44579 6.702
44593 16.18
44597 6.702
44657 19.223
44658 24.638
44659 4.692
44661 27.729
44662 21.85
44664 5.496
44746 4.357
44747 50.965
44748 72.515
44899 24.576
44900 17.338
44909 22.365
44910 31.212
44934 14.944
44935 4.558
]]

Engravings["Wowhead score (Shadow):"] = setmetatable({}, {
	__index = function(t,i)
		local v = WOWHEAD_SCORE:match("\n"..i.." ([^\n]+)\n")
		if v then t[i] = v; return v
		else t[i] = false; return end
	end
})
