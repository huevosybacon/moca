open Group_commutative_list
;;

open Gentest
;;

testing ("Group_commutative_list (automatic) - seed: 433804124")
;;

testi
  (0)
  (let x0 =
     add
       [ (gen (74)); (opp (gen (39)));
         (add [ (gen (51)); (gen (60)); (gen (0)) ]) ] in
   let x1 = opp (opp (gen (41))) in
   let x2 = opp (gen (11)) in
   add [ (add [ x0; x1 ]); x2 ] = add [ x0; x1; x2 ])
;;

testi
  (1)
  (let x0 =
     add
       [ (gen (74)); (opp (gen (39)));
         (add [ (gen (51)); (gen (60)); (gen (0)) ]) ] in
   let x1 =
     add
       [ (add [ zero; (gen (25)); (gen (46)) ]);
         (add [ (gen (64)); (gen (44)); (gen (3)) ]);
         (add [ (gen (61)); (gen (38)); zero ]) ] in
   let x2 = opp (gen (10)) in
   add [ (add [ x0; x1 ]); x2 ] = add [ x0; x1; x2 ])
;;

testi
  (2)
  (let x0 = gen (10) in
   let x1 =
     add
       [ (gen (58)); (opp (gen (39)));
         (add [ (gen (61)); (gen (60)); (gen (0)) ]) ] in
   let x2 = gen (49) in add [ (add [ x0; x1 ]); x2 ] = add [ x0; x1; x2 ])
;;

testi
  (3)
  (let x0 = opp (opp (gen (41))) in
   let x1 = gen (4) in
   let x2 =
     add
       [ (add [ zero; (gen (25)); (gen (46)) ]); (opp (gen (43)));
         (opp (gen (63))) ] in
   add [ (add [ x0; x1 ]); x2 ] = add [ x0; x1; x2 ])
;;

testi
  (4)
  (let x0 = opp (gen (1)) in
   let x1 =
     add
       [ (gen (58)); (opp (gen (47)));
         (add [ (gen (61)); (gen (60)); (gen (0)) ]) ] in
   let x2 = gen (4) in add [ (add [ x0; x1 ]); x2 ] = add [ x0; x1; x2 ])
;;

testi
  (5)
  (let x0 = opp (add [ (gen (29)); (gen (75)); (gen (3)) ]) in
   let x1 = opp (opp (gen (91))) in
   let x2 = opp (add [ (gen (62)); (gen (69)); (gen (74)) ]) in
   let x3 = gen (50) in
   let x4 = add [ (opp (gen (82))); (gen (112)); (opp (gen (107))) ] in
   add [ x0; (add [ x1; x2 ]); (add [ x3; x4 ]) ] =
   add [ x0; x1; x2; x3; x4 ])
;;

testi
  (6)
  (let x0 = add [ (gen (124)); (opp (gen (15))); (opp (gen (7))) ] in
   let x1 = opp (add [ (gen (29)); (gen (75)); (gen (3)) ]) in
   let x2 = opp (opp (gen (91))) in
   let x3 = add [ (opp (gen (82))); (gen (12)); (gen (116)) ] in
   let x4 = opp (gen (75)) in
   add [ x0; (add [ x1; x2 ]); (add [ x3; x4 ]) ] =
   add [ x0; x1; x2; x3; x4 ])
;;

testi
  (7)
  (let x0 = gen (48) in
   let x1 =
     add
       [ (gen (14)); (add [ (gen (5)); (gen (92)); (gen (84)) ]);
         (add [ (gen (85)); (gen (32)); (gen (16)) ]) ] in
   let x2 = gen (40) in
   let x3 = add [ (opp (gen (82))); (gen (112)); (opp (gen (107))) ] in
   let x4 = gen (11) in
   add [ x0; (add [ x1; x2 ]); (add [ x3; x4 ]) ] =
   add [ x0; x1; x2; x3; x4 ])
;;

