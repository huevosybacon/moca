open Set_list_sharing
;;

open Gentest
;;

testing ("Set_list_sharing (automatic) - seed: 559056214")
;;

testi
  (0)
  (let x0 =
     union
       [ (union [ (singleton (19)); (singleton (26)); (singleton (46)) ]);
         (union [ (singleton (15)); (singleton (49)); (singleton (71)) ]);
         (union [ empty; (singleton (66)); (singleton (8)) ]) ] in
   let x1 =
     union
       [ (union [ (singleton (33)); (singleton (26)); (singleton (69)) ]);
         (singleton (9));
         (union [ empty; (singleton (66)); (singleton (8)) ]) ] in
   let x2 =
     union
       [ (union [ (singleton (19)); (singleton (5)); (singleton (69)) ]);
         (singleton (71));
         (union [ (singleton (25)); (singleton (35)); (singleton (8)) ]) ] in
   union [ (union [ x0; x1 ]); x2 ] = union [ x0; x1; x2 ])
;;

testi
  (1)
  (let x0 =
     union
       [ (singleton (49)); (singleton (56));
         (union [ (singleton (25)); (singleton (35)); (singleton (8)) ]) ] in
   let x1 = singleton (47) in
   let x2 = singleton (61) in
   union [ (union [ x0; x1 ]); x2 ] = union [ x0; x1; x2 ])
;;

testi
  (2)
  (let x0 = singleton (21) in
   let x1 =
     union
       [ (singleton (49));
         (union [ (singleton (51)); (singleton (21)); (singleton (65)) ]);
         (singleton (35)) ] in
   let x2 = singleton (6) in
   union [ (union [ x0; x1 ]); x2 ] = union [ x0; x1; x2 ])
;;

testi
  (3)
  (let x0 = singleton (56) in
   let x1 =
     union
       [ (singleton (49));
         (union [ (singleton (51)); (singleton (21)); (singleton (65)) ]);
         (singleton (35)) ] in
   let x2 =
     union
       [ (union [ (singleton (19)); (singleton (26)); (singleton (46)) ]);
         (union [ (singleton (15)); (singleton (49)); (singleton (71)) ]);
         (union [ empty; (singleton (66)); (singleton (8)) ]) ] in
   union [ (union [ x0; x1 ]); x2 ] = union [ x0; x1; x2 ])
;;

testi
  (4)
  (let x0 =
     union
       [ (union [ (singleton (19)); (singleton (26)); (singleton (46)) ]);
         (union [ (singleton (15)); (singleton (49)); (singleton (71)) ]);
         (union [ empty; (singleton (66)); (singleton (8)) ]) ] in
   let x1 = singleton (6) in
   let x2 = singleton (56) in
   union [ (union [ x0; x1 ]); x2 ] = union [ x0; x1; x2 ])
;;

testi
  (5)
  (let x0 = singleton (49) in
   let x1 =
     union
       [ (union [ (singleton (21)); (singleton (77)); (singleton (79)) ]);
         (singleton (47));
         (union [ (singleton (34)); (singleton (109)); (singleton (106)) ]) ] in
   let x2 = singleton (119) in
   let x3 = singleton (115) in
   let x4 =
     union
       [ (union [ (singleton (21)); (singleton (77)); (singleton (79)) ]);
         (singleton (47));
         (union [ (singleton (34)); (singleton (109)); (singleton (106)) ]) ] in
   union [ x0; (union [ x1; x2 ]); (union [ x3; x4 ]) ] =
   union [ x0; x1; x2; x3; x4 ])
;;

testi
  (6)
  (let x0 = singleton (22) in
   let x1 =
     union
       [ (union [ (singleton (122)); (singleton (15)); (singleton (68)) ]);
         (union [ (singleton (31)); (singleton (13)); (singleton (63)) ]);
         (singleton (4)) ] in
   let x2 = singleton (109) in
   let x3 = singleton (64) in
   let x4 = singleton (42) in
   union [ x0; (union [ x1; x2 ]); (union [ x3; x4 ]) ] =
   union [ x0; x1; x2; x3; x4 ])
;;

