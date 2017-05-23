open Set_list
;;

open Gentest
;;

testing ("Set_list (automatic) - seed: 623373568")
;;

testi
  (0)
  (let x0 = singleton (7) in
   let x1 = singleton (71) in
   let x2 =
     union
       [ (singleton (59)); (singleton (73));
         (union [ (singleton (9)); (singleton (15)); (singleton (51)) ]) ] in
   union [ (union [ x0; x1 ]); x2 ] = union [ x0; x1; x2 ])
;;

testi
  (1)
  (let x0 = singleton (35) in
   let x1 = singleton (32) in
   let x2 = singleton (35) in
   union [ (union [ x0; x1 ]); x2 ] = union [ x0; x1; x2 ])
;;

testi
  (2)
  (let x0 = empty in
   let x1 = singleton (67) in
   let x2 =
     union
       [ (union [ (singleton (19)); (singleton (51)); (singleton (1)) ]);
         (singleton (45)); (singleton (1)) ] in
   union [ (union [ x0; x1 ]); x2 ] = union [ x0; x1; x2 ])
;;

testi
  (3)
  (let x0 = singleton (71) in
   let x1 =
     union
       [ (singleton (59)); (singleton (73));
         (union [ (singleton (9)); (singleton (15)); (singleton (51)) ]) ] in
   let x2 = singleton (53) in
   union [ (union [ x0; x1 ]); x2 ] = union [ x0; x1; x2 ])
;;

testi
  (4)
  (let x0 = singleton (67) in
   let x1 = singleton (7) in
   let x2 = singleton (55) in
   union [ (union [ x0; x1 ]); x2 ] = union [ x0; x1; x2 ])
;;

testi
  (5)
  (let x0 = singleton (31) in
   let x1 = singleton (110) in
   let x2 = singleton (31) in
   let x3 = union [ (singleton (35)); (singleton (97)); (singleton (3)) ] in
   let x4 =
     union
       [ (singleton (5)); (singleton (7));
         (union [ (singleton (44)); (singleton (38)); (singleton (30)) ]) ] in
   union [ x0; (union [ x1; x2 ]); (union [ x3; x4 ]) ] =
   union [ x0; x1; x2; x3; x4 ])
;;

testi
  (6)
  (let x0 = singleton (29) in
   let x1 =
     union
       [ (union [ (singleton (44)); (singleton (11)); (singleton (91)) ]);
         (singleton (78)); (singleton (38)) ] in
   let x2 = union [ (singleton (35)); (singleton (97)); (singleton (3)) ] in
   let x3 =
     union
       [ (singleton (14));
         (union [ (singleton (0)); (singleton (35)); (singleton (112)) ]);
         (singleton (118)) ] in
   let x4 =
     union
       [ (union [ (singleton (83)); (singleton (39)); (singleton (120)) ]);
         (singleton (97)); (singleton (85)) ] in
   union [ x0; (union [ x1; x2 ]); (union [ x3; x4 ]) ] =
   union [ x0; x1; x2; x3; x4 ])
;;

testi
  (7)
  (let x0 = empty in
   let x1 = union [ (singleton (35)); (singleton (97)); (singleton (3)) ] in
   let x2 = empty in
   let x3 = singleton (10) in
   let x4 =
     union
       [ (union [ (singleton (109)); (singleton (11)); (singleton (62)) ]);
         (singleton (59)); empty ] in
   union [ x0; (union [ x1; x2 ]); (union [ x3; x4 ]) ] =
   union [ x0; x1; x2; x3; x4 ])
;;

testi
  (8)
  (let x0 =
     union
       [ (union [ (singleton (83)); (singleton (93)); (singleton (79)) ]);
         (singleton (78)); (singleton (38)) ] in
   let x1 = singleton (87) in
   let x2 =
     union
       [ (singleton (5)); (singleton (7));
         (union [ (singleton (44)); (singleton (38)); (singleton (30)) ]) ] in
   let x3 =
     union
       [ (union [ (singleton (109)); (singleton (11)); (singleton (62)) ]);
         (singleton (59)); empty ] in
   let x4 =
     union
       [ (union [ (singleton (83)); (singleton (98)); (singleton (77)) ]);
         (union [ (singleton (58)); (singleton (18)); (singleton (104)) ]);
         (singleton (24)) ] in
   union [ x0; (union [ x1; x2 ]); (union [ x3; x4 ]) ] =
   union [ x0; x1; x2; x3; x4 ])
;;

