
local _, c = UnitClass('player')
if c ~= 'MAGE' then return end

local WOWHEAD_SCORE = [[
791 0.631
812 3.775
862 0.925
873 5.186
890 1.171
940 3.559
942 2.378
944 3.832
1155 1.709
1156 1.303
1315 0.631
1443 2.529
1447 0.336
1484 2.126
1486 1.171
1491 0.126
1607 2.381
1714 1.114
1716 3.82
1720 2.342
1974 1.054
1980 1.838
1992 1.189
1992 1.189
2011 0.21
2039 0.351
2042 1.048
2043 0.081
2169 0.511
2236 0.084
2244 1.429
2271 1.844
2277 2.345
2280 2.757
2292 1.405
2549 2.378
2565 1.453
2565 1.453
2567 0.553
2721 2.631
2800 1.405
2879 0.661
2879 0.661
2911 0.937
2912 0.234
2933 0.595
3075 6.216
3415 0.814
3748 1.529
4120 2.631
4134 3.682
4197 1.423
4320 0.763
4327 0.252
4454 0.084
4696 1.258
4696 1.258
4743 1.79
5183 0.793
5183 0.793
5195 1.628
5201 1.147
5202 0.462
5266 1.207
5970 1.628
6318 0.505
6324 2.766
6332 0.369
6341 0.661
6341 0.661
6392 1.562
6440 1.967
6461 0.108
6463 0.604
6465 1.177
6505 1.114
6629 0.168
6631 1.297
6632 0.661
6682 2.414
6685 2.135
6689 1.216
6691 0.168
6693 0.378
6695 0.336
6697 1.91
6803 1.405
6803 1.405
6829 0.168
6901 0.688
6903 2.658
6908 1.526
6910 1.216
7001 0.042
7054 3.592
7513 1.276
7514 1.276
7515 2.069
7515 2.069
7673 0.538
7684 2.126
7685 1.586
7685 1.586
7691 3.138
7709 2.643
7711 2.396
7712 4.051
7713 2.778
7714 2.252
7720 2.228
7722 1.114
7728 1.742
7731 0.661
7757 3.342
7888 0.538
9393 1.754
9393 1.754
9395 1.09
9397 0.42
9407 1.82
9415 3.156
9429 3.982
9431 3.955
9433 1.934
9434 2.775
9447 0.378
9448 0.081
9454 1.766
9470 4.973
9482 3.946
9484 4.21
9491 1.676
9492 2.261
9508 1.757
9517 3.844
9538 0.168
9588 0.168
9623 0.757
9641 0.793
9649 3.402
9683 2.811
10019 3.141
10021 4.021
10041 4.45
10572 1.057
10574 3.27
10578 1.249
10581 1.483
10629 3.291
10630 4.517
10634 2.126
10710 0.168
10711 0.21
10751 3.541
10762 2.601
10766 1.057
10769 1.916
10770 1.718
10770 1.718
10771 2.757
10776 0.21
10787 1.189
10796 0.925
10796 0.925
10802 2.09
10806 3.883
10807 4
10808 3.249
10824 0.42
10829 2.006
10836 1.021
10843 2.847
10844 3.051
11123 2.324
11262 1.165
11262 1.165
11263 1.276
11310 2.006
11311 0.336
11623 2.529
11624 3.625
11625 2.7
11625 2.7
11634 1.604
11662 5.276
11748 1.453
11750 5.237
11782 3.976
11784 1.643
11807 3.778
11808 2.378
11819 1.586
11822 3.961
11824 3.378
11832 1.586
11839 3.901
11841 4.351
11922 0.793
11924 4.204
11928 2.592
11928 2.592
11929 2.583
11932 4.12
11935 2.547
11935 2.547
11962 1.757
12059 0.21
12103 3.793
12344 3.622
12462 7.12
12466 5.462
12471 1.015
12471 1.015
12532 1.991
12542 2.069
12543 3.366
12545 3.366
12546 2.009
12548 1.429
12554 4.405
12556 1.88
12584 1.429
12589 3.946
12604 5.285
12605 3.003
12608 1.634
12626 3.435
12752 5.201
12783 1.429
12926 2.643
12929 3.532
12930 3.832
12940 1.429
12965 5.057
12967 2.321
12968 4.913
12977 0.754
12987 1.072
12996 0.252
12998 1.715
13000 3.853
13001 3.45
13002 0.631
13005 0.294
13007 2.378
13008 2.105
13013 3.796
13029 1.85
13029 1.85
13031 1.093
13031 1.093
13033 0.838
13036 1.429
13064 0.829
13084 0.637
13085 1.808
13088 0.126
13089 0.126
13093 0.336
13094 0.571
13095 0.21
13096 1.634
13098 1.429
13099 0.865
13100 1.492
13101 3.468
13102 3.417
13103 0.252
13105 1.423
13106 1.465
13107 1.991
13122 0.252
13141 1.721
13144 1.991
13161 4.778
13170 5.429
13178 2.117
13181 3.697
13185 4.225
13206 2.901
13249 3.934
13253 4.39
13261 2.453
13261 2.453
13282 2.85
13283 2.045
13314 5.826
13345 2.285
13346 5.805
13353 2.177
13353 2.177
13360 1.423
13369 3.249
13374 2.955
13376 1.874
13385 1.273
13385 1.273
13386 0.108
13388 4.745
13389 3.183
13390 5.198
13391 2.934
13392 1.066
13396 1.586
13403 2.411
13503 2.387
13937 0.841
13938 1.922
13956 4.628
13958 1.685
13960 1.216
13964 2.787
13965 2.859
13968 2.859
13986 3.183
14136 5.766
14137 2.523
14138 3.141
14139 2.453
14140 3.324
14146 4.366
14148 0.847
14150 1.096
14152 8.12
14153 6.078
14340 4.625
14538 2.508
14543 1.072
14558 2.646
14577 2.342
14626 2.967
14629 1.583
14631 3.003
14632 2.613
14633 1.667
15104 2.195
15200 0.168
15411 1.429
15421 2.051
15802 2.186
15805 1.751
15805 1.751
15854 2.625
15856 1.592
16058 3.228
16335 0.294
16345 1.429
16369 3.342
16391 2.775
16413 3.772
16414 4.706
16415 3.342
16416 3.976
16437 7.069
16440 5.183
16441 8.033
16442 8.156
16443 8.033
16444 5.27
16485 3.342
16486 0.82
16487 2.775
16489 3.976
16490 4.706
16491 3.772
16492 3.342
16533 8.033
16534 8.156
16535 8.033
16536 5.27
16539 7.069
16540 5.183
16682 2.228
16683 1.967
16684 2.228
16685 2.712
16686 3.724
16687 3.225
16688 3.967
16689 2.829
16690 3.441
16691 1.886
16692 1.886
16693 3.441
16694 2.724
16695 2.838
16696 2.721
16697 1.592
16698 3.198
16699 2.523
16700 3.006
16701 2.135
16702 2.369
16703 1.465
16704 1.474
16705 1.643
16795 8.628
16796 7.186
16797 4.628
16798 6.387
16799 3.676
16800 4.985
16801 4.135
16802 4.613
16818 5.928
16887 0.82
16887 0.82
16912 5.862
16913 6.198
16914 7.676
16915 8.766
16916 9.039
16917 4.91
16918 4.712
16975 1.054
16979 1.64
16980 1.592
16997 0.586
16999 1.508
17045 1.171
17050 1.592
17061 0.586
17063 6.006
17064 0.432
17067 2.219
17067 2.219
17070 7.994
17077 1.171
17078 3.841
17103 8.12
17109 3.97
17110 1.832
17113 8.48
17191 5.09
17707 1.423
17710 1.342
17713 3.003
17715 2.805
17719 1.429
17732 2.453
17737 3.177
17737 3.177
17741 3.255
17743 0.216
17745 0.511
17748 3.76
17750 3.435
17755 3.342
18022 1.508
18082 3.946
18083 1.709
18102 4.252
18103 1.565
18204 1.429
18205 1.429
18208 3.973
18263 1.18
18289 2.553
18295 0.703
18311 2.661
18314 1.333
18317 2.502
18327 3.33
18338 1.718
18369 2.979
18371 0.297
18372 1.982
18385 5.3
18386 5.411
18387 3.186
18389 3.138
18395 2.799
18396 2.523
18397 1.465
18398 0.988
18403 3.087
18404 4.432
18405 4.357
18407 3.568
18408 4.622
18409 2.505
18428 0.252
18437 0.703
18442 0.168
18443 0.294
18444 0.252
18456 0.82
18457 0.703
18468 0.216
18483 0.108
18486 3.432
18491 0.994
18496 2.601
18497 3.009
18500 3.003
18507 3.634
18509 1.429
18510 4.078
18523 2.643
18523 2.643
18526 4
18532 1.793
18534 6.402
18536 0.982
18536 0.982
18541 3.003
18543 3.288
18545 7.231
18586 0.871
18678 0.586
18681 4.517
18684 0.82
18691 2.934
18693 3.634
18695 2.117
18695 2.117
18697 1.748
18709 1.682
18720 3.724
18723 2.631
18727 5.237
18728 1.453
18730 1.892
18735 3.961
18740 3.321
18743 0.982
18745 4.58
18757 0.216
18761 1.288
18762 1.718
18762 1.718
18805 1.429
18808 5.336
18809 3.568
18811 1.39
18814 5.312
18821 1.429
18832 1.429
18838 1.429
18840 1.429
18842 11.637
18872 2.018
18873 12.79
18874 12.79
18878 4.634
19047 2.568
19050 2.622
19056 0.294
19059 0.336
19085 1.85
19086 1.85
19090 3.55
19094 3.55
19096 1.279
19098 1.279
19101 3.856
19102 3.856
19105 5.664
19108 1.718
19109 2.757
19121 2.64
19130 2.934
19131 5.535
19132 8.661
19133 7.003
19135 3.288
19136 6.607
19138 3.114
19140 4.709
19142 3.913
19142 3.913
19145 8.075
19147 4.36
19156 3.039
19165 5.682
19308 3.781
19308 3.781
19309 3.7
19309 3.7
19310 4.754
19310 4.754
19311 4.36
19311 4.36
19312 3.781
19312 3.781
19315 4.36
19315 4.36
19325 4.432
19347 10.556
19355 12.799
19356 18.111
19366 5.339
19366 5.339
19367 2.198
19369 2.751
19370 6.366
19371 1.649
19374 6.583
19375 10.673
19377 3.003
19378 5.339
19379 10.619
19382 5.291
19384 3.003
19385 9.261
19388 7.694
19391 2.315
19395 4.868
19397 2.754
19399 3.291
19400 6.165
19403 6.583
19406 6.006
19407 6.03
19426 3.243
19430 3.829
19434 4.27
19435 0.955
19437 6.27
19438 8.168
19518 1.958
19519 1.694
19520 1.27
19521 0.979
19522 1.958
19523 1.694
19524 1.27
19525 0.979
19526 2.186
19527 1.838
19528 1.399
19529 1.093
19530 2.186
19531 1.838
19532 1.399
19533 1.093
19566 1.739
19567 1.477
19568 1.216
19569 0.928
19570 1.739
19571 1.477
19572 1.216
19573 0.928
19595 4.138
19596 3.598
19597 3.027
19599 2.348
19600 3.048
19601 3.048
19682 9.895
19683 7.994
19684 6.787
19845 4.465
19846 3.517
19856 1.429
19857 6.613
19859 1.429
19861 2.378
19863 3.724
19864 6.117
19865 1.429
19870 3.417
19876 4.613
19884 9.922
19885 4.58
19886 6.589
19891 6.069
19891 6.069
19893 5.027
19895 6.042
19897 5.874
19898 1.429
19899 5.123
19903 4.523
19905 4.033
19907 3.003
19909 7
19920 1.333
19922 3.015
19922 3.015
19923 2.988
19925 3.003
19927 1.541
19929 6.505
19964 2.276
19965 2.276
19967 0.135
19982 3.003
19999 6.477
20006 1.429
20032 6.61
20034 8.781
20035 0.468
20037 2.817
20047 3.982
20054 2.523
20061 3.685
20069 9.447
20070 5.393
20082 1.189
20094 1.892
20095 1.408
20096 0.925
20097 3.204
20098 2.318
20099 1.805
20159 2.523
20160 1.892
20161 1.408
20162 0.925
20163 3.982
20164 1.805
20165 3.204
20166 2.318
20176 3.685
20214 5.393
20217 2.18
20218 1.099
20220 9.447
20258 6.102
20425 0.55
20426 0.715
20427 0.745
20428 0.745
20431 0.715
20434 0.55
20505 1.877
20530 3.682
20536 5.045
20537 0.108
20538 0.162
20539 0.081
20556 5.486
20581 7.985
20582 4.577
20582 4.577
20618 5.577
20622 0.955
20625 2.787
20626 3.94
20631 2.964
20632 5.039
20635 8.258
20647 2.045
20654 5.547
20672 1.715
20674 1.429
20682 4.195
20685 2.637
20686 2.402
20691 0.82
20697 3.111
20698 5.012
20705 1.982
20706 1.982
20707 1.982
20716 4.153
20717 4.363
20720 2.511
20832 0.865
20969 4.489
21128 10.781
21179 2.447
21182 4.432
21183 7.309
21185 2.577
21185 2.577
21186 5.97
21187 3.003
21189 3.003
21201 3.003
21202 3.003
21203 3.003
21204 3.003
21205 3.003
21206 3.676
21207 3.925
21208 4.348
21209 4.48
21210 4.889
21244 4.432
21273 20.141
21275 13.258
21343 9.571
21344 8.219
21345 5.646
21346 9.438
21347 11.508
21413 9.562
21414 3.808
21415 3.685
21452 15.042
21461 9.057
21462 4.988
21464 4.18
21468 4.826
21470 3.294
21471 5.141
21471 5.141
21472 7.571
21477 3.003
21483 3.754
21489 4.216
21496 1.631
21499 7.634
21500 3.583
21504 4.709
21507 3.465
21517 3.874
21521 9.805
21523 10.643
21527 6.219
21529 0.294
21531 3.255
21563 1.429
21582 6.643
21583 4.691
21585 9.048
21597 7.529
21597 7.529
21600 6.718
21603 2.511
21604 5.249
21608 5.583
21611 5.222
21615 7.601
21619 4.111
21620 3.703
21622 11.763
21648 4.165
21650 1.429
21663 7.655
21664 1.429
21666 4.405
21666 4.405
21671 7.084
21676 8.904
21677 1.429
21678 2.58
21681 2.796
21686 5.91
21690 3.916
21694 5.871
21696 2.766
21697 4.18
21701 3.003
21707 3.435
21709 7.994
21712 4.126
21753 2.114
21774 5.393
21779 3.039
21780 2.859
21791 2.592
21801 1.474
21802 3.279
21809 4.432
21810 5.213
21836 4.733
21838 8.769
21846 9.363
21847 8.937
21848 12.514
21859 7.279
21860 5.715
21861 7.937
21862 6.904
21863 1.901
21864 2.219
21865 3.015
21868 0.243
21869 7.174
21870 7.264
21871 10.138
21873 7.766
21874 9.168
21875 11.91
21888 1.874
22062 3.784
22063 2.673
22064 5.069
22065 6.399
22066 6.048
22067 5.111
22068 3.474
22069 5.42
22070 3.459
22071 2.462
22072 4.574
22073 3.459
22074 7.327
22075 5.592
22076 3.225
22077 5.643
22078 3.613
22079 2.517
22080 5.709
22081 3.715
22082 3.613
22083 5.093
22084 3.802
22085 4.42
22149 3.123
22150 3.003
22225 4.135
22231 4.511
22234 3.219
22245 3.096
22247 3.76
22253 3.198
22253 3.198
22254 1.417
22256 3.697
22257 2.288
22266 2.435
22267 8.213
22301 1.757
22302 1.757
22303 1.757
22304 1.288
22305 1.288
22306 1.288
22311 1.288
22313 0.937
22319 2.544
22319 2.544
22326 2.213
22327 2.447
22329 5.021
22329 5.021
22330 3.691
22332 1.429
22334 3.186
22335 7.538
22339 4.517
22340 3.003
22342 5.574
22379 1.718
22383 3.345
22394 4.814
22403 4.529
22405 3.246
22406 5.129
22408 1.453
22412 3.694
22433 2.883
22458 3.997
22496 13.204
22497 11.946
22498 12.58
22499 7.243
22500 7.658
22501 7.402
22502 8.982
22503 5.324
22504 13.147
22505 9.246
22506 12.55
22507 8.565
22508 7.532
22509 6.856
22510 7.327
22511 4.679
22512 8.673
22513 8.847
22514 8.922
22515 6.471
22516 6.324
22517 6.267
22518 6.844
22519 5.246
22652 2.775
22654 1.982
22655 1.586
22657 3.505
22659 1.429
22667 2.982
22681 2.865
22688 3.447
22700 2.378
22711 3.742
22716 4.652
22720 6.177
22721 4.093
22730 7.901
22731 7.538
22732 3.003
22747 6.345
22752 6.345
22756 1.586
22757 2.378
22758 0.925
22799 23.138
22800 24.679
22801 17.273
22802 4.432
22803 12.637
22804 3.003
22806 3.003
22807 17.321
22820 4.808
22821 3.544
22860 5.556
22870 3.55
22883 6.405
22886 6.405
22937 4.474
22937 4.474
22938 3.003
22939 5.36
22943 4.637
22947 3.054
22954 4.432
22960 5.48
22968 2.114
22980 1.339
22983 7.988
22994 1.91
22994 1.91
23001 2.859
23009 3.135
23014 4.432
23017 4.871
23018 3.003
23021 5.492
23023 1.429
23025 6.607
23027 0.27
23029 5.652
23029 5.652
23030 3.003
23031 7.159
23032 4.838
23035 9.55
23036 5.408
23037 1.91
23038 4.432
23044 4.432
23045 1.429
23046 5.285
23047 4.889
23048 5.64
23048 5.64
23049 8.204
23049 8.204
23050 8.556
23053 2.859
23057 5.661
23062 6.565
23069 4.889
23070 10.312
23084 1.171
23085 1.523
23091 0.82
23124 6.727
23125 2.907
23126 3.754
23128 3.754
23129 2.79
23156 2.712
23156 2.712
23168 1.189
23169 1.628
23173 2.126
23177 1.057
23178 2.243
23220 9.228
23237 6.3
23263 6.565
23264 4.868
23290 3.55
23291 5.556
23304 6.405
23305 6.405
23318 6.565
23319 4.868
23451 11.88
23452 4.517
23452 4.517
23453 4.342
23453 4.342
23456 1.429
23466 11.88
23467 1.429
23468 4.517
23468 4.517
23469 4.342
23469 4.342
23554 26.568
23555 2.042
23761 7.922
23762 1.976
23828 13.114
23838 8.27
24020 1.225
24024 6.18
24045 4.126
24069 11.694
24073 1.429
24079 3.096
24080 3.096
24082 3.096
24083 6.471
24085 3.096
24086 3.096
24089 2.324
24096 3.979
24110 4.429
24114 6.306
24116 7.459
24117 2.414
24121 5
24122 4.685
24123 4.297
24126 2.694
24127 0.378
24154 4.414
24250 5.369
24251 2.79
24252 5.913
24254 4.417
24255 4.228
24256 8.718
24257 3.288
24259 2.348
24260 3.441
24261 7.117
24262 16.276
24263 9.24
24264 7.604
24266 14.739
24267 8.961
24356 3.604
24359 13.55
24361 12.042
24362 5.39
24380 2.769
24390 4.228
24392 4.556
24393 4.961
24395 5.874
24397 6.52
24450 8.679
24453 13.303
24459 4.532
24462 6.183
24464 1.532
24481 6.27
24557 40.375
25541 4.252
25562 3.904
25563 5.456
25564 3.351
25606 4.144
25607 4.144
25640 3.075
25711 9.138
25713 4.297
25714 4.297
25718 6.556
25760 17.925
25772 3.904
25774 12.069
25776 4.634
25777 6.847
25792 7.679
25804 1.838
25805 5.072
25806 3.646
25808 3.646
25810 5.072
25811 1.838
25822 6.018
25824 5.565
25825 3.303
25826 5.565
25854 7.078
25855 8.483
25856 8.889
25857 8.012
25858 11.336
25939 4.61
25945 4.492
25950 21.126
25952 3.604
25954 4.649
25957 7.901
25962 3.303
26055 4.36
27410 8.538
27411 5.718
27412 14.91
27418 10.15
27431 14.315
27433 4.832
27440 4.799
27448 3.943
27451 7.024
27452 4.664
27460 1.838
27462 8.619
27463 4.204
27464 5.529
27465 6.267
27466 10.718
27477 4.417
27477 4.417
27485 5.646
27488 11.366
27491 4.799
27493 12.048
27506 9.964
27508 8.577
27512 19.363
27517 5.429
27523 5.529
27525 6.922
27534 5.381
27534 5.381
27536 7.003
27537 11.901
27540 3.351
27542 7.054
27543 22.55
27546 5.441
27547 8.664
27551 3.604
27638 5.132
27649 5.823
27673 1.123
27683 4.889
27714 5.514
27714 5.514
27738 5.306
27742 8.435
27746 5.721
27758 9.189
27761 6.048
27762 3.784
27764 8.538
27766 5.288
27768 7.357
27775 5.739
27778 5.823
27779 3.904
27780 6.096
27781 13.976
27784 6.267
27789 4.757
27791 21.084
27795 10.868
27796 6.267
27799 13.018
27805 2.243
27814 2.144
27816 6.249
27821 10.979
27822 4.805
27824 11.772
27828 0.351
27830 1.327
27832 1.327
27833 1.327
27834 1.327
27838 11.616
27842 26.73
27843 7.577
27848 7.877
27866 9.661
27868 19.318
27875 9.964
27877 6.607
27878 5.105
27885 2.943
27889 7.156
27890 2.114
27892 6.643
27899 18.757
27902 7.246
27904 4.505
27905 23.021
27907 10.252
27919 5.61
27922 4.228
27924 4.228
27925 3.904
27939 1.931
27942 1.931
27946 5.655
27948 12.622
27981 8.619
27994 10.363
27996 2.928
28029 4.051
28030 5.459
28031 3.904
28032 4.204
28033 20.411
28034 3.267
28040 2.655
28041 2.655
28052 9.072
28075 7.285
28121 9.009
28134 8.679
28168 5.736
28169 13.616
28174 4.532
28179 5.823
28183 7.523
28185 7.964
28187 8.619
28187 8.619
28188 23.766
28190 4.889
28191 8.495
28193 6.835
28212 8.462
28213 5.147
28213 5.147
28218 8.003
28223 7.508
28227 8.979
28229 8.15
28230 8.102
28232 7.628
28233 3.943
28244 1.021
28245 4.841
28246 1.634
28247 3.303
28250 6.58
28252 10.297
28254 6.252
28259 4.153
28260 6.471
28260 6.471
28267 1.634
28269 6.093
28278 9.649
28295 4.234
28297 28.402
28304 7.066
28312 4.234
28317 7.538
28320 3.138
28321 4.805
28322 15.988
28323 2.042
28327 4.883
28338 7.111
28341 27.898
28342 10.847
28345 4.505
28346 4.15
28346 4.15
28371 2.144
28373 5.538
28374 7.592
28377 1.94
28378 4.841
28379 4.841
28380 1.94
28386 5.291
28387 4.781
28387 4.781
28394 6.372
28400 4.505
28402 7.39
28404 7.39
28405 4.547
28406 6.486
28409 8.844
28410 8.844
28411 5.859
28412 9.345
28412 9.345
28413 7.868
28415 9.033
28416 1.634
28418 3.063
28419 5.216
28425 4.805
28426 5.105
28427 5.405
28477 6.483
28507 11.405
28508 6.754
28509 5.105
28510 6.643
28511 6.252
28515 6.805
28517 8.069
28525 6.027
28525 6.027
28529 4.805
28530 10.399
28553 4.637
28555 7.303
28565 9.063
28570 6.865
28572 0.919
28578 9.958
28579 10.511
28582 6.201
28585 12.826
28586 13.399
28588 3.967
28590 5.153
28594 11.159
28602 11.084
28603 7.661
28603 7.661
28604 30.739
28609 4.922
28612 8.438
28633 37.324
28649 5.405
28652 8.559
28653 3.628
28654 10.078
28658 7.508
28661 6.297
28663 7.958
28670 8.622
28672 5.105
28673 6.339
28714 5.994
28715 6.649
28716 5.652
28717 6.532
28718 9.183
28726 8.021
28727 4.685
28728 6.36
28728 6.36
28730 2.246
28731 6.562
28734 11.453
28734 11.453
28742 9.832
28744 19.021
28749 5.105
28753 7.925
28756 11.477
28757 8.054
28759 6.76
28760 8.024
28762 8.39
28763 5.081
28765 6.583
28766 11.829
28768 4.505
28770 31.279
28777 2.45
28780 9.712
28781 7.318
28781 7.318
28782 33.243
28783 4.832
28789 7.135
28790 6.976
28793 11.081
28797 8.39
28799 8.727
28802 31.132
28804 13.201
28822 6.778
28823 3.039
28866 5.994
28867 6.649
28868 5.652
28869 6.532
28870 9.183
28926 3.73
28929 3.73
28930 3.73
28931 21.414
28935 28.571
28937 3.73
28938 3.255
28938 3.255
28941 3.255
28941 3.255
28952 3.73
28954 3.73
28955 3.73
28956 3.73
28957 21.414
28959 28.571
28980 7.39
28981 4.547
28982 7.39
29001 8.844
29002 5.859
29003 8.844
29076 12.988
29077 10.811
29078 19.333
29079 8.817
29080 15.045
29117 5.505
29122 4.568
29123 3.441
29124 5.706
29126 5.718
29129 9.039
29130 29.736
29132 9.61
29133 21.778
29139 3.207
29140 3.207
29145 3.676
29146 3.676
29149 2.508
29150 3.604
29153 24.441
29155 24.559
29156 2.402
29157 1.589
29168 5.829
29169 5.829
29170 6.871
29170 6.871
29172 9.345
29174 10.354
29179 3.267
29183 5.898
29185 19.679
29240 6.408
29241 12.76
29242 8.153
29249 6.402
29250 7.36
29251 8.372
29255 6.435
29257 9.438
29258 8.405
29269 9.153
29269 9.153
29270 7.021
29270 7.021
29271 7.057
29271 7.057
29272 5.55
29272 5.55
29273 6.474
29273 6.474
29274 5.447
29274 5.447
29280 5.405
29281 6.607
29282 7.207
29283 7.508
29284 6.24
29285 7.426
29286 8.012
29287 8.261
29288 5.52
29289 6.393
29290 7.24
29291 6.859
29302 8.553
29303 9.168
29304 9.871
29305 9.871
29306 7.165
29307 6.625
29308 7.691
29309 7.691
29315 6.402
29317 6.162
29320 6.063
29322 3.853
29328 6.21
29330 6.393
29330 6.393
29333 6.763
29334 4.952
29335 6.306
29341 13.417
29345 3.234
29346 2.246
29347 5.03
29349 3.063
29350 3.766
29352 6.616
29354 6.291
29355 30.895
29367 7.072
29368 6.276
29369 6.895
29370 5.814
29373 5.925
29374 6.003
29375 5.511
29376 5.814
29379 2.348
29381 5.405
29457 10.781
29780 13.249
29813 6.093
29814 5.462
29918 8.628
29920 6.913
29922 7.583
29923 7.201
29923 7.201
29972 12.276
29977 12.483
29981 36.961
29982 7.772
29986 18.544
29987 12.646
29988 42.48
29989 9.069
29990 14.042
29992 8.39
29997 8.264
30008 6.748
30010 7.808
30011 25.727
30012 21.165
30013 3.303
30015 9.742
30018 7.964
30020 12.363
30022 2.348
30024 15.934
30035 9.366
30036 8.649
30037 16.039
30038 16.577
30049 8.511
30049 8.511
30050 14.456
30052 5.706
30056 13.375
30059 2.348
30064 15.571
30067 12.015
30077 7.207
30079 9.48
30080 4.312
30082 6.006
30095 33.688
30099 5.405
30100 8.105
30107 22.084
30109 7.135
30110 8.06
30196 14.147
30205 12.093
30206 14.943
30207 21.988
30210 10.841
30256 9.045
30365 3.003
30366 6.61
30368 7.234
30377 6.009
30459 13.195
30460 12.462
30461 9.688
30463 5.39
30464 4.294
30465 7.435
30531 9.682
30532 9.204
30543 9.156
30619 0.432
30626 4.084
30627 6.883
30642 6.336
30666 5.55
30667 8.321
30668 13.688
30673 11.033
30709 11.928
30710 1.736
30720 6.667
30723 31.447
30725 12.523
30726 7.979
30727 10.39
30729 3.063
30732 30.102
30734 17.141
30735 8.453
30736 7.634
30738 6.444
30787 3.33
30804 0.793
30836 10.405
30837 0.937
30838 1.288
30839 2.225
30841 4.889
30859 3.526
30860 3.003
30865 8.354
30870 9.063
30871 8.012
30872 14.408
30872 14.408
30884 11.826
30885 10.883
30888 12.411
30894 16.553
30895 14.772
30901 2.45
30908 41.754
30910 44.354
30911 8.459
30911 8.459
30912 13.339
30913 25.712
30916 21.129
30924 8.21
30925 8.279
30932 6.862
30973 3.003
31002 17.075
31013 16.06
31036 21.432
31038 19.15
31055 17.952
31056 20.919
31057 20.315
31058 23.883
31059 12.267
31073 2.102
31075 6.61
31076 3.432
31077 3.003
31104 9.168
31133 9.129
31140 7.595
31142 10.517
31143 1.634
31149 10.309
31150 5.901
31178 4.727
31196 3.219
31230 6.21
31255 3.904
31258 4.931
31272 9.237
31275 4.204
31282 9.616
31283 8.73
31289 18.405
31290 5.844
31297 18.309
31305 1.634
31306 4.18
31308 23.907
31321 4.664
31326 0.189
31329 6.15
31336 21.009
31338 5.853
31339 6.018
31340 13.58
31343 12.003
31381 2.961
31382 4.811
31383 4.997
31417 19.931
31461 9.565
31465 5.805
31492 4.505
31493 4.928
31493 4.928
31494 5.829
31494 5.829
31546 10.511
31691 5.165
31692 6.61
31693 5.003
31695 4.535
31717 9
31726 4.267
31747 3.568
31749 3.568
31756 1.94
31758 6.958
31920 7.748
31921 6.18
31922 5.081
31923 5.598
31978 6.586
31978 6.586
32044 4.943
32047 7.943
32048 10.637
32049 9.039
32050 10.147
32051 13.652
32052 4.943
32053 36.342
32055 46.144
32089 9.42
32090 8.988
32237 35.889
32238 10.105
32239 11.64
32247 14.216
32256 14.685
32260 9.063
32261 6.306
32266 5.706
32270 13.598
32273 10.532
32323 7.556
32327 17.814
32329 13.12
32331 9.976
32335 3.063
32337 8.616
32338 17.45
32340 12.715
32343 7.207
32344 39.006
32349 13.033
32350 7.276
32350 7.276
32353 9.447
32361 14.631
32361 14.631
32362 6.006
32363 4.721
32367 20.655
32369 6.751
32370 9.345
32374 51.495
32452 4.15
32452 4.15
32483 14.775
32494 14.228
32495 12.763
32496 8.192
32497 9.009
32505 6.006
32513 7.997
32516 6.817
32519 9.309
32524 12.159
32525 23.192
32526 4.562
32527 12.057
32528 12.072
32531 5.829
32533 5.85
32533 5.85
32535 6.03
32538 5.721
32541 6.234
32584 11.189
32585 12.838
32586 10.955
32587 14.45
32589 10.495
32590 13.195
32609 8.973
32650 2.874
32651 6.234
32651 6.234
32653 5.721
32655 6.138
32660 16.925
32662 24.03
32664 6.799
32665 3.826
32770 3.471
32771 3.471
32772 4.33
32774 3.303
32776 6.222
32779 6.958
32787 8.27
32795 10.147
32799 8.27
32807 10.147
32811 5.177
32820 6.444
32830 18.294
32831 1.982
32941 7.399
32942 3.604
32961 6.586
32961 6.586
32962 3.637
32979 8.27
32980 5.177
32981 8.27
33054 3.303
33056 5.237
33057 2.246
33058 5.447
33064 5.165
33065 5.309
33066 1.838
33067 6.018
33068 4.697
33122 2.45
33192 4.135
33203 11.721
33214 2.649
33281 13.751
33285 8.231
33291 16.336
33293 6.093
33296 6.607
33297 3.679
33304 6.958
33317 17.177
33325 7.225
33325 7.225
33333 5.486
33334 9.381
33334 9.381
33354 37.24
33357 12.862
33388 2.943
33453 23.024
33463 11.378
33466 10.544
33467 35.808
33471 8.381
33480 9.297
33484 2.042
33489 12.952
33490 34.477
33493 3.904
33494 37.342
33497 16.39
33498 10.982
33584 17.856
33585 17.856
33586 10.414
33587 8.913
33588 9.619
33589 8.231
33590 3.679
33591 9.589
33592 9.589
33681 7.084
33681 7.084
33716 11.303
33736 7.084
33736 7.084
33754 4.547
33757 8.544
33758 11.354
33759 9.64
33760 10.279
33761 14.354
33762 4.547
33763 40.084
33764 4.018
33766 42.721
33820 1.682
33828 0.486
33829 7.003
33853 6.117
33882 9.165
33883 6.174
33884 9.165
33900 9.048
33901 6.174
33902 9.048
33912 10.997
33913 7.676
33914 10.997
33918 6.072
33919 2.655
33920 7.204
33921 6.306
33922 5.604
33923 2.246
34010 7.508
34012 7.366
34033 3.7
34033 3.7
34049 6.21
34050 6.21
34059 4.018
34066 1.85
34073 6.616
34074 5.925
34138 5.252
34139 5.904
34162 4.084
34163 4.084
34164 3.679
34165 3.679
34166 11.535
34170 17.916
34177 4.414
34179 12.321
34179 12.321
34181 22.261
34182 61.255
34184 10.652
34189 3.267
34202 15.147
34204 16.357
34205 8.315
34206 10.712
34206 10.712
34210 16.943
34214 10.255
34230 13.733
34232 21.489
34233 20.456
34241 4.709
34242 13.303
34329 3.973
34336 47.372
34337 52.144
34339 20.841
34340 23.123
34342 15.444
34344 23.363
34347 6.727
34348 5.778
34358 4.267
34359 12.949
34360 10.667
34361 4.12
34362 17.892
34363 12.402
34364 23.333
34365 19.682
34366 14.294
34367 12.072
34386 20.829
34393 14.447
34399 22.039
34405 19.489
34406 16.39
34416 2.757
34418 1.453
34424 3.832
34427 7.946
34429 7.946
34430 8.324
34447 12.682
34470 5.814
34471 0.405
34540 51.129
34557 21.051
34574 21.069
34576 4.084
34577 4.084
34579 6.21
34580 6.21
34604 29.318
34606 2.502
34607 9.111
34608 29.916
34610 12.991
34625 7.135
34665 3.303
34666 3.303
34667 20.508
34672 2.402
34677 5.078
34678 6.997
34680 3.904
34697 6.727
34702 7.096
34704 6.961
34705 4.447
34708 6.252
34788 7.453
34792 8.348
34793 6.462
34797 26.057
34798 2.649
34808 12.24
34837 3.502
34847 19.324
34889 15.258
34890 7.147
34894 2.45
34895 35.916
34917 22.255
34918 21.177
34919 15.327
34924 14.393
34925 14.511
34926 10.435
34936 17.748
34937 16.315
34938 12.303
34985 4.399
34987 55.718
35008 8.213
35008 8.213
35016 4.36
35016 4.36
35065 2.114
35074 8.213
35074 8.213
35093 4.949
35096 10.066
35097 13.595
35098 11.162
35099 12.52
35100 16.595
35101 4.949
35102 37.607
35103 12.913
35107 4.399
35109 46.108
35129 8.132
35130 6.847
35131 3.063
35132 8.258
35133 7.435
35134 6.378
35135 2.655
35138 10.544
35144 10.426
35149 12.652
35153 10.544
35159 10.426
35164 12.652
35168 7.303
35174 7.303
35179 8.73
35181 16.682
35282 9.108
35283 6.907
35284 2.859
35290 8.658
35291 6.934
35292 2.859
35317 8.826
35319 8.15
35320 6.991
35321 7.679
35324 7.679
35326 5.886
35327 5.886
35343 5.994
35344 6.649
35345 5.652
35346 6.532
35347 9.183
35465 5.994
35494 5.511
35497 6.895
35507 5.405
35508 6.276
35509 6.003
35511 5.706
35514 27.706
35570 34.901
35572 14.285
35580 9.09
35581 6.21
35584 20.688
35589 12.874
35594 12.078
35595 4.267
35596 10.994
35597 7.517
35598 8.15
35598 8.15
35606 4.288
35609 9.045
35609 9.045
35610 9.174
35611 12.021
35612 16.015
35617 6.526
35631 8.306
35632 22.078
35633 48.925
35635 16.465
35646 21.616
35652 4.751
35654 9.12
35657 11.306
35658 44.604
35663 13.688
35666 10.204
35673 18.505
35679 21.435
35681 6.916
35682 10.096
35683 3.676
35700 3.865
35703 0.486
35733 9.075
35749 8.324
35750 8.324
36871 6.474
36872 0.459
36874 6.327
36943 10.766
36944 6.006
36945 10.547
36947 5.592
36949 15.583
36954 20.559
36961 7.207
36972 8.985
36973 23.838
36975 51.925
36976 20.763
36979 3.973
36980 3.471
36982 14.757
36983 19.237
36985 26.465
36988 11.072
36989 9.703
36991 19.273
36997 9.381
37037 4.414
37038 6.309
37048 9.616
37051 15.505
37051 15.505
37055 14.757
37058 15.066
37060 48.916
37064 9.565
37065 1.94
37079 10.838
37086 13.216
37086 13.216
37096 5.444
37099 58.625
37111 9.91
37113 11.393
37134 23.354
37134 23.354
37141 10.967
37151 4.288
37153 16.577
37166 16.517
37172 20.483
37177 11.982
37181 9.61
37189 20.498
37192 18.871
37195 10.697
37196 16.339
37218 20.895
37222 25.913
37232 15.111
37235 12.063
37238 9.577
37242 22.667
37255 9.61
37258 26.408
37264 10.889
37289 16.535
37290 12.279
37291 16.315
37294 20.15
37360 80.3
37361 18.447
37364 10.931
37364 10.931
37369 25.174
37370 12.045
37371 16.345
37377 55.219
37384 69.757
37390 7.556
37397 4.39
37401 7.808
37408 32.159
37594 23.354
37595 22.799
37613 12.333
37617 69.547
37619 7.838
37622 22.679
37624 6.327
37626 6.817
37629 19.958
37630 13.12
37637 18.408
37641 27.168
37647 3.471
37651 25.039
37655 22.075
37657 10.742
37660 7.453
37667 8.108
37673 20.306
37680 27.571
37683 13.174
37684 18.763
37685 7.508
37687 15.177
37691 17.075
37694 19.135
37715 21.745
37718 16.55
37718 16.55
37721 61.874
37725 16.814
37728 7.508
37730 21.336
37731 22.213
37732 12.438
37734 3.069
37739 2.459
37746 13.045
37748 8.096
37752 10.03
37753 14.889
37754 12.213
37755 16.174
37756 9.535
37757 12.225
37758 12.33
37759 12.688
37760 11.757
37761 16.598
37797 7.108
37798 18.922
37799 10.646
37802 2.502
37803 33.291
37806 53.207
37817 7.075
37817 7.075
37819 6.955
37821 9.417
37822 7.435
37823 8.769
37824 7.691
37825 20.477
37835 14.006
37843 20.27
37844 0.784
37848 4.595
37850 23.856
37851 26.817
37854 30.925
37856 9.423
37861 4.288
37867 16.111
37869 14.892
37873 21.922
37876 22.213
37884 17.351
37889 13.087
37889 13.087
37927 7.814
37928 9.339
37929 10.015
38218 3.676
38219 8.015
38220 7.132
38221 4.414
38222 8.814
38223 11.351
38226 6.006
38227 7.748
38228 11.219
38230 7.748
38231 6.006
38232 11.219
38239 44.381
38240 37.82
38242 1.532
38250 8.589
38251 8.048
38252 8.009
38257 4.39
38258 0.486
38288 5.814
38290 5.682
38322 9.826
38322 9.826
38353 2.859
38354 9.985
38356 4.829
38358 7.532
38458 9.054
38458 9.054
38459 9.054
38459 9.054
38460 5.465
38464 5.465
38530 13.916
38536 9.796
38540 12.988
38611 10.357
38613 8.883
38614 11.111
38662 2.102
38664 1.429
38671 1.225
38672 1.802
38674 2.042
39140 6.787
39141 7.508
39146 7.207
39170 11.072
39176 14.222
39181 11.826
39190 23.742
39192 24.685
39193 15.967
39199 22.168
39199 22.168
39200 66.345
39216 22.514
39225 8.408
39229 12.949
39231 17.099
39232 17.955
39241 22.3
39242 29.174
39244 19.108
39250 18.763
39252 23.586
39254 23.147
39256 85.91
39257 8.577
39270 9.363
39271 66.417
39272 16.303
39273 22.396
39277 7.411
39282 17.553
39284 22.198
39285 21.459
39291 5.892
39295 26.664
39297 5.592
39309 26.486
39310 23.342
39311 16.009
39311 16.009
39320 1.429
39322 1.429
39344 5.706
39388 3.532
39389 29.631
39390 17.997
39392 18.532
39394 78.754
39396 44.033
39401 5.003
39404 8.655
39407 17.366
39408 27.715
39409 24.09
39415 19.438
39420 8.408
39421 9.778
39424 76.841
39425 18.042
39426 11.3
39427 2.961
39472 27.168
39473 8.45
39475 12.273
39478 1.94
39483 9.643
39484 2.961
39488 5.748
39491 25.904
39492 26.252
39493 39.688
39494 24.156
39495 28.58
39536 14.306
39648 9.91
39649 9.288
39652 2.348
39653 10.291
39655 5.706
39676 8.129
39712 16.108
39714 9.471
39719 23.429
39720 47.502
39721 22.676
39730 6.64
39731 20.841
39732 45.054
39733 26.859
39735 25.006
39766 20.039
39766 20.039
40060 36.171
40062 34.183
40064 23.631
40065 12.799
40069 8.408
40071 18.898
40074 14.441
40075 5.514
40080 18.883
40108 18.042
40192 19.126
40192 19.126
40194 28.883
40197 28.102
40198 16.994
40233 5.207
40234 44.318
40236 23.847
40245 10.709
40246 37.508
40247 27.589
40250 4.39
40251 21.625
40253 19.132
40254 17.808
40255 21.321
40256 24.925
40258 14.667
40269 22.048
40271 19.141
40273 28.682
40273 28.682
40281 11.162
40284 10.64
40286 36.982
40287 30.868
40289 23.814
40290 17.498
40300 87.931
40301 39.015
40303 23.847
40325 25.838
40326 23.793
40335 8.838
40336 74.622
40338 18.24
40339 30.805
40345 4.805
40348 83.85
40350 17.114
40350 17.114
40351 29.655
40353 10.532
40368 11.162
40369 9.186
40370 8.408
40373 9.7
40374 22.85
40375 18.988
40376 39.468
40378 18.264
40380 34.105
40381 25.132
40382 9.7
40386 14.643
40388 16.856
40396 85.405
40398 33.955
40399 25.511
40403 9.565
40405 21.045
40407 9.309
40408 80.195
40412 16.27
40415 32.616
40416 29.949
40417 44.871
40418 31.102
40419 27.544
40427 24.219
40433 18.679
40455 84.036
40474 14
40486 18.474
40489 113.763
40491 9.309
40526 49.459
40532 1.162
40555 28.171
40558 28.547
40560 62.553
40561 31.778
40562 31.745
40585 19.574
40586 8.033
40602 29.372
40678 3.88
40679 6.306
40680 21.183
40681 16.069
40682 8.577
40684 8.577
40685 12.949
40696 31.165
40697 16.766
40698 25.742
40698 25.742
40699 17.288
40699 17.288
40717 9.982
40718 8.108
40719 21.063
40720 16.841
40721 9.099
40722 9.61
40723 20.628
40724 18.336
40740 23.607
40741 19.754
40750 33.529
40751 25.91
40758 16.985
40865 8.324
41182 6.006
41184 10.511
41186 4.204
41516 15.381
41523 10.3
41525 18.114
41528 7.814
41553 26.712
41554 26.258
41555 14.832
41587 8.829
41588 6.126
41590 9.249
41591 7.015
41592 2.655
41607 8.084
41608 11.877
41609 12.553
41610 19.985
41821 66.321
41825 7.808
41826 14.715
41877 14.363
41878 12.036
41879 14.363
41880 16.405
41884 16.405
41890 14.829
41892 13.715
41896 16.526
41897 18.928
41900 30.426
41901 16.526
41902 18.928
41907 14.078
41908 15.997
41911 24.39
41943 17.889
41944 21.258
41945 24.144
41949 17.889
41950 21.258
41951 24.012
41956 17.889
41957 21.258
41958 24.144
41962 14.24
41963 16.526
41964 18.928
41968 13.321
41969 15.607
41970 17.907
41984 25.604
41985 15.973
41986 17.592
41987 9.643
42020 3.471
42021 10.21
42022 14.078
42023 15.61
42024 20.817
42025 12.036
42026 10.985
42027 3.88
42028 11.411
42029 15.997
42030 23.529
42031 17.709
42032 13.715
42033 12.523
42055 14.078
42056 15.61
42057 20.817
42058 10.985
42059 12.036
42060 3.471
42061 10.21
42062 15.997
42063 17.709
42064 23.529
42065 12.523
42066 13.715
42067 3.88
42068 11.411
42083 24.39
42093 16.775
42095 14.315
42096 14.757
42100 25.58
42101 44.718
42102 36.667
42103 18.832
42110 14.078
42111 33.219
42112 3.471
42113 27
42114 23.529
42115 11.411
42128 9.7
42129 28.529
42130 13.979
42132 14.667
42216 2.246
42224 2.246
42241 2.655
42242 2.961
42284 2.655
42285 2.961
42338 1.94
42339 8.847
42343 53.045
42345 60.925
42346 68.805
42356 59.502
42359 68.243
42362 77.087
42382 55.538
42383 63.739
42384 71.982
42395 12.613
42413 4.919
42435 2.348
42448 6.739
42501 7.823
42502 9.375
42511 5.778
42512 6.682
42513 7.529
42517 5.105
42518 5.883
42519 7.231
42523 12.027
42523 12.027
42524 14.078
42524 14.078
42525 15.997
42525 15.997
42529 10.285
42529 10.285
42530 12.036
42530 12.036
42531 13.715
42531 13.715
42535 9.066
42535 9.066
42536 10.607
42536 10.607
42537 12.117
42537 12.117
42553 25.976
42644 14.628
42647 14.877
42758 14.303
42760 11.514
42844 31.712
42988 13.213
42990 8.679
43072 14.781
43073 14.769
43074 10.799
43075 14.375
43160 14.366
43164 16.444
43171 16.973
43177 16.006
43178 8.709
43180 10.45
43181 12.492
43185 5.381
43186 7.222
43189 17.94
43191 2.757
43192 12.42
43193 12.775
43200 21.913
43210 18.495
43246 7.114
43251 14.577
43252 8.724
43253 18.048
43277 1.838
43278 8.024
43283 10.997
43285 14.526
43287 19.955
43305 16.856
43309 8.24
43313 15.592
43358 13.012
43375 23.64
43382 9.76
43401 35.291
43404 11.105
43406 8.709
43408 16.565
43482 3.369
43498 7.366
43515 1.057
43515 1.057
43566 5.592
43573 10.742
43654 1.495
43654 1.495
43656 2.114
43656 2.114
43657 1.619
43657 1.619
43660 2.505
43660 2.505
43661 4.204
43661 4.204
43663 3.676
43663 3.676
43664 3.018
43664 3.018
43666 3.303
43666 3.303
43667 4.018
43667 4.018
43871 43.937
43969 15.381
43970 15.381
43971 20.787
43972 20.787
43973 15.381
43974 11.411
43975 20.787
43992 13.931
43993 4.186
43995 27.865
44002 33.955
44005 23.495
44008 20.613
44013 5.514
44014 8.829
44015 0.595
44016 11.207
44017 15.604
44018 12.76
44019 32.853
44020 11.817
44021 17.267
44022 9.39
44022 9.39
44023 11.82
44023 11.82
44025 5.003
44027 9.67
44028 2.757
44033 1.838
44034 8.601
44039 1.838
44061 16.111
44062 26.691
44073 10.447
44074 7.249
44104 14.405
44108 5.069
44116 14.757
44166 4.414
44167 15.066
44173 63.535
44180 29.174
44187 9.91
44188 7.508
44193 11.778
44196 25.913
44200 11.607
44202 23.535
44210 13.514
44210 13.514
44214 3.652
44215 2.051
44219 3.964
44242 19.237
44250 12.565
44254 3.784
44255 10.541
44256 17.502
44283 18.817
44302 24.123
44308 4.267
44309 17.474
44310 14.318
44311 9.309
44322 15.153
44324 5.105
44334 15.979
44336 9.538
44338 12.096
44343 16.652
44346 18.282
44350 14.207
44355 22.649
44358 16.27
44365 14.243
44366 9.532
44370 16.76
44374 10.931
44375 2.655
44376 14.928
44378 17.129
44382 18.922
44386 11.625
44387 15.348
44392 11.922
44394 4.802
44395 6.423
44396 14.874
44400 7.225
44403 9.078
44404 20.003
44408 26.435
44415 62.474
44416 72.583
44417 71.622
44418 83.108
44419 80.916
44420 93.934
44429 8.949
44431 6.685
44579 5.105
44593 18.282
44597 5.105
44657 15.904
44658 26.889
44659 3.574
44661 30.315
44662 18.084
44664 4.186
44746 5.913
44748 63.126
44899 23.661
44900 18.147
44909 23.24
44910 29.979
44934 13.589
44935 3.471
]]

Engravings["Wowhead score (Arcane):"] = setmetatable({}, {
	__index = function(t,i)
		local v = WOWHEAD_SCORE:match("\n"..i.." ([^\n]+)\n")
		if v then t[i] = v; return v
		else t[i] = false; return end
	end
})
