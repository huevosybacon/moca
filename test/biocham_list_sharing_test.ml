open Biocham_list_sharing
;;

open Gentest
;;

testing ("Biocham_list_sharing (automatic) - seed: 433273217")
;;

testi
  (0)
  (let x0 =
     union
       [ (union [ (singleton (10)); (singleton (60)); (singleton (60)) ]);
         (union [ (singleton (38)); (singleton (72)); (singleton (52)) ]);
         (singleton (31)) ] in
   let x1 = singleton (69) in
   let x2 =
     union
       [ (union [ (singleton (39)); (singleton (0)); (singleton (16)) ]);
         (singleton (23));
         (union [ (singleton (49)); (singleton (19)); (singleton (55)) ]) ] in
   union [ (union [ x0; x1 ]); x2 ] = union [ x0; x1; x2 ])
;;

testi
  (1)
  (let x0 =
     union
       [ (singleton (56));
         (union [ (singleton (38)); (singleton (72)); (singleton (52)) ]);
         empty ] in
   let x1 =
     union
       [ (union [ (singleton (39)); (singleton (0)); (singleton (16)) ]);
         (singleton (23));
         (union [ (singleton (49)); (singleton (19)); (singleton (55)) ]) ] in
   let x2 = empty in union [ (union [ x0; x1 ]); x2 ] = union [ x0; x1; x2 ])
;;

testi
  (2)
  (let x0 =
     union
       [ (singleton (56));
         (union [ (singleton (38)); (singleton (72)); (singleton (52)) ]);
         empty ] in
   let x1 =
     union
       [ (union [ (singleton (39)); (singleton (0)); (singleton (16)) ]);
         (singleton (23));
         (union [ (singleton (49)); (singleton (19)); (singleton (55)) ]) ] in
   let x2 =
     union
       [ (union [ (singleton (39)); (singleton (0)); (singleton (16)) ]);
         (singleton (23));
         (union [ (singleton (49)); (singleton (19)); (singleton (55)) ]) ] in
   union [ (union [ x0; x1 ]); x2 ] = union [ x0; x1; x2 ])
;;

testi
  (3)
  (let x0 =
     union
       [ (union [ (singleton (39)); (singleton (0)); (singleton (16)) ]);
         (singleton (23));
         (union [ (singleton (49)); (singleton (19)); (singleton (55)) ]) ] in
   let x1 = singleton (32) in
   let x2 = singleton (63) in
   union [ (union [ x0; x1 ]); x2 ] = union [ x0; x1; x2 ])
;;

testi
  (4)
  (let x0 =
     union
       [ (singleton (13)); (singleton (64));
         (union [ (singleton (49)); (singleton (19)); (singleton (55)) ]) ] in
   let x1 =
     union
       [ (union [ (singleton (35)); (singleton (37)); (singleton (11)) ]);
         (singleton (71)); (singleton (31)) ] in
   let x2 =
     union
       [ (singleton (13)); (singleton (64));
         (union [ (singleton (49)); (singleton (19)); (singleton (55)) ]) ] in
   union [ (union [ x0; x1 ]); x2 ] = union [ x0; x1; x2 ])
;;

testi
  (5)
  (let x0 =
     union
       [ (singleton (114));
         (union [ (singleton (4)); empty; (singleton (96)) ]);
         (union [ (singleton (38)); (singleton (34)); (singleton (78)) ]) ] in
   let x1 = singleton (23) in
   let x2 = singleton (120) in
   let x3 = singleton (107) in
   let x4 =
     union
       [ (union [ (singleton (116)); (singleton (13)); (singleton (41)) ]);
         (union [ (singleton (2)); (singleton (36)); (singleton (92)) ]);
         (singleton (14)) ] in
   union [ x0; (union [ x1; x2 ]); (union [ x3; x4 ]) ] =
   union [ x0; x1; x2; x3; x4 ])
;;

testi
  (6)
  (let x0 = union [ (singleton (114)); (singleton (3)); (singleton (82)) ] in
   let x1 = union [ (singleton (101)); (singleton (58)); (singleton (65)) ] in
   let x2 = singleton (35) in
   let x3 =
     union
       [ (singleton (114));
         (union [ (singleton (4)); empty; (singleton (96)) ]);
         (union [ (singleton (38)); (singleton (34)); (singleton (78)) ]) ] in
   let x4 = singleton (88) in
   union [ x0; (union [ x1; x2 ]); (union [ x3; x4 ]) ] =
   union [ x0; x1; x2; x3; x4 ])
;;

testi
  (7)
  (let x0 =
     union
       [ (union [ (singleton (36)); (singleton (69)); (singleton (99)) ]);
         (singleton (58)); (singleton (65)) ] in
   let x1 =
     union
       [ (singleton (30));
         (union [ (singleton (107)); (singleton (5)); (singleton (119)) ]);
         (singleton (65)) ] in
   let x2 = singleton (9) in
   let x3 = singleton (111) in
   let x4 = singleton (95) in
   union [ x0; (union [ x1; x2 ]); (union [ x3; x4 ]) ] =
   union [ x0; x1; x2; x3; x4 ])
;;

testi
  (8)
  (let x0 = singleton (90) in
   let x1 = union [ (singleton (114)); (singleton (3)); (singleton (82)) ] in
   let x2 = singleton (118) in
   let x3 = union [ (singleton (101)); (singleton (58)); (singleton (65)) ] in
   let x4 = union [ (singleton (114)); (singleton (3)); (singleton (82)) ] in
   union [ x0; (union [ x1; x2 ]); (union [ x3; x4 ]) ] =
   union [ x0; x1; x2; x3; x4 ])
;;

testi
  (9)
  (let x0 =
     union
       [ (union [ (singleton (102)); (singleton (69)); (singleton (15)) ]);
         (singleton (26)); (singleton (14)) ] in
   let x1 = singleton (66) in
   let x2 = singleton (42) in
   let x3 =
     union
       [ (singleton (65)); (singleton (43));
         (union [ (singleton (38)); (singleton (34)); (singleton (78)) ]) ] in
   let x4 = singleton (66) in
   union [ x0; (union [ x1; x2 ]); (union [ x3; x4 ]) ] =
   union [ x0; x1; x2; x3; x4 ])
;;

testi
  (10)
  (let x0 =
     union
       [ (singleton (38));
         (union [ (singleton (73)); (singleton (1)); (singleton (48)) ]);
         (union [ (singleton (82)); (singleton (97)); (singleton (0)) ]) ] in
   let x1 = singleton (12) in
   let x2 =
     union
       [ empty;
         (union [ (singleton (44)); (singleton (61)); (singleton (49)) ]);
         (union [ (singleton (86)); (singleton (93)); (singleton (66)) ]) ] in
   let x3 =
     union
       [ (singleton (86)); (singleton (89));
         (union [ (singleton (86)); (singleton (93)); (singleton (66)) ]) ] in
   union [ (union [ x0; x1; x2 ]); x3 ] = union [ x0; x1; x2; x3 ])
;;

testi
  (11)
  (let x0 =
     union
       [ (singleton (86)); (singleton (89));
         (union [ (singleton (86)); (singleton (93)); (singleton (66)) ]) ] in
   let x1 = singleton (2) in
   let x2 = singleton (12) in
   let x3 = singleton (13) in
   union [ (union [ x0; x1; x2 ]); x3 ] = union [ x0; x1; x2; x3 ])
;;

testi
  (12)
  (let x0 = singleton (13) in
   let x1 = singleton (25) in
   let x2 = singleton (13) in
   let x3 = union [ (singleton (76)); (singleton (76)); (singleton (76)) ] in
   union [ (union [ x0; x1; x2 ]); x3 ] = union [ x0; x1; x2; x3 ])
;;

testi
  (13)
  (let x0 = singleton (1) in
   let x1 = singleton (87) in
   let x2 = singleton (25) in
   let x3 =
     union
       [ (singleton (76));
         (union [ empty; (singleton (58)); (singleton (49)) ]);
         (union [ (singleton (96)); (singleton (15)); (singleton (98)) ]) ] in
   union [ (union [ x0; x1; x2 ]); x3 ] = union [ x0; x1; x2; x3 ])
;;

testi
  (14)
  (let x0 = singleton (13) in
   let x1 =
     union
       [ (singleton (86)); (singleton (89));
         (union [ (singleton (86)); (singleton (93)); (singleton (66)) ]) ] in
   let x2 =
     union
       [ (singleton (54));
         (union [ (singleton (57)); (singleton (0)); (singleton (49)) ]);
         (singleton (76)) ] in
   let x3 =
     union
       [ (singleton (38));
         (union [ (singleton (44)); (singleton (61)); (singleton (52)) ]);
         (union [ (singleton (86)); empty; (singleton (0)) ]) ] in
   union [ (union [ x0; x1; x2 ]); x3 ] = union [ x0; x1; x2; x3 ])
;;