testi
  (8)
  (let x0 =
     add
       [ (add [ (gen (46)); (gen (42)); (gen (61)) ]);
         (add [ (gen (83)); (gen (70)); (gen (40)) ]); (gen (100)) ] in
   let x1 = gen (41) in
   let x2 = gen (91) in
   let x3 = gen (75) in
   let x4 =
     add
       [ (add [ (gen (25)); (gen (0)); (gen (75)) ]); (gen (97));
         (opp (gen (123))) ] in
   add [ x0; (add [ x1; x2 ]); (add [ x3; x4 ]) ] =
   add [ x0; x1; x2; x3; x4 ])
;;

testi
  (9)
  (let x0 =
     add
       [ (add [ (gen (25)); (gen (0)); (gen (75)) ]); (gen (97));
         (opp (gen (123))) ] in
   let x1 = opp (gen (75)) in
   let x2 = opp (add [ (gen (29)); (gen (75)); (gen (3)) ]) in
   let x3 = opp (add [ (gen (59)); (gen (88)); (gen (115)) ]) in
   let x4 = gen (75) in
   add [ x0; (add [ x1; x2 ]); (add [ x3; x4 ]) ] =
   add [ x0; x1; x2; x3; x4 ])
;;

testi
  (10)
  (let x0 = add [ (gen (65)); (opp (gen (95))); (gen (35)) ] in
   let x1 = opp (opp (gen (88))) in
   let x2 = opp (add [ (gen (95)); (gen (2)); (gen (76)) ]) in
   let x3 = gen (76) in
   add [ (add [ x0; x1; x2 ]); x3 ] = add [ x0; x1; x2; x3 ])
;;

testi
  (11)
  (let x0 = gen (7) in
   let x1 = gen (31) in
   let x2 =
     add
       [ (gen (98)); (gen (20)); (add [ (gen (19)); (gen (10)); (gen (61)) ]) ] in
   let x3 =
     add
       [ (add [ zero; (gen (74)); (gen (95)) ]); (opp (gen (60))); (gen (35)) ] in
   add [ (add [ x0; x1; x2 ]); x3 ] = add [ x0; x1; x2; x3 ])
;;

testi
  (12)
  (let x0 = add [ (opp (gen (41))); (opp (gen (95))); (gen (61)) ] in
   let x1 = opp (gen (96)) in
   let x2 = opp (gen (62)) in
   let x3 = add [ (gen (98)); (opp (gen (86))); (opp (gen (36))) ] in
   add [ (add [ x0; x1; x2 ]); x3 ] = add [ x0; x1; x2; x3 ])
;;

testi
  (13)
  (let x0 = gen (31) in
   let x1 = add [ (gen (98)); (opp (gen (86))); (opp (gen (36))) ] in
   let x2 = add [ (gen (65)); (opp (gen (95))); (gen (35)) ] in
   let x3 = gen (76) in
   add [ (add [ x0; x1; x2 ]); x3 ] = add [ x0; x1; x2; x3 ])
;;

testi
  (14)
  (let x0 = opp (opp (gen (88))) in
   let x1 = opp (opp (gen (88))) in
   let x2 = add [ (gen (65)); (opp (gen (95))); (gen (35)) ] in
   let x3 = gen (54) in
   add [ (add [ x0; x1; x2 ]); x3 ] = add [ x0; x1; x2; x3 ])
;;

testi
  (15)
  (let x0 = gen (53) in
   let x1 = opp (gen (11)) in
   let x2 =
     add
       [ (opp (gen (75))); (add [ (gen (50)); (gen (45)); (gen (21)) ]);
         (opp (gen (32))) ] in
   let x3 = opp (gen (20)) in add [ x0; x1; x2; x3 ] = add [ x1; x0; x3; x2 ])
;;

testi
  (16)
  (let x0 = add [ (opp zero); (opp zero); (gen (44)) ] in
   let x1 =
     add
       [ (add [ (gen (24)); (gen (96)); (gen (86)) ]); (gen (47));
         (add [ (gen (8)); (gen (90)); (gen (5)) ]) ] in
   let x2 = gen (93) in
   let x3 = opp (opp (gen (19))) in
   add [ x0; x1; x2; x3 ] = add [ x1; x0; x3; x2 ])
;;

