open Multiset_list
;;

open Gentest
;;

testing ("Multiset_list (automatic) - seed: 812661640")
;;

testi
  (0)
  (let x0 = singleton (11) in
   let x1 = union [ (singleton (45)); (singleton (5)); (singleton (21)) ] in
   let x2 =
     union
       [ (union [ (singleton (20)); (singleton (68)); (singleton (66)) ]);
         (union [ (singleton (74)); (singleton (30)); (singleton (17)) ]);
         (singleton (31)) ] in
   union [ (union [ x0; x1 ]); x2 ] = union [ x0; x1; x2 ])
;;

testi
  (1)
  (let x0 = union [ (singleton (45)); (singleton (5)); (singleton (21)) ] in
   let x1 = singleton (28) in
   let x2 = singleton (30) in
   union [ (union [ x0; x1 ]); x2 ] = union [ x0; x1; x2 ])
;;

testi
  (2)
  (let x0 = singleton (11) in
   let x1 = singleton (12) in
   let x2 = singleton (28) in
   union [ (union [ x0; x1 ]); x2 ] = union [ x0; x1; x2 ])
;;

testi
  (3)
  (let x0 = singleton (37) in
   let x1 = singleton (12) in
   let x2 = singleton (53) in
   union [ (union [ x0; x1 ]); x2 ] = union [ x0; x1; x2 ])
;;

testi
  (4)
  (let x0 =
     union
       [ (singleton (5));
         (union [ (singleton (74)); (singleton (30)); (singleton (17)) ]);
         (singleton (21)) ] in
   let x1 = union [ (singleton (45)); (singleton (5)); (singleton (21)) ] in
   let x2 =
     union
       [ (singleton (45));
         (union [ (singleton (74)); (singleton (30)); (singleton (17)) ]);
         (singleton (21)) ] in
   union [ (union [ x0; x1 ]); x2 ] = union [ x0; x1; x2 ])
;;

testi
  (5)
  (let x0 = singleton (98) in
   let x1 = singleton (16) in
   let x2 = singleton (10) in
   let x3 =
     union
       [ (union [ (singleton (6)); (singleton (51)); (singleton (97)) ]);
         (union [ (singleton (83)); (singleton (12)); (singleton (89)) ]);
         (union [ (singleton (19)); (singleton (88)); (singleton (100)) ]) ] in
   let x4 =
     union
       [ (singleton (100));
         (union [ (singleton (38)); (singleton (11)); (singleton (99)) ]);
         (singleton (107)) ] in
   union [ x0; (union [ x1; x2 ]); (union [ x3; x4 ]) ] =
   union [ x0; x1; x2; x3; x4 ])
;;

testi
  (6)
  (let x0 = singleton (98) in
   let x1 = singleton (98) in
   let x2 = singleton (15) in
   let x3 = singleton (54) in
   let x4 =
     union
       [ (union [ (singleton (86)); (singleton (81)); (singleton (29)) ]);
         (union [ (singleton (112)); (singleton (42)); (singleton (40)) ]);
         (union [ (singleton (19)); (singleton (88)); (singleton (100)) ]) ] in
   union [ x0; (union [ x1; x2 ]); (union [ x3; x4 ]) ] =
   union [ x0; x1; x2; x3; x4 ])
;;

testi
  (7)
  (let x0 = singleton (92) in
   let x1 =
     union
       [ (union [ (singleton (86)); (singleton (82)); (singleton (100)) ]);
         (union [ (singleton (38)); empty; (singleton (99)) ]);
         (union [ (singleton (111)); (singleton (63)); (singleton (106)) ]) ] in
   let x2 = singleton (98) in
   let x3 =
     union
       [ (union [ (singleton (86)); (singleton (81)); (singleton (29)) ]);
         (union [ (singleton (112)); (singleton (42)); (singleton (18)) ]);
         (union [ (singleton (12)); (singleton (22)); (singleton (110)) ]) ] in
   let x4 =
     union
       [ (union [ (singleton (86)); (singleton (81)); (singleton (29)) ]);
         (union [ (singleton (112)); (singleton (42)); (singleton (40)) ]);
         (union [ (singleton (19)); (singleton (88)); (singleton (100)) ]) ] in
   union [ x0; (union [ x1; x2 ]); (union [ x3; x4 ]) ] =
   union [ x0; x1; x2; x3; x4 ])