testi
  (9)
  (let x0 = empty in
   let x1 = singleton (2) in
   let x2 = singleton (28) in
   let x3 =
     union
       [ (singleton (31)); (singleton (59));
         (union [ (singleton (19)); (singleton (38)); (singleton (55)) ]) ] in
   let x4 = singleton (10) in
   union [ x0; (union [ x1; x2 ]); (union [ x3; x4 ]) ] =
   union [ x0; x1; x2; x3; x4 ])
;;

testi
  (10)
  (let x0 =
     union
       [ (union [ (singleton (15)); (singleton (28)); (singleton (13)) ]);
         (union [ (singleton (48)); (singleton (21)); (singleton (75)) ]);
         empty ] in
   let x1 = singleton (53) in
   let x2 =
     union
       [ (singleton (34));
         (union [ (singleton (48)); (singleton (21)); (singleton (75)) ]);
         (singleton (54)) ] in
   let x3 = singleton (7) in
   union [ (union [ x0; x1; x2 ]); x3 ] = union [ x0; x1; x2; x3 ])
;;

testi
  (11)
  (let x0 = empty in
   let x1 = singleton (77) in
   let x2 = singleton (2) in
   let x3 =
     union
       [ (union [ (singleton (15)); (singleton (28)); (singleton (13)) ]);
         (union [ (singleton (48)); (singleton (21)); (singleton (75)) ]);
         empty ] in
   union [ (union [ x0; x1; x2 ]); x3 ] = union [ x0; x1; x2; x3 ])
;;

testi
  (12)
  (let x0 =
     union
       [ (union [ (singleton (49)); (singleton (28)); (singleton (89)) ]);
         (union [ (singleton (16)); (singleton (99)); (singleton (21)) ]);
         (singleton (35)) ] in
   let x1 = singleton (7) in
   let x2 = singleton (7) in
   let x3 =
     union
       [ (union [ (singleton (85)); (singleton (34)); (singleton (34)) ]);
         (singleton (71));
         (union [ (singleton (57)); (singleton (47)); (singleton (6)) ]) ] in
   union [ (union [ x0; x1; x2 ]); x3 ] = union [ x0; x1; x2; x3 ])
;;

testi
  (13)
  (let x0 = singleton (97) in
   let x1 = singleton (41) in
   let x2 =
     union
       [ (union [ (singleton (15)); (singleton (28)); (singleton (13)) ]);
         (union [ (singleton (48)); (singleton (21)); (singleton (75)) ]);
         (union [ empty; (singleton (79)); (singleton (39)) ]) ] in
   let x3 = singleton (3) in
   union [ (union [ x0; x1; x2 ]); x3 ] = union [ x0; x1; x2; x3 ])
;;

testi
  (14)
  (let x0 =
     union
       [ (union [ (singleton (15)); (singleton (61)); (singleton (29)) ]);
         (union [ (singleton (85)); (singleton (51)); (singleton (47)) ]);
         (singleton (54)) ] in
   let x1 =
     union
       [ (union [ (singleton (85)); (singleton (34)); (singleton (34)) ]);
         (singleton (71));
         (union [ (singleton (57)); (singleton (47)); (singleton (6)) ]) ] in
   let x2 = singleton (5) in
   let x3 =
     union
       [ (union [ (singleton (15)); (singleton (28)); (singleton (13)) ]);
         (union [ (singleton (16)); (singleton (99)); (singleton (21)) ]);
         (singleton (35)) ] in
   union [ (union [ x0; x1; x2 ]); x3 ] = union [ x0; x1; x2; x3 ])
;;

testi
  (15)
  (let x0 =
     union
       [ (singleton (49));
         (union [ (singleton (69)); (singleton (64)); (singleton (26)) ]);
         (union [ (singleton (75)); empty; (singleton (94)) ]) ] in
   let x1 = singleton (57) in
   let x2 =
     union
       [ (singleton (64)); (singleton (40));
         (union [ (singleton (49)); (singleton (72)); (singleton (94)) ]) ] in
   let x3 =
     union
       [ (singleton (75));
         (union [ (singleton (71)); (singleton (20)); (singleton (88)) ]);
         (union [ (singleton (49)); (singleton (37)); (singleton (49)) ]) ] in
   union [ x0; x1; x2; x3 ] = union [ x1; x0; x3; x2 ])
;;

