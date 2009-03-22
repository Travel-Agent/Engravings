
local _, c = UnitClass('player')
if c ~= 'MAGE' then return end

local WOWHEAD_SCORE = [[
812 2.9
862 0.98
873 4.74
890 1
940 2.5
942 2.52
944 4.06
1155 1.1
1156 1.171
1443 1.8
1484 2.06
1486 1
1607 1.1
1714 0.7
1716 3.68
1720 1.68
1974 0.9
1980 1.68
1992 1.26
1992 1.26
2039 0.3
2042 0.5
2043 0.129
2169 0.786
2244 2.2
2271 1.82
2277 2.22
2280 2.68
2292 1.2
2549 2.52
2565 1.54
2565 1.54
2567 0.4
2721 2.52
2800 1.2
2879 0.7
2879 0.7
2911 0.8
2912 0.2
2933 0.4
3075 5.9
3415 0.3
3748 1.18
4120 3.086
4134 3.04
4197 1
4320 0.4
4696 0.5
4696 0.5
4743 1.54
5183 0.84
5183 0.84
5195 1.58
5201 0.8
5266 0.6
5970 1.58
6324 2.58
6332 0.1
6341 0.7
6341 0.7
6392 1.28
6440 1.5
6461 0.171
6463 0.3
6465 0.98
6505 0.7
6631 0.84
6632 0.7
6682 2.686
6685 1.96
6689 0.5
6697 1.56
6803 1.2
6803 1.2
6901 0.3
6903 2.38
6908 1.52
6910 0.5
7054 3.16
7513 1.28
7514 1.28
7515 2.12
7515 2.12
7673 0.1
7684 2.371
7685 1.68
7685 1.68
7691 3.06
7709 2.8
7711 1.96
7712 3.471
7713 3.071
7714 2.06
7720 1.4
7722 0.7
7728 1.2
7731 0.7
7757 3.18
7888 0.1
9393 1.68
9393 1.68
9395 0.5
9407 1.26
9415 2.6
9429 3.8
9431 3.38
9433 1.76
9434 2.94
9448 0.129
9454 1.5
9470 4.98
9482 3.78
9484 4.22
9491 1.36
9492 1.5
9508 1.5
9517 3.88
9641 0.84
9649 2.82
9683 2.4
10019 2.92
10021 3.42
10041 3.94
10572 1.12
10574 2.74
10578 0.6
10581 0.8
10629 2.76
10630 4.4
10634 2.06
10751 2.54
10762 3.2
10766 1.12
10769 2.569
10770 1.82
10770 1.82
10771 2.68
10787 1.26
10796 0.98
10796 0.98
10802 1.68
10806 3.929
10807 3.34
10808 3.22
10829 1.68
10836 1.571
10843 2.92
10844 2.52
11123 1.26
11262 0.6
11262 0.6
11263 1.28
11310 1.68
11623 2.36
11624 3.26
11625 2.74
11625 2.74
11634 1.429
11662 5.066
11748 1.54
11750 5.5
11782 4.02
11784 1.62
11807 4.251
11808 2.52
11819 1.68
11822 3.98
11824 3.103
11832 1.68
11839 4.8
11841 3.64
11922 0.84
11924 3.72
11928 2.18
11928 2.18
11929 1.2
11932 3.92
11935 2.52
11935 2.52
11962 1.5
12103 3.186
12344 3.986
12462 6.6
12466 4.729
12471 0.4
12471 0.4
12532 1.7
12542 1.3
12543 3.22
12545 3.22
12546 1.5
12548 2.2
12554 3.82
12556 1.68
12584 2.2
12589 3.94
12604 4.48
12605 2.857
12608 2.514
12626 3.08
12752 6.4
12783 2.2
12926 2.8
12929 4.2
12930 4.06
12940 2.2
12965 4.26
12967 3.171
12968 4.057
12977 0.5
12987 0.7
12998 1.6
13000 2.5
13001 3.22
13007 2.52
13008 0.9
13013 3.54
13029 1.96
13029 1.96
13031 0.98
13031 0.98
13033 0.5
13036 2.2
13064 0.6
13084 0.4
13085 1.4
13094 0.2
13096 1
13098 2.2
13099 0.56
13100 0.7
13101 2.92
13102 3.22
13105 1
13106 1.36
13107 1.7
13141 1.529
13144 1.7
13161 4.46
13170 5.56
13178 2.314
13181 3.7
13185 3.9
13206 1.96
13249 3
13253 4.24
13261 3.214
13261 3.214
13282 3.343
13283 2.586
13314 4.8
13345 1.7
13346 5.54
13353 1.5
13353 1.5
13360 1
13369 3.22
13374 2.2
13376 1.6
13385 0.8
13385 0.8
13386 0.171
13388 4.1
13389 2
13390 4.46
13391 2.48
13392 0.3
13396 1.68
13403 1.7
13503 1.5
13938 1.94
13956 4.186
13958 0.9
13960 0.5
13964 2.76
13965 4.4
13968 4.4
13986 2
14136 5.82
14137 1.4
14138 2
14139 1.7
14140 2.3
14146 5.4
14148 0.76
14150 1.286
14152 9
14153 6.44
14340 4.9
14538 2.44
14543 0.7
14558 1.9
14577 2
14626 2.32
14629 1.1
14631 2.54
14632 1.8
14633 1.1
15104 1.76
15411 2.2
15421 1.5
15802 1.4
15805 1.1
15805 1.1
15854 1.2
15856 1
16058 3.3
16345 2.2
16369 3.18
16391 2.94
16413 4.2
16414 3.96
16415 3.18
16416 3.8
16437 6.626
16440 4.98
16441 8.52
16442 8.4
16443 8.52
16444 5
16485 3.18
16486 0.7
16487 2.94
16489 3.8
16490 3.96
16491 4.2
16492 3.18
16533 8.52
16534 8.4
16535 8.52
16536 5
16539 6.626
16540 4.98
16682 1.4
16683 1.5
16684 1.4
16685 2.1
16686 3
16687 2
16688 3.1
16689 2.2
16690 2.4
16691 1
16692 1
16693 2.4
16694 1.5
16695 2.1
16696 2
16697 1
16698 2.3
16699 1.4
16700 2.1
16701 1.5
16702 1.7
16703 1
16704 0.9
16705 0.9
16795 7.786
16796 7.3
16797 4.231
16798 5.72
16799 3.309
16800 5.14
16801 3.631
16802 3.96
16818 5.22
16887 0.7
16887 0.7
16912 5.38
16913 6.6
16914 7.251
16915 9.1
16916 9.28
16917 4.411
16918 4.331
16975 0.9
16979 1.4
16980 1
16997 0.5
16999 1
17045 1
17050 1
17061 0.5
17063 5.714
17064 0.686
17067 1.5
17067 1.5
17070 8.971
17077 1
17078 3.66
17103 9
17109 3.52
17110 1.229
17113 8.674
17191 4.36
17707 1
17710 1.186
17713 2.857
17715 2
17719 2.2
17732 1.7
17737 2.68
17737 2.68
17741 3.563
17743 0.343
17745 0.786
17748 3.16
17750 3.64
17755 3.18
18022 1
18082 3.94
18083 1.1
18102 4.12
18103 2.414
18204 2.2
18205 2.2
18208 3.54
18263 1.186
18289 2.56
18295 0.6
18311 2.143
18314 1.257
18317 2.9
18327 3.397
18338 1.82
18369 3.2
18371 0.471
18372 2.1
18385 5.08
18386 5.337
18387 3.7
18389 3.06
18395 2.32
18396 2.48
18397 1
18398 0.7
18403 3.4
18404 5.057
18405 4.7
18407 3.78
18408 4.68
18409 1.6
18437 0.6
18456 0.7
18457 0.6
18468 0.343
18483 0.171
18486 2.5
18491 0.729
18496 3.2
18497 2.68
18500 2.857
18507 3.16
18509 2.2
18510 4.08
18523 2.8
18523 2.8
18526 4
18532 1.729
18534 6.82
18536 0.957
18536 0.957
18541 2.857
18543 3.5
18545 6.46
18586 0.6
18678 0.5
18681 4.4
18684 0.7
18691 2.94
18693 3.16
18695 1.7
18695 1.7
18697 1.571
18709 2.2
18720 3.8
18723 2.52
18727 5
18728 1.54
18730 1.714
18735 3.98
18740 2.74
18743 0.957
18745 3.86
18757 0.343
18761 1.1
18762 1.82
18762 1.82
18805 2.2
18808 4.84
18809 3.78
18811 0.9
18814 5.46
18821 2.2
18832 2.2
18838 2.2
18840 2.2
18842 11.5
18872 2
18873 12.24
18874 12.24
18878 4.5
19047 2.271
19050 2.357
19085 1.96
19086 1.96
19090 3.52
19094 3.52
19096 1.171
19098 1.171
19101 3.7
19102 3.7
19105 5.76
19108 1.82
19109 2.68
19121 2.58
19130 2.94
19131 5.694
19132 8.26
19133 7.42
19135 3.5
19136 7.3
19138 2.3
19140 4.7
19142 3.64
19142 3.64
19145 9.12
19147 4.62
19156 3.22
19165 6.02
19308 4.049
19308 4.049
19309 3.92
19309 3.92
19310 4.82
19310 4.82
19311 4.62
19311 4.62
19312 4.049
19312 4.049
19315 4.62
19315 4.62
19325 5.057
19347 10.831
19355 11.84
19356 19.06
19366 5.32
19366 5.32
19367 2.04
19369 1.2
19370 6.36
19371 1.586
19374 6.426
19375 11.7
19377 2.857
19378 5.32
19379 10.731
19382 4.92
19384 2.857
19385 9.14
19388 6.571
19391 2.214
19395 5.286
19397 3.046
19399 2.2
19400 6.314
19403 6.426
19406 5.714
19407 6.1
19426 3.08
19430 3.877
19434 4.38
19435 0.914
19437 5.82
19438 8.106
19518 2.131
19519 1.851
19520 1.389
19521 1.066
19522 2.131
19523 1.851
19524 1.389
19525 1.066
19526 1.96
19527 1.68
19528 1.26
19529 0.98
19530 1.96
19531 1.68
19532 1.26
19533 0.98
19566 1.643
19567 1.4
19568 1.157
19569 0.871
19570 1.643
19571 1.4
19572 1.157
19573 0.871
19595 3.88
19596 3.4
19597 2.84
19599 1.98
19600 2.56
19601 2.56
19682 9.651
19683 8.066
19684 6.546
19845 3.78
19846 3.06
19856 2.2
19857 6.506
19859 2.2
19861 2.52
19863 3.3
19864 6.12
19865 2.2
19870 3.12
19876 3.886
19884 9.951
19885 4.32
19886 6.74
19891 5.906
19891 5.906
19893 4.826
19895 5.92
19897 5.4
19898 2.2
19899 4.2
19903 4.417
19905 3.757
19907 2.857
19909 5.4
19920 1.257
19922 3.88
19922 3.88
19923 3.209
19925 2.857
19927 1.1
19929 5.946
19964 2.497
19965 2.497
19967 0.214
19982 2.857
19999 7.157
20006 2.2
20032 5.38
20034 8.466
20035 0.4
20037 2.84
20047 4.76
20054 2.48
20061 3.551
20069 11.14
20070 6.4
20082 1.26
20094 1.86
20095 1.42
20096 0.98
20097 3.96
20098 2.36
20099 1.84
20159 2.48
20160 1.86
20161 1.42
20162 0.98
20163 4.76
20164 1.84
20165 3.96
20166 2.36
20176 3.551
20214 6.4
20217 2
20218 1.057
20220 11.14
20258 6.08
20425 0.529
20426 0.786
20427 0.7
20428 0.7
20431 0.786
20434 0.529
20505 1.82
20530 3.66
20536 5.086
20537 0.171
20538 0.257
20539 0.129
20556 5.957
20581 8.231
20582 4.3
20582 4.3
20618 5.594
20622 0.6
20625 2.76
20626 3.9
20631 2.729
20632 5.88
20635 7.96
20647 2.151
20654 5.66
20672 1.6
20674 2.2
20682 4.18
20685 2.763
20686 2.286
20691 0.7
20697 3.2
20698 5.209
20705 2.1
20706 2.1
20707 2.1
20716 4.28
20717 4.28
20720 2.66
20832 0.857
20969 4.54
21128 10.44
21179 3.129
21182 5.057
21183 7.9
21185 2.603
21185 2.603
21186 6.066
21187 2.857
21189 2.857
21201 2.857
21202 2.857
21203 2.857
21204 2.857
21205 2.857
21206 3.769
21207 4.009
21208 4.471
21209 4.611
21210 5.034
21244 5.057
21273 20.711
21275 13.683
21343 9.96
21344 7.877
21345 5.571
21346 9.774
21347 11.506
21413 9.486
21414 4.72
21415 3.42
21452 15.186
21461 9.54
21462 4.874
21464 4.14
21468 4.44
21470 2.78
21471 5.94
21471 5.94
21472 7.34
21477 2.857
21483 4.489
21489 3.64
21496 1.471
21499 8.08
21500 3.491
21504 4.7
21507 3.757
21517 3.486
21521 9.86
21523 10.36
21527 6.18
21531 3.16
21563 2.2
21582 6.68
21583 4.483
21585 8.966
21597 8.186
21597 8.186
21600 6.66
21603 2.66
21604 4.92
21608 6.48
21611 5.22
21615 7.631
21619 4.089
21620 3.994
21622 12.98
21648 4.1
21650 2.2
21663 7.68
21664 2.2
21666 4.594
21666 4.594
21671 6.74
21676 8.88
21677 2.2
21678 2.42
21681 2.763
21686 5.78
21690 3.897
21694 4.92
21696 2.5
21697 4.14
21701 2.857
21707 3.64
21709 8.066
21712 4.457
21753 2.24
21774 6.4
21779 3.22
21780 4.4
21791 2.789
21801 1.509
21802 4.16
21809 5.057
21810 4.6
21836 5.7
21838 8.771
21846 10.369
21847 10.354
21848 14.22
21859 7.229
21860 5.663
21861 7.891
21862 7.471
21863 1.3
21864 1.5
21865 2
21868 0.386
21869 7.24
21870 7.48
21871 10.26
21873 7.563
21874 8.76
21875 11.389
21888 1.6
22062 3.36
22063 2.32
22064 4.54
22065 6.24
22066 5.366
22067 4.44
22068 2.96
22069 4.74
22070 3.28
22071 2.32
22072 4.34
22073 3.28
22074 6.926
22075 6.08
22076 3.08
22077 5.406
22078 2.98
22079 2.146
22080 5.697
22081 3.04
22082 2.98
22083 4.417
22084 3.28
22085 3.897
22149 3.02
22150 2.857
22225 4.02
22231 4.086
22234 3.189
22245 2.44
22247 3.16
22253 3.22
22253 3.22
22254 1.386
22256 3.34
22257 1.92
22266 2.46
22267 8.226
22301 1.5
22302 1.5
22303 1.5
22304 1.1
22305 1.1
22306 1.1
22311 1.1
22313 0.8
22319 2.631
22319 2.631
22326 2.929
22327 2.02
22329 5.746
22329 5.746
22330 3.386
22332 2.2
22334 2.94
22335 7.486
22339 4.526
22340 2.857
22342 5.52
22379 1.82
22383 3.4
22394 4.16
22403 4.346
22405 2.64
22406 4.9
22408 1.54
22412 3.48
22433 3.74
22458 5.02
22496 13.766
22497 11.326
22498 13.886
22499 6.84
22500 7.92
22501 6.94
22502 8.306
22503 5.28
22504 13.826
22505 9.88
22506 13.806
22507 8.526
22508 8.28
22509 7.54
22510 8.16
22511 4.62
22512 7.674
22513 7.5
22514 8.014
22515 5.709
22516 5.677
22517 5.211
22518 5.94
22519 4.44
22652 2.94
22654 2.1
22655 1.68
22657 3.4
22659 2.2
22667 2.36
22681 2.851
22688 3.46
22700 2.52
22711 3.82
22716 4.76
22720 5.56
22721 4.12
22730 8.84
22731 7.486
22732 2.857
22747 5.82
22752 5.82
22756 1.68
22757 2.52
22758 0.98
22799 25.14
22800 25.591
22801 17.529
22802 5.057
22803 13.1
22804 2.857
22806 2.857
22807 18.586
22820 4.666
22821 4.44
22860 5.386
22870 3.52
22883 6.84
22886 6.84
22937 4.5
22937 4.5
22938 2.857
22939 4.88
22943 4.72
22947 2.1
22954 5.057
22960 5.054
22968 2.24
22980 1
22983 8.86
22994 1.829
22994 1.829
23001 4.4
23009 2.68
23014 5.057
23017 4.92
23018 2.857
23021 6.24
23023 2.2
23025 7.426
23027 0.429
23029 5.12
23029 5.12
23030 2.857
23031 7.326
23032 4.62
23035 9.54
23036 5.02
23037 1.829
23038 5.057
23044 5.057
23045 2.2
23046 5.6
23047 5.18
23048 5.791
23048 5.791
23049 8.926
23049 8.926
23050 9.226
23053 4.4
23057 7.2
23062 7.4
23069 5.18
23070 11.96
23084 1
23085 1.3
23091 0.7
23124 7.26
23125 3.08
23126 3.64
23128 3.64
23129 2.16
23156 2.56
23156 2.56
23168 1.26
23169 1.58
23173 2.06
23177 1.12
23178 2.16
23220 9.32
23237 7.12
23263 6.94
23264 5.4
23290 3.52
23291 5.386
23304 6.84
23305 6.84
23318 6.94
23319 5.4
23451 13.08
23452 4.4
23452 4.4
23453 3.64
23453 3.64
23456 2.2
23466 13.08
23467 2.2
23468 4.4
23468 4.4
23469 3.64
23469 3.64
23554 28.72
23555 3.143
23761 9.911
23828 14.76
23838 8.04
24020 1.886
24024 5.58
24045 3.5
24069 12.354
24073 2.2
24079 3.38
24080 3.38
24082 3.38
24083 5.72
24085 3.38
24086 3.38
24089 2.143
24096 3.911
24110 4.417
24114 6
24116 8.657
24117 2.2
24121 4.84
24122 4
24123 2.7
24126 2.3
24127 0.6
24154 4.34
24250 5.4
24251 4.3
24252 6
24254 4.78
24255 4.48
24256 9.903
24257 2.271
24259 3.614
24260 2.343
24261 7.191
24262 17.611
24263 9.14
24264 7.851
24266 15.983
24267 8.82
24356 3.429
24359 12.563
24361 12.097
24362 5.889
24380 2.34
24390 4.48
24392 4.02
24393 4.24
24395 6.069
24397 5.6
24450 7.926
24453 13.369
24459 3.82
24462 6.729
24464 2.357
24481 5.72
24557 43.017
25541 4.12
25562 3.714
25563 6.594
25564 3.366
25606 5.174
25607 5.174
25640 3.846
25711 9.537
25713 4.277
25714 4.277
25718 6.874
25760 19.714
25772 3.714
25774 11.94
25776 4.5
25777 7.114
25792 6.42
25804 2.829
25805 5.04
25806 4.111
25808 4.111
25810 5.04
25811 2.829
25822 5.04
25824 6.22
25825 3.143
25826 6.22
25854 7.823
25855 9.509
25856 10.209
25857 9.18
25858 12.78
25939 4.44
25945 4.431
25950 20.68
25952 3.429
25954 4.54
25957 8.211
25962 3.143
26055 4.62
27410 7.2
27411 4.86
27412 13.54
27418 10.729
27431 15.443
27433 3.96
27440 3.76
27448 4.306
27451 6.84
27452 3.6
27460 2.829
27462 8.309
27463 4
27464 5.4
27465 7.014
27466 10.591
27477 4.78
27477 4.78
27485 5.5
27488 12.374
27491 3.76
27493 11.603
27506 9.06
27508 8.66
27512 21.011
27517 4.74
27523 5.4
27525 6.817
27534 5.22
27534 5.22
27536 5.78
27537 11.454
27540 3.849
27542 6.143
27543 23.011
27546 6.257
27547 8.874
27551 3.429
27638 4.98
27649 5.76
27673 1.729
27683 5.18
27714 5.397
27714 5.397
27738 4.5
27742 9.363
27746 5.7
27758 8.831
27761 7.014
27762 4.7
27764 9.52
27766 4.44
27768 6.46
27775 4.78
27778 5.76
27779 3.714
27780 5.68
27781 13.469
27784 7.111
27789 4.711
27791 19.64
27795 10.457
27796 7.014
27799 12.609
27805 2.014
27814 3.3
27816 6.26
27821 10.6
27822 4.571
27824 12.074
27828 0.557
27830 2.043
27832 2.043
27833 2.043
27834 2.043
27838 11.709
27842 26.669
27843 7.914
27848 7.84
27866 8.16
27868 21.183
27875 9.06
27877 6.286
27878 4.857
27885 2.48
27889 6.98
27890 2.24
27892 7.4
27899 19.44
27902 6.14
27904 4.286
27905 23.6
27907 11.12
27919 4.929
27922 4.48
27924 4.48
27925 3.714
27939 2.089
27942 2.089
27946 5.094
27948 12.189
27981 8.309
27994 9.989
27996 2.1
28029 3.4
28030 5.683
28031 3.714
28032 4
28033 20.954
28034 5.029
28040 4.086
28041 4.086
28052 9.58
28075 7.514
28121 8.571
28134 9.251
28168 6.357
28169 14.386
28174 4.44
28179 5.76
28183 7.32
28185 7.24
28187 8.309
28187 8.309
28188 25.54
28190 5.18
28191 9.231
28193 6.76
28212 9.32
28213 4.5
28213 4.5
28218 6.76
28223 7.143
28227 9.537
28229 7.517
28230 6.8
28232 7.6
28233 4.306
28244 1.571
28245 4.84
28246 2.514
28247 3.5
28250 6.483
28252 10.26
28254 6.974
28259 4.5
28260 7.426
28260 7.426
28267 2.514
28269 6.78
28278 9.746
28295 4.929
28297 29.66
28304 6.96
28312 4.929
28317 7.36
28320 3.06
28321 4.571
28322 16.94
28323 3.143
28327 4.74
28338 6.86
28341 29.397
28342 10.429
28345 4.286
28346 4.06
28346 4.06
28371 3.3
28373 4.68
28374 6.66
28377 2.986
28378 4.84
28379 4.84
28380 2.986
28386 5.106
28387 4.717
28387 4.717
28394 7.1
28400 4.286
28402 7.18
28404 7.18
28405 4.48
28406 7.271
28409 9.991
28410 9.991
28411 6.386
28412 9.811
28412 9.811
28413 6.6
28415 8.8
28416 2.514
28418 4.714
28419 4.36
28425 4.571
28426 4.857
28427 5.143
28477 5.74
28507 11.1
28508 5.44
28509 4.857
28510 6.46
28511 5.3
28515 6.68
28517 8.926
28525 4.9
28525 4.9
28529 4.571
28530 10.026
28553 5.371
28555 7.349
28565 7.9
28570 6.84
28572 1.414
28578 9.78
28579 10
28582 6.14
28585 12.371
28586 14.849
28588 3.4
28590 5.46
28594 10.86
28602 11.151
28603 8.491
28603 8.491
28604 29.3
28609 5.371
28612 7.429
28633 37.571
28649 5.143
28652 7.28
28653 2.486
28654 11.08
28658 7.143
28661 5.32
28663 6.943
28670 7.46
28672 4.857
28673 6.143
28714 6.357
28715 7.491
28716 6.531
28717 7.391
28718 10.277
28726 7.8
28727 4
28728 6.323
28728 6.323
28730 3.457
28731 5.6
28734 11.02
28734 11.02
28742 8.44
28744 19.797
28749 4.857
28753 8.966
28756 9.82
28757 9.043
28759 6.56
28760 9.389
28762 9.534
28763 5.554
28765 6.52
28766 11.443
28768 4.286
28770 33.834
28777 3.771
28780 10.74
28781 7.2
28781 7.2
28782 34.246
28783 5.54
28789 7.56
28790 6.903
28793 10.691
28797 9.534
28799 8.62
28802 33.849
28804 13.12
28822 5.943
28823 3.22
28866 6.357
28867 7.491
28868 6.531
28869 7.391
28870 10.277
28926 4.329
28929 4.329
28930 4.329
28931 21.954
28935 30.369
28937 4.329
28938 3.16
28938 3.16
28941 3.16
28941 3.16
28952 4.329
28954 4.329
28955 4.329
28956 4.329
28957 21.954
28959 30.369
28980 7.18
28981 4.48
28982 7.18
29001 9.991
29002 6.386
29003 9.991
29076 13.483
29077 10.06
29078 17.717
29079 8.737
29080 14.943
29117 6.017
29122 3.9
29123 3.057
29124 5.429
29126 6.646
29129 7.86
29130 31.054
29132 9.143
29133 22.109
29139 2.857
29140 2.857
29145 2.6
29146 2.6
29149 2.44
29150 3.429
29153 26.66
29155 26.76
29156 2.286
29157 1.34
29168 5.871
29169 5.871
29170 6.36
29170 6.36
29172 9.22
29174 9.48
29179 5.029
29183 5.96
29185 20.326
29240 6.26
29241 12.317
29242 7.94
29249 5.5
29250 7.32
29251 7.22
29255 5.6
29257 9.677
29258 7.32
29269 9.309
29269 9.309
29270 8.271
29270 8.271
29271 7.14
29271 7.14
29272 5.88
29272 5.88
29273 6.86
29273 6.86
29274 5.857
29274 5.857
29280 5.143
29281 6.286
29282 6.857
29283 7.143
29284 6.766
29285 8.097
29286 8.791
29287 9.031
29288 4.88
29289 5.6
29290 6.36
29291 5.98
29302 9.56
29303 10.237
29304 11.031
29305 11.031
29306 7.166
29307 6.603
29308 7.689
29309 7.689
29315 5.5
29317 5.78
29320 6.991
29322 3.38
29328 7.657
29330 6.22
29330 6.22
29333 7.76
29334 4.903
29335 6
29341 12.891
29345 2.291
29346 3.457
29347 4.92
29349 4.714
29350 4.529
29352 6.6
29354 6.16
29355 33.534
29367 8.063
29368 6.12
29369 7.997
29370 6.16
29373 5.857
29374 5.911
29375 5.543
29376 6.16
29379 3.614
29381 5.143
29457 11.283
29780 12.2
29813 6.303
29814 5.531
29918 9.954
29920 6.889
29922 7.48
29923 7.137
29923 7.137
29972 11.16
29977 10.26
29981 35.34
29982 8.563
29986 20.191
29987 13.18
29988 46.254
29989 8.14
29990 11.78
29992 8.36
29997 9.543
30008 6.74
30010 7.429
30011 26.22
30012 21.091
30013 3.143
30015 11.111
30018 8.08
30020 14.014
30022 3.614
30024 16.331
30035 8.446
30036 7.26
30037 17.031
30038 18.286
30049 9.854
30049 9.854
30050 14.203
30052 5.429
30056 14.529
30059 3.614
30064 15.357
30067 12.731
30077 6.857
30079 10.274
30080 4.317
30082 5.714
30095 36.24
30099 5.143
30100 6.66
30107 23.366
30109 8.637
30110 7
30196 14.186
30205 12.683
30206 15.071
30207 21.26
30210 10.671
30256 7.94
30365 2.857
30366 7.131
30368 6.22
30377 5.56
30459 15.24
30460 12.931
30461 11.131
30463 5.589
30464 4.423
30465 7.74
30531 10.854
30532 7.94
30543 7.8
30619 0.686
30626 6.286
30627 8.829
30642 6.5
30666 5.88
30667 9.386
30668 12.437
30673 12.431
30709 14.02
30710 2.671
30720 8.143
30723 33.717
30725 13.843
30726 7.9
30727 10.794
30729 4.714
30732 31.331
30734 18.271
30735 9.526
30736 9.214
30738 7.271
30787 4.243
30804 0.84
30836 8.76
30837 0.8
30838 1.1
30839 1.9
30841 5.18
30859 3.32
30860 2.857
30865 9.329
30870 8.96
30871 6.76
30872 15.551
30872 15.551
30884 13.271
30885 9.16
30888 13.771
30894 16.183
30895 14.129
30901 3.771
30908 43.146
30910 47.089
30911 7.44
30911 7.44
30912 13.446
30913 26.626
30916 21.546
30924 8.897
30925 9.129
30932 6.3
30973 2.857
31002 18.149
31013 16.591
31036 22.849
31038 19.349
31055 17.74
31056 20.951
31057 19.909
31058 23.651
31059 12.44
31073 2
31075 7.131
31076 3.42
31077 2.857
31104 10.171
31133 9.78
31140 7.457
31142 11.877
31143 2.514
31149 11.314
31150 4.64
31178 6.134
31196 3.226
31230 7.657
31255 3.714
31258 3.9
31272 8.04
31275 4
31282 8.04
31283 10.014
31289 16.72
31290 7.22
31297 17.871
31305 2.514
31306 3.886
31308 26.64
31321 4.58
31326 0.3
31329 6.274
31336 22.26
31338 5.12
31339 5.46
31340 15.134
31343 11.18
31381 4.557
31382 6.517
31383 4.76
31417 18.92
31461 10.56
31465 5.5
31492 4.286
31493 4.277
31493 4.277
31494 6.634
31494 6.634
31546 11.414
31691 5.317
31692 7.131
31693 5.06
31695 5.214
31717 9.86
31726 4.16
31747 3.78
31749 3.78
31756 2.986
31758 8.086
31920 8.571
31921 5.22
31922 6.363
31923 5.563
31978 6.52
31978 6.52
32044 5.843
32047 8.74
32048 11.623
32049 10.026
32050 11.714
32051 15.017
32052 5.843
32053 37.586
32055 49.157
32089 10.017
32090 7.8
32237 38.597
32238 11.231
32239 12.517
32247 15.866
32256 14.337
32260 10.243
32261 6
32266 5.429
32270 13.309
32273 8.86
32323 8.629
32327 18.22
32329 11.38
32331 11.409
32335 4.714
32337 7.78
32338 18.671
32340 12.937
32343 7.214
32344 38.74
32349 14.497
32350 7.374
32350 7.374
32353 9.371
32361 14.337
32361 14.337
32362 5.714
32363 4
32367 20.029
32369 7.743
32370 10.609
32374 54.003
32452 4.06
32452 4.06
32483 14.843
32494 15.917
32495 11.36
32496 8.68
32497 8.571
32505 5.714
32513 6.72
32516 6.72
32519 7.86
32524 11.637
32525 25.446
32526 4.163
32527 11.623
32528 11.746
32531 5.871
32533 6.786
32533 6.786
32535 6.1
32538 5.7
32541 6.22
32584 10.72
32585 11.386
32586 10.52
32587 13.863
32589 11.351
32590 12.963
32609 7.86
32650 2.78
32651 6.22
32651 6.22
32653 5.7
32655 6.706
32660 17.74
32662 25.626
32664 7.697
32665 3.491
32770 5.343
32771 5.343
32772 3.92
32774 3.5
32776 5.22
32779 7.891
32787 8.04
32795 11.423
32799 8.04
32807 11.423
32811 5.1
32820 7.08
32830 18.42
32831 2.1
32941 8.334
32942 3.429
32961 6.52
32961 6.52
32962 3.54
32979 8.04
32980 5.1
32981 8.04
33054 3.5
33056 5.26
33057 3.457
33058 6.8
33064 5.134
33065 5.24
33066 2.829
33067 6.969
33068 4.734
33122 3.771
33192 4.02
33203 9.86
33214 2.417
33281 12.431
33285 8.431
33291 17.843
33293 6.189
33296 6.286
33297 3.357
33304 7.794
33317 15.36
33325 6.06
33325 6.06
33333 5.537
33334 9.163
33334 9.163
33354 39.594
33357 12.557
33388 2.686
33453 23.769
33463 11.277
33466 10.106
33467 36.98
33471 8.286
33480 9.117
33484 3.143
33489 12.431
33490 35.626
33493 3.714
33494 39.951
33497 15.697
33498 10.691
33584 17.103
33585 17.103
33586 11.729
33587 7.8
33588 9.217
33589 8.431
33590 3.357
33591 9.137
33592 9.137
33681 7
33681 7
33716 13.514
33736 7
33736 7
33754 5.586
33757 9.571
33758 12.651
33759 10.857
33760 12.146
33761 16.006
33762 5.586
33763 41.437
33764 3.92
33766 46.409
33828 0.771
33829 7.42
33853 6.12
33882 8.94
33883 6.06
33884 8.94
33900 8.84
33901 6.06
33902 8.84
33912 12.3
33913 8.337
33914 12.3
33918 6.037
33919 4.086
33920 8.3
33921 6.2
33922 5.637
33923 3.457
34010 7.143
34012 7.431
34033 3.92
34033 3.92
34049 6.58
34050 6.58
34059 3.92
34066 1.96
34073 6.6
34074 5.857
34138 5.3
34139 7.186
34162 6.286
34163 6.286
34164 3.357
34165 3.357
34166 11.257
34170 17.469
34177 4.029
34179 11.857
34179 11.857
34181 23.523
34182 64.426
34184 10.451
34189 5.029
34202 14.837
34204 15.743
34205 8.417
34206 10.52
34206 10.52
34210 17.706
34214 9.557
34230 14.62
34232 22.243
34233 18.237
34241 4.297
34242 12.777
34329 3.626
34336 50.683
34337 50.717
34339 18.729
34340 24.7
34342 13.406
34344 22.329
34347 6.497
34348 4.954
34358 3.894
34359 13.946
34360 10.446
34361 3.76
34362 17.017
34363 11.931
34364 24.997
34365 19.397
34366 16.234
34367 10.42
34386 19.18
34393 14.806
34399 21.651
34405 19.414
34406 14.614
34416 2.68
34418 1.54
34424 4.06
34427 7.251
34429 7.251
34430 8.82
34447 12.38
34470 6.16
34471 0.643
34540 54.409
34557 20.466
34574 20.686
34576 6.286
34577 6.286
34579 6.58
34580 6.58
34604 30.217
34606 2.283
34607 10.2
34608 29.1
34610 14.997
34625 6.92
34665 3.143
34666 3.143
34667 22.443
34672 2.286
34677 5.48
34678 6.98
34680 3.714
34697 6.497
34702 6.911
34704 6.697
34705 4.494
34708 5.846
34788 8.831
34792 8.134
34793 5.66
34797 26.211
34798 2.417
34808 11.903
34837 2.2
34847 21.64
34889 14.8
34890 7.271
34894 3.771
34895 37.38
34917 20.326
34918 19.423
34919 14.037
34924 12.18
34925 12.54
34926 8.94
34936 20.337
34937 18.597
34938 13.854
34985 4.3
34987 59.24
35008 8.1
35008 8.1
35016 4.62
35016 4.62
35065 2.24
35074 8.1
35074 8.1
35093 6.029
35096 11.26
35097 15.174
35098 12.546
35099 14.669
35100 18.529
35101 6.029
35102 39.34
35103 15.286
35107 4.3
35109 50.097
35129 7.88
35130 6.8
35131 4.714
35132 9.491
35133 7.3
35134 6.4
35135 4.086
35138 10.28
35144 10.18
35149 14.129
35153 10.28
35159 10.18
35164 14.129
35168 7.16
35174 7.16
35179 9.529
35181 14.62
35282 10.66
35283 6.96
35284 4.4
35290 9.646
35291 7.003
35292 4.4
35317 8.469
35319 7.82
35320 6.229
35321 7.429
35324 7.429
35326 5.371
35327 5.371
35343 6.357
35344 7.491
35345 6.531
35346 7.391
35347 10.277
35465 6.357
35494 5.543
35497 7.997
35507 5.143
35508 6.12
35509 5.911
35511 5.429
35514 28.697
35570 35.02
35572 12.04
35580 8.814
35581 6.58
35584 23.143
35589 12.149
35594 9.84
35595 3.894
35596 9.28
35597 7.283
35598 6.84
35598 6.84
35606 6.6
35609 7.86
35609 7.86
35610 9.971
35611 9.96
35612 15.063
35617 6.46
35631 8.086
35632 20.777
35633 46.803
35635 13.66
35646 20.626
35652 3.92
35654 7.58
35657 9.34
35658 42.78
35663 15.351
35666 11.363
35673 15.34
35679 23.669
35681 6.311
35682 8.62
35683 5.657
35700 3.3
35703 0.771
35733 7.66
35749 8.82
35750 8.82
36871 5.909
36872 0.729
36874 5.774
36943 9.06
36944 5.714
36945 9.16
36947 5.103
36949 13.5
36954 19.651
36961 6.857
36972 9.52
36973 27.383
36975 49.46
36976 18
36979 3.626
36980 5.343
36982 12.4
36983 18.526
36985 25.257
36988 9.34
36989 8.883
36991 16.54
36997 9.503
37037 4.029
37038 5.34
37048 9.703
37051 14.763
37051 14.763
37055 12.4
37058 14.443
37060 51.574
37064 8.729
37065 2.986
37079 9.14
37086 14.511
37086 14.511
37096 4.969
37099 61.446
37111 10.5
37113 9.56
37134 22.443
37134 22.443
37141 11
37151 6.6
37153 13.92
37166 15.714
37172 20.277
37177 11.506
37181 9.143
37189 17.62
37192 18.14
37195 10.829
37196 14.22
37218 23.677
37222 24.646
37232 17.297
37235 11.289
37238 10.963
37242 25.897
37255 9.143
37258 25.043
37264 9.937
37289 13.92
37290 10.3
37291 15.68
37294 17.54
37360 77.937
37361 16.491
37364 11.029
37364 11.029
37369 27.851
37370 10.1
37371 15.714
37377 58.243
37384 67.874
37390 11.629
37397 6.757
37401 7.429
37408 29.594
37594 20.44
37595 22.086
37613 12.154
37617 67.874
37619 6.62
37622 22.903
37624 5.774
37626 5.72
37629 22.877
37630 11.44
37637 20.26
37641 29.869
37647 5.343
37651 23.246
37655 21.06
37657 9.803
37660 11.471
37667 7.714
37673 19.374
37680 26.62
37683 11.1
37684 15.88
37685 7.143
37687 12.66
37691 14.92
37694 18.374
37715 18.24
37718 15.88
37718 15.88
37721 62.614
37725 16.114
37728 7.143
37730 20.314
37731 18.64
37732 10.14
37739 2.1
37746 14.814
37748 8.654
37752 11.517
37753 15.034
37754 10.26
37755 15.923
37756 9.794
37757 14.114
37758 13.031
37759 12.774
37760 11.189
37761 14.371
37797 6.329
37798 15.88
37799 8.84
37802 2.283
37803 32.803
37806 56.903
37817 6.714
37817 6.714
37819 8.057
37821 10.38
37822 7.557
37823 10.143
37824 7.249
37825 19.469
37835 14.84
37843 22.234
37844 1.243
37848 7.071
37850 21.517
37851 29.569
37854 35.486
37856 10.263
37861 6.6
37867 13.96
37869 17.04
37873 20.857
37876 18.64
37884 19.917
37889 11.34
37889 11.34
37927 6.966
37928 8.943
37929 9.591
38218 5.657
38219 6.52
38220 7.231
38221 4.029
38222 7.66
38223 10.894
38226 5.714
38227 8.803
38228 10.757
38230 8.803
38231 5.714
38232 10.757
38239 46.76
38240 36.729
38242 2.357
38250 8.186
38251 8.857
38252 9.083
38257 6.757
38258 0.771
38288 6.16
38290 6.02
38322 11.194
38322 11.194
38353 4.4
38354 11.494
38356 6.291
38358 7.98
38458 8.923
38458 8.923
38459 8.923
38459 8.923
38460 4.6
38464 4.6
38530 13.274
38536 11.026
38540 14.583
38611 8.72
38613 9.023
38614 10.571
38662 2
38664 2.2
38671 1.886
38672 1.714
38674 3.143
39140 8.049
39141 7.143
39146 6.857
39170 10.84
39176 17.517
39181 13.863
39190 20.943
39192 21.863
39193 17.803
39199 20.06
39199 20.06
39200 70.56
39216 23.283
39225 8
39229 13.72
39231 17.717
39232 17.429
39241 20.2
39242 28.614
39244 21.197
39250 16.894
39252 21.489
39254 20.311
39256 82.977
39257 13.2
39270 10.529
39271 70.831
39272 16.017
39273 23.183
39277 9.194
39282 19.137
39284 22.651
39285 20.829
39291 7.04
39295 25.789
39297 5.103
39309 26.751
39310 22.76
39311 18.189
39311 18.189
39320 2.2
39322 2.2
39344 5.429
39389 28.271
39390 15.891
39392 16.491
39394 75.871
39396 42.28
39401 7.7
39404 9.614
39407 16.983
39408 23.826
39409 23.837
39415 21.049
39420 8
39421 11.546
39424 77.511
39425 20.154
39426 9.966
39427 4.557
39472 26.109
39473 9.32
39475 11.791
39478 2.986
39483 11.174
39484 4.557
39488 5.04
39491 25.337
39492 26.194
39493 37.86
39494 26.091
39495 30.331
39536 14.143
39648 9.429
39649 9.189
39652 3.614
39653 9.783
39655 5.429
39676 6.86
39712 15.477
39714 10.871
39719 20.057
39720 50.549
39721 24.777
39730 7.914
39731 18.509
39732 40.791
39733 23.794
39735 24.777
39766 17.637
39766 17.637
40060 32.009
40062 35.52
40064 21.4
40065 14.757
40069 8
40071 18.523
40074 13.506
40075 8.486
40080 19.5
40108 20.154
40192 19.957
40192 19.957
40194 26.137
40197 24.463
40198 17.083
40233 8.014
40234 42.409
40236 26.577
40245 10.483
40246 35.977
40247 25.077
40250 6.757
40251 23.131
40253 19.354
40254 19.954
40255 20.286
40256 23.714
40258 15.54
40269 21.42
40271 17.491
40273 27.549
40273 27.549
40281 10.431
40284 11.051
40286 35.546
40287 27.131
40289 26.52
40290 20.194
40300 88.92
40301 37.423
40303 26.577
40325 27.657
40326 20.351
40335 9.909
40336 79.434
40338 20.454
40339 32.226
40345 4.571
40348 87.44
40350 19.611
40350 19.611
40351 26.42
40353 11.94
40368 10.431
40369 10.174
40370 8
40373 14.929
40374 24.22
40375 18.626
40376 35.846
40378 20.654
40380 35.634
40381 22.503
40382 14.929
40386 13.794
40388 19.029
40396 90.06
40398 33.557
40399 27.323
40403 11.863
40405 21.16
40407 8.857
40408 81.497
40412 15.2
40415 34.546
40416 29.434
40417 42.843
40418 31.146
40419 29.649
40427 25.477
40433 18.363
40455 86.026
40474 15.9
40486 18.874
40489 113.349
40491 8.857
40526 50.829
40532 1.843
40555 29.049
40558 25.237
40560 59.971
40561 28.746
40562 30.957
40585 21.077
40586 9.506
40602 28.16
40678 5.971
40679 6
40680 19.203
40681 17.96
40682 13.2
40684 13.2
40685 13.72
40696 29.789
40697 14.877
40698 26.446
40698 26.446
40699 15.217
40699 15.217
40717 11.86
40718 7.714
40719 18.974
40720 18.469
40721 11.054
40722 9.143
40723 18.406
40724 18.029
40740 21.2
40741 19.286
40750 30.306
40751 22.789
40758 14.26
40865 8.82
41182 5.714
41184 10
41186 4
41516 17.143
41523 10.926
41525 19.369
41528 8.251
41553 25.606
41554 25.2
41555 14.243
41587 8.057
41588 9.429
41590 9.8
41591 8.706
41592 4.086
41607 8.071
41608 11.326
41609 12.717
41610 22.134
41821 66.137
41825 7.429
41826 14.143
41877 12.82
41878 10.66
41879 12.82
41880 14.62
41884 14.62
41890 12.48
41892 12.14
41896 18.477
41897 21.22
41900 33.637
41901 18.477
41902 21.22
41907 16.003
41908 18.111
41911 27.186
41943 19.777
41944 23.594
41945 26.874
41949 19.777
41950 23.594
41951 26.734
41956 19.777
41957 23.594
41958 26.874
41962 15.931
41963 18.477
41964 21.22
41968 14.517
41969 17.063
41970 19.649
41984 24.591
41985 18.109
41986 19.197
41987 11.614
42020 5.343
42021 9.714
42022 16.003
42023 15.226
42024 20.374
42025 10.66
42026 11.26
42027 5.971
42028 10.857
42029 18.111
42030 22.997
42031 17.243
42032 12.14
42033 12.783
42055 16.003
42056 15.226
42057 20.374
42058 11.26
42059 10.66
42060 5.343
42061 9.714
42062 18.111
42063 17.243
42064 22.997
42065 12.783
42066 12.14
42067 5.971
42068 10.857
42083 27.186
42093 13.54
42095 11.96
42096 12.4
42100 21.5
42101 43.029
42102 33.046
42103 15.74
42110 16.003
42111 31.951
42112 5.343
42113 24.309
42114 22.997
42115 10.857
42128 14.929
42129 27.143
42130 12.757
42132 15.54
42216 3.457
42224 3.457
42241 4.086
42242 4.557
42284 4.086
42285 4.557
42338 2.986
42339 9.069
42343 56.9
42345 65.349
42346 73.797
42356 65.071
42359 74.606
42362 84.297
42382 54.7
42383 62.82
42384 70.94
42395 12
42413 4.2
42435 3.614
42448 7.634
42501 8.906
42502 10.48
42511 5.12
42512 5.92
42513 6.68
42517 5.12
42518 5.92
42519 7.18
42523 13.657
42523 13.657
42524 16.003
42524 16.003
42525 18.111
42525 18.111
42529 9.1
42529 9.1
42530 10.66
42530 10.66
42531 12.14
42531 12.14
42535 9.1
42535 9.1
42536 10.66
42536 10.66
42537 12.14
42537 12.14
42553 29.651
42644 16.76
42647 16.903
42758 13.729
42760 9.68
42844 30.754
42988 14
42990 13.357
43072 13.223
43073 13.249
43074 9.634
43075 12.689
43160 12.74
43164 15.737
43171 14.614
43177 15.457
43178 8.286
43180 9.7
43181 14.031
43185 4.34
43186 7.88
43189 17.374
43191 4.243
43192 11.926
43193 11.02
43200 21.031
43210 17.78
43246 5.74
43251 15.729
43252 10.2
43253 20.026
43277 2.829
43278 8.094
43283 8.62
43285 16.7
43287 19.074
43305 16.237
43309 7.52
43313 15.791
43358 12.5
43375 22.817
43382 8.2
43401 33.934
43404 9.8
43406 8.286
43408 15.874
43482 5.186
43498 7.091
43515 1.12
43515 1.12
43566 5.103
43573 9.803
43654 1.44
43654 1.44
43656 2.371
43656 2.371
43657 1.477
43657 1.477
43660 3.094
43660 3.094
43661 4
43661 4
43663 4.094
43663 4.094
43664 2.58
43664 2.58
43666 3.5
43666 3.5
43667 4.243
43667 4.243
43871 47.811
43969 17.143
43970 17.143
43971 23.169
43972 23.169
43973 17.143
43974 12.689
43975 23.169
43992 15.303
43993 6.443
43995 26.446
44002 30.423
44005 24.543
44008 18.126
44013 8.486
44014 8.057
44015 0.943
44016 11.986
44017 15.143
44018 10.72
44019 31.769
44020 13.583
44021 16.64
44022 8.7
44022 8.7
44023 12.929
44023 12.929
44025 4.566
44027 9.569
44028 4.243
44033 2.829
44034 8.629
44039 2.829
44061 13.54
44062 25.697
44073 9.534
44074 11.157
44104 12.1
44108 6.154
44116 12.4
44166 4.029
44167 14.443
44173 66.643
44180 28.614
44187 9.429
44188 7.143
44193 13.186
44196 24.929
44200 10.3
44202 22.629
44210 13.689
44210 13.689
44214 3.983
44215 2.346
44219 4.2
44242 18.526
44250 13.514
44255 9
44256 15.32
44283 17.954
44302 23.166
44308 3.894
44309 14.74
44310 13.44
44311 8.857
44322 14.974
44324 7.857
44334 17.56
44336 9.429
44338 11.671
44343 14.02
44346 17.511
44350 15.534
44355 21.557
44358 14.717
44365 13.937
44366 11.029
44370 14.351
44374 9.746
44375 4.086
44376 14.434
44378 16.351
44382 15.88
44386 11.351
44387 13.529
44392 13.086
44394 3.62
44395 7.863
44396 12.5
44400 7.143
44403 10.386
44404 16.84
44408 25.223
44415 63.563
44416 73.557
44417 72.891
44418 84.249
44419 82.354
44420 95.226
44429 10.023
44431 6.763
44579 7.857
44593 17.511
44597 7.857
44657 17.497
44658 25.68
44659 5.5
44661 28.963
44662 19.946
44664 6.443
44746 6.611
44748 67.46
44899 23.106
44900 17.654
44909 22.589
44910 29.251
44934 12.131
44935 5.343
]]

Engravings["Wowhead score (Fire):"] = setmetatable({}, {
	__index = function(t,i)
		local v = WOWHEAD_SCORE:match("\n"..i.." ([^\n]+)\n")
		if v then t[i] = v; return v
		else t[i] = false; return end
	end
})