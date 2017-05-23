open Group_commutative_list_sharing
;;

open Gentest
;;

testing ("Group_commutative_list_sharing (automatic) - seed: 561599558")
;;

testi
  (0)
  (let x0 = add [ (opp (gen (12))); (gen (18)); (gen (65)) ] in
   let x1 =
     add
       [ (opp (gen (23))); (add [ (gen (56)); (gen (23)); (gen (56)) ]);
         (add [ (gen (23)); (gen (9)); (gen (66)) ]) ] in
   let x2 = gen (34) in add [ (add [ x0; x1 ]); x2 ] = add [ x0; x1; x2 ])
;;

testi
  (1)
  (let x0 = gen (34) in
   let x1 = gen (34) in
   let x2 =
     add
       [ (opp (gen (23))); (add [ (gen (56)); (gen (23)); (gen (56)) ]);
         (add [ (gen (23)); (gen (9)); (gen (66)) ]) ] in
   add [ (add [ x0; x1 ]); x2 ] = add [ x0; x1; x2 ])
;;

testi
  (2)
  (let x0 =
     add
       [ (opp (gen (36))); (gen (30));
         (add [ (gen (23)); (gen (2)); (gen (48)) ]) ] in
   let x1 =
     add
       [ (add [ (gen (27)); (gen (57)); (gen (41)) ]); (gen (12));
         (add [ (gen (73)); (gen (2)); (gen (66)) ]) ] in
   let x2 = gen (36) in add [ (add [ x0; x1 ]); x2 ] = add [ x0; x1; x2 ])
;;

testi
  (3)
  (let x0 =
     add
       [ (add [ (gen (22)); (gen (37)); (gen (74)) ]); (opp zero);
         (opp (gen (63))) ] in
   let x1 = opp (opp (gen (46))) in
   let x2 = gen (30) in add [ (add [ x0; x1 ]); x2 ] = add [ x0; x1; x2 ])
;;

testi
  (4)
  (let x0 = gen (34) in
   let x1 = gen (38) in
   let x2 = add [ (opp (gen (12))); (gen (18)); (gen (65)) ] in
   add [ (add [ x0; x1 ]); x2 ] = add [ x0; x1; x2 ])
;;

testi
  (5)
  (let x0 = gen (7) in
   let x1 = gen (58) in
   let x2 =
     add
       [ (opp (gen (48))); (gen (45));
         (add [ (gen (25)); (gen (11)); (gen (65)) ]) ] in
   let x3 = opp (gen (77)) in
   let x4 = opp (gen (77)) in
   add [ x0; (add [ x1; x2 ]); (add [ x3; x4 ]) ] =
   add [ x0; x1; x2; x3; x4 ])
;;

testi
  (6)
  (let x0 = opp (add [ zero; (gen (17)); (gen (7)) ]) in
   let x1 = gen (78) in
   let x2 = gen (117) in
   let x3 = gen (45) in
   let x4 =
     add
       [ (add [ (gen (118)); (gen (5)); (gen (104)) ]); (gen (105));
         (gen (39)) ] in
   add [ x0; (add [ x1; x2 ]); (add [ x3; x4 ]) ] =
   add [ x0; x1; x2; x3; x4 ])
;;

testi
  (7)
  (let x0 = gen (7) in
   let x1 = gen (7) in
   let x2 = gen (78) in
   let x3 = gen (58) in
   let x4 = gen (78) in
   add [ x0; (add [ x1; x2 ]); (add [ x3; x4 ]) ] =
   add [ x0; x1; x2; x3; x4 ])
;;

testi
  (8)
  (let x0 = opp (opp (gen (15))) in
   let x1 = gen (117) in
   let x2 = opp (gen (23)) in
   let x3 = gen (85) in
   let x4 = gen (72) in
   add [ x0; (add [ x1; x2 ]); (add [ x3; x4 ]) ] =
   add [ x0; x1; x2; x3; x4 ])