testi
  (17)
  (let x0 = opp (gen (20)) in
   let x1 = opp (add [ zero; (gen (21)); (gen (81)) ]) in
   let x2 =
     add
       [ (add [ (gen (10)); (gen (86)); (gen (95)) ]); (opp (gen (47)));
         (add [ (gen (73)); (gen (75)); (gen (9)) ]) ] in
   let x3 = zero in add [ x0; x1; x2; x3 ] = add [ x1; x0; x3; x2 ])
;;

testi
  (18)
  (let x0 = opp (opp zero) in
   let x1 =
     add
       [ (add [ (gen (24)); (gen (96)); (gen (86)) ]); (gen (47));
         (add [ (gen (8)); (gen (90)); (gen (5)) ]) ] in
   let x2 = gen (14) in
   let x3 = opp (opp zero) in add [ x0; x1; x2; x3 ] = add [ x1; x0; x3; x2 ])
;;

testi
  (19)
  (let x0 = opp (add [ (gen (16)); (gen (46)); (gen (60)) ]) in
   let x1 =
     add
       [ (opp (gen (75))); (add [ (gen (50)); (gen (45)); (gen (21)) ]);
         (opp (gen (32))) ] in
   let x2 = gen (14) in
   let x3 = add [ (gen (45)); (opp (gen (73))); (opp (gen (35))) ] in
   add [ x0; x1; x2; x3 ] = add [ x1; x0; x3; x2 ])
;;

testi
  (20)
  (let x0 = gen (37) in
   let x1 = opp (opp zero) in
   let x2 = gen (3) in
   let x3 =
     add
       [ (opp zero); (add [ (gen (42)); (gen (5)); (gen (7)) ]);
         (opp (gen (90))) ] in
   add [ x0; x1; x2; x3 ] = add [ x3; x1; x2; x0 ])
;;

testi
  (21)
  (let x0 = gen (37) in
   let x1 = opp (add [ (gen (25)); (gen (39)); (gen (90)) ]) in
   let x2 = gen (75) in
   let x3 = opp (gen (34)) in add [ x0; x1; x2; x3 ] = add [ x3; x1; x2; x0 ])
;;

testi
  (22)
  (let x0 = opp (opp zero) in
   let x1 = opp (add [ (gen (55)); (gen (88)); (gen (90)) ]) in
   let x2 = gen (22) in
   let x3 = add [ (opp (gen (99))); (opp (gen (80))); (opp (gen (90))) ] in
   add [ x0; x1; x2; x3 ] = add [ x3; x1; x2; x0 ])
;;

testi
  (23)
  (let x0 = gen (37) in
   let x1 = opp (gen (34)) in
   let x2 = gen (99) in
   let x3 = gen (44) in add [ x0; x1; x2; x3 ] = add [ x3; x1; x2; x0 ])
;;

testi
  (24)
  (let x0 = opp (add [ (gen (25)); (gen (39)); (gen (90)) ]) in
   let x1 = opp (opp zero) in
   let x2 = gen (22) in
   let x3 = gen (99) in add [ x0; x1; x2; x3 ] = add [ x3; x1; x2; x0 ])
;;

testi
  (25)
  (let x0 = opp (gen (65)) in
   let x1 = gen (38) in
   let x2 = gen (84) in
   let x3 =
     add
       [ (add [ (gen (10)); (gen (88)); (gen (28)) ]); (gen (22));
         (add [ (gen (65)); (gen (69)); zero ]) ] in
   add [ x0; x1; x2; x3 ] = add [ x3; x2; x1; x0 ])
;;

testi
  (26)
  (let x0 = opp (add [ (gen (13)); (gen (96)); (gen (94)) ]) in
   let x1 = opp (gen (65)) in
   let x2 =
     add
       [ (opp (gen (57))); (opp (gen (82)));
         (add [ (gen (43)); (gen (58)); (gen (81)) ]) ] in
   let x3 =
     add
       [ (add [ (gen (83)); (gen (90)); (gen (33)) ]); (gen (41));
         (opp (gen (71))) ] in
   add [ x0; x1; x2; x3 ] = add [ x3; x2; x1; x0 ])
;;