testi
  (15)
  (let x0 =
     union
       [ (singleton (12));
         (union [ empty; (singleton (24)); (singleton (11)) ]);
         (union [ empty; (singleton (16)); (singleton (26)) ]) ] in
   let x1 =
     union
       [ (union [ empty; (singleton (12)); (singleton (18)) ]);
         (singleton (39)); (singleton (4)) ] in
   union [ x0; empty; x1 ] = union [ x0; x1 ])
;;

testi
  (16)
  (let x0 =
     union
       [ (singleton (12));
         (union [ (singleton (44)); (singleton (11)); (singleton (35)) ]);
         (singleton (36)) ] in
   let x1 =
     union
       [ (singleton (24));
         (union [ (singleton (31)); (singleton (11)); (singleton (27)) ]);
         (union [ (singleton (5)); empty; (singleton (38)) ]) ] in
   union [ x0; empty; x1 ] = union [ x0; x1 ])
;;

testi
  (17)
  (let x0 =
     union
       [ (singleton (12));
         (union [ (singleton (44)); (singleton (11)); (singleton (35)) ]);
         (singleton (36)) ] in
   let x1 = singleton (45) in union [ x0; empty; x1 ] = union [ x0; x1 ])
;;

testi
  (18)
  (let x0 = singleton (45) in
   let x1 =
     union
       [ (singleton (12));
         (union [ (singleton (44)); (singleton (11)); (singleton (35)) ]);
         (singleton (36)) ] in
   union [ x0; empty; x1 ] = union [ x0; x1 ])
;;

testi
  (19)
  (let x0 = empty in
   let x1 =
     union
       [ (singleton (12));
         (union [ (singleton (44)); (singleton (24)); (singleton (27)) ]);
         (singleton (4)) ] in
   union [ x0; empty; x1 ] = union [ x0; x1 ])
;;

testi (20) (let x0 = singleton (1) in union [ empty; x0 ] = x0)
;;

testi
  (21)
  (let x0 = union [ empty; (singleton (23)); (singleton (13)) ] in
   union [ empty; x0 ] = x0)
;;

testi
  (22)
  (let x0 = union [ (singleton (10)); empty; (singleton (13)) ] in
   union [ empty; x0 ] = x0)
;;

testi (23) (let x0 = singleton (21) in union [ empty; x0 ] = x0)
;;

testi
  (24)
  (let x0 = union [ (singleton (10)); empty; (singleton (13)) ] in
   union [ empty; x0 ] = x0)
;;

testi
  (25)
  (let x0 = union [ (singleton (18)); (singleton (17)); (singleton (20)) ] in
   union [ x0; empty; empty ] = x0)
;;

testi
  (26)
  (let x0 = union [ (singleton (18)); (singleton (17)); (singleton (20)) ] in
   union [ x0; empty; empty ] = x0)
;;

testi (27) (let x0 = singleton (2) in union [ x0; empty; empty ] = x0)
;;

testi (28) (let x0 = singleton (2) in union [ x0; empty; empty ] = x0)
;;

testi (29) (let x0 = singleton (6) in union [ x0; empty; empty ] = x0)
;;

testi
  (30)
  (let x0 =
     union
       [ (singleton (73));
         (union [ (singleton (90)); (singleton (91)); (singleton (70)) ]);
         (singleton (99)) ] in
   let x1 =
     union
       [ (union [ (singleton (59)); (singleton (96)); (singleton (46)) ]);
         (singleton (28)); (singleton (99)) ] in
   let x2 = singleton (61) in
   let x3 =
     union
       [ (union [ (singleton (73)); (singleton (12)); (singleton (92)) ]);
         (union [ (singleton (90)); (singleton (91)); (singleton (74)) ]);
         (singleton (99)) ] in
   union [ x0; x1; x2; x3 ] = union [ x1; x0; x3; x2 ])
;;

testi
  (31)
  (let x0 = singleton (0) in
   let x1 = singleton (82) in
   let x2 =
     union
       [ (union [ (singleton (34)); (singleton (12)); (singleton (86)) ]);
         (singleton (8)); (singleton (45)) ] in
   let x3 = singleton (75) in
   union [ x0; x1; x2; x3 ] = union [ x1; x0; x3; x2 ])
;;

testi
  (32)
  (let x0 =
     union
       [ (union [ (singleton (59)); (singleton (35)); (singleton (70)) ]);
         (singleton (8));
         (union [ (singleton (47)); (singleton (18)); (singleton (38)) ]) ] in
   let x1 =
     union
       [ (union [ (singleton (73)); (singleton (12)); (singleton (92)) ]);
         (singleton (67)); (singleton (57)) ] in
   let x2 = singleton (1) in
   let x3 = singleton (75) in
   union [ x0; x1; x2; x3 ] = union [ x1; x0; x3; x2 ])
;;

testi
  (33)
  (let x0 = singleton (1) in
   let x1 =
     union
       [ (union [ (singleton (59)); (singleton (96)); (singleton (46)) ]);
         (singleton (28)); (singleton (99)) ] in
   let x2 = singleton (75) in
   let x3 =
     union
       [ (union [ (singleton (59)); (singleton (96)); (singleton (46)) ]);
         (singleton (8));
         (union [ (singleton (47)); (singleton (86)); (singleton (29)) ]) ] in
   union [ x0; x1; x2; x3 ] = union [ x1; x0; x3; x2 ])
;;

testi
  (34)
  (let x0 = singleton (91) in
   let x1 = singleton (54) in
   let x2 = singleton (91) in
   let x3 = singleton (1) in
   union [ x0; x1; x2; x3 ] = union [ x1; x0; x3; x2 ])
;;

testi
  (35)
  (let x0 =
     union
       [ (union [ (singleton (56)); empty; (singleton (91)) ]);
         (singleton (18));
         (union [ (singleton (65)); (singleton (44)); (singleton (86)) ]) ] in
   let x1 =
     union
       [ (union [ (singleton (46)); (singleton (59)); (singleton (76)) ]);
         (singleton (18)); (singleton (4)) ] in
   let x2 =
     union
       [ (union [ (singleton (44)); empty; (singleton (91)) ]);
         (singleton (73));
         (union [ (singleton (50)); (singleton (29)); (singleton (13)) ]) ] in
   let x3 = singleton (3) in
   union [ x0; x1; x2; x3 ] = union [ x3; x1; x2; x0 ])
;;

testi
  (36)
  (let x0 = singleton (32) in
   let x1 =
     union
       [ (union [ (singleton (10)); (singleton (23)); (singleton (75)) ]);
         (singleton (18));
         (union [ (singleton (21)); (singleton (44)); (singleton (80)) ]) ] in
   let x2 =
     union
       [ (union [ (singleton (56)); empty; (singleton (91)) ]);
         (singleton (18));
         (union [ (singleton (65)); (singleton (44)); (singleton (86)) ]) ] in
   let x3 =
     union
       [ (union [ (singleton (46)); (singleton (59)); (singleton (76)) ]);
         (singleton (18)); (singleton (4)) ] in
   union [ x0; x1; x2; x3 ] = union [ x3; x1; x2; x0 ])
;;

testi
  (37)
  (let x0 = singleton (2) in
   let x1 =
     union
       [ (singleton (10));
         (union [ (singleton (34)); (singleton (85)); (singleton (97)) ]);
         (singleton (4)) ] in
   let x2 =
     union
       [ (union [ (singleton (46)); (singleton (59)); (singleton (76)) ]);
         (singleton (18)); (singleton (4)) ] in
   let x3 = singleton (46) in
   union [ x0; x1; x2; x3 ] = union [ x3; x1; x2; x0 ])
;;

testi
  (38)
  (let x0 = singleton (46) in
   let x1 = singleton (32) in
   let x2 =
     union
       [ (union [ (singleton (56)); empty; (singleton (91)) ]);
         (singleton (18));
         (union [ (singleton (65)); (singleton (44)); (singleton (86)) ]) ] in
   let x3 =
     union
       [ (singleton (22));
         (union [ (singleton (17)); (singleton (56)); (singleton (95)) ]);
         (union [ (singleton (21)); (singleton (44)); (singleton (80)) ]) ] in
   union [ x0; x1; x2; x3 ] = union [ x3; x1; x2; x0 ])
;;

testi
  (39)
  (let x0 = singleton (3) in
   let x1 = singleton (97) in
   let x2 =
     union
       [ (union [ (singleton (10)); (singleton (23)); (singleton (75)) ]);
         (singleton (18));
         (union [ (singleton (21)); (singleton (44)); (singleton (80)) ]) ] in
   let x3 = union [ (singleton (93)); (singleton (18)); (singleton (4)) ] in
   union [ x0; x1; x2; x3 ] = union [ x3; x1; x2; x0 ])
;;

testi
  (40)
  (let x0 =
     union
       [ (singleton (35));
         (union [ (singleton (50)); empty; (singleton (33)) ]);
         (singleton (27)) ] in
   let x1 = singleton (26) in
   let x2 =
     union
       [ (union [ (singleton (23)); (singleton (39)); (singleton (92)) ]);
         (union [ (singleton (50)); empty; (singleton (33)) ]);
         (singleton (33)) ] in
   let x3 = empty in union [ x0; x1; x2; x3 ] = union [ x3; x2; x1; x0 ])