;;

testi
  (9)
  (let x0 = opp (add [ (gen (77)); (gen (2)); (gen (58)) ]) in
   let x1 = gen (83) in
   let x2 =
     add
       [ (add [ (gen (118)); (gen (5)); (gen (104)) ]); (gen (105));
         (gen (39)) ] in
   let x3 = gen (78) in
   let x4 = opp (add [ (gen (77)); (gen (2)); (gen (58)) ]) in
   add [ x0; (add [ x1; x2 ]); (add [ x3; x4 ]) ] =
   add [ x0; x1; x2; x3; x4 ])
;;

testi
  (10)
  (let x0 = gen (83) in
   let x1 = opp (opp (gen (72))) in
   let x2 = opp (opp (gen (72))) in
   let x3 = gen (83) in
   add [ (add [ x0; x1; x2 ]); x3 ] = add [ x0; x1; x2; x3 ])
;;

testi
  (11)
  (let x0 = opp (opp (gen (22))) in
   let x1 = gen (83) in
   let x2 = opp (gen (93)) in
   let x3 = opp (opp (gen (72))) in
   add [ (add [ x0; x1; x2 ]); x3 ] = add [ x0; x1; x2; x3 ])
;;

testi
  (12)
  (let x0 = opp (add [ (gen (94)); (gen (48)); (gen (96)) ]) in
   let x1 =
     add
       [ (gen (97)); (add [ (gen (13)); (gen (58)); (gen (71)) ]);
         (opp (gen (67))) ] in
   let x2 = opp (add [ (gen (94)); (gen (48)); (gen (96)) ]) in
   let x3 = gen (83) in
   add [ (add [ x0; x1; x2 ]); x3 ] = add [ x0; x1; x2; x3 ])
;;

testi
  (13)
  (let x0 =
     add
       [ (add [ (gen (13)); (gen (78)); (gen (24)) ]);
         (add [ (gen (82)); (gen (16)); (gen (60)) ]); (gen (96)) ] in
   let x1 = opp (opp (gen (22))) in
   let x2 = gen (81) in
   let x3 = opp (opp (gen (22))) in
   add [ (add [ x0; x1; x2 ]); x3 ] = add [ x0; x1; x2; x3 ])
;;

testi
  (14)
  (let x0 =
     add
       [ (add [ (gen (41)); (gen (84)); (gen (84)) ]); (gen (60));
         (add [ (gen (69)); (gen (6)); zero ]) ] in
   let x1 = opp (gen (68)) in
   let x2 = opp (gen (68)) in
   let x3 = gen (8) in
   add [ (add [ x0; x1; x2 ]); x3 ] = add [ x0; x1; x2; x3 ])
;;

testi
  (15)
  (let x0 = opp (opp (gen (46))) in
   let x1 = add [ (gen (90)); (opp zero); (opp (gen (53))) ] in
   let x2 =
     add
       [ (gen (31)); (opp (gen (82)));
         (add [ (gen (16)); (gen (49)); (gen (25)) ]) ] in
   let x3 =
     add
       [ (add [ (gen (7)); (gen (68)); (gen (84)) ]); (opp (gen (44)));
         (opp (gen (24))) ] in
   add [ x0; x1; x2; x3 ] = add [ x1; x0; x3; x2 ])
;;

testi
  (16)
  (let x0 = opp (add [ (gen (17)); (gen (16)); (gen (82)) ]) in
   let x1 = gen (55) in
   let x2 = gen (55) in
   let x3 =
     add
       [ (opp (gen (35))); (gen (86));
         (add [ (gen (22)); (gen (18)); (gen (62)) ]) ] in
   add [ x0; x1; x2; x3 ] = add [ x1; x0; x3; x2 ])
;;

