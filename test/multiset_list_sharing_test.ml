open Multiset_list_sharing
;;

open Gentest
;;

testing ("Multiset_list_sharing (automatic) - seed: 791604183")
;;

testi
  (0)
  (let x0 = singleton (56) in
   let x1 = singleton (48) in
   let x2 = singleton (69) in
   union [ (union [ x0; x1 ]); x2 ] = union [ x0; x1; x2 ])
;;

testi
  (1)
  (let x0 = singleton (21) in
   let x1 =
     union
       [ empty;
         (union [ (singleton (19)); (singleton (48)); (singleton (55)) ]);
         (union [ (singleton (1)); (singleton (33)); (singleton (64)) ]) ] in
   let x2 = singleton (69) in
   union [ (union [ x0; x1 ]); x2 ] = union [ x0; x1; x2 ])
;;

testi
  (2)
  (let x0 = singleton (25) in
   let x1 = union [ (singleton (10)); (singleton (72)); (singleton (53)) ] in
   let x2 =
     union
       [ (union [ (singleton (69)); (singleton (62)); (singleton (3)) ]);
         (union [ (singleton (30)); (singleton (67)); (singleton (55)) ]);
         (union [ (singleton (1)); (singleton (33)); (singleton (64)) ]) ] in
   union [ (union [ x0; x1 ]); x2 ] = union [ x0; x1; x2 ])
;;

testi
  (3)
  (let x0 = singleton (51) in
   let x1 =
     union
       [ (singleton (10));
         (union [ (singleton (55)); empty; (singleton (55)) ]);
         (singleton (11)) ] in
   let x2 = singleton (21) in
   union [ (union [ x0; x1 ]); x2 ] = union [ x0; x1; x2 ])
;;

testi
  (4)
  (let x0 = singleton (56) in
   let x1 =
     union
       [ (singleton (0));
         (union [ (singleton (30)); (singleton (67)); (singleton (55)) ]);
         (union [ (singleton (70)); (singleton (46)); (singleton (52)) ]) ] in
   let x2 =
     union
       [ (singleton (10));
         (union [ (singleton (55)); empty; (singleton (55)) ]);
         (singleton (11)) ] in
   union [ (union [ x0; x1 ]); x2 ] = union [ x0; x1; x2 ])
;;

testi
  (5)
  (let x0 =
     union
       [ (union [ (singleton (66)); (singleton (111)); (singleton (44)) ]);
         (union [ (singleton (122)); (singleton (39)); (singleton (119)) ]);
         (union [ (singleton (123)); (singleton (98)); (singleton (115)) ]) ] in
   let x1 = singleton (53) in
   let x2 =
     union
       [ (union [ (singleton (80)); (singleton (43)); (singleton (65)) ]);
         (singleton (66)); (singleton (83)) ] in
   let x3 =
     union
       [ (union [ empty; (singleton (67)); (singleton (65)) ]);
         (union [ (singleton (87)); (singleton (60)); (singleton (119)) ]);
         (union [ (singleton (60)); (singleton (113)); (singleton (53)) ]) ] in
   let x4 = singleton (8) in
   union [ x0; (union [ x1; x2 ]); (union [ x3; x4 ]) ] =
   union [ x0; x1; x2; x3; x4 ])
;;

testi
  (6)
  (let x0 = singleton (115) in
   let x1 = union [ (singleton (31)); (singleton (39)); (singleton (86)) ] in
   let x2 =
     union
       [ (union [ (singleton (116)); (singleton (113)); (singleton (44)) ]);
         (union [ (singleton (112)); (singleton (12)); (singleton (119)) ]);
         (singleton (73)) ] in
   let x3 = singleton (53) in
   let x4 =
     union
       [ (union [ empty; (singleton (67)); (singleton (65)) ]);
         (singleton (6));
         (union [ (singleton (97)); (singleton (108)); (singleton (42)) ]) ] in
   union [ x0; (union [ x1; x2 ]); (union [ x3; x4 ]) ] =
   union [ x0; x1; x2; x3; x4 ])
;;