testi
  (27)
  (let x0 =
     add
       [ (add [ (gen (83)); (gen (90)); (gen (33)) ]); (gen (41));
         (opp (gen (71))) ] in
   let x1 =
     add
       [ (opp (gen (57))); (opp (gen (82)));
         (add [ (gen (25)); (gen (86)); (gen (81)) ]) ] in
   let x2 = opp (add [ (gen (88)); (gen (66)); (gen (24)) ]) in
   let x3 =
     add
       [ (gen (13)); (opp (gen (82)));
         (add [ (gen (43)); (gen (91)); (gen (10)) ]) ] in
   add [ x0; x1; x2; x3 ] = add [ x3; x2; x1; x0 ])
;;

testi
  (28)
  (let x0 =
     add
       [ (gen (14)); (add [ (gen (21)); (gen (73)); (gen (3)) ]);
         (add [ (gen (43)); (gen (91)); (gen (10)) ]) ] in
   let x1 =
     add
       [ (add [ (gen (83)); (gen (90)); (gen (33)) ]); (gen (41));
         (opp (gen (71))) ] in
   let x2 =
     add
       [ (gen (14)); (add [ (gen (21)); (gen (73)); (gen (3)) ]);
         (add [ (gen (43)); (gen (91)); (gen (10)) ]) ] in
   let x3 = opp (add [ (gen (88)); (gen (66)); (gen (24)) ]) in
   add [ x0; x1; x2; x3 ] = add [ x3; x2; x1; x0 ])
;;

testi
  (29)
  (let x0 = gen (51) in
   let x1 =
     add
       [ (add [ (gen (10)); (gen (88)); (gen (28)) ]); (gen (22));
         (add [ (gen (65)); (gen (69)); zero ]) ] in
   let x2 = gen (84) in
   let x3 = gen (51) in add [ x0; x1; x2; x3 ] = add [ x3; x2; x1; x0 ])
;;

testi
  (30)
  (let x0 =
     add
       [ (add [ (gen (21)); zero; (gen (51)) ]); (gen (16)); (opp (gen (95))) ] in
   let x1 = zero in
   let x2 = gen (42) in
   let x3 =
     add
       [ (add [ (gen (21)); (gen (57)); (gen (51)) ]); (opp (gen (45)));
         (opp (gen (72))) ] in
   add [ x0; x1; x2; x3 ] = add [ x2; x1; x0; x3 ])
;;

testi
  (31)
  (let x0 = opp (opp (gen (20))) in
   let x1 =
     add
       [ (add [ (gen (21)); (gen (57)); (gen (51)) ]); (opp (gen (45)));
         (opp (gen (72))) ] in
   let x2 = gen (42) in
   let x3 = gen (24) in add [ x0; x1; x2; x3 ] = add [ x2; x1; x0; x3 ])
;;

testi
  (32)
  (let x0 =
     add
       [ (add [ (gen (21)); (gen (57)); (gen (51)) ]); (opp (gen (45)));
         (opp (gen (72))) ] in
   let x1 = gen (24) in
   let x2 =
     add
       [ (opp (gen (21))); (add [ (gen (13)); (gen (95)); (gen (44)) ]);
         (add [ zero; (gen (18)); (gen (70)) ]) ] in
   let x3 = gen (73) in add [ x0; x1; x2; x3 ] = add [ x2; x1; x0; x3 ])
;;

testi
  (33)
  (let x0 = gen (69) in
   let x1 = gen (1) in
   let x2 = gen (69) in
   let x3 =
     add
       [ (add [ (gen (21)); zero; (gen (51)) ]); (gen (16));
         (add [ (gen (60)); zero; (gen (25)) ]) ] in
   add [ x0; x1; x2; x3 ] = add [ x2; x1; x0; x3 ])
;;

testi
  (34)
  (let x0 = opp (add [ (gen (74)); (gen (25)); zero ]) in
   let x1 =
     add
       [ (opp (gen (21))); (add [ (gen (13)); (gen (95)); (gen (44)) ]);
         (add [ zero; (gen (18)); (gen (70)) ]) ] in
   let x2 =
     add
       [ (add [ (gen (21)); zero; (gen (51)) ]); (gen (16)); (opp (gen (95))) ] in
   let x3 =
     add
       [ (add [ (gen (21)); zero; (gen (51)) ]); (gen (16)); (opp (gen (95))) ] in
   add [ x0; x1; x2; x3 ] = add [ x2; x1; x0; x3 ])