testi
  (16)
  (let x0 = singleton (85) in
   let x1 = empty in
   let x2 =
     union
       [ (union [ (singleton (13)); (singleton (95)); empty ]);
         (singleton (67));
         (union [ (singleton (49)); (singleton (72)); (singleton (94)) ]) ] in
   let x3 =
     union
       [ (singleton (75));
         (union [ (singleton (71)); (singleton (20)); (singleton (88)) ]);
         (union [ (singleton (49)); (singleton (37)); (singleton (49)) ]) ] in
   union [ x0; x1; x2; x3 ] = union [ x1; x0; x3; x2 ])
;;

testi
  (17)
  (let x0 =
     union
       [ (singleton (80)); (singleton (1));
         (union [ (singleton (75)); (singleton (10)); (singleton (57)) ]) ] in
   let x1 =
     union
       [ (singleton (64)); (singleton (40));
         (union [ (singleton (49)); (singleton (72)); (singleton (94)) ]) ] in
   let x2 = singleton (52) in
   let x3 =
     union
       [ (union [ (singleton (99)); (singleton (0)); (singleton (51)) ]);
         (singleton (67));
         (union [ (singleton (45)); (singleton (10)); (singleton (94)) ]) ] in
   union [ x0; x1; x2; x3 ] = union [ x1; x0; x3; x2 ])
;;

testi
  (18)
  (let x0 =
     union
       [ (union [ (singleton (99)); (singleton (0)); (singleton (51)) ]);
         (singleton (67));
         (union [ (singleton (45)); (singleton (10)); (singleton (94)) ]) ] in
   let x1 = singleton (92) in
   let x2 =
     union
       [ (union [ (singleton (99)); (singleton (0)); (singleton (51)) ]);
         (singleton (67));
         (union [ (singleton (45)); (singleton (10)); (singleton (94)) ]) ] in
   let x3 = singleton (96) in
   union [ x0; x1; x2; x3 ] = union [ x1; x0; x3; x2 ])
;;

testi
  (19)
  (let x0 =
     union
       [ (singleton (75));
         (union [ (singleton (71)); (singleton (20)); (singleton (88)) ]);
         (union [ (singleton (49)); (singleton (37)); (singleton (49)) ]) ] in
   let x1 = singleton (92) in
   let x2 = singleton (36) in
   let x3 =
     union
       [ (singleton (75));
         (union [ (singleton (71)); (singleton (20)); (singleton (88)) ]);
         (union [ (singleton (49)); (singleton (37)); (singleton (49)) ]) ] in
   union [ x0; x1; x2; x3 ] = union [ x1; x0; x3; x2 ])
;;

testi
  (20)
  (let x0 = empty in
   let x1 = singleton (5) in
   let x2 = union [ (singleton (67)); (singleton (82)); empty ] in
   let x3 = singleton (21) in
   union [ x0; x1; x2; x3 ] = union [ x3; x1; x2; x0 ])
;;

testi
  (21)
  (let x0 =
     union
       [ (union [ (singleton (54)); (singleton (88)); (singleton (34)) ]);
         (union [ (singleton (89)); (singleton (68)); (singleton (60)) ]);
         empty ] in
   let x1 = singleton (68) in
   let x2 = union [ (singleton (0)); (singleton (82)); (singleton (58)) ] in
   let x3 = union [ (singleton (65)); (singleton (32)); (singleton (20)) ] in
   union [ x0; x1; x2; x3 ] = union [ x3; x1; x2; x0 ])
;;

testi
  (22)
  (let x0 = singleton (80) in
   let x1 = union [ (singleton (65)); (singleton (32)); (singleton (20)) ] in
   let x2 = singleton (59) in
   let x3 =
     union
       [ (union [ (singleton (54)); (singleton (24)); (singleton (98)) ]);
         (union [ (singleton (93)); (singleton (63)); (singleton (58)) ]);
         (singleton (58)) ] in
   union [ x0; x1; x2; x3 ] = union [ x3; x1; x2; x0 ])
;;

testi
  (23)
  (let x0 =
     union
       [ (union [ (singleton (3)); (singleton (81)); (singleton (35)) ]);
         (union [ (singleton (93)); (singleton (63)); (singleton (58)) ]);
         (union [ empty; (singleton (72)); (singleton (39)) ]) ] in
   let x1 = singleton (68) in
   let x2 =
     union
       [ (union [ (singleton (3)); (singleton (81)); (singleton (35)) ]);
         (union [ (singleton (85)); (singleton (80)); (singleton (86)) ]);
         (union [ (singleton (25)); (singleton (89)); (singleton (73)) ]) ] in
   let x3 =
     union
       [ (union [ (singleton (54)); (singleton (88)); (singleton (34)) ]);
         (union [ (singleton (93)); (singleton (63)); (singleton (58)) ]);
         (union [ empty; (singleton (72)); (singleton (39)) ]) ] in
   union [ x0; x1; x2; x3 ] = union [ x3; x1; x2; x0 ])