testi
  (7)
  (let x0 = singleton (116) in
   let x1 = singleton (115) in
   let x2 = union [ (singleton (82)); (singleton (87)); (singleton (46)) ] in
   let x3 = singleton (12) in
   let x4 =
     union
       [ (union [ (singleton (79)); (singleton (78)); (singleton (105)) ]);
         (singleton (58)); (singleton (53)) ] in
   union [ x0; (union [ x1; x2 ]); (union [ x3; x4 ]) ] =
   union [ x0; x1; x2; x3; x4 ])
;;

testi
  (8)
  (let x0 = singleton (26) in
   let x1 = union [ (singleton (82)); (singleton (87)); (singleton (46)) ] in
   let x2 = singleton (67) in
   let x3 =
     union
       [ (union [ (singleton (79)); empty; (singleton (110)) ]);
         (union [ (singleton (121)); (singleton (100)); (singleton (28)) ]);
         (union [ (singleton (53)); (singleton (109)); (singleton (106)) ]) ] in
   let x4 = empty in
   union [ x0; (union [ x1; x2 ]); (union [ x3; x4 ]) ] =
   union [ x0; x1; x2; x3; x4 ])
;;

testi
  (9)
  (let x0 =
     union
       [ (union [ (singleton (79)); empty; (singleton (110)) ]);
         (singleton (73));
         (union [ (singleton (82)); (singleton (1)); (singleton (36)) ]) ] in
   let x1 = singleton (42) in
   let x2 = singleton (95) in
   let x3 = singleton (64) in
   let x4 = singleton (119) in
   union [ x0; (union [ x1; x2 ]); (union [ x3; x4 ]) ] =
   union [ x0; x1; x2; x3; x4 ])
;;

testi
  (10)
  (let x0 =
     union
       [ (union [ (singleton (66)); (singleton (45)); (singleton (92)) ]);
         (singleton (64));
         (union [ (singleton (8)); (singleton (19)); (singleton (18)) ]) ] in
   let x1 = singleton (84) in
   let x2 =
     union
       [ (union [ (singleton (66)); (singleton (45)); (singleton (92)) ]);
         (singleton (64));
         (union [ (singleton (8)); (singleton (19)); (singleton (18)) ]) ] in
   let x3 = singleton (96) in
   union [ (union [ x0; x1; x2 ]); x3 ] = union [ x0; x1; x2; x3 ])
;;

testi
  (11)
  (let x0 =
     union
       [ (union [ (singleton (0)); (singleton (4)); (singleton (5)) ]);
         (union [ (singleton (76)); (singleton (19)); (singleton (4)) ]);
         (union [ (singleton (8)); empty; (singleton (92)) ]) ] in
   let x1 =
     union
       [ (singleton (30)); (singleton (76));
         (union [ (singleton (8)); (singleton (19)); (singleton (18)) ]) ] in
   let x2 = union [ (singleton (30)); (singleton (64)); (singleton (8)) ] in
   let x3 = singleton (68) in
   union [ (union [ x0; x1; x2 ]); x3 ] = union [ x0; x1; x2; x3 ])
;;

testi
  (12)
  (let x0 = singleton (85) in
   let x1 =
     union
       [ (singleton (30)); (singleton (76));
         (union [ (singleton (8)); (singleton (19)); (singleton (18)) ]) ] in
   let x2 = singleton (2) in
   let x3 =
     union
       [ (union [ (singleton (50)); (singleton (81)); (singleton (36)) ]);
         (union [ (singleton (76)); (singleton (19)); (singleton (4)) ]);
         (singleton (52)) ] in
   union [ (union [ x0; x1; x2 ]); x3 ] = union [ x0; x1; x2; x3 ])
;;

testi
  (13)
  (let x0 =
     union
       [ (union [ (singleton (50)); (singleton (81)); (singleton (36)) ]);
         (union [ (singleton (93)); (singleton (43)); (singleton (95)) ]);
         (singleton (52)) ] in
   let x1 = singleton (31) in
   let x2 = singleton (2) in
   let x3 = singleton (2) in
   union [ (union [ x0; x1; x2 ]); x3 ] = union [ x0; x1; x2; x3 ])
;;