;;

testi
  (41)
  (let x0 =
     union
       [ (singleton (35));
         (union [ (singleton (56)); (singleton (78)); (singleton (63)) ]);
         (singleton (14)) ] in
   let x1 = singleton (80) in
   let x2 = singleton (81) in
   let x3 = singleton (81) in
   union [ x0; x1; x2; x3 ] = union [ x3; x2; x1; x0 ])
;;

testi
  (42)
  (let x0 =
     union
       [ (singleton (6));
         (union [ (singleton (50)); (singleton (1)); (singleton (33)) ]);
         (singleton (88)) ] in
   let x1 =
     union
       [ (singleton (35));
         (union [ (singleton (56)); (singleton (78)); (singleton (63)) ]);
         (singleton (14)) ] in
   let x2 = union [ (singleton (11)); (singleton (56)); (singleton (33)) ] in
   let x3 = singleton (80) in
   union [ x0; x1; x2; x3 ] = union [ x3; x2; x1; x0 ])
;;

testi
  (43)
  (let x0 =
     union
       [ (singleton (35));
         (union [ (singleton (56)); (singleton (78)); (singleton (63)) ]);
         (singleton (14)) ] in
   let x1 = singleton (90) in
   let x2 = union [ (singleton (11)); (singleton (56)); (singleton (33)) ] in
   let x3 = singleton (80) in
   union [ x0; x1; x2; x3 ] = union [ x3; x2; x1; x0 ])
;;

testi
  (44)
  (let x0 = singleton (9) in
   let x1 = singleton (80) in
   let x2 =
     union
       [ (singleton (35));
         (union [ (singleton (50)); empty; (singleton (33)) ]);
         (singleton (27)) ] in
   let x3 = singleton (23) in
   union [ x0; x1; x2; x3 ] = union [ x3; x2; x1; x0 ])
;;

testi
  (45)
  (let x0 = union [ (singleton (75)); (singleton (15)); empty ] in
   let x1 =
     union
       [ (singleton (20)); (singleton (90));
         (union [ (singleton (56)); (singleton (95)); (singleton (17)) ]) ] in
   let x2 = singleton (24) in
   let x3 = singleton (96) in
   union [ x0; x1; x2; x3 ] = union [ x2; x1; x0; x3 ])
;;

testi
  (46)
  (let x0 = singleton (21) in
   let x1 = singleton (24) in
   let x2 =
     union
       [ (singleton (20)); (singleton (90));
         (union [ (singleton (56)); (singleton (95)); (singleton (17)) ]) ] in
   let x3 = singleton (8) in
   union [ x0; x1; x2; x3 ] = union [ x2; x1; x0; x3 ])
;;

testi
  (47)
  (let x0 = singleton (62) in
   let x1 = union [ (singleton (45)); (singleton (21)); (singleton (91)) ] in
   let x2 =
     union
       [ (singleton (11)); (singleton (95));
         (union [ (singleton (10)); (singleton (63)); (singleton (82)) ]) ] in
   let x3 =
     union
       [ (singleton (75)); (singleton (11));
         (union [ (singleton (10)); (singleton (76)); (singleton (16)) ]) ] in
   union [ x0; x1; x2; x3 ] = union [ x2; x1; x0; x3 ])
;;

testi
  (48)
  (let x0 =
     union
       [ (union [ (singleton (52)); (singleton (7)); (singleton (45)) ]);
         (union [ (singleton (38)); (singleton (48)); (singleton (97)) ]);
         (union [ (singleton (56)); (singleton (95)); (singleton (17)) ]) ] in
   let x1 = singleton (8) in
   let x2 =
     union
       [ (union [ (singleton (98)); empty; (singleton (40)) ]);
         (union [ (singleton (38)); (singleton (59)); (singleton (97)) ]);
         (singleton (44)) ] in
   let x3 = union [ (singleton (45)); (singleton (21)); (singleton (91)) ] in
   union [ x0; x1; x2; x3 ] = union [ x2; x1; x0; x3 ])
;;

testi
  (49)
  (let x0 = singleton (67) in
   let x1 = singleton (67) in
   let x2 = singleton (29) in
   let x3 =
     union
       [ (union [ (singleton (98)); empty; (singleton (40)) ]);
         (union [ (singleton (38)); (singleton (59)); (singleton (97)) ]);
         (singleton (44)) ] in
   union [ x0; x1; x2; x3 ] = union [ x2; x1; x0; x3 ])
;;

testi
  (50)
  (let x0 =
     union
       [ empty; (singleton (9)); (union [ empty; empty; (singleton (1)) ]) ] in
   union [ x0; x0 ] = x0)
;;

testi (51) (let x0 = empty in union [ x0; x0 ] = x0)
;;

testi (52) (let x0 = singleton (7) in union [ x0; x0 ] = x0)
;;

testi
  (53)
  (let x0 =
     union
       [ (singleton (12));
         (union [ empty; (singleton (20)); (singleton (17)) ]);
         (singleton (18)) ] in
   union [ x0; x0 ] = x0)
;;

testi (54) (let x0 = empty in union [ x0; x0 ] = x0)
;;

testi
  (55)
  (let x0 = singleton (24) in
   let x1 =
     union
       [ (singleton (48)); (singleton (53));
         (union [ (singleton (33)); (singleton (11)); (singleton (23)) ]) ] in
   let x2 =
     union
       [ (union [ (singleton (49)); (singleton (20)); (singleton (10)) ]);
         (union [ (singleton (18)); (singleton (21)); empty ]);
         (singleton (25)) ] in
   union [ x0; x1; x1; x2 ] = union [ x0; x1; x2 ])
;;

testi
  (56)
  (let x0 =
     union
       [ (singleton (17)); (singleton (53));
         (union [ empty; (singleton (15)); (singleton (8)) ]) ] in
   let x1 =
     union
       [ (singleton (28)); (singleton (53));
         (union [ (singleton (71)); (singleton (10)); (singleton (50)) ]) ] in
   let x2 =
     union
       [ (union [ (singleton (48)); empty; (singleton (15)) ]);
         (singleton (71));
         (union [ empty; (singleton (15)); (singleton (8)) ]) ] in
   union [ x0; x1; x1; x2 ] = union [ x0; x1; x2 ])
;;

testi
  (57)
  (let x0 = empty in
   let x1 = singleton (24) in
   let x2 = singleton (24) in union [ x0; x1; x1; x2 ] = union [ x0; x1; x2 ])
;;

testi
  (58)
  (let x0 =
     union
       [ (singleton (28)); (singleton (53));
         (union [ (singleton (71)); (singleton (10)); (singleton (50)) ]) ] in
   let x1 = singleton (60) in
   let x2 =
     union
       [ (union [ (singleton (48)); empty; (singleton (15)) ]);
         (union [ (singleton (57)); (singleton (53)); (singleton (37)) ]);
         (union [ (singleton (31)); (singleton (60)); (singleton (48)) ]) ] in
   union [ x0; x1; x1; x2 ] = union [ x0; x1; x2 ])
;;

testi
  (59)
  (let x0 =
     union
       [ (union [ (singleton (49)); (singleton (20)); (singleton (10)) ]);
         (singleton (35)); (singleton (46)) ] in
   let x1 =
     union
       [ (union [ (singleton (48)); empty; (singleton (15)) ]);
         (singleton (71));
         (union [ empty; (singleton (15)); (singleton (8)) ]) ] in
   let x2 =
     union
       [ (union [ (singleton (49)); (singleton (20)); (singleton (10)) ]);
         (union [ (singleton (18)); (singleton (21)); empty ]);
         (singleton (25)) ] in
   union [ x0; x1; x1; x2 ] = union [ x0; x1; x2 ])
;;

testi
  (60)
  (let x0 = name ("8") in
   let x1 = phospho ((name ("3")), (union [ empty; empty; empty ])) in
   let x2 = name ("63") in
   complex [ (complex [ x0; x1 ]); x2 ] = complex [ x0; x1; x2 ])
;;

testi
  (61)
  (let x0 =
     complex
       [ (phospho ((name ("16")), empty)); (phospho ((name ("44")), empty));
         (name ("28")) ] in
   let x1 =
     phospho
       ((complex [ (name ("0")); (name ("27")); (name ("16")) ]),
        (singleton (name ("71")))) in
   let x2 =
     ph
       [ (ph [ (name ("15")); (name ("13")); (name ("45")) ]);
         (ph [ (name ("25")); (name ("66")); (name ("68")) ]);
         (complex [ (name ("72")); (name ("24")); (name ("11")) ]) ] in
   complex [ (complex [ x0; x1 ]); x2 ] = complex [ x0; x1; x2 ])
;;

testi
  (62)
  (let x0 = name ("63") in
   let x1 =
     ph
       [ (phospho ((name ("42")), empty));
         (ph [ (name ("25")); (name ("52")); (name ("17")) ]);
         (ph [ (name ("26")); (name ("29")); (name ("23")) ]) ] in
   let x2 = name ("52") in
   complex [ (complex [ x0; x1 ]); x2 ] = complex [ x0; x1; x2 ])