;;

testi
  (35)
  (let x0 = add [ (opp (gen (18))); (opp (gen (19))); (opp (gen (45))) ] in
   let x1 = gen (1) in add [ x0; zero; x1 ] = add [ x0; x1 ])
;;

testi
  (36)
  (let x0 =
     add
       [ (gen (10)); (add [ (gen (0)); (gen (40)); (gen (1)) ]);
         (opp (gen (45))) ] in
   let x1 = gen (1) in add [ x0; zero; x1 ] = add [ x0; x1 ])
;;

testi
  (37)
  (let x0 =
     add
       [ (gen (10)); (add [ (gen (0)); (gen (40)); (gen (1)) ]);
         (opp (gen (45))) ] in
   let x1 = gen (8) in add [ x0; zero; x1 ] = add [ x0; x1 ])
;;

testi
  (38)
  (let x0 =
     add
       [ (gen (10)); (add [ (gen (0)); (gen (40)); (gen (1)) ]);
         (opp (gen (45))) ] in
   let x1 = gen (1) in add [ x0; zero; x1 ] = add [ x0; x1 ])
;;

testi
  (39)
  (let x0 =
     add
       [ (gen (10)); (add [ (gen (0)); (gen (40)); (gen (1)) ]);
         (opp (gen (45))) ] in
   let x1 = opp (opp (gen (41))) in add [ x0; zero; x1 ] = add [ x0; x1 ])
;;

testi (40) (let x0 = opp (opp (gen (22))) in add [ zero; x0 ] = x0)
;;

testi (41) (let x0 = opp (gen (1)) in add [ zero; x0 ] = x0)
;;

testi
  (42)
  (let x0 =
     add [ (gen (12)); (add [ zero; zero; (gen (16)) ]); (opp (gen (14))) ] in
   add [ zero; x0 ] = x0)
;;

testi (43) (let x0 = gen (18) in add [ zero; x0 ] = x0)
;;

testi (44) (let x0 = opp (opp (gen (22))) in add [ zero; x0 ] = x0)
;;

testi (45) (let x0 = gen (4) in add [ x0; zero; zero ] = add [ x0; zero ])
;;

testi
  (46)
  (let x0 = opp (gen (7)) in add [ x0; zero; zero ] = add [ x0; zero ])
;;

testi
  (47)
  (let x0 = add [ zero; (add [ (gen (21)); zero; (gen (0)) ]); (gen (7)) ] in
   add [ x0; zero; zero ] = add [ x0; zero ])
;;

testi
  (48)
  (let x0 = opp (gen (18)) in add [ x0; zero; zero ] = add [ x0; zero ])
;;

testi
  (49)
  (let x0 = opp (gen (18)) in add [ x0; zero; zero ] = add [ x0; zero ])
;;

testi
  (50)
  (let x0 = opp (opp (gen (32))) in
   let x1 = add [ (opp (gen (47))); (opp (gen (40))); (gen (4)) ] in
   add [ x0; zero; zero; x1 ] = add [ x0; x1 ])
;;

testi
  (51)
  (let x0 = opp (add [ (gen (8)); (gen (45)); (gen (29)) ]) in
   let x1 = gen (34) in add [ x0; zero; zero; x1 ] = add [ x0; x1 ])
;;

testi
  (52)
  (let x0 = gen (17) in
   let x1 = opp (opp (gen (32))) in
   add [ x0; zero; zero; x1 ] = add [ x0; x1 ])
;;

testi
  (53)
  (let x0 = opp (opp (gen (32))) in
   let x1 = add [ (opp (gen (47))); (opp (gen (40))); (gen (4)) ] in
   add [ x0; zero; zero; x1 ] = add [ x0; x1 ])
;;

testi
  (54)
  (let x0 = opp (opp (gen (32))) in
   let x1 = add [ (opp (gen (47))); (opp (gen (26))); (opp (gen (9))) ] in
   add [ x0; zero; zero; x1 ] = add [ x0; x1 ])
;;