testi
  (14)
  (let x0 = singleton (43) in
   let x1 = singleton (85) in
   let x2 = singleton (85) in
   let x3 =
     union
       [ (union [ (singleton (48)); (singleton (74)); (singleton (6)) ]);
         (singleton (64)); (singleton (52)) ] in
   union [ (union [ x0; x1; x2 ]); x3 ] = union [ x0; x1; x2; x3 ])
;;

testi
  (15)
  (let x0 = singleton (32) in
   let x1 = singleton (59) in
   let x2 = singleton (53) in
   let x3 =
     union
       [ (singleton (9));
         (union [ (singleton (16)); (singleton (24)); (singleton (21)) ]);
         (union [ empty; (singleton (24)); (singleton (29)) ]) ] in
   union [ x0; x1; x2; x3 ] = union [ x1; x0; x3; x2 ])
;;

testi
  (16)
  (let x0 =
     union
       [ (singleton (9)); (union [ (singleton (18)); empty; empty ]);
         (union [ (singleton (26)); (singleton (68)); empty ]) ] in
   let x1 = union [ empty; (singleton (48)); (singleton (66)) ] in
   let x2 =
     union
       [ (singleton (51)); (singleton (25));
         (union [ empty; (singleton (74)); (singleton (62)) ]) ] in
   let x3 =
     union
       [ (singleton (99)); (singleton (2));
         (union [ empty; (singleton (74)); (singleton (62)) ]) ] in
   union [ x0; x1; x2; x3 ] = union [ x1; x0; x3; x2 ])
;;

testi
  (17)
  (let x0 =
     union
       [ (singleton (9)); (singleton (2));
         (union [ empty; (singleton (74)); (singleton (62)) ]) ] in
   let x1 =
     union
       [ (singleton (9));
         (union [ (singleton (16)); (singleton (24)); (singleton (21)) ]);
         (singleton (66)) ] in
   let x2 =
     union
       [ (singleton (51)); (singleton (25));
         (union [ empty; (singleton (74)); (singleton (62)) ]) ] in
   let x3 = singleton (53) in
   union [ x0; x1; x2; x3 ] = union [ x1; x0; x3; x2 ])
;;

testi
  (18)
  (let x0 =
     union
       [ (singleton (51)); (singleton (25));
         (union [ empty; (singleton (74)); (singleton (62)) ]) ] in
   let x1 = empty in
   let x2 = singleton (1) in
   let x3 =
     union
       [ (union [ empty; (singleton (20)); (singleton (84)) ]);
         (singleton (1)); (singleton (76)) ] in
   union [ x0; x1; x2; x3 ] = union [ x1; x0; x3; x2 ])
;;

testi
  (19)
  (let x0 = singleton (1) in
   let x1 = union [ empty; (singleton (48)); (singleton (66)) ] in
   let x2 =
     union
       [ (singleton (51)); (singleton (25));
         (union [ empty; (singleton (74)); (singleton (62)) ]) ] in
   let x3 =
     union
       [ (singleton (9)); (union [ (singleton (18)); empty; empty ]);
         (union [ (singleton (26)); (singleton (68)); empty ]) ] in
   union [ x0; x1; x2; x3 ] = union [ x1; x0; x3; x2 ])
;;

testi
  (20)
  (let x0 = singleton (76) in
   let x1 =
     union
       [ (singleton (74));
         (union [ (singleton (74)); (singleton (16)); (singleton (20)) ]);
         (union [ (singleton (65)); (singleton (44)); (singleton (39)) ]) ] in
   let x2 =
     union
       [ (union [ (singleton (28)); (singleton (87)); (singleton (98)) ]);
         (union [ (singleton (74)); (singleton (16)); (singleton (20)) ]);
         (singleton (49)) ] in
   let x3 = singleton (30) in
   union [ x0; x1; x2; x3 ] = union [ x3; x1; x2; x0 ])
;;

testi
  (21)
  (let x0 = singleton (29) in
   let x1 =
     union
       [ (union [ (singleton (37)); (singleton (62)); (singleton (91)) ]);
         (singleton (84));
         (union [ (singleton (65)); (singleton (44)); (singleton (39)) ]) ] in
   let x2 = singleton (51) in
   let x3 =
     union
       [ (union [ (singleton (37)); (singleton (62)); (singleton (91)) ]);
         (singleton (84));
         (union [ (singleton (65)); (singleton (44)); (singleton (39)) ]) ] in
   union [ x0; x1; x2; x3 ] = union [ x3; x1; x2; x0 ])