testi
  (17)
  (let x0 = add [ (gen (90)); (opp zero); (opp (gen (53))) ] in
   let x1 = opp (gen (20)) in
   let x2 = opp (opp (gen (46))) in
   let x3 = opp (opp (gen (46))) in
   add [ x0; x1; x2; x3 ] = add [ x1; x0; x3; x2 ])
;;

testi
  (18)
  (let x0 = opp (add [ zero; (gen (81)); (gen (59)) ]) in
   let x1 = opp (add [ (gen (17)); (gen (16)); (gen (82)) ]) in
   let x2 = opp (opp (gen (8))) in
   let x3 = gen (76) in add [ x0; x1; x2; x3 ] = add [ x1; x0; x3; x2 ])
;;

testi
  (19)
  (let x0 = gen (74) in
   let x1 =
     add
       [ (add [ (gen (63)); (gen (32)); (gen (48)) ]);
         (add [ (gen (96)); (gen (87)); (gen (88)) ]); (opp (gen (77))) ] in
   let x2 = gen (74) in
   let x3 =
     add
       [ (opp (gen (35))); (gen (86));
         (add [ (gen (22)); (gen (18)); (gen (62)) ]) ] in
   add [ x0; x1; x2; x3 ] = add [ x1; x0; x3; x2 ])
;;

testi
  (20)
  (let x0 = add [ (gen (20)); (gen (20)); (gen (76)) ] in
   let x1 = gen (11) in
   let x2 = opp (add [ (gen (73)); (gen (8)); (gen (63)) ]) in
   let x3 = opp (add [ (gen (65)); (gen (26)); (gen (17)) ]) in
   add [ x0; x1; x2; x3 ] = add [ x3; x1; x2; x0 ])
;;

testi
  (21)
  (let x0 =
     add
       [ (add [ (gen (15)); (gen (48)); (gen (40)) ]); (opp (gen (53)));
         (opp (gen (49))) ] in
   let x1 =
     add
       [ (add [ (gen (85)); (gen (48)); (gen (29)) ]);
         (add [ (gen (78)); (gen (76)); (gen (58)) ]); (opp (gen (53))) ] in
   let x2 = gen (89) in
   let x3 = add [ (gen (20)); (gen (94)); (gen (4)) ] in
   add [ x0; x1; x2; x3 ] = add [ x3; x1; x2; x0 ])
;;

testi
  (22)
  (let x0 = gen (34) in
   let x1 =
     add
       [ (add [ (gen (85)); (gen (48)); (gen (29)) ]);
         (add [ (gen (78)); (gen (76)); (gen (58)) ]); (opp (gen (53))) ] in
   let x2 = gen (85) in
   let x3 = opp (add [ (gen (73)); (gen (10)); (gen (45)) ]) in
   add [ x0; x1; x2; x3 ] = add [ x3; x1; x2; x0 ])
;;

testi
  (23)
  (let x0 = opp (gen (64)) in
   let x1 = opp (gen (64)) in
   let x2 = gen (11) in
   let x3 =
     add
       [ (add [ (gen (15)); (gen (48)); (gen (40)) ]); (opp (gen (53)));
         (opp (gen (49))) ] in
   add [ x0; x1; x2; x3 ] = add [ x3; x1; x2; x0 ])
;;

testi
  (24)
  (let x0 = opp (gen (64)) in
   let x1 = opp (gen (92)) in
   let x2 = opp (gen (92)) in
   let x3 =
     add
       [ (gen (44)); (add [ (gen (78)); (gen (76)); (gen (58)) ]);
         (add [ (gen (25)); (gen (7)); (gen (21)) ]) ] in
   add [ x0; x1; x2; x3 ] = add [ x3; x1; x2; x0 ])
;;

testi
  (25)
  (let x0 = opp (add [ (gen (84)); (gen (60)); (gen (45)) ]) in
   let x1 = add [ (opp (gen (18))); (gen (13)); (gen (16)) ] in
   let x2 = add [ (gen (34)); (opp (gen (18))); (opp (gen (95))) ] in
   let x3 = gen (7) in add [ x0; x1; x2; x3 ] = add [ x3; x2; x1; x0 ])