;;

testi
  (63)
  (let x0 = name ("69") in
   let x1 =
     ph
       [ (phospho ((name ("55")), empty)); (name ("14"));
         (ph [ (name ("26")); (name ("29")); (name ("65")) ]) ] in
   let x2 =
     complex
       [ (phospho ((name ("35")), empty)); (name ("52"));
         (complex [ (name ("13")); (name ("70")); (name ("21")) ]) ] in
   complex [ (complex [ x0; x1 ]); x2 ] = complex [ x0; x1; x2 ])
;;

testi
  (64)
  (let x0 =
     ph
       [ (phospho ((name ("42")), empty));
         (ph [ (name ("25")); (name ("66")); (name ("68")) ]);
         (ph [ (name ("26")); (name ("29")); (name ("65")) ]) ] in
   let x1 =
     phospho ((phospho ((name ("35")), empty)), (singleton (name ("71")))) in
   let x2 =
     phospho
       ((phospho ((name ("71")), empty)), (union [ empty; empty; empty ])) in
   complex [ (complex [ x0; x1 ]); x2 ] = complex [ x0; x1; x2 ])
;;

testi
  (65)
  (let x0 = name ("50") in
   let x1 =
     phospho
       ((complex [ (name ("10")); (name ("94")); (name ("42")) ]),
        (union [ empty; empty; empty ])) in
   let x2 =
     phospho
       ((phospho ((name ("42")), empty)), (union [ empty; empty; empty ])) in
   let x3 =
     complex
       [ (complex [ (name ("15")); (name ("21")); (name ("64")) ]);
         (complex [ (name ("23")); (name ("62")); (name ("4")) ]);
         (ph [ (name ("25")); (name ("38")); (name ("116")) ]) ] in
   let x4 =
     complex
       [ (complex [ (name ("79")); (name ("79")); (name ("22")) ]);
         (ph [ (name ("9")); (name ("116")); (name ("106")) ]);
         (complex [ (name ("7")); (name ("65")); (name ("41")) ]) ] in
   complex [ x0; (complex [ x1; x2 ]); (complex [ x3; x4 ]) ] =
   complex [ x0; x1; x2; x3; x4 ])
;;

testi
  (66)
  (let x0 =
     complex
       [ (name ("61")); (phospho ((name ("79")), empty));
         (phospho ((name ("14")), empty)) ] in
   let x1 = name ("52") in
   let x2 =
     ph
       [ (complex [ (name ("51")); (name ("47")); (name ("108")) ]);
         (ph [ (name ("15")); (name ("122")); (name ("95")) ]); (name ("60")) ] in
   let x3 =
     complex
       [ (name ("61")); (phospho ((name ("79")), empty));
         (phospho ((name ("14")), empty)) ] in
   let x4 =
     phospho
       ((phospho ((name ("101")), empty)), (union [ empty; empty; empty ])) in
   complex [ x0; (complex [ x1; x2 ]); (complex [ x3; x4 ]) ] =
   complex [ x0; x1; x2; x3; x4 ])
;;

testi
  (67)
  (let x0 = ph [ (name ("38")); (name ("65")); (name ("65")) ] in
   let x1 = name ("66") in
   let x2 =
     complex
       [ (name ("61")); (phospho ((name ("79")), empty));
         (phospho ((name ("14")), empty)) ] in
   let x3 = name ("11") in
   let x4 =
     phospho
       ((ph [ (name ("63")); (name ("17")); (name ("15")) ]),
        (union [ empty; empty; empty ])) in
   complex [ x0; (complex [ x1; x2 ]); (complex [ x3; x4 ]) ] =
   complex [ x0; x1; x2; x3; x4 ])
;;

testi
  (68)
  (let x0 =
     ph
       [ (name ("82")); (ph [ (name ("15")); (name ("68")); (name ("95")) ]);
         (phospho ((name ("19")), empty)) ] in
   let x1 =
     phospho
       ((phospho ((name ("106")), empty)), (union [ empty; empty; empty ])) in
   let x2 = name ("66") in
   let x3 =
     complex
       [ (complex [ (name ("15")); (name ("21")); (name ("64")) ]);
         (complex [ (name ("23")); (name ("62")); (name ("4")) ]);
         (ph [ (name ("25")); (name ("38")); (name ("116")) ]) ] in
   let x4 = name ("85") in
   complex [ x0; (complex [ x1; x2 ]); (complex [ x3; x4 ]) ] =
   complex [ x0; x1; x2; x3; x4 ])
;;

testi
  (69)
  (let x0 = name ("109") in
   let x1 = name ("18") in
   let x2 = ph [ (name ("38")); (name ("65")); (name ("65")) ] in
   let x3 =
     ph
       [ (complex [ (name ("51")); (name ("47")); (name ("108")) ]);
         (complex [ (name ("11")); (name ("53")); (name ("97")) ]);
         (ph [ (name ("39")); (name ("46")); (name ("71")) ]) ] in
   let x4 =
     ph [ (name ("95")); (name ("113")); (phospho ((name ("97")), empty)) ] in
   complex [ x0; (complex [ x1; x2 ]); (complex [ x3; x4 ]) ] =
   complex [ x0; x1; x2; x3; x4 ])
;;

testi
  (70)
  (let x0 =
     complex
       [ (ph [ (name ("53")); (name ("73")); (name ("97")) ]); (name ("47"));
         (name ("13")) ] in
   let x1 = name ("86") in
   let x2 =
     ph
       [ (phospho ((name ("93")), empty));
         (complex [ (name ("93")); (name ("68")); (name ("13")) ]);
         (complex [ (name ("11")); (name ("98")); (name ("60")) ]) ] in
   let x3 =
     complex
       [ (ph [ (name ("64")); (name ("73")); (name ("97")) ]); (name ("73"));
         (name ("13")) ] in
   complex [ (complex [ x0; x1; x2 ]); x3 ] = complex [ x0; x1; x2; x3 ])
;;

testi
  (71)
  (let x0 =
     phospho
       ((complex [ (name ("39")); (name ("79")); (name ("74")) ]),
        (union [ empty; empty; empty ])) in
   let x1 = name ("15") in
   let x2 =
     phospho
       ((ph [ (name ("71")); (name ("62")); (name ("96")) ]),
        (union [ empty; empty; empty ])) in
   let x3 =
     phospho
       ((ph [ (name ("2")); (name ("83")); (name ("96")) ]),
        (singleton (name ("81")))) in
   complex [ (complex [ x0; x1; x2 ]); x3 ] = complex [ x0; x1; x2; x3 ])
;;

testi
  (72)
  (let x0 =
     complex
       [ (ph [ (name ("64")); (name ("73")); (name ("97")) ]); (name ("73"));
         (name ("13")) ] in
   let x1 =
     ph [ (name ("23")); (phospho ((name ("71")), empty)); (name ("31")) ] in
   let x2 =
     ph
       [ (ph [ (name ("34")); (name ("30")); (name ("43")) ]);
         (complex [ (name ("57")); (name ("12")); (name ("2")) ]);
         (complex [ (name ("11")); (name ("54")); (name ("93")) ]) ] in
   let x3 =
     ph [ (name ("32")); (name ("31")); (phospho ((name ("10")), empty)) ] in
   complex [ (complex [ x0; x1; x2 ]); x3 ] = complex [ x0; x1; x2; x3 ])
;;

testi
  (73)
  (let x0 =
     complex
       [ (phospho ((name ("23")), empty)); (phospho ((name ("99")), empty));
         (phospho ((name ("19")), empty)) ] in
   let x1 =
     complex
       [ (ph [ (name ("53")); (name ("73")); (name ("97")) ]); (name ("47"));
         (name ("13")) ] in
   let x2 =
     phospho ((phospho ((name ("68")), empty)), (singleton (name ("81")))) in
   let x3 =
     ph
       [ (ph [ (name ("34")); (name ("30")); (name ("43")) ]);
         (complex [ (name ("57")); (name ("12")); (name ("2")) ]);
         (complex [ (name ("11")); (name ("54")); (name ("93")) ]) ] in
   complex [ (complex [ x0; x1; x2 ]); x3 ] = complex [ x0; x1; x2; x3 ])
;;

testi
  (74)
  (let x0 =
     phospho
       ((ph [ (name ("2")); (name ("83")); (name ("96")) ]),
        (singleton (name ("81")))) in
   let x1 = phospho ((name ("33")), (union [ empty; empty; empty ])) in
   let x2 =
     complex
       [ (complex [ (name ("55")); (name ("58")); (name ("70")) ]);
         (name ("92")); (name ("64")) ] in
   let x3 =
     complex
       [ (phospho ((name ("23")), empty)); (phospho ((name ("99")), empty));
         (phospho ((name ("19")), empty)) ] in
   complex [ (complex [ x0; x1; x2 ]); x3 ] = complex [ x0; x1; x2; x3 ])