;;

testi
  (24)
  (let x0 = singleton (98) in
   let x1 = singleton (98) in
   let x2 = singleton (59) in
   let x3 =
     union
       [ (singleton (67)); (singleton (82));
         (union [ (singleton (50)); (singleton (83)); (singleton (49)) ]) ] in
   union [ x0; x1; x2; x3 ] = union [ x3; x1; x2; x0 ])
;;

testi
  (25)
  (let x0 = singleton (82) in
   let x1 =
     union
       [ (singleton (23));
         (union [ (singleton (8)); (singleton (12)); (singleton (17)) ]);
         (singleton (63)) ] in
   let x2 =
     union
       [ (union [ (singleton (75)); (singleton (55)); empty ]);
         (union [ (singleton (8)); (singleton (23)); (singleton (88)) ]);
         (union [ (singleton (84)); (singleton (39)); (singleton (90)) ]) ] in
   let x3 =
     union
       [ (singleton (23));
         (union [ (singleton (8)); (singleton (23)); (singleton (88)) ]);
         (singleton (63)) ] in
   union [ x0; x1; x2; x3 ] = union [ x3; x2; x1; x0 ])
;;

testi
  (26)
  (let x0 = singleton (82) in
   let x1 = singleton (59) in
   let x2 = singleton (47) in
   let x3 =
     union
       [ (singleton (25)); (singleton (21));
         (union [ (singleton (6)); (singleton (39)); (singleton (25)) ]) ] in
   union [ x0; x1; x2; x3 ] = union [ x3; x2; x1; x0 ])
;;

testi
  (27)
  (let x0 =
     union
       [ (union [ (singleton (98)); (singleton (46)); (singleton (60)) ]);
         (singleton (98));
         (union [ (singleton (32)); (singleton (91)); (singleton (95)) ]) ] in
   let x1 =
     union
       [ (union [ (singleton (98)); (singleton (46)); (singleton (60)) ]);
         (singleton (98));
         (union [ (singleton (32)); (singleton (91)); (singleton (95)) ]) ] in
   let x2 =
     union
       [ (union [ (singleton (75)); (singleton (55)); empty ]);
         (union [ (singleton (8)); (singleton (23)); (singleton (88)) ]);
         (union [ (singleton (84)); (singleton (39)); (singleton (90)) ]) ] in
   let x3 =
     union
       [ (union [ (singleton (98)); (singleton (46)); (singleton (60)) ]);
         (singleton (98));
         (union [ (singleton (32)); (singleton (91)); (singleton (95)) ]) ] in
   union [ x0; x1; x2; x3 ] = union [ x3; x2; x1; x0 ])
;;

testi
  (28)
  (let x0 =
     union
       [ (singleton (77));
         (union [ (singleton (8)); (singleton (12)); (singleton (17)) ]);
         (singleton (63)) ] in
   let x1 =
     union
       [ (singleton (23));
         (union [ (singleton (8)); (singleton (23)); (singleton (88)) ]);
         (singleton (63)) ] in
   let x2 =
     union
       [ (singleton (23));
         (union [ (singleton (8)); (singleton (23)); (singleton (88)) ]);
         (singleton (63)) ] in
   let x3 =
     union
       [ (union [ (singleton (75)); (singleton (55)); empty ]);
         (union [ (singleton (8)); (singleton (23)); (singleton (88)) ]);
         (union [ (singleton (84)); (singleton (39)); (singleton (90)) ]) ] in
   union [ x0; x1; x2; x3 ] = union [ x3; x2; x1; x0 ])
;;

testi
  (29)
  (let x0 =
     union
       [ (singleton (48));
         (union [ empty; (singleton (23)); (singleton (68)) ]);
         (singleton (63)) ] in
   let x1 = singleton (94) in
   let x2 =
     union
       [ (singleton (23));
         (union [ (singleton (8)); (singleton (12)); (singleton (17)) ]);
         (singleton (63)) ] in
   let x3 = singleton (48) in
   union [ x0; x1; x2; x3 ] = union [ x3; x2; x1; x0 ])
;;