;;

testi
  (26)
  (let x0 = gen (44) in
   let x1 = gen (83) in
   let x2 = add [ (opp (gen (18))); (gen (13)); (gen (16)) ] in
   let x3 = zero in add [ x0; x1; x2; x3 ] = add [ x3; x2; x1; x0 ])
;;

testi
  (27)
  (let x0 = gen (24) in
   let x1 = add [ (opp (gen (18))); (gen (25)); (gen (38)) ] in
   let x2 = opp (gen (57)) in
   let x3 = gen (44) in add [ x0; x1; x2; x3 ] = add [ x3; x2; x1; x0 ])
;;

testi
  (28)
  (let x0 = gen (72) in
   let x1 =
     add
       [ (opp (gen (18))); (add [ (gen (18)); (gen (50)); (gen (35)) ]);
         (opp (gen (87))) ] in
   let x2 = gen (44) in
   let x3 = zero in add [ x0; x1; x2; x3 ] = add [ x3; x2; x1; x0 ])
;;

testi
  (29)
  (let x0 = opp (add [ (gen (84)); (gen (60)); (gen (45)) ]) in
   let x1 = opp (opp (gen (21))) in
   let x2 = opp (add [ (gen (6)); (gen (2)); (gen (1)) ]) in
   let x3 = opp (gen (31)) in add [ x0; x1; x2; x3 ] = add [ x3; x2; x1; x0 ])
;;

testi
  (30)
  (let x0 = opp (add [ (gen (63)); (gen (38)); (gen (52)) ]) in
   let x1 = gen (38) in
   let x2 =
     add
       [ (opp (gen (55))); (opp (gen (9)));
         (add [ zero; (gen (1)); (gen (35)) ]) ] in
   let x3 = opp (add [ (gen (63)); (gen (77)); (gen (55)) ]) in
   add [ x0; x1; x2; x3 ] = add [ x2; x1; x0; x3 ])
;;

testi
  (31)
  (let x0 = opp (gen (78)) in
   let x1 = opp (add [ (gen (63)); (gen (77)); (gen (55)) ]) in
   let x2 = opp (add [ (gen (16)); (gen (77)); (gen (58)) ]) in
   let x3 =
     add
       [ (opp (gen (55))); (opp (gen (9)));
         (add [ zero; (gen (1)); (gen (35)) ]) ] in
   add [ x0; x1; x2; x3 ] = add [ x2; x1; x0; x3 ])
;;

testi
  (32)
  (let x0 =
     add
       [ (add [ (gen (38)); (gen (45)); (gen (98)) ]);
         (add [ (gen (92)); (gen (73)); (gen (49)) ]); (gen (59)) ] in
   let x1 = gen (79) in
   let x2 =
     add
       [ (add [ (gen (56)); (gen (98)); (gen (9)) ]); (opp (gen (9)));
         (gen (59)) ] in
   let x3 = opp (opp (gen (44))) in
   add [ x0; x1; x2; x3 ] = add [ x2; x1; x0; x3 ])
;;

testi
  (33)
  (let x0 = gen (14) in
   let x1 = gen (44) in
   let x2 =
     add
       [ (add [ zero; (gen (91)); (gen (75)) ]);
         (add [ (gen (75)); (gen (78)); (gen (22)) ]); (opp (gen (35))) ] in
   let x3 = opp (add [ (gen (16)); (gen (53)); (gen (52)) ]) in
   add [ x0; x1; x2; x3 ] = add [ x2; x1; x0; x3 ])
;;

testi
  (34)
  (let x0 = gen (76) in
   let x1 = opp (gen (75)) in
   let x2 =
     add
       [ (opp (gen (88))); (opp (gen (75)));
         (add [ (gen (43)); (gen (13)); (gen (35)) ]) ] in
   let x3 = gen (51) in add [ x0; x1; x2; x3 ] = add [ x2; x1; x0; x3 ])