;;

testi
  (75)
  (let x0 =
     ph
       [ (complex [ (name ("38")); (name ("32")); (name ("40")) ]);
         (phospho ((name ("59")), empty)); (name ("17")) ] in
   let x1 =
     ph [ (name ("62")); (phospho ((name ("15")), empty)); (name ("82")) ] in
   let x2 = name ("31") in
   let x3 = name ("73") in
   complex [ x0; x1; x2; x3 ] = complex [ x1; x0; x3; x2 ])
;;

testi
  (76)
  (let x0 =
     complex
       [ (phospho ((name ("35")), empty)); (name ("10"));
         (ph [ (name ("87")); (name ("9")); (name ("24")) ]) ] in
   let x1 =
     ph
       [ (name ("32")); (phospho ((name ("97")), empty));
         (complex [ (name ("69")); (name ("65")); (name ("61")) ]) ] in
   let x2 =
     complex
       [ (phospho ((name ("35")), empty)); (name ("10"));
         (phospho ((name ("11")), empty)) ] in
   let x3 = name ("30") in
   complex [ x0; x1; x2; x3 ] = complex [ x1; x0; x3; x2 ])
;;

testi
  (77)
  (let x0 =
     phospho
       ((complex [ (name ("85")); (name ("47")); (name ("90")) ]),
        (union [ empty; empty; empty ])) in
   let x1 =
     ph
       [ (name ("32")); (ph [ (name ("25")); (name ("72")); (name ("0")) ]);
         (complex [ (name ("99")); (name ("65")); (name ("13")) ]) ] in
   let x2 =
     complex
       [ (ph [ (name ("89")); (name ("7")); (name ("35")) ]); (name ("10"));
         (ph [ (name ("31")); (name ("59")); (name ("58")) ]) ] in
   let x3 =
     complex
       [ (phospho ((name ("35")), empty));
         (ph [ (name ("31")); (name ("45")); (name ("79")) ]);
         (complex [ (name ("88")); (name ("72")); (name ("5")) ]) ] in
   complex [ x0; x1; x2; x3 ] = complex [ x1; x0; x3; x2 ])
;;

testi
  (78)
  (let x0 = name ("30") in
   let x1 =
     ph
       [ (name ("32")); (phospho ((name ("97")), empty));
         (complex [ (name ("69")); (name ("65")); (name ("61")) ]) ] in
   let x2 =
     complex
       [ (phospho ((name ("35")), empty)); (name ("10"));
         (ph [ (name ("87")); (name ("9")); (name ("24")) ]) ] in
   let x3 =
     ph
       [ (name ("32")); (phospho ((name ("97")), empty));
         (complex [ (name ("69")); (name ("65")); (name ("61")) ]) ] in
   complex [ x0; x1; x2; x3 ] = complex [ x1; x0; x3; x2 ])
;;

testi
  (79)
  (let x0 = name ("3") in
   let x1 =
     complex
       [ (ph [ (name ("89")); (name ("7")); (name ("35")) ]);
         (ph [ (name ("75")); (name ("45")); (name ("92")) ]);
         (complex [ (name ("88")); (name ("72")); (name ("5")) ]) ] in
   let x2 = phospho ((name ("90")), (union [ empty; empty; empty ])) in
   let x3 =
     phospho
       ((ph [ (name ("33")); (name ("31")); (name ("22")) ]),
        (union [ empty; empty; empty ])) in
   complex [ x0; x1; x2; x3 ] = complex [ x1; x0; x3; x2 ])
;;

testi
  (80)
  (let x0 = name ("41") in
   let x1 =
     phospho
       ((complex [ (name ("77")); (name ("59")); (name ("4")) ]),
        (union [ empty; empty; empty ])) in
   let x2 = name ("15") in
   let x3 =
     complex
       [ (phospho ((name ("7")), empty)); (name ("23"));
         (complex [ (name ("4")); (name ("47")); (name ("61")) ]) ] in
   complex [ x0; x1; x2; x3 ] = complex [ x3; x1; x2; x0 ])
;;

testi
  (81)
  (let x0 =
     ph
       [ (phospho ((name ("92")), empty));
         (ph [ (name ("4")); (name ("55")); (name ("83")) ]);
         (ph [ (name ("8")); (name ("60")); (name ("48")) ]) ] in
   let x1 = phospho ((name ("69")), (union [ empty; empty; empty ])) in
   let x2 = name ("84") in
   let x3 = name ("60") in
   complex [ x0; x1; x2; x3 ] = complex [ x3; x1; x2; x0 ])
;;

testi
  (82)
  (let x0 =
     complex
       [ (ph [ (name ("9")); (name ("69")); (name ("35")) ]);
         (phospho ((name ("79")), empty)); (name ("91")) ] in
   let x1 =
     ph
       [ (phospho ((name ("92")), empty));
         (ph [ (name ("55")); (name ("55")); (name ("54")) ]);
         (ph [ (name ("57")); (name ("24")); (name ("51")) ]) ] in
   let x2 =
     complex
       [ (ph [ (name ("85")); (name ("88")); (name ("35")) ]); (name ("71"));
         (phospho ((name ("67")), empty)) ] in
   let x3 = name ("41") in
   complex [ x0; x1; x2; x3 ] = complex [ x3; x1; x2; x0 ])
;;

testi
  (83)
  (let x0 =
     phospho
       ((phospho ((name ("58")), empty)), (union [ empty; empty; empty ])) in
   let x1 =
     phospho
       ((phospho ((name ("33")), empty)), (union [ empty; empty; empty ])) in
   let x2 =
     complex
       [ (phospho ((name ("7")), empty)); (phospho ((name ("52")), empty));
         (complex [ (name ("4")); (name ("23")); (name ("61")) ]) ] in
   let x3 =
     phospho
       ((complex [ (name ("77")); (name ("59")); (name ("4")) ]),
        (singleton (name ("13")))) in
   complex [ x0; x1; x2; x3 ] = complex [ x3; x1; x2; x0 ])
;;

testi
  (84)
  (let x0 =
     ph
       [ (phospho ((name ("92")), empty));
         (complex [ (name ("30")); (name ("66")); (name ("80")) ]);
         (name ("72")) ] in
   let x1 =
     phospho
       ((complex [ (name ("77")); (name ("59")); (name ("4")) ]),
        (union [ empty; empty; empty ])) in
   let x2 =
     phospho
       ((phospho ((name ("33")), empty)), (union [ empty; empty; empty ])) in
   let x3 =
     complex
       [ (phospho ((name ("7")), empty)); (name ("23"));
         (complex [ (name ("96")); (name ("95")); (name ("1")) ]) ] in
   complex [ x0; x1; x2; x3 ] = complex [ x3; x1; x2; x0 ])
;;

testi
  (85)
  (let x0 =
     complex
       [ (name ("48"));
         (complex [ (name ("22")); (name ("79")); (name ("11")) ]);
         (complex [ (name ("67")); (name ("40")); (name ("92")) ]) ] in
   let x1 =
     complex
       [ (phospho ((name ("4")), empty));
         (ph [ (name ("49")); (name ("37")); (name ("95")) ]); (name ("3")) ] in
   let x2 =
     complex
       [ (phospho ((name ("75")), empty));
         (ph [ (name ("73")); (name ("37")); (name ("90")) ]);
         (complex [ (name ("67")); (name ("40")); (name ("92")) ]) ] in
   let x3 = name ("24") in
   complex [ x0; x1; x2; x3 ] = complex [ x3; x2; x1; x0 ])
;;

testi
  (86)
  (let x0 =
     complex
       [ (name ("94")); (ph [ (name ("73")); (name ("18")); (name ("85")) ]);
         (name ("3")) ] in
   let x1 = name ("60") in
   let x2 =
     complex
       [ (phospho ((name ("4")), empty));
         (ph [ (name ("49")); (name ("37")); (name ("95")) ]); (name ("3")) ] in
   let x3 =
     complex
       [ (phospho ((name ("36")), empty)); (phospho ((name ("49")), empty));
         (name ("82")) ] in
   complex [ x0; x1; x2; x3 ] = complex [ x3; x2; x1; x0 ])
;;

testi
  (87)
  (let x0 =
     phospho
       ((phospho ((name ("2")), empty)), (union [ empty; empty; empty ])) in
   let x1 =
     ph
       [ (name ("35")); (name ("32"));
         (complex [ (name ("71")); (name ("12")); (name ("9")) ]) ] in
   let x2 =
     ph
       [ (complex [ (name ("94")); (name ("57")); (name ("26")) ]);
         (complex [ (name ("5")); (name ("90")); (name ("34")) ]);
         (phospho ((name ("60")), empty)) ] in
   let x3 =
     ph
       [ (name ("35"));
         (complex [ (name ("57")); (name ("42")); (name ("96")) ]);
         (name ("45")) ] in
   complex [ x0; x1; x2; x3 ] = complex [ x3; x2; x1; x0 ])
;;