testi
  (30)
  (let x0 = singleton (82) in
   let x1 =
     union
       [ (union [ (singleton (94)); (singleton (40)); (singleton (79)) ]);
         (union [ (singleton (78)); (singleton (22)); (singleton (35)) ]);
         (union [ (singleton (75)); empty; (singleton (59)) ]) ] in
   let x2 =
     union
       [ (union [ (singleton (94)); (singleton (40)); (singleton (79)) ]);
         (union [ (singleton (35)); (singleton (98)); empty ]);
         (singleton (59)) ] in
   let x3 =
     union
       [ (singleton (43));
         (union [ (singleton (35)); (singleton (98)); empty ]);
         (union [ (singleton (18)); (singleton (12)); (singleton (10)) ]) ] in
   union [ x0; x1; x2; x3 ] = union [ x2; x1; x0; x3 ])
;;

testi
  (31)
  (let x0 = singleton (8) in
   let x1 = singleton (44) in
   let x2 = singleton (17) in
   let x3 = singleton (44) in
   union [ x0; x1; x2; x3 ] = union [ x2; x1; x0; x3 ])
;;

testi
  (32)
  (let x0 = singleton (52) in
   let x1 = singleton (87) in
   let x2 =
     union
       [ (union [ (singleton (94)); (singleton (40)); (singleton (79)) ]);
         (union [ (singleton (35)); (singleton (98)); empty ]);
         (singleton (59)) ] in
   let x3 = union [ (singleton (70)); (singleton (38)); (singleton (59)) ] in
   union [ x0; x1; x2; x3 ] = union [ x2; x1; x0; x3 ])
;;

testi
  (33)
  (let x0 = singleton (44) in
   let x1 = singleton (20) in
   let x2 = empty in
   let x3 =
     union
       [ (singleton (43));
         (union [ (singleton (35)); (singleton (98)); empty ]);
         (union [ (singleton (18)); (singleton (12)); (singleton (10)) ]) ] in
   union [ x0; x1; x2; x3 ] = union [ x2; x1; x0; x3 ])
;;

testi
  (34)
  (let x0 = singleton (44) in
   let x1 = singleton (39) in
   let x2 = singleton (8) in
   let x3 =
     union
       [ (union [ (singleton (83)); (singleton (44)); (singleton (98)) ]);
         (singleton (26));
         (union [ (singleton (72)); (singleton (12)); (singleton (94)) ]) ] in
   union [ x0; x1; x2; x3 ] = union [ x2; x1; x0; x3 ])
;;

testi
  (35)
  (let x0 =
     union
       [ (union [ (singleton (34)); (singleton (15)); (singleton (27)) ]);
         (singleton (41));
         (union [ (singleton (11)); (singleton (34)); (singleton (8)) ]) ] in
   let x1 =
     union
       [ (union [ (singleton (34)); (singleton (15)); (singleton (27)) ]);
         (singleton (9)); empty ] in
   union [ x0; empty; x1 ] = union [ x0; x1 ])
;;

testi
  (36)
  (let x0 = singleton (8) in
   let x1 =
     union
       [ empty; (union [ (singleton (6)); empty; (singleton (31)) ]);
         (singleton (6)) ] in
   union [ x0; empty; x1 ] = union [ x0; x1 ])
;;

testi
  (37)
  (let x0 = singleton (42) in
   let x1 = singleton (48) in union [ x0; empty; x1 ] = union [ x0; x1 ])
;;

testi
  (38)
  (let x0 = singleton (42) in
   let x1 = singleton (8) in union [ x0; empty; x1 ] = union [ x0; x1 ])
;;

testi
  (39)
  (let x0 = empty in
   let x1 = singleton (42) in union [ x0; empty; x1 ] = union [ x0; x1 ])
;;

testi
  (40)
  (let x0 =
     union
       [ (singleton (9)); (singleton (15));
         (union [ (singleton (20)); (singleton (0)); (singleton (15)) ]) ] in
   union [ empty; x0 ] = x0)
;;

testi (41) (let x0 = singleton (21) in union [ empty; x0 ] = x0)
;;

testi
  (42)
  (let x0 =
     union
       [ (singleton (9)); (singleton (15));
         (union [ (singleton (20)); (singleton (0)); (singleton (15)) ]) ] in
   union [ empty; x0 ] = x0)
;;

testi
  (43)
  (let x0 =
     union
       [ (singleton (9)); (singleton (15));
         (union [ (singleton (20)); (singleton (0)); (singleton (15)) ]) ] in
   union [ empty; x0 ] = x0)
;;

testi (44) (let x0 = singleton (16) in union [ empty; x0 ] = x0)
;;