;;

testi
  (22)
  (let x0 = singleton (86) in
   let x1 = singleton (76) in
   let x2 = singleton (14) in
   let x3 = singleton (85) in
   union [ x0; x1; x2; x3 ] = union [ x3; x1; x2; x0 ])
;;

testi
  (23)
  (let x0 =
     union
       [ (union [ (singleton (37)); (singleton (62)); (singleton (91)) ]);
         (singleton (84));
         (union [ (singleton (65)); (singleton (44)); (singleton (39)) ]) ] in
   let x1 = singleton (14) in
   let x2 = singleton (85) in
   let x3 =
     union
       [ (union [ (singleton (28)); (singleton (87)); (singleton (98)) ]);
         (union [ (singleton (74)); (singleton (16)); (singleton (20)) ]);
         (singleton (49)) ] in
   union [ x0; x1; x2; x3 ] = union [ x3; x1; x2; x0 ])
;;

testi
  (24)
  (let x0 = singleton (76) in
   let x1 =
     union
       [ (singleton (92)); (singleton (76));
         (union [ (singleton (65)); (singleton (47)); (singleton (95)) ]) ] in
   let x2 = union [ (singleton (51)); (singleton (40)); (singleton (49)) ] in
   let x3 = singleton (50) in
   union [ x0; x1; x2; x3 ] = union [ x3; x1; x2; x0 ])
;;

testi
  (25)
  (let x0 = union [ (singleton (96)); (singleton (20)); (singleton (18)) ] in
   let x1 = singleton (25) in
   let x2 = singleton (2) in
   let x3 =
     union
       [ (union [ empty; (singleton (20)); (singleton (97)) ]);
         (union [ (singleton (94)); (singleton (28)); (singleton (8)) ]);
         (singleton (16)) ] in
   union [ x0; x1; x2; x3 ] = union [ x3; x2; x1; x0 ])
;;

testi
  (26)
  (let x0 =
     union
       [ (singleton (85));
         (union [ (singleton (30)); (singleton (96)); (singleton (8)) ]);
         (union [ (singleton (15)); (singleton (31)); (singleton (80)) ]) ] in
   let x1 =
     union
       [ (union [ empty; (singleton (76)); (singleton (74)) ]);
         (union [ (singleton (59)); (singleton (76)); (singleton (10)) ]);
         (union [ (singleton (15)); (singleton (39)); (singleton (90)) ]) ] in
   let x2 =
     union
       [ (singleton (88)); (singleton (15));
         (union [ (singleton (26)); (singleton (40)); (singleton (90)) ]) ] in
   let x3 = union [ (singleton (96)); (singleton (20)); (singleton (18)) ] in
   union [ x0; x1; x2; x3 ] = union [ x3; x2; x1; x0 ])
;;

testi
  (27)
  (let x0 = singleton (93) in
   let x1 =
     union
       [ (singleton (57));
         (union [ (singleton (30)); (singleton (96)); (singleton (8)) ]);
         (union [ (singleton (26)); (singleton (40)); (singleton (90)) ]) ] in
   let x2 = singleton (72) in
   let x3 =
     union
       [ (singleton (88)); (singleton (15));
         (union [ (singleton (26)); (singleton (40)); (singleton (90)) ]) ] in
   union [ x0; x1; x2; x3 ] = union [ x3; x2; x1; x0 ])
;;

testi
  (28)
  (let x0 = singleton (93) in
   let x1 = singleton (73) in
   let x2 = singleton (84) in
   let x3 = singleton (73) in
   union [ x0; x1; x2; x3 ] = union [ x3; x2; x1; x0 ])
;;

testi
  (29)
  (let x0 = singleton (25) in
   let x1 = singleton (73) in
   let x2 = singleton (73) in
   let x3 = singleton (2) in
   union [ x0; x1; x2; x3 ] = union [ x3; x2; x1; x0 ])