testi
  (7)
  (let x0 =
     union
       [ (singleton (71));
         (union [ (singleton (81)); (singleton (75)); (singleton (72)) ]);
         (singleton (73)) ] in
   let x1 =
     union
       [ (singleton (71));
         (union [ (singleton (81)); (singleton (75)); (singleton (72)) ]);
         (singleton (73)) ] in
   let x2 =
     union
       [ (union [ (singleton (66)); (singleton (111)); (singleton (44)) ]);
         (union [ (singleton (122)); (singleton (39)); (singleton (119)) ]);
         (union [ (singleton (123)); (singleton (98)); (singleton (115)) ]) ] in
   let x3 = singleton (59) in
   let x4 = singleton (52) in
   union [ x0; (union [ x1; x2 ]); (union [ x3; x4 ]) ] =
   union [ x0; x1; x2; x3; x4 ])
;;

testi
  (8)
  (let x0 =
     union
       [ (singleton (71));
         (union [ (singleton (81)); (singleton (75)); (singleton (72)) ]);
         (singleton (73)) ] in
   let x1 =
     union
       [ (singleton (71));
         (union [ (singleton (81)); (singleton (75)); (singleton (72)) ]);
         (singleton (73)) ] in
   let x2 = singleton (59) in
   let x3 = singleton (70) in
   let x4 = singleton (8) in
   union [ x0; (union [ x1; x2 ]); (union [ x3; x4 ]) ] =
   union [ x0; x1; x2; x3; x4 ])
;;

testi
  (9)
  (let x0 =
     union
       [ (union [ (singleton (116)); (singleton (113)); (singleton (44)) ]);
         (union [ (singleton (112)); (singleton (12)); (singleton (119)) ]);
         (singleton (73)) ] in
   let x1 =
     union
       [ (singleton (35));
         (union [ (singleton (112)); (singleton (12)); (singleton (119)) ]);
         (union [ (singleton (123)); (singleton (113)); (singleton (115)) ]) ] in
   let x2 = singleton (115) in
   let x3 =
     union
       [ (union [ empty; (singleton (67)); (singleton (65)) ]);
         (union [ (singleton (87)); (singleton (60)); (singleton (119)) ]);
         (union [ (singleton (60)); (singleton (113)); (singleton (53)) ]) ] in
   let x4 = union [ (singleton (31)); (singleton (39)); (singleton (86)) ] in
   union [ x0; (union [ x1; x2 ]); (union [ x3; x4 ]) ] =
   union [ x0; x1; x2; x3; x4 ])
;;

testi
  (10)
  (let x0 =
     union
       [ (singleton (13));
         (union [ (singleton (70)); (singleton (52)); (singleton (41)) ]);
         (union [ (singleton (58)); (singleton (3)); (singleton (84)) ]) ] in
   let x1 =
     union
       [ (singleton (13)); (singleton (5));
         (union [ (singleton (58)); (singleton (3)); (singleton (84)) ]) ] in
   let x2 = singleton (51) in
   let x3 = singleton (0) in
   union [ (union [ x0; x1; x2 ]); x3 ] = union [ x0; x1; x2; x3 ])
;;

testi
  (11)
  (let x0 = singleton (68) in
   let x1 =
     union
       [ (singleton (13));
         (union [ (singleton (77)); (singleton (98)); (singleton (17)) ]);
         (union [ (singleton (26)); empty; (singleton (84)) ]) ] in
   let x2 =
     union
       [ (singleton (13));
         (union [ (singleton (77)); (singleton (98)); (singleton (17)) ]);
         (union [ (singleton (26)); empty; (singleton (84)) ]) ] in
   let x3 = singleton (79) in
   union [ (union [ x0; x1; x2 ]); x3 ] = union [ x0; x1; x2; x3 ])
;;