;;

testi
  (8)
  (let x0 = singleton (37) in
   let x1 =
     union
       [ (union [ (singleton (57)); (singleton (51)); (singleton (87)) ]);
         (union [ (singleton (112)); (singleton (42)); (singleton (18)) ]);
         (union [ (singleton (45)); (singleton (119)); (singleton (100)) ]) ] in
   let x2 =
     union
       [ (union [ (singleton (6)); (singleton (51)); (singleton (97)) ]);
         (union [ (singleton (83)); (singleton (12)); (singleton (89)) ]);
         (union [ (singleton (19)); (singleton (88)); (singleton (100)) ]) ] in
   let x3 = singleton (98) in
   let x4 = singleton (99) in
   union [ x0; (union [ x1; x2 ]); (union [ x3; x4 ]) ] =
   union [ x0; x1; x2; x3; x4 ])
;;

testi
  (9)
  (let x0 = singleton (15) in
   let x1 =
     union
       [ (union [ (singleton (86)); (singleton (81)); (singleton (29)) ]);
         (union [ (singleton (112)); (singleton (42)); (singleton (18)) ]);
         (union [ (singleton (12)); (singleton (22)); (singleton (110)) ]) ] in
   let x2 =
     union
       [ (union [ (singleton (6)); (singleton (51)); (singleton (97)) ]);
         (union [ (singleton (83)); (singleton (12)); (singleton (89)) ]);
         (union [ (singleton (19)); (singleton (88)); (singleton (100)) ]) ] in
   let x3 =
     union
       [ (union [ (singleton (86)); (singleton (81)); (singleton (29)) ]);
         (singleton (112));
         (union [ (singleton (12)); (singleton (22)); (singleton (106)) ]) ] in
   let x4 = singleton (16) in
   union [ x0; (union [ x1; x2 ]); (union [ x3; x4 ]) ] =
   union [ x0; x1; x2; x3; x4 ])
;;

testi
  (10)
  (let x0 = singleton (50) in
   let x1 =
     union
       [ (union [ (singleton (37)); (singleton (88)); (singleton (36)) ]);
         (union [ (singleton (47)); (singleton (78)); (singleton (52)) ]);
         (union [ (singleton (86)); (singleton (26)); (singleton (4)) ]) ] in
   let x2 = singleton (43) in
   let x3 = singleton (11) in
   union [ (union [ x0; x1; x2 ]); x3 ] = union [ x0; x1; x2; x3 ])
;;

testi
  (11)
  (let x0 = singleton (66) in
   let x1 = singleton (13) in
   let x2 =
     union
       [ (union [ (singleton (37)); (singleton (88)); (singleton (36)) ]);
         (union [ (singleton (52)); (singleton (42)); (singleton (79)) ]);
         (singleton (54)) ] in
   let x3 = singleton (23) in
   union [ (union [ x0; x1; x2 ]); x3 ] = union [ x0; x1; x2; x3 ])
;;

testi
  (12)
  (let x0 = empty in
   let x1 = singleton (85) in
   let x2 =
     union
       [ (singleton (90));
         (union [ (singleton (1)); (singleton (23)); (singleton (79)) ]);
         (union [ (singleton (2)); (singleton (57)); (singleton (20)) ]) ] in
   let x3 = singleton (43) in
   union [ (union [ x0; x1; x2 ]); x3 ] = union [ x0; x1; x2; x3 ])
;;

testi
  (13)
  (let x0 = singleton (75) in
   let x1 = singleton (13) in
   let x2 = singleton (65) in
   let x3 = singleton (75) in
   union [ (union [ x0; x1; x2 ]); x3 ] = union [ x0; x1; x2; x3 ])
;;