;;

testi
  (30)
  (let x0 =
     union
       [ (union [ (singleton (38)); (singleton (97)); (singleton (8)) ]);
         (union [ (singleton (86)); (singleton (84)); (singleton (80)) ]);
         (union [ (singleton (28)); (singleton (92)); (singleton (98)) ]) ] in
   let x1 = singleton (24) in
   let x2 = singleton (77) in
   let x3 = union [ (singleton (30)); (singleton (1)); (singleton (5)) ] in
   union [ x0; x1; x2; x3 ] = union [ x2; x1; x0; x3 ])
;;

testi
  (31)
  (let x0 = singleton (56) in
   let x1 =
     union
       [ (union [ (singleton (0)); (singleton (15)); (singleton (81)) ]);
         (singleton (93)); (singleton (5)) ] in
   let x2 =
     union
       [ (union [ (singleton (64)); (singleton (57)); (singleton (8)) ]);
         (singleton (93)); empty ] in
   let x3 = singleton (74) in
   union [ x0; x1; x2; x3 ] = union [ x2; x1; x0; x3 ])
;;

testi
  (32)
  (let x0 = singleton (24) in
   let x1 = singleton (56) in
   let x2 = singleton (77) in
   let x3 =
     union
       [ (union [ (singleton (0)); (singleton (15)); (singleton (81)) ]);
         (singleton (23)); (singleton (5)) ] in
   union [ x0; x1; x2; x3 ] = union [ x2; x1; x0; x3 ])
;;

testi
  (33)
  (let x0 =
     union
       [ (singleton (53)); (singleton (93));
         (union [ (singleton (64)); (singleton (21)); (singleton (73)) ]) ] in
   let x1 =
     union
       [ (union [ (singleton (64)); (singleton (57)); (singleton (8)) ]);
         (singleton (93)); empty ] in
   let x2 =
     union
       [ (union [ (singleton (64)); (singleton (57)); (singleton (8)) ]);
         (singleton (93)); empty ] in
   let x3 = singleton (45) in
   union [ x0; x1; x2; x3 ] = union [ x2; x1; x0; x3 ])
;;

testi
  (34)
  (let x0 = singleton (56) in
   let x1 = singleton (36) in
   let x2 =
     union
       [ (union [ (singleton (64)); (singleton (57)); (singleton (8)) ]);
         (singleton (93)); empty ] in
   let x3 = singleton (74) in
   union [ x0; x1; x2; x3 ] = union [ x2; x1; x0; x3 ])
;;

testi
  (35)
  (let x0 = singleton (15) in
   let x1 =
     union
       [ (union [ (singleton (26)); empty; (singleton (19)) ]);
         (singleton (2)); (singleton (20)) ] in
   union [ x0; empty; x1 ] = union [ x0; x1 ])
;;

testi
  (36)
  (let x0 = singleton (12) in
   let x1 =
     union
       [ (union [ (singleton (26)); empty; (singleton (19)) ]);
         (singleton (2)); (singleton (20)) ] in
   union [ x0; empty; x1 ] = union [ x0; x1 ])
;;

testi
  (37)
  (let x0 = singleton (7) in
   let x1 =
     union
       [ (union [ (singleton (26)); empty; (singleton (19)) ]);
         (singleton (2)); (singleton (20)) ] in
   union [ x0; empty; x1 ] = union [ x0; x1 ])
;;

testi
  (38)
  (let x0 =
     union
       [ (union [ (singleton (26)); empty; (singleton (19)) ]);
         (union [ (singleton (28)); (singleton (45)); (singleton (8)) ]);
         (union [ (singleton (44)); (singleton (42)); (singleton (47)) ]) ] in
   let x1 = singleton (22) in union [ x0; empty; x1 ] = union [ x0; x1 ])
;;

testi
  (39)
  (let x0 =
     union
       [ (union [ (singleton (26)); empty; (singleton (19)) ]);
         (singleton (2)); (singleton (20)) ] in
   let x1 =
     union
       [ (singleton (6));
         (union [ (singleton (8)); (singleton (9)); (singleton (49)) ]);
         (union [ (singleton (44)); (singleton (42)); (singleton (47)) ]) ] in
   union [ x0; empty; x1 ] = union [ x0; x1 ])