testi
  (88)
  (let x0 =
     complex
       [ (phospho ((name ("36")), empty));
         (complex [ (name ("22")); (name ("13")); (name ("63")) ]);
         (complex [ (name ("67")); (name ("40")); (name ("92")) ]) ] in
   let x1 = name ("60") in
   let x2 = phospho ((name ("91")), (singleton (name ("88")))) in
   let x3 =
     phospho
       ((ph [ (name ("62")); (name ("3")); (name ("47")) ]),
        (union [ empty; empty; empty ])) in
   complex [ x0; x1; x2; x3 ] = complex [ x3; x2; x1; x0 ])
;;

testi
  (89)
  (let x0 =
     phospho
       ((ph [ (name ("62")); (name ("3")); (name ("47")) ]),
        (singleton (name ("55")))) in
   let x1 =
     complex
       [ (phospho ((name ("36")), empty)); (phospho ((name ("49")), empty));
         (name ("82")) ] in
   let x2 =
     ph
       [ (name ("35")); (name ("32"));
         (complex [ (name ("71")); (name ("12")); (name ("9")) ]) ] in
   let x3 =
     complex
       [ (phospho ((name ("36")), empty)); (phospho ((name ("49")), empty));
         (name ("82")) ] in
   complex [ x0; x1; x2; x3 ] = complex [ x3; x2; x1; x0 ])
;;

testi
  (90)
  (let x0 = name ("88") in
   let x1 = phospho ((name ("54")), (union [ empty; empty; empty ])) in
   let x2 = name ("88") in
   let x3 =
     ph
       [ (ph [ (name ("95")); (name ("12")); (name ("66")) ]); (name ("20"));
         (phospho ((name ("70")), empty)) ] in
   complex [ x0; x1; x2; x3 ] = complex [ x2; x1; x0; x3 ])
;;

testi
  (91)
  (let x0 =
     complex
       [ (complex [ (name ("93")); (name ("80")); (name ("65")) ]);
         (name ("75")); (ph [ (name ("25")); (name ("11")); (name ("16")) ]) ] in
   let x1 = phospho ((name ("32")), (union [ empty; empty; empty ])) in
   let x2 =
     complex
       [ (complex [ (name ("76")); (name ("13")); (name ("22")) ]);
         (name ("52")); (phospho ((name ("24")), empty)) ] in
   let x3 =
     complex
       [ (ph [ (name ("6")); (name ("91")); (name ("0")) ]); (name ("76"));
         (phospho ((name ("47")), empty)) ] in
   complex [ x0; x1; x2; x3 ] = complex [ x2; x1; x0; x3 ])
;;

testi
  (92)
  (let x0 =
     complex
       [ (ph [ (name ("6")); (name ("91")); (name ("0")) ]); (name ("21"));
         (complex [ (name ("14")); (name ("55")); (name ("17")) ]) ] in
   let x1 =
     complex
       [ (ph [ (name ("6")); (name ("91")); (name ("0")) ]);
         (ph [ (name ("24")); (name ("25")); (name ("90")) ]);
         (complex [ (name ("65")); (name ("55")); (name ("21")) ]) ] in
   let x2 =
     ph
       [ (complex [ (name ("81")); (name ("55")); (name ("16")) ]);
         (name ("35")); (ph [ (name ("93")); (name ("26")); (name ("49")) ]) ] in
   let x3 = phospho ((name ("33")), (union [ empty; empty; empty ])) in
   complex [ x0; x1; x2; x3 ] = complex [ x2; x1; x0; x3 ])
;;

testi
  (93)
  (let x0 =
     phospho
       ((ph [ (name ("81")); (name ("8")); (name ("58")) ]),
        (union [ empty; empty; empty ])) in
   let x1 = name ("52") in
   let x2 = name ("52") in
   let x3 = name ("17") in
   complex [ x0; x1; x2; x3 ] = complex [ x2; x1; x0; x3 ])
;;

testi
  (94)
  (let x0 = phospho ((name ("32")), (union [ empty; empty; empty ])) in
   let x1 = name ("19") in
   let x2 = name ("99") in
   let x3 =
     complex
       [ (phospho ((name ("11")), empty)); (phospho ((name ("60")), empty));
         (ph [ (name ("9")); (name ("11")); (name ("76")) ]) ] in
   complex [ x0; x1; x2; x3 ] = complex [ x2; x1; x0; x3 ])
;;

testi
  (95)
  (let x0 = name ("20") in
   let x1 =
     complex
       [ (phospho ((name ("47")), empty));
         (ph [ (name ("59")); (name ("29")); (name ("54")) ]);
         (ph [ (name ("7")); (name ("29")); (name ("52")) ]) ] in
   let x2 =
     ph
       [ (complex [ (name ("32")); (name ("2")); (name ("73")) ]);
         (ph [ (name ("43")); (name ("18")); (name ("42")) ]);
         (complex [ (name ("20")); (name ("62")); (name ("36")) ]) ] in
   ph [ (ph [ x0; x1 ]); x2 ] = ph [ x0; x1; x2 ])
;;

testi
  (96)
  (let x0 = name ("2") in
   let x1 =
     ph
       [ (complex [ (name ("70")); (name ("2")); (name ("33")) ]);
         (phospho ((name ("40")), empty)); (name ("56")) ] in
   let x2 =
     complex
       [ (ph [ (name ("30")); (name ("65")); (name ("3")) ]);
         (phospho ((name ("39")), empty)); (name ("70")) ] in
   ph [ (ph [ x0; x1 ]); x2 ] = ph [ x0; x1; x2 ])
;;

testi
  (97)
  (let x0 = name ("20") in
   let x1 =
     phospho
       ((complex [ (name ("18")); (name ("5")); (name ("27")) ]),
        (singleton (name ("31")))) in
   let x2 = name ("10") in ph [ (ph [ x0; x1 ]); x2 ] = ph [ x0; x1; x2 ])
;;

testi
  (98)
  (let x0 =
     ph
       [ (phospho ((name ("29")), empty)); (name ("62"));
         (complex [ (name ("38")); (name ("16")); (name ("44")) ]) ] in
   let x1 =
     ph
       [ (complex [ (name ("17")); (name ("64")); (name ("21")) ]);
         (ph [ (name ("43")); (name ("18")); (name ("42")) ]);
         (ph [ (name ("44")); (name ("23")); (name ("59")) ]) ] in
   let x2 = name ("52") in ph [ (ph [ x0; x1 ]); x2 ] = ph [ x0; x1; x2 ])
;;

testi
  (99)
  (let x0 = name ("2") in
   let x1 =
     ph
       [ (phospho ((name ("8")), empty));
         (ph [ (name ("14")); (name ("34")); (name ("28")) ]);
         (phospho ((name ("9")), empty)) ] in
   let x2 =
     phospho
       ((complex [ (name ("18")); (name ("5")); (name ("36")) ]),
        (union [ empty; empty; empty ])) in
   ph [ (ph [ x0; x1 ]); x2 ] = ph [ x0; x1; x2 ])
;;

testi
  (100)
  (let x0 =
     ph
       [ (complex [ (name ("110")); (name ("44")); (name ("28")) ]);
         (name ("71")); (name ("23")) ] in
   let x1 =
     ph
       [ (complex [ (name ("99")); (name ("24")); (name ("33")) ]);
         (name ("71")); (name ("23")) ] in
   let x2 = name ("114") in
   let x3 =
     complex
       [ (phospho ((name ("79")), empty));
         (complex [ (name ("33")); (name ("53")); (name ("59")) ]);
         (phospho ((name ("3")), empty)) ] in
   let x4 =
     complex
       [ (complex [ (name ("102")); (name ("76")); (name ("75")) ]);
         (ph [ (name ("8")); (name ("69")); (name ("70")) ]);
         (complex [ (name ("98")); (name ("82")); (name ("37")) ]) ] in
   ph [ x0; (ph [ x1; x2 ]); (ph [ x3; x4 ]) ] = ph [ x0; x1; x2; x3; x4 ])
;;

testi
  (101)
  (let x0 =
     complex
       [ (complex [ (name ("110")); (name ("44")); (name ("29")) ]);
         (complex [ (name ("24")); (name ("50")); (name ("64")) ]);
         (phospho ((name ("54")), empty)) ] in
   let x1 =
     phospho
       ((phospho ((name ("69")), empty)), (union [ empty; empty; empty ])) in
   let x2 =
     complex
       [ (complex [ (name ("102")); (name ("76")); (name ("75")) ]);
         (ph [ (name ("8")); (name ("69")); (name ("70")) ]);
         (complex [ (name ("98")); (name ("82")); (name ("37")) ]) ] in
   let x3 = name ("86") in
   let x4 = name ("114") in
   ph [ x0; (ph [ x1; x2 ]); (ph [ x3; x4 ]) ] = ph [ x0; x1; x2; x3; x4 ])
;;