testi
  (12)
  (let x0 =
     union
       [ (union [ empty; (singleton (11)); (singleton (25)) ]);
         (union [ (singleton (94)); (singleton (72)); (singleton (63)) ]);
         (union [ (singleton (26)); empty; (singleton (84)) ]) ] in
   let x1 =
     union
       [ (union [ empty; (singleton (11)); (singleton (25)) ]);
         (union [ (singleton (94)); (singleton (72)); (singleton (63)) ]);
         (union [ (singleton (26)); empty; (singleton (84)) ]) ] in
   let x2 =
     union
       [ (union [ (singleton (28)); (singleton (19)); (singleton (49)) ]);
         (singleton (44));
         (union [ (singleton (26)); (singleton (90)); (singleton (84)) ]) ] in
   let x3 =
     union
       [ (singleton (83));
         (union [ (singleton (70)); (singleton (52)); (singleton (41)) ]);
         (union [ (singleton (26)); (singleton (90)); (singleton (84)) ]) ] in
   union [ (union [ x0; x1; x2 ]); x3 ] = union [ x0; x1; x2; x3 ])
;;

testi
  (13)
  (let x0 =
     union
       [ (union [ empty; (singleton (11)); (singleton (25)) ]);
         (singleton (9)); (singleton (76)) ] in
   let x1 = singleton (25) in
   let x2 = singleton (31) in
   let x3 =
     union
       [ (singleton (13));
         (union [ (singleton (77)); (singleton (98)); (singleton (17)) ]);
         (union [ (singleton (26)); empty; (singleton (84)) ]) ] in
   union [ (union [ x0; x1; x2 ]); x3 ] = union [ x0; x1; x2; x3 ])
;;

testi
  (14)
  (let x0 = singleton (79) in
   let x1 =
     union
       [ (singleton (13)); (singleton (5));
         (union [ (singleton (58)); (singleton (3)); (singleton (84)) ]) ] in
   let x2 =
     union
       [ (singleton (13));
         (union [ (singleton (70)); (singleton (52)); (singleton (41)) ]);
         (union [ (singleton (58)); (singleton (3)); (singleton (84)) ]) ] in
   let x3 = singleton (25) in
   union [ (union [ x0; x1; x2 ]); x3 ] = union [ x0; x1; x2; x3 ])
;;

testi
  (15)
  (let x0 = singleton (42) in
   let x1 =
     union
       [ (union [ (singleton (14)); (singleton (0)); (singleton (64)) ]);
         (singleton (77)); (singleton (47)) ] in
   let x2 = singleton (86) in
   let x3 = singleton (31) in
   union [ x0; x1; x2; x3 ] = union [ x1; x0; x3; x2 ])
;;

testi
  (16)
  (let x0 = singleton (48) in
   let x1 =
     union
       [ (union [ (singleton (14)); (singleton (0)); (singleton (64)) ]);
         (union [ (singleton (84)); (singleton (42)); (singleton (88)) ]);
         (union [ (singleton (66)); (singleton (51)); (singleton (25)) ]) ] in
   let x2 =
     union
       [ (union [ (singleton (14)); (singleton (0)); (singleton (64)) ]);
         (union [ (singleton (84)); (singleton (42)); (singleton (88)) ]);
         (union [ (singleton (66)); (singleton (51)); (singleton (25)) ]) ] in
   let x3 =
     union
       [ (union [ (singleton (32)); empty; (singleton (64)) ]);
         (union [ (singleton (95)); (singleton (42)); (singleton (58)) ]);
         (singleton (56)) ] in
   union [ x0; x1; x2; x3 ] = union [ x1; x0; x3; x2 ])
;;

testi
  (17)
  (let x0 =
     union
       [ (union [ (singleton (72)); (singleton (89)); (singleton (32)) ]);
         (singleton (57));
         (union [ (singleton (66)); (singleton (84)); (singleton (62)) ]) ] in
   let x1 = singleton (43) in
   let x2 =
     union
       [ (singleton (30));
         (union [ (singleton (95)); (singleton (42)); (singleton (58)) ]);
         (singleton (47)) ] in
   let x3 = singleton (42) in
   union [ x0; x1; x2; x3 ] = union [ x1; x0; x3; x2 ])
;;

testi
  (18)
  (let x0 = singleton (3) in
   let x1 =
     union
       [ (union [ (singleton (32)); empty; (singleton (64)) ]);
         (singleton (57));
         (union [ (singleton (66)); (singleton (84)); (singleton (62)) ]) ] in
   let x2 = singleton (31) in
   let x3 =
     union
       [ (union [ (singleton (32)); empty; (singleton (64)) ]);
         (singleton (57));
         (union [ (singleton (66)); (singleton (84)); (singleton (62)) ]) ] in
   union [ x0; x1; x2; x3 ] = union [ x1; x0; x3; x2 ])