;;

testi
  (35)
  (let x0 = add [ (opp (gen (0))); (gen (21)); (opp (gen (26))) ] in
   let x1 = opp (add [ (gen (37)); (gen (15)); zero ]) in
   add [ x0; zero; x1 ] = add [ x0; x1 ])
;;

testi
  (36)
  (let x0 = opp (add [ (gen (37)); (gen (15)); zero ]) in
   let x1 = gen (11) in add [ x0; zero; x1 ] = add [ x0; x1 ])
;;

testi
  (37)
  (let x0 = opp (add [ (gen (37)); (gen (15)); zero ]) in
   let x1 = add [ (opp (gen (0))); (gen (21)); (opp (gen (26))) ] in
   add [ x0; zero; x1 ] = add [ x0; x1 ])
;;

testi
  (38)
  (let x0 = opp (gen (38)) in
   let x1 = gen (38) in add [ x0; zero; x1 ] = add [ x0; x1 ])
;;

testi
  (39)
  (let x0 =
     add
       [ (gen (23)); (add [ zero; (gen (21)); (gen (40)) ]); (opp (gen (11))) ] in
   let x1 = gen (9) in add [ x0; zero; x1 ] = add [ x0; x1 ])
;;

testi (40) (let x0 = gen (16) in add [ zero; x0 ] = x0)
;;

testi (41) (let x0 = gen (14) in add [ zero; x0 ] = x0)
;;

testi (42) (let x0 = opp (gen (1)) in add [ zero; x0 ] = x0)
;;

testi (43) (let x0 = gen (14) in add [ zero; x0 ] = x0)
;;

testi (44) (let x0 = gen (16) in add [ zero; x0 ] = x0)
;;

testi (45) (let x0 = gen (13) in add [ x0; zero; zero ] = add [ x0; zero ])
;;

testi
  (46)
  (let x0 = opp (opp zero) in add [ x0; zero; zero ] = add [ x0; zero ])
;;

testi
  (47)
  (let x0 = opp (add [ (gen (9)); (gen (10)); zero ]) in
   add [ x0; zero; zero ] = add [ x0; zero ])
;;

testi (48) (let x0 = zero in add [ x0; zero; zero ] = add [ x0; zero ])
;;

testi
  (49)
  (let x0 =
     add
       [ (opp (gen (21))); (gen (10));
         (add [ (gen (3)); (gen (24)); (gen (21)) ]) ] in
   add [ x0; zero; zero ] = add [ x0; zero ])
;;

testi
  (50)
  (let x0 = opp (add [ (gen (28)); (gen (8)); (gen (1)) ]) in
   let x1 = opp (add [ (gen (28)); (gen (8)); (gen (1)) ]) in
   add [ x0; zero; zero; x1 ] = add [ x0; x1 ])
;;

testi
  (51)
  (let x0 = gen (29) in
   let x1 = zero in add [ x0; zero; zero; x1 ] = add [ x0; x1 ])
;;

testi
  (52)
  (let x0 = gen (12) in
   let x1 =
     add
       [ (gen (23)); (add [ (gen (22)); (gen (38)); zero ]);
         (add [ (gen (3)); (gen (30)); (gen (15)) ]) ] in
   add [ x0; zero; zero; x1 ] = add [ x0; x1 ])
;;

testi
  (53)
  (let x0 = gen (29) in
   let x1 = add [ (gen (29)); (gen (28)); (opp (gen (44))) ] in
   add [ x0; zero; zero; x1 ] = add [ x0; x1 ])
;;

testi
  (54)
  (let x0 = add [ (gen (29)); (gen (28)); (opp (gen (44))) ] in
   let x1 = add [ (opp (gen (37))); (opp (gen (36))); (opp (gen (40))) ] in
   add [ x0; zero; zero; x1 ] = add [ x0; x1 ])