testi
  (45)
  (let x0 =
     union
       [ (union [ (singleton (13)); (singleton (13)); (singleton (4)) ]);
         (union [ (singleton (5)); (singleton (0)); (singleton (3)) ]);
         (singleton (18)) ] in
   union [ x0; empty; empty ] = x0)
;;

testi
  (46)
  (let x0 =
     union
       [ (union [ (singleton (13)); (singleton (13)); (singleton (4)) ]);
         (union [ (singleton (5)); (singleton (0)); (singleton (3)) ]);
         (singleton (18)) ] in
   union [ x0; empty; empty ] = x0)
;;

testi (47) (let x0 = singleton (1) in union [ x0; empty; empty ] = x0)
;;

testi (48) (let x0 = singleton (1) in union [ x0; empty; empty ] = x0)
;;

testi
  (49)
  (let x0 =
     union
       [ (union [ empty; (singleton (13)); (singleton (4)) ]);
         (union [ (singleton (5)); (singleton (0)); (singleton (3)) ]);
         (union [ (singleton (6)); (singleton (17)); empty ]) ] in
   union [ x0; empty; empty ] = x0)
;;

testi (50) (let x0 = singleton (22) in union [ x0; x0 ] = x0)
;;

testi (51) (let x0 = singleton (15) in union [ x0; x0 ] = x0)
;;

testi (52) (let x0 = singleton (15) in union [ x0; x0 ] = x0)
;;

testi
  (53)
  (let x0 =
     union
       [ (union [ (singleton (21)); empty; (singleton (3)) ]);
         (union [ (singleton (18)); (singleton (11)); empty ]);
         (singleton (4)) ] in
   union [ x0; x0 ] = x0)
;;

testi
  (54)
  (let x0 =
     union
       [ (union [ (singleton (21)); empty; (singleton (3)) ]);
         (singleton (4));
         (union [ (singleton (16)); (singleton (17)); (singleton (18)) ]) ] in
   union [ x0; x0 ] = x0)
;;

testi
  (55)
  (let x0 = singleton (28) in
   let x1 = union [ (singleton (4)); (singleton (69)); (singleton (70)) ] in
   let x2 =
     union
       [ (union [ (singleton (23)); (singleton (46)); (singleton (44)) ]);
         (singleton (66));
         (union [ (singleton (46)); (singleton (37)); (singleton (74)) ]) ] in
   union [ x0; x1; x1; x2 ] = union [ x0; x1; x2 ])
;;

testi
  (56)
  (let x0 =
     union
       [ (union [ (singleton (23)); (singleton (46)); (singleton (44)) ]);
         (singleton (69));
         (union [ (singleton (47)); (singleton (53)); (singleton (64)) ]) ] in
   let x1 =
     union
       [ (union [ (singleton (23)); (singleton (46)); (singleton (44)) ]);
         (singleton (69));
         (union [ (singleton (47)); (singleton (53)); (singleton (64)) ]) ] in
   let x2 =
     union
       [ (union [ (singleton (18)); (singleton (39)); (singleton (44)) ]);
         (union [ (singleton (33)); (singleton (8)); (singleton (26)) ]);
         (singleton (5)) ] in
   union [ x0; x1; x1; x2 ] = union [ x0; x1; x2 ])
;;

testi
  (57)
  (let x0 =
     union
       [ (union [ (singleton (23)); (singleton (46)); (singleton (44)) ]);
         (singleton (66));
         (union [ (singleton (46)); (singleton (37)); (singleton (74)) ]) ] in
   let x1 = union [ (singleton (4)); (singleton (69)); (singleton (70)) ] in
   let x2 = singleton (55) in union [ x0; x1; x1; x2 ] = union [ x0; x1; x2 ])
;;

testi
  (58)
  (let x0 =
     union
       [ (union [ empty; (singleton (39)); (singleton (65)) ]);
         (singleton (15)); (singleton (31)) ] in
   let x1 =
     union
       [ (union [ (singleton (23)); (singleton (46)); (singleton (44)) ]);
         (singleton (69));
         (union [ (singleton (47)); (singleton (53)); (singleton (64)) ]) ] in
   let x2 = singleton (55) in union [ x0; x1; x1; x2 ] = union [ x0; x1; x2 ])
;;

testi
  (59)
  (let x0 = singleton (25) in
   let x1 = empty in
   let x2 = singleton (64) in union [ x0; x1; x1; x2 ] = union [ x0; x1; x2 ])
;;