;;

testi
  (19)
  (let x0 =
     union
       [ (union [ (singleton (72)); (singleton (64)); (singleton (4)) ]);
         (union [ (singleton (84)); (singleton (42)); (singleton (88)) ]);
         (union [ (singleton (66)); (singleton (51)); (singleton (25)) ]) ] in
   let x1 =
     union
       [ (union [ (singleton (32)); empty; (singleton (64)) ]);
         (union [ (singleton (95)); (singleton (42)); (singleton (58)) ]);
         (singleton (56)) ] in
   let x2 =
     union
       [ (union [ (singleton (32)); empty; (singleton (64)) ]);
         (singleton (57));
         (union [ (singleton (66)); (singleton (84)); (singleton (62)) ]) ] in
   let x3 = singleton (88) in
   union [ x0; x1; x2; x3 ] = union [ x1; x0; x3; x2 ])
;;

testi
  (20)
  (let x0 =
     union
       [ (union [ empty; (singleton (78)); (singleton (38)) ]);
         (singleton (32));
         (union [ (singleton (0)); (singleton (92)); (singleton (57)) ]) ] in
   let x1 =
     union
       [ (singleton (45));
         (union [ (singleton (20)); (singleton (4)); (singleton (17)) ]);
         (singleton (23)) ] in
   let x2 =
     union
       [ (union [ (singleton (24)); (singleton (34)); (singleton (63)) ]);
         (singleton (32)); (singleton (78)) ] in
   let x3 =
     union
       [ (union [ (singleton (78)); (singleton (24)); (singleton (51)) ]);
         (singleton (67)); (singleton (78)) ] in
   union [ x0; x1; x2; x3 ] = union [ x3; x1; x2; x0 ])
;;

testi
  (21)
  (let x0 =
     union
       [ (singleton (45));
         (union [ (singleton (20)); (singleton (4)); (singleton (17)) ]);
         (singleton (23)) ] in
   let x1 =
     union
       [ (singleton (45));
         (union [ (singleton (20)); (singleton (4)); (singleton (17)) ]);
         (singleton (23)) ] in
   let x2 = singleton (35) in
   let x3 = singleton (19) in
   union [ x0; x1; x2; x3 ] = union [ x3; x1; x2; x0 ])
;;

testi
  (22)
  (let x0 = singleton (14) in
   let x1 = singleton (48) in
   let x2 = singleton (35) in
   let x3 = singleton (16) in
   union [ x0; x1; x2; x3 ] = union [ x3; x1; x2; x0 ])
;;

testi
  (23)
  (let x0 =
     union
       [ (singleton (14));
         (union [ (singleton (20)); (singleton (4)); (singleton (17)) ]);
         (union [ (singleton (68)); empty; (singleton (77)) ]) ] in
   let x1 = singleton (0) in
   let x2 = singleton (36) in
   let x3 =
     union
       [ (singleton (45));
         (union [ (singleton (20)); (singleton (4)); (singleton (17)) ]);
         (singleton (23)) ] in
   union [ x0; x1; x2; x3 ] = union [ x3; x1; x2; x0 ])
;;

testi
  (24)
  (let x0 = singleton (19) in
   let x1 =
     union
       [ (union [ (singleton (24)); (singleton (34)); (singleton (63)) ]);
         (singleton (32));
         (union [ (singleton (68)); empty; (singleton (77)) ]) ] in
   let x2 = singleton (25) in
   let x3 = singleton (48) in
   union [ x0; x1; x2; x3 ] = union [ x3; x1; x2; x0 ])
;;

testi
  (25)
  (let x0 = union [ (singleton (86)); (singleton (19)); (singleton (73)) ] in
   let x1 =
     union
       [ (union [ (singleton (31)); (singleton (11)); (singleton (48)) ]);
         (union [ (singleton (73)); (singleton (26)); (singleton (86)) ]);
         (union [ (singleton (58)); (singleton (77)); (singleton (64)) ]) ] in
   let x2 = singleton (73) in
   let x3 = singleton (75) in
   union [ x0; x1; x2; x3 ] = union [ x3; x2; x1; x0 ])