;;

testi (40) (let x0 = singleton (17) in union [ empty; x0 ] = x0)
;;

testi (41) (let x0 = singleton (17) in union [ empty; x0 ] = x0)
;;

testi
  (42)
  (let x0 =
     union
       [ empty; (union [ (singleton (10)); empty; (singleton (12)) ]);
         (union [ (singleton (8)); (singleton (13)); (singleton (10)) ]) ] in
   union [ empty; x0 ] = x0)
;;

testi
  (43)
  (let x0 = union [ empty; (singleton (10)); (singleton (23)) ] in
   union [ empty; x0 ] = x0)
;;

testi (44) (let x0 = singleton (10) in union [ empty; x0 ] = x0)
;;

testi (45) (let x0 = empty in union [ x0; empty; empty ] = x0)
;;

testi (46) (let x0 = singleton (11) in union [ x0; empty; empty ] = x0)
;;

testi
  (47)
  (let x0 =
     union
       [ empty; (union [ empty; (singleton (24)); (singleton (16)) ]);
         (singleton (5)) ] in
   union [ x0; empty; empty ] = x0)
;;

testi (48) (let x0 = singleton (11) in union [ x0; empty; empty ] = x0)
;;

testi
  (49)
  (let x0 =
     union
       [ (union [ empty; empty; (singleton (11)) ]); empty;
         (union [ (singleton (24)); (singleton (14)); (singleton (16)) ]) ] in
   union [ x0; empty; empty ] = x0)
;;

testi (50) (let x0 = empty in union [ x0; x0 ] = x0)
;;

testi (51) (let x0 = singleton (14) in union [ x0; x0 ] = x0)
;;

testi
  (52)
  (let x0 = union [ (singleton (1)); (singleton (2)); (singleton (20)) ] in
   union [ x0; x0 ] = x0)
;;

testi (53) (let x0 = singleton (14) in union [ x0; x0 ] = x0)
;;

testi (54) (let x0 = singleton (15) in union [ x0; x0 ] = x0)
;;

testi
  (55)
  (let x0 = singleton (9) in
   let x1 =
     union
       [ (union [ (singleton (29)); (singleton (23)); (singleton (28)) ]);
         (singleton (68)); (singleton (67)) ] in
   let x2 = singleton (20) in union [ x0; x1; x1; x2 ] = union [ x0; x1; x2 ])
;;

testi
  (56)
  (let x0 = singleton (18) in
   let x1 = singleton (10) in
   let x2 = singleton (42) in union [ x0; x1; x1; x2 ] = union [ x0; x1; x2 ])
;;

testi
  (57)
  (let x0 =
     union
       [ (singleton (16));
         (union [ (singleton (7)); (singleton (35)); empty ]);
         (singleton (71)) ] in
   let x1 =
     union
       [ (singleton (16)); (singleton (36));
         (union [ (singleton (69)); (singleton (41)); (singleton (11)) ]) ] in
   let x2 = singleton (20) in union [ x0; x1; x1; x2 ] = union [ x0; x1; x2 ])
;;

testi
  (58)
  (let x0 =
     union
       [ (union [ (singleton (20)); (singleton (55)); (singleton (28)) ]);
         (singleton (25));
         (union [ (singleton (28)); (singleton (47)); empty ]) ] in
   let x1 = singleton (20) in
   let x2 =
     union
       [ (union [ (singleton (58)); (singleton (23)); (singleton (36)) ]);
         (union [ (singleton (50)); (singleton (35)); empty ]);
         (singleton (67)) ] in
   union [ x0; x1; x1; x2 ] = union [ x0; x1; x2 ])
;;

testi
  (59)
  (let x0 =
     union
       [ (union [ (singleton (29)); (singleton (23)); (singleton (28)) ]);
         (singleton (26)); (singleton (67)) ] in
   let x1 =
     union
       [ (union [ (singleton (29)); (singleton (23)); (singleton (28)) ]);
         empty; (singleton (16)) ] in
   let x2 = singleton (42) in union [ x0; x1; x1; x2 ] = union [ x0; x1; x2 ])
;;