testi
  (14)
  (let x0 =
     union
       [ (singleton (90));
         (union [ (singleton (47)); (singleton (78)); (singleton (52)) ]);
         (singleton (54)) ] in
   let x1 =
     union
       [ (singleton (90));
         (union [ (singleton (1)); (singleton (23)); (singleton (79)) ]);
         (union [ (singleton (2)); (singleton (57)); (singleton (20)) ]) ] in
   let x2 =
     union
       [ (singleton (96));
         (union [ (singleton (78)); (singleton (60)); (singleton (79)) ]);
         (singleton (54)) ] in
   let x3 = singleton (11) in
   union [ (union [ x0; x1; x2 ]); x3 ] = union [ x0; x1; x2; x3 ])
;;

testi
  (15)
  (let x0 = singleton (26) in
   let x1 =
     union
       [ (union [ (singleton (90)); (singleton (92)); (singleton (77)) ]);
         (singleton (84));
         (union [ (singleton (81)); (singleton (95)); (singleton (59)) ]) ] in
   let x2 = singleton (17) in
   let x3 =
     union
       [ (singleton (81));
         (union [ (singleton (92)); (singleton (34)); (singleton (59)) ]);
         (singleton (68)) ] in
   union [ x0; x1; x2; x3 ] = union [ x1; x0; x3; x2 ])
;;

testi
  (16)
  (let x0 = singleton (90) in
   let x1 = singleton (0) in
   let x2 = singleton (0) in
   let x3 = singleton (59) in
   union [ x0; x1; x2; x3 ] = union [ x1; x0; x3; x2 ])
;;

testi
  (17)
  (let x0 = singleton (88) in
   let x1 =
     union
       [ (singleton (1));
         (union [ (singleton (99)); (singleton (30)); (singleton (59)) ]);
         (union [ empty; (singleton (16)); (singleton (48)) ]) ] in
   let x2 =
     union
       [ (union [ (singleton (90)); (singleton (92)); (singleton (77)) ]);
         (singleton (84));
         (union [ (singleton (81)); (singleton (95)); (singleton (59)) ]) ] in
   let x3 =
     union
       [ (singleton (1));
         (union [ (singleton (99)); (singleton (30)); (singleton (59)) ]);
         (union [ empty; (singleton (16)); (singleton (48)) ]) ] in
   union [ x0; x1; x2; x3 ] = union [ x1; x0; x3; x2 ])
;;

testi
  (18)
  (let x0 =
     union
       [ (singleton (1));
         (union [ (singleton (99)); (singleton (30)); (singleton (59)) ]);
         (union [ empty; (singleton (16)); (singleton (48)) ]) ] in
   let x1 = singleton (78) in
   let x2 = singleton (24) in
   let x3 = singleton (26) in
   union [ x0; x1; x2; x3 ] = union [ x1; x0; x3; x2 ])
;;

testi
  (19)
  (let x0 =
     union
       [ (union [ (singleton (90)); (singleton (92)); (singleton (77)) ]);
         (union [ (singleton (65)); (singleton (82)); (singleton (10)) ]);
         (union [ (singleton (81)); (singleton (4)); (singleton (34)) ]) ] in
   let x1 =
     union
       [ (union [ (singleton (90)); (singleton (92)); (singleton (77)) ]);
         (union [ (singleton (65)); (singleton (82)); (singleton (10)) ]);
         (union [ (singleton (81)); (singleton (4)); (singleton (34)) ]) ] in
   let x2 = singleton (24) in
   let x3 =
     union
       [ (union [ (singleton (90)); (singleton (92)); (singleton (77)) ]);
         (union [ (singleton (65)); (singleton (7)); (singleton (32)) ]);
         (singleton (59)) ] in
   union [ x0; x1; x2; x3 ] = union [ x1; x0; x3; x2 ])
;;

testi
  (20)
  (let x0 =
     union
       [ (singleton (55)); (singleton (76));
         (union [ (singleton (12)); (singleton (45)); (singleton (28)) ]) ] in
   let x1 = singleton (5) in
   let x2 =
     union
       [ (union [ (singleton (32)); (singleton (11)); (singleton (2)) ]);
         (singleton (39)); (singleton (24)) ] in
   let x3 =
     union
       [ (singleton (29)); (singleton (68));
         (union [ (singleton (11)); (singleton (1)); (singleton (32)) ]) ] in
   union [ x0; x1; x2; x3 ] = union [ x3; x1; x2; x0 ])