;;

testi
  (26)
  (let x0 = empty in
   let x1 = singleton (62) in
   let x2 = singleton (92) in
   let x3 = singleton (73) in
   union [ x0; x1; x2; x3 ] = union [ x3; x2; x1; x0 ])
;;

testi
  (27)
  (let x0 = singleton (49) in
   let x1 =
     union
       [ (union [ (singleton (30)); (singleton (83)); (singleton (48)) ]);
         (union [ empty; (singleton (32)); (singleton (36)) ]);
         (singleton (96)) ] in
   let x2 =
     union
       [ (union [ (singleton (30)); (singleton (83)); (singleton (48)) ]);
         (union [ (singleton (73)); (singleton (26)); (singleton (86)) ]);
         (union [ (singleton (58)); (singleton (34)); (singleton (60)) ]) ] in
   let x3 =
     union
       [ (singleton (53));
         (union [ (singleton (14)); (singleton (23)); (singleton (91)) ]);
         (singleton (57)) ] in
   union [ x0; x1; x2; x3 ] = union [ x3; x2; x1; x0 ])
;;

testi
  (28)
  (let x0 = singleton (54) in
   let x1 = singleton (49) in
   let x2 = singleton (56) in
   let x3 = singleton (73) in
   union [ x0; x1; x2; x3 ] = union [ x3; x2; x1; x0 ])
;;

testi
  (29)
  (let x0 = union [ (singleton (86)); (singleton (19)); (singleton (73)) ] in
   let x1 = singleton (49) in
   let x2 = singleton (56) in
   let x3 = union [ (singleton (53)); (singleton (88)); (singleton (11)) ] in
   union [ x0; x1; x2; x3 ] = union [ x3; x2; x1; x0 ])
;;

testi
  (30)
  (let x0 =
     union
       [ (singleton (82));
         (union [ (singleton (48)); (singleton (65)); (singleton (45)) ]);
         (union [ (singleton (49)); (singleton (74)); (singleton (37)) ]) ] in
   let x1 =
     union
       [ (union [ (singleton (2)); (singleton (84)); (singleton (17)) ]);
         (singleton (54)); (singleton (49)) ] in
   let x2 = union [ (singleton (26)); (singleton (18)); (singleton (96)) ] in
   let x3 = singleton (10) in
   union [ x0; x1; x2; x3 ] = union [ x2; x1; x0; x3 ])
;;

testi
  (31)
  (let x0 = singleton (33) in
   let x1 =
     union
       [ (union [ (singleton (2)); (singleton (84)); (singleton (17)) ]);
         (singleton (54)); (singleton (49)) ] in
   let x2 =
     union
       [ (singleton (36)); (singleton (74));
         (union [ (singleton (54)); empty; (singleton (44)) ]) ] in
   let x3 = singleton (40) in
   union [ x0; x1; x2; x3 ] = union [ x2; x1; x0; x3 ])
;;

testi
  (32)
  (let x0 =
     union
       [ (union [ (singleton (90)); (singleton (84)); (singleton (36)) ]);
         (singleton (18));
         (union [ (singleton (38)); (singleton (74)); (singleton (44)) ]) ] in
   let x1 =
     union
       [ (union [ (singleton (90)); (singleton (84)); (singleton (36)) ]);
         (singleton (18));
         (union [ (singleton (38)); (singleton (74)); (singleton (44)) ]) ] in
   let x2 = union [ (singleton (26)); (singleton (18)); (singleton (96)) ] in
   let x3 = union [ (singleton (87)); (singleton (2)); (singleton (49)) ] in
   union [ x0; x1; x2; x3 ] = union [ x2; x1; x0; x3 ])
;;

testi
  (33)
  (let x0 = singleton (33) in
   let x1 =
     union
       [ (singleton (36)); (singleton (74));
         (union [ (singleton (54)); empty; (singleton (44)) ]) ] in
   let x2 =
     union
       [ (singleton (87));
         (union [ (singleton (79)); (singleton (64)); (singleton (45)) ]);
         (union [ (singleton (51)); (singleton (7)); (singleton (99)) ]) ] in
   let x3 = singleton (56) in
   union [ x0; x1; x2; x3 ] = union [ x2; x1; x0; x3 ])