;;

testi
  (55)
  (let x0 = gen (13) in
   let x1 = gen (31) in add [ x0; zero; x1 ] = add [ x0; x1 ])
;;

testi
  (56)
  (let x0 =
     add
       [ (opp (gen (26))); (gen (23)); (add [ (gen (49)); (gen (12)); zero ]) ] in
   let x1 = gen (13) in add [ x0; zero; x1 ] = add [ x0; x1 ])
;;

testi
  (57)
  (let x0 = gen (13) in
   let x1 =
     add
       [ (add [ (gen (14)); (gen (3)); (gen (25)) ]); (gen (9)); (gen (8)) ] in
   add [ x0; zero; x1 ] = add [ x0; x1 ])
;;

testi
  (58)
  (let x0 = zero in
   let x1 = gen (13) in add [ x0; zero; x1 ] = add [ x0; x1 ])
;;

testi
  (59)
  (let x0 = add [ (gen (4)); (gen (9)); (gen (25)) ] in
   let x1 = gen (19) in add [ x0; zero; x1 ] = add [ x0; x1 ])
;;

testi
  (60)
  (let x0 =
     add
       [ (add [ zero; (gen (3)); (gen (7)) ]);
         (add [ (gen (10)); (gen (8)); (gen (4)) ]); (gen (2)) ] in
   add [ x0; zero ] = x0)
;;

testi
  (61)
  (let x0 =
     add [ (add [ zero; (gen (3)); (gen (7)) ]); (gen (3)); (gen (23)) ] in
   add [ x0; zero ] = x0)
;;

testi (62) (let x0 = zero in add [ x0; zero ] = x0)
;;

testi (63) (let x0 = opp zero in add [ x0; zero ] = x0)
;;

testi (64) (let x0 = opp zero in add [ x0; zero ] = x0)
;;

testi
  (65)
  (let x1 = opp (add [ (gen (8)); (gen (16)); (gen (9)) ]) in
   add [ zero; zero; x1 ] = add [ zero; x1 ])
;;

testi
  (66)
  (let x1 = opp (add [ (gen (8)); (gen (16)); (gen (9)) ]) in
   add [ zero; zero; x1 ] = add [ zero; x1 ])
;;

testi
  (67)
  (let x1 = opp (add [ (gen (8)); (gen (16)); (gen (9)) ]) in
   add [ zero; zero; x1 ] = add [ zero; x1 ])
;;

testi
  (68)
  (let x1 = opp (add [ (gen (8)); (gen (16)); (gen (9)) ]) in
   add [ zero; zero; x1 ] = add [ zero; x1 ])
;;

testi (69) (let x1 = gen (0) in add [ zero; zero; x1 ] = add [ zero; x1 ])
;;

testi
  (70)
  (let x0 = gen (30) in
   let x1 = opp (gen (44)) in add [ x0; zero; zero; x1 ] = add [ x0; x1 ])
;;

testi
  (71)
  (let x0 = gen (30) in
   let x1 = opp (add [ (gen (6)); (gen (12)); (gen (9)) ]) in
   add [ x0; zero; zero; x1 ] = add [ x0; x1 ])
;;

testi
  (72)
  (let x0 = gen (40) in
   let x1 = opp (opp (gen (8))) in
   add [ x0; zero; zero; x1 ] = add [ x0; x1 ])
;;

testi
  (73)
  (let x0 = gen (33) in
   let x1 = add [ (opp (gen (33))); (gen (1)); (opp (gen (0))) ] in
   add [ x0; zero; zero; x1 ] = add [ x0; x1 ])
;;

testi
  (74)
  (let x0 = gen (49) in
   let x1 =
     add
       [ (gen (2)); (add [ (gen (24)); (gen (8)); (gen (12)) ]);
         (opp (gen (0))) ] in
   add [ x0; zero; zero; x1 ] = add [ x0; x1 ])
;;