;;

testi
  (21)
  (let x0 =
     union
       [ (singleton (39));
         (union [ (singleton (59)); empty; (singleton (61)) ]);
         (singleton (78)) ] in
   let x1 =
     union
       [ (singleton (55)); (singleton (76));
         (union [ (singleton (12)); (singleton (45)); (singleton (28)) ]) ] in
   let x2 =
     union
       [ (singleton (26));
         (union [ (singleton (59)); empty; (singleton (61)) ]);
         (union [ (singleton (12)); (singleton (45)); (singleton (28)) ]) ] in
   let x3 = singleton (26) in
   union [ x0; x1; x2; x3 ] = union [ x3; x1; x2; x0 ])
;;

testi
  (22)
  (let x0 = singleton (26) in
   let x1 = singleton (15) in
   let x2 = empty in
   let x3 = singleton (17) in
   union [ x0; x1; x2; x3 ] = union [ x3; x1; x2; x0 ])
;;

testi
  (23)
  (let x0 =
     union
       [ (singleton (39));
         (union [ (singleton (59)); empty; (singleton (61)) ]);
         (singleton (7)) ] in
   let x1 =
     union
       [ (singleton (26));
         (union [ (singleton (59)); empty; (singleton (61)) ]);
         (union [ (singleton (12)); (singleton (45)); (singleton (28)) ]) ] in
   let x2 = union [ (singleton (29)); (singleton (74)); (singleton (53)) ] in
   let x3 =
     union
       [ (singleton (55)); (singleton (72));
         (union [ (singleton (12)); (singleton (45)); (singleton (28)) ]) ] in
   union [ x0; x1; x2; x3 ] = union [ x3; x1; x2; x0 ])
;;

testi
  (24)
  (let x0 =
     union
       [ (singleton (39));
         (union [ (singleton (59)); empty; (singleton (61)) ]);
         (singleton (78)) ] in
   let x1 =
     union
       [ (union [ (singleton (32)); (singleton (11)); (singleton (2)) ]);
         (singleton (39)); (singleton (24)) ] in
   let x2 =
     union
       [ (singleton (55)); (singleton (76));
         (union [ (singleton (12)); (singleton (45)); (singleton (28)) ]) ] in
   let x3 = singleton (15) in
   union [ x0; x1; x2; x3 ] = union [ x3; x1; x2; x0 ])
;;

testi
  (25)
  (let x0 = empty in
   let x1 =
     union
       [ empty;
         (union [ (singleton (15)); (singleton (91)); (singleton (38)) ]);
         empty ] in
   let x2 =
     union
       [ (union [ (singleton (13)); (singleton (71)); (singleton (98)) ]);
         (singleton (38));
         (union [ (singleton (83)); (singleton (89)); (singleton (8)) ]) ] in
   let x3 =
     union
       [ (singleton (93)); (singleton (70));
         (union [ (singleton (96)); (singleton (89)); (singleton (23)) ]) ] in
   union [ x0; x1; x2; x3 ] = union [ x3; x2; x1; x0 ])
;;

testi
  (26)
  (let x0 = singleton (97) in
   let x1 = singleton (48) in
   let x2 =
     union
       [ (singleton (3)); (singleton (82));
         (union [ (singleton (83)); (singleton (89)); (singleton (8)) ]) ] in
   let x3 =
     union
       [ (union [ (singleton (71)); (singleton (86)); (singleton (69)) ]);
         (singleton (10));
         (union [ (singleton (83)); (singleton (88)); (singleton (23)) ]) ] in
   union [ x0; x1; x2; x3 ] = union [ x3; x2; x1; x0 ])
;;

testi
  (27)
  (let x0 = singleton (65) in
   let x1 =
     union
       [ (singleton (3)); (singleton (82));
         (union [ (singleton (83)); (singleton (89)); (singleton (8)) ]) ] in
   let x2 =
     union
       [ (union [ (singleton (71)); (singleton (86)); (singleton (69)) ]);
         (singleton (10));
         (union [ (singleton (83)); (singleton (88)); (singleton (23)) ]) ] in
   let x3 = singleton (65) in
   union [ x0; x1; x2; x3 ] = union [ x3; x2; x1; x0 ])