testi
  (55)
  (let x0 = gen (49) in
   let x1 = gen (18) in add [ x0; zero; x1 ] = add [ x0; x1 ])
;;

testi
  (56)
  (let x0 = gen (18) in
   let x1 = opp (add [ (gen (5)); (gen (13)); (gen (42)) ]) in
   add [ x0; zero; x1 ] = add [ x0; x1 ])
;;

testi
  (57)
  (let x0 =
     add
       [ (opp (gen (14))); (add [ (gen (37)); (gen (26)); (gen (19)) ]);
         (add [ (gen (24)); (gen (5)); (gen (25)) ]) ] in
   let x1 = gen (1) in add [ x0; zero; x1 ] = add [ x0; x1 ])
;;

testi
  (58)
  (let x0 = gen (17) in
   let x1 = gen (18) in add [ x0; zero; x1 ] = add [ x0; x1 ])
;;

testi
  (59)
  (let x0 =
     add
       [ (opp (gen (14))); (add [ (gen (37)); (gen (26)); (gen (19)) ]);
         (add [ (gen (24)); (gen (5)); (gen (25)) ]) ] in
   let x1 = opp (gen (38)) in add [ x0; zero; x1 ] = add [ x0; x1 ])
;;

testi (60) (let x0 = gen (0) in add [ x0; zero ] = x0)
;;

testi
  (61)
  (let x0 =
     add
       [ (add [ (gen (3)); (gen (18)); (gen (6)) ]); (gen (20));
         (add [ (gen (10)); (gen (24)); (gen (20)) ]) ] in
   add [ x0; zero ] = x0)
;;

testi (62) (let x0 = gen (15) in add [ x0; zero ] = x0)
;;

testi (63) (let x0 = gen (0) in add [ x0; zero ] = x0)
;;

testi
  (64)
  (let x0 = opp (add [ (gen (22)); (gen (19)); (gen (14)) ]) in
   add [ x0; zero ] = x0)
;;

testi (65) (let x1 = gen (10) in add [ zero; zero; x1 ] = add [ zero; x1 ])
;;

testi
  (66)
  (let x1 = opp (add [ zero; (gen (10)); (gen (11)) ]) in
   add [ zero; zero; x1 ] = add [ zero; x1 ])
;;

testi
  (67)
  (let x1 =
     add
       [ (gen (9)); (add [ (gen (20)); (gen (22)); (gen (9)) ]); (gen (17)) ] in
   add [ zero; zero; x1 ] = add [ zero; x1 ])
;;

testi
  (68)
  (let x1 =
     add
       [ (gen (9)); (add [ (gen (20)); (gen (22)); (gen (9)) ]); (gen (17)) ] in
   add [ zero; zero; x1 ] = add [ zero; x1 ])
;;

testi (69) (let x1 = gen (19) in add [ zero; zero; x1 ] = add [ zero; x1 ])
;;

testi
  (70)
  (let x0 = add [ (opp (gen (31))); (opp (gen (31))); (gen (36)) ] in
   let x1 = opp (gen (36)) in add [ x0; zero; zero; x1 ] = add [ x0; x1 ])
;;

testi
  (71)
  (let x0 = gen (25) in
   let x1 = add [ (opp (gen (31))); (opp (gen (31))); (gen (36)) ] in
   add [ x0; zero; zero; x1 ] = add [ x0; x1 ])
;;

testi
  (72)
  (let x0 = gen (28) in
   let x1 = gen (25) in add [ x0; zero; zero; x1 ] = add [ x0; x1 ])
;;

testi
  (73)
  (let x0 = gen (28) in
   let x1 = add [ (opp (gen (31))); (opp (gen (5))); (opp (gen (7))) ] in
   add [ x0; zero; zero; x1 ] = add [ x0; x1 ])
;;

testi
  (74)
  (let x0 = add [ (opp (gen (31))); (opp (gen (5))); (opp (gen (7))) ] in
   let x1 =
     add
       [ (add [ (gen (34)); zero; (gen (49)) ]); (opp (gen (31))); (gen (9)) ] in
   add [ x0; zero; zero; x1 ] = add [ x0; x1 ])
;;