;;

testi
  (34)
  (let x0 = singleton (56) in
   let x1 =
     union
       [ (union [ (singleton (90)); (singleton (84)); (singleton (36)) ]);
         (singleton (18));
         (union [ (singleton (38)); (singleton (74)); (singleton (44)) ]) ] in
   let x2 = singleton (64) in
   let x3 = singleton (7) in
   union [ x0; x1; x2; x3 ] = union [ x2; x1; x0; x3 ])
;;

testi
  (35)
  (let x0 = singleton (46) in
   let x1 = union [ empty; (singleton (28)); (singleton (46)) ] in
   union [ x0; empty; x1 ] = union [ x0; x1 ])
;;

testi
  (36)
  (let x0 = singleton (46) in
   let x1 =
     union
       [ empty; (union [ (singleton (12)); empty; (singleton (29)) ]);
         (singleton (46)) ] in
   union [ x0; empty; x1 ] = union [ x0; x1 ])
;;

testi
  (37)
  (let x0 = union [ empty; (singleton (28)); (singleton (46)) ] in
   let x1 = singleton (46) in union [ x0; empty; x1 ] = union [ x0; x1 ])
;;

testi
  (38)
  (let x0 =
     union
       [ empty; (union [ (singleton (12)); empty; (singleton (29)) ]);
         (singleton (46)) ] in
   let x1 = empty in union [ x0; empty; x1 ] = union [ x0; x1 ])
;;

testi
  (39)
  (let x0 =
     union
       [ (union [ (singleton (29)); (singleton (48)); (singleton (24)) ]);
         (union [ (singleton (12)); empty; (singleton (29)) ]);
         (union [ (singleton (42)); (singleton (36)); (singleton (25)) ]) ] in
   let x1 =
     union
       [ empty; (union [ (singleton (12)); empty; (singleton (29)) ]);
         (singleton (46)) ] in
   union [ x0; empty; x1 ] = union [ x0; x1 ])
;;

testi
  (40)
  (let x0 = union [ (singleton (10)); empty; (singleton (9)) ] in
   union [ empty; x0 ] = x0)
;;

testi (41) (let x0 = singleton (4) in union [ empty; x0 ] = x0)
;;

testi
  (42)
  (let x0 =
     union
       [ (union [ empty; (singleton (3)); (singleton (12)) ]); empty; empty ] in
   union [ empty; x0 ] = x0)
;;

testi (43) (let x0 = singleton (4) in union [ empty; x0 ] = x0)
;;

testi
  (44)
  (let x0 =
     union
       [ (union [ empty; (singleton (3)); (singleton (12)) ]); empty; empty ] in
   union [ empty; x0 ] = x0)
;;

testi
  (45)
  (let x0 =
     union
       [ (union [ (singleton (14)); (singleton (12)); (singleton (10)) ]);
         (singleton (2)); empty ] in
   union [ x0; empty; empty ] = x0)
;;

testi
  (46)
  (let x0 =
     union
       [ (singleton (19)); (union [ empty; (singleton (11)); empty ]); empty ] in
   union [ x0; empty; empty ] = x0)
;;

testi
  (47)
  (let x0 =
     union
       [ (singleton (19)); (union [ empty; (singleton (11)); empty ]); empty ] in
   union [ x0; empty; empty ] = x0)
;;

testi
  (48)
  (let x0 =
     union
       [ (union [ (singleton (14)); (singleton (12)); (singleton (10)) ]);
         (singleton (2)); empty ] in
   union [ x0; empty; empty ] = x0)
;;

testi
  (49)
  (let x0 =
     union
       [ (union [ (singleton (14)); (singleton (12)); (singleton (10)) ]);
         (union [ empty; (singleton (11)); empty ]);
         (union [ (singleton (1)); (singleton (1)); (singleton (0)) ]) ] in
   union [ x0; empty; empty ] = x0)
;;