;;

testi
  (28)
  (let x0 =
     union
       [ (union [ (singleton (68)); (singleton (5)); (singleton (61)) ]);
         (singleton (82)); (singleton (41)) ] in
   let x1 =
     union
       [ (union [ (singleton (68)); (singleton (5)); (singleton (61)) ]);
         (singleton (82)); (singleton (41)) ] in
   let x2 =
     union
       [ (singleton (3)); (singleton (82));
         (union [ (singleton (83)); (singleton (89)); (singleton (8)) ]) ] in
   let x3 =
     union
       [ (union [ (singleton (68)); (singleton (5)); (singleton (61)) ]);
         (singleton (82)); (singleton (41)) ] in
   union [ x0; x1; x2; x3 ] = union [ x3; x2; x1; x0 ])
;;

testi
  (29)
  (let x0 = singleton (96) in
   let x1 = singleton (65) in
   let x2 =
     union
       [ (union [ (singleton (68)); (singleton (5)); (singleton (61)) ]);
         (singleton (82)); (singleton (41)) ] in
   let x3 =
     union
       [ (union [ (singleton (71)); (singleton (85)); (singleton (67)) ]);
         (union [ (singleton (15)); (singleton (30)); (singleton (40)) ]);
         (union [ (singleton (14)); (singleton (89)); (singleton (97)) ]) ] in
   union [ x0; x1; x2; x3 ] = union [ x3; x2; x1; x0 ])
;;

testi
  (30)
  (let x0 = singleton (76) in
   let x1 = singleton (74) in
   let x2 = singleton (76) in
   let x3 =
     union
       [ (singleton (73));
         (union [ (singleton (77)); empty; (singleton (64)) ]);
         (singleton (10)) ] in
   union [ x0; x1; x2; x3 ] = union [ x2; x1; x0; x3 ])
;;

testi
  (31)
  (let x0 =
     union
       [ (union [ (singleton (37)); (singleton (68)); (singleton (57)) ]);
         (singleton (4));
         (union [ (singleton (60)); (singleton (86)); (singleton (45)) ]) ] in
   let x1 = singleton (76) in
   let x2 =
     union
       [ (union [ (singleton (20)); (singleton (6)); (singleton (64)) ]);
         (union [ (singleton (43)); empty; (singleton (60)) ]);
         (union [ (singleton (83)); (singleton (86)); (singleton (95)) ]) ] in
   let x3 = singleton (52) in
   union [ x0; x1; x2; x3 ] = union [ x2; x1; x0; x3 ])
;;

testi
  (32)
  (let x0 =
     union
       [ (singleton (69)); (singleton (4));
         (union [ (singleton (83)); (singleton (86)); (singleton (95)) ]) ] in
   let x1 = singleton (74) in
   let x2 =
     union
       [ (union [ (singleton (37)); (singleton (68)); (singleton (57)) ]);
         (singleton (4));
         (union [ (singleton (60)); (singleton (86)); (singleton (45)) ]) ] in
   let x3 = singleton (21) in
   union [ x0; x1; x2; x3 ] = union [ x2; x1; x0; x3 ])
;;

testi
  (33)
  (let x0 =
     union
       [ (singleton (69)); (singleton (4));
         (union [ (singleton (83)); (singleton (86)); (singleton (95)) ]) ] in
   let x1 =
     union
       [ (union [ (singleton (20)); (singleton (6)); (singleton (64)) ]);
         (union [ (singleton (43)); empty; (singleton (60)) ]);
         (union [ (singleton (83)); (singleton (86)); (singleton (95)) ]) ] in
   let x2 =
     union
       [ (union [ (singleton (20)); (singleton (17)); (singleton (57)) ]);
         (singleton (0));
         (union [ (singleton (54)); (singleton (87)); (singleton (82)) ]) ] in
   let x3 =
     union
       [ (union [ (singleton (20)); (singleton (6)); (singleton (64)) ]);
         (union [ (singleton (43)); empty; (singleton (60)) ]);
         (union [ (singleton (83)); (singleton (86)); (singleton (95)) ]) ] in
   union [ x0; x1; x2; x3 ] = union [ x2; x1; x0; x3 ])