testi
  (102)
  (let x0 =
     ph
       [ (name ("80")); (phospho ((name ("123")), empty));
         (phospho ((name ("19")), empty)) ] in
   let x1 = phospho ((name ("93")), (union [ empty; empty; empty ])) in
   let x2 =
     ph
       [ (name ("114"));
         (complex [ (name ("121")); (name ("22")); (name ("3")) ]);
         (name ("21")) ] in
   let x3 = name ("4") in
   let x4 =
     complex
       [ (phospho ((name ("53")), empty)); (name ("39"));
         (complex [ (name ("56")); (name ("78")); (name ("100")) ]) ] in
   ph [ x0; (ph [ x1; x2 ]); (ph [ x3; x4 ]) ] = ph [ x0; x1; x2; x3; x4 ])
;;

testi
  (103)
  (let x0 =
     phospho ((phospho ((name ("117")), empty)), (singleton (name ("42")))) in
   let x1 = name ("120") in
   let x2 =
     complex
       [ (complex [ (name ("102")); (name ("76")); (name ("75")) ]);
         (ph [ (name ("8")); (name ("69")); (name ("70")) ]);
         (complex [ (name ("98")); (name ("82")); (name ("37")) ]) ] in
   let x3 = name ("4") in
   let x4 =
     complex
       [ (phospho ((name ("53")), empty)); (name ("39"));
         (complex [ (name ("56")); (name ("78")); (name ("100")) ]) ] in
   ph [ x0; (ph [ x1; x2 ]); (ph [ x3; x4 ]) ] = ph [ x0; x1; x2; x3; x4 ])
;;

testi
  (104)
  (let x0 =
     ph [ (name ("80")); (phospho ((name ("33")), empty)); (name ("23")) ] in
   let x1 =
     ph
       [ (name ("80")); (phospho ((name ("123")), empty));
         (phospho ((name ("19")), empty)) ] in
   let x2 = name ("79") in
   let x3 =
     complex
       [ (phospho ((name ("53")), empty)); (name ("39"));
         (complex [ (name ("56")); (name ("78")); (name ("100")) ]) ] in
   let x4 =
     phospho
       ((ph [ (name ("78")); (name ("112")); (name ("43")) ]),
        (singleton (name ("86")))) in
   ph [ x0; (ph [ x1; x2 ]); (ph [ x3; x4 ]) ] = ph [ x0; x1; x2; x3; x4 ])
;;

testi
  (105)
  (let x0 = name ("20") in
   let x1 =
     phospho
       ((ph [ (name ("95")); (name ("4")); (name ("58")) ]),
        (union [ empty; empty; empty ])) in
   let x2 = name ("51") in
   let x3 = name ("40") in
   ph [ (ph [ x0; x1; x2 ]); x3 ] = ph [ x0; x1; x2; x3 ])
;;

testi
  (106)
  (let x0 =
     phospho
       ((ph [ (name ("95")); (name ("4")); (name ("58")) ]),
        (union [ empty; empty; empty ])) in
   let x1 =
     phospho
       ((phospho ((name ("42")), empty)), (union [ empty; empty; empty ])) in
   let x2 =
     phospho
       ((ph [ (name ("95")); (name ("4")); (name ("58")) ]),
        (singleton (name ("78")))) in
   let x3 = phospho ((name ("25")), empty) in
   ph [ (ph [ x0; x1; x2 ]); x3 ] = ph [ x0; x1; x2; x3 ])
;;

testi
  (107)
  (let x0 =
     phospho
       ((phospho ((name ("5")), empty)), (union [ empty; empty; empty ])) in
   let x1 =
     complex
       [ (ph [ (name ("67")); (name ("98")); (name ("32")) ]);
         (complex [ (name ("83")); (name ("34")); (name ("57")) ]);
         (ph [ (name ("55")); (name ("49")); (name ("53")) ]) ] in
   let x2 =
     ph
       [ (complex [ (name ("18")); (name ("60")); (name ("61")) ]);
         (phospho ((name ("39")), empty)); (name ("35")) ] in
   let x3 = phospho ((name ("90")), (union [ empty; empty; empty ])) in
   ph [ (ph [ x0; x1; x2 ]); x3 ] = ph [ x0; x1; x2; x3 ])
;;

testi
  (108)
  (let x0 =
     complex
       [ (ph [ (name ("37")); (name ("84")); (name ("1")) ]);
         (ph [ (name ("89")); (name ("26")); (name ("5")) ]);
         (complex [ (name ("76")); (name ("26")); (name ("5")) ]) ] in
   let x1 = phospho ((name ("90")), (singleton (name ("38")))) in
   let x2 = name ("40") in
   let x3 = phospho ((name ("90")), (union [ empty; empty; empty ])) in
   ph [ (ph [ x0; x1; x2 ]); x3 ] = ph [ x0; x1; x2; x3 ])
;;

testi
  (109)
  (let x0 = name ("40") in
   let x1 = name ("40") in
   let x2 =
     complex
       [ (ph [ (name ("67")); (name ("98")); (name ("32")) ]); (name ("92"));
         (complex [ (name ("63")); (name ("4")); (name ("90")) ]) ] in
   let x3 =
     ph [ (phospho ((name ("84")), empty)); (name ("49")); (name ("35")) ] in
   ph [ (ph [ x0; x1; x2 ]); x3 ] = ph [ x0; x1; x2; x3 ])
;;

testi
  (110)
  (let x0 = phospho ((name ("86")), (union [ empty; empty; empty ])) in
   let x1 = phospho ((name ("11")), (union [ empty; empty; empty ])) in
   let x2 =
     complex
       [ (name ("71")); (phospho ((name ("84")), empty));
         (ph [ (name ("52")); (name ("13")); (name ("60")) ]) ] in
   let x3 = name ("4") in ph [ x0; x1; x2; x3 ] = ph [ x1; x0; x3; x2 ])
;;

testi
  (111)
  (let x0 =
     ph
       [ (name ("78")); (phospho ((name ("33")), empty));
         (phospho ((name ("73")), empty)) ] in
   let x1 = name ("22") in
   let x2 = name ("91") in
   let x3 =
     ph
       [ (name ("78")); (ph [ (name ("1")); (name ("2")); (name ("41")) ]);
         (complex [ (name ("79")); (name ("53")); (name ("6")) ]) ] in
   ph [ x0; x1; x2; x3 ] = ph [ x1; x0; x3; x2 ])
;;

testi
  (112)
  (let x0 =
     ph
       [ (complex [ (name ("95")); (name ("32")); (name ("57")) ]);
         (complex [ (name ("83")); (name ("56")); (name ("3")) ]);
         (name ("99")) ] in
   let x1 =
     complex
       [ (name ("26"));
         (complex [ (name ("47")); (name ("83")); (name ("76")) ]);
         (ph [ (name ("56")); (name ("39")); (name ("54")) ]) ] in
   let x2 = phospho ((name ("61")), (union [ empty; empty; empty ])) in
   let x3 =
     complex
       [ (name ("26"));
         (complex [ (name ("47")); (name ("83")); (name ("76")) ]);
         (ph [ (name ("56")); (name ("39")); (name ("54")) ]) ] in
   ph [ x0; x1; x2; x3 ] = ph [ x1; x0; x3; x2 ])
;;

testi
  (113)
  (let x0 = name ("52") in
   let x1 =
     complex
       [ (name ("26"));
         (complex [ (name ("47")); (name ("83")); (name ("76")) ]);
         (ph [ (name ("56")); (name ("39")); (name ("54")) ]) ] in
   let x2 = phospho ((name ("61")), (union [ empty; empty; empty ])) in
   let x3 =
     ph
       [ (phospho ((name ("36")), empty)); (phospho ((name ("6")), empty));
         (complex [ (name ("79")); (name ("53")); (name ("6")) ]) ] in
   ph [ x0; x1; x2; x3 ] = ph [ x1; x0; x3; x2 ])
;;

testi
  (114)
  (let x0 = phospho ((name ("86")), (union [ empty; empty; empty ])) in
   let x1 =
     ph
       [ (ph [ (name ("90")); (name ("2")); (name ("22")) ]);
         (phospho ((name ("33")), empty));
         (complex [ (name ("93")); (name ("65")); (name ("74")) ]) ] in
   let x2 = name ("29") in
   let x3 =
     ph
       [ (phospho ((name ("64")), empty));
         (ph [ (name ("1")); (name ("2")); (name ("41")) ]); (name ("99")) ] in
   ph [ x0; x1; x2; x3 ] = ph [ x1; x0; x3; x2 ])
;;

testi
  (115)
  (let x0 =
     phospho ((ph [ (name ("6")); (name ("19")); (name ("11")) ]), empty) in
   let x1 =
     complex
       [ (complex [ (name ("84")); (name ("8")); (name ("15")) ]);
         (ph [ (name ("64")); (name ("40")); (name ("17")) ]); (name ("57")) ] in
   let x2 =
     complex
       [ (ph [ (name ("48")); (name ("91")); (name ("6")) ]); (name ("94"));
         (name ("85")) ] in
   let x3 =
     ph
       [ (ph [ (name ("35")); (name ("81")); (name ("33")) ]);
         (complex [ (name ("70")); (name ("21")); (name ("17")) ]);
         (phospho ((name ("53")), empty)) ] in
   ph [ x0; x1; x2; x3 ] = ph [ x3; x1; x2; x0 ])