;;

testi
  (34)
  (let x0 =
     union
       [ (union [ (singleton (37)); (singleton (68)); (singleton (57)) ]);
         (singleton (4));
         (union [ (singleton (60)); (singleton (86)); (singleton (45)) ]) ] in
   let x1 =
     union
       [ (union [ (singleton (37)); (singleton (68)); (singleton (57)) ]);
         (singleton (4));
         (union [ (singleton (60)); (singleton (86)); (singleton (45)) ]) ] in
   let x2 = singleton (5) in
   let x3 = singleton (21) in
   union [ x0; x1; x2; x3 ] = union [ x2; x1; x0; x3 ])
;;

testi
  (35)
  (let x0 = union [ (singleton (4)); (singleton (10)); (singleton (47)) ] in
   let x1 = union [ (singleton (4)); (singleton (10)); (singleton (47)) ] in
   union [ x0; empty; x1 ] = union [ x0; x1 ])
;;

testi
  (36)
  (let x0 = singleton (18) in
   let x1 = singleton (47) in union [ x0; empty; x1 ] = union [ x0; x1 ])
;;

testi
  (37)
  (let x0 = singleton (1) in
   let x1 = singleton (1) in union [ x0; empty; x1 ] = union [ x0; x1 ])
;;

testi
  (38)
  (let x0 = empty in
   let x1 = singleton (37) in union [ x0; empty; x1 ] = union [ x0; x1 ])
;;

testi
  (39)
  (let x0 = singleton (15) in
   let x1 =
     union
       [ (singleton (5));
         (union [ (singleton (40)); (singleton (42)); (singleton (30)) ]);
         (union [ (singleton (40)); (singleton (24)); (singleton (17)) ]) ] in
   union [ x0; empty; x1 ] = union [ x0; x1 ])
;;

testi
  (40)
  (let x0 =
     union
       [ (union [ (singleton (10)); (singleton (16)); (singleton (12)) ]);
         (singleton (24));
         (union [ (singleton (16)); (singleton (21)); (singleton (19)) ]) ] in
   union [ empty; x0 ] = x0)
;;

testi
  (41)
  (let x0 =
     union
       [ (singleton (13));
         (union [ (singleton (17)); empty; (singleton (7)) ]);
         (union [ (singleton (0)); (singleton (21)); (singleton (17)) ]) ] in
   union [ empty; x0 ] = x0)
;;

testi
  (42)
  (let x0 =
     union
       [ (union [ (singleton (10)); (singleton (16)); (singleton (12)) ]);
         (union [ (singleton (17)); empty; (singleton (7)) ]); empty ] in
   union [ empty; x0 ] = x0)
;;

testi
  (43)
  (let x0 =
     union
       [ (union [ (singleton (10)); (singleton (16)); (singleton (12)) ]);
         (union [ (singleton (17)); empty; (singleton (7)) ]); empty ] in
   union [ empty; x0 ] = x0)
;;

testi
  (44)
  (let x0 =
     union
       [ (union [ (singleton (10)); (singleton (16)); (singleton (12)) ]);
         (union [ (singleton (17)); empty; (singleton (7)) ]); empty ] in
   union [ empty; x0 ] = x0)
;;

testi (45) (let x0 = singleton (19) in union [ x0; empty; empty ] = x0)
;;

testi (46) (let x0 = singleton (19) in union [ x0; empty; empty ] = x0)
;;

testi (47) (let x0 = singleton (19) in union [ x0; empty; empty ] = x0)
;;

testi
  (48)
  (let x0 =
     union
       [ (union [ (singleton (23)); (singleton (17)); (singleton (18)) ]);
         empty; (singleton (17)) ] in
   union [ x0; empty; empty ] = x0)
;;

testi
  (49)
  (let x0 =
     union
       [ (union [ empty; (singleton (22)); (singleton (18)) ]);
         (singleton (7)); (singleton (1)) ] in
   union [ x0; empty; empty ] = x0)
;;