;;

testi
  (116)
  (let x0 =
     complex
       [ (name ("72"));
         (complex [ (name ("29")); (name ("54")); (name ("90")) ]);
         (phospho ((name ("4")), empty)) ] in
   let x1 = name ("37") in
   let x2 = name ("66") in
   let x3 =
     ph
       [ (ph [ (name ("91")); (name ("6")); (name ("51")) ]); (name ("23"));
         (name ("96")) ] in
   ph [ x0; x1; x2; x3 ] = ph [ x3; x1; x2; x0 ])
;;

testi
  (117)
  (let x0 = name ("99") in
   let x1 = complex [ (name ("25")); (name ("57")); (name ("85")) ] in
   let x2 =
     phospho
       ((phospho ((name ("87")), empty)), (union [ empty; empty; empty ])) in
   let x3 =
     complex
       [ (ph [ (name ("48")); (name ("91")); (name ("6")) ]); (name ("94"));
         (name ("85")) ] in
   ph [ x0; x1; x2; x3 ] = ph [ x3; x1; x2; x0 ])
;;

testi
  (118)
  (let x0 =
     ph
       [ (ph [ (name ("91")); (name ("6")); (name ("51")) ]); (name ("23"));
         (name ("96")) ] in
   let x1 = complex [ (name ("25")); (name ("57")); (name ("85")) ] in
   let x2 =
     complex
       [ (ph [ (name ("48")); (name ("40")); (name ("99")) ]);
         (phospho ((name ("99")), empty)); (name ("57")) ] in
   let x3 =
     complex
       [ (complex [ (name ("84")); (name ("8")); (name ("15")) ]);
         (phospho ((name ("21")), empty));
         (ph [ (name ("32")); (name ("74")); (name ("30")) ]) ] in
   ph [ x0; x1; x2; x3 ] = ph [ x3; x1; x2; x0 ])
;;

testi
  (119)
  (let x0 =
     ph
       [ (ph [ (name ("35")); (name ("81")); (name ("33")) ]);
         (complex [ (name ("66")); (name ("73")); (name ("17")) ]);
         (phospho ((name ("28")), empty)) ] in
   let x1 = name ("67") in
   let x2 =
     complex
       [ (complex [ (name ("84")); (name ("8")); (name ("15")) ]);
         (phospho ((name ("21")), empty));
         (ph [ (name ("32")); (name ("74")); (name ("30")) ]) ] in
   let x3 =
     phospho
       ((ph [ (name ("96")); (name ("2")); (name ("22")) ]),
        (union [ empty; empty; empty ])) in
   ph [ x0; x1; x2; x3 ] = ph [ x3; x1; x2; x0 ])
;;

testi
  (120)
  (let x0 =
     phospho
       ((phospho ((name ("97")), empty)), (union [ empty; empty; empty ])) in
   let x1 =
     complex
       [ (ph [ (name ("2")); (name ("65")); (name ("93")) ]);
         (phospho ((name ("46")), empty));
         (complex [ (name ("61")); (name ("74")); (name ("48")) ]) ] in
   let x2 = name ("87") in
   let x3 = name ("29") in ph [ x0; x1; x2; x3 ] = ph [ x3; x2; x1; x0 ])
;;

testi
  (121)
  (let x0 =
     complex
       [ (phospho ((name ("67")), empty)); (phospho ((name ("46")), empty));
         (phospho ((name ("73")), empty)) ] in
   let x1 =
     phospho ((phospho ((name ("69")), empty)), (singleton (name ("26")))) in
   let x2 = name ("87") in
   let x3 =
     phospho
       ((ph [ (name ("29")); (name ("90")); (name ("17")) ]),
        (singleton (name ("97")))) in
   ph [ x0; x1; x2; x3 ] = ph [ x3; x2; x1; x0 ])
;;

testi
  (122)
  (let x0 =
     ph
       [ (complex [ (name ("47")); (name ("77")); (name ("53")) ]);
         (phospho ((name ("82")), empty));
         (ph [ (name ("54")); (name ("33")); (name ("17")) ]) ] in
   let x1 =
     complex
       [ (ph [ (name ("2")); (name ("65")); (name ("93")) ]);
         (phospho ((name ("46")), empty));
         (complex [ (name ("61")); (name ("74")); (name ("48")) ]) ] in
   let x2 =
     complex
       [ (ph [ (name ("2")); (name ("65")); (name ("93")) ]);
         (phospho ((name ("30")), empty)); (phospho ((name ("31")), empty)) ] in
   let x3 =
     complex
       [ (phospho ((name ("67")), empty)); (phospho ((name ("46")), empty));
         (phospho ((name ("73")), empty)) ] in
   ph [ x0; x1; x2; x3 ] = ph [ x3; x2; x1; x0 ])
;;

testi
  (123)
  (let x0 = name ("75") in
   let x1 =
     phospho ((phospho ((name ("1")), empty)), (singleton (name ("4")))) in
   let x2 = name ("77") in
   let x3 =
     complex
       [ (ph [ (name ("2")); (name ("83")); (name ("37")) ]);
         (ph [ (name ("5")); (name ("34")); (name ("58")) ]); (name ("57")) ] in
   ph [ x0; x1; x2; x3 ] = ph [ x3; x2; x1; x0 ])
;;

testi
  (124)
  (let x0 =
     ph
       [ (ph [ (name ("17")); (name ("9")); (name ("25")) ]);
         (ph [ (name ("98")); (name ("93")); (name ("54")) ]); (name ("96")) ] in
   let x1 =
     ph
       [ (complex [ (name ("89")); (name ("6")); (name ("41")) ]);
         (phospho ((name ("81")), empty)); (phospho ((name ("70")), empty)) ] in
   let x2 = phospho ((name ("10")), (singleton (name ("97")))) in
   let x3 =
     ph
       [ (name ("30")); (ph [ (name ("65")); (name ("49")); (name ("54")) ]);
         (phospho ((name ("30")), empty)) ] in
   ph [ x0; x1; x2; x3 ] = ph [ x3; x2; x1; x0 ])
;;

testi
  (125)
  (let x0 =
     complex
       [ (ph [ (name ("22")); (name ("17")); (name ("52")) ]);
         (ph [ (name ("88")); (name ("50")); (name ("47")) ]);
         (complex [ (name ("75")); (name ("35")); (name ("32")) ]) ] in
   let x1 =
     complex
       [ (phospho ((name ("63")), empty)); (phospho ((name ("53")), empty));
         (ph [ (name ("73")); (name ("28")); (name ("10")) ]) ] in
   let x2 = name ("67") in
   let x3 = name ("68") in ph [ x0; x1; x2; x3 ] = ph [ x2; x1; x0; x3 ])
;;

testi
  (126)
  (let x0 = name ("30") in
   let x1 =
     complex
       [ (name ("98")); (ph [ (name ("88")); (name ("33")); (name ("14")) ]);
         (phospho ((name ("39")), empty)) ] in
   let x2 = name ("93") in
   let x3 = name ("92") in ph [ x0; x1; x2; x3 ] = ph [ x2; x1; x0; x3 ])
;;

testi
  (127)
  (let x0 = phospho ((name ("24")), (union [ empty; empty; empty ])) in
   let x1 =
     ph [ (name ("46")); (phospho ((name ("42")), empty)); (name ("41")) ] in
   let x2 =
     complex
       [ (phospho ((name ("79")), empty)); (phospho ((name ("53")), empty));
         (complex [ (name ("12")); (name ("44")); (name ("2")) ]) ] in
   let x3 = phospho ((name ("24")), (union [ empty; empty; empty ])) in
   ph [ x0; x1; x2; x3 ] = ph [ x2; x1; x0; x3 ])
;;

testi
  (128)
  (let x0 =
     phospho
       ((phospho ((name ("22")), empty)), (union [ empty; empty; empty ])) in
   let x1 =
     phospho
       ((phospho ((name ("79")), empty)), (union [ empty; empty; empty ])) in
   let x2 = name ("30") in
   let x3 = name ("93") in ph [ x0; x1; x2; x3 ] = ph [ x2; x1; x0; x3 ])
;;

testi
  (129)
  (let x0 = phospho ((name ("24")), (singleton (name ("19")))) in
   let x1 =
     ph
       [ (phospho ((name ("10")), empty)); (phospho ((name ("42")), empty));
         (phospho ((name ("84")), empty)) ] in
   let x2 =
     ph
       [ (ph [ (name ("32")); (name ("1")); (name ("3")) ]);
         (phospho ((name ("67")), empty)); (phospho ((name ("84")), empty)) ] in
   let x3 =
     ph
       [ (complex [ (name ("80")); (name ("56")); (name ("40")) ]);
         (phospho ((name ("67")), empty)); (phospho ((name ("22")), empty)) ] in
   ph [ x0; x1; x2; x3 ] = ph [ x2; x1; x0; x3 ])
;;

