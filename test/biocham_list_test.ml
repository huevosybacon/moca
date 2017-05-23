open Biocham_list
;;

open Gentest
;;

testing ("Biocham_list (automatic) - seed: 575776312")
;;

testi
  (0)
  (let x0 = singleton (30) in
   let x1 =
     union
       [ (singleton (60));
         (union [ (singleton (63)); (singleton (12)); (singleton (48)) ]);
         (singleton (74)) ] in
   let x2 = singleton (57) in
   union [ (union [ x0; x1 ]); x2 ] = union [ x0; x1; x2 ])
;;

testi
  (1)
  (let x0 =
     union
       [ (singleton (60));
         (union [ (singleton (63)); (singleton (12)); (singleton (48)) ]);
         (singleton (74)) ] in
   let x1 =
     union
       [ (singleton (64));
         (union [ (singleton (56)); (singleton (52)); (singleton (18)) ]);
         (singleton (10)) ] in
   let x2 = union [ (singleton (10)); (singleton (48)); (singleton (74)) ] in
   union [ (union [ x0; x1 ]); x2 ] = union [ x0; x1; x2 ])
;;

testi
  (2)
  (let x0 =
     union
       [ (singleton (10));
         (union [ (singleton (61)); (singleton (68)); (singleton (32)) ]);
         (singleton (74)) ] in
   let x1 = singleton (57) in
   let x2 = union [ (singleton (7)); (singleton (48)); (singleton (10)) ] in
   union [ (union [ x0; x1 ]); x2 ] = union [ x0; x1; x2 ])
;;

testi
  (3)
  (let x0 = singleton (30) in
   let x1 =
     union
       [ (singleton (60));
         (union [ (singleton (63)); (singleton (12)); (singleton (48)) ]);
         (singleton (74)) ] in
   let x2 = union [ (singleton (10)); (singleton (48)); (singleton (74)) ] in
   union [ (union [ x0; x1 ]); x2 ] = union [ x0; x1; x2 ])
;;

testi
  (4)
  (let x0 = empty in
   let x1 =
     union
       [ (singleton (7)); (singleton (49));
         (union [ (singleton (61)); (singleton (59)); (singleton (33)) ]) ] in
   let x2 = singleton (5) in
   union [ (union [ x0; x1 ]); x2 ] = union [ x0; x1; x2 ])
;;

testi
  (5)
  (let x0 =
     union
       [ (union [ (singleton (40)); (singleton (96)); (singleton (119)) ]);
         (singleton (78)); (union [ empty; (singleton (99)); empty ]) ] in
   let x1 = union [ (singleton (59)); (singleton (54)); (singleton (114)) ] in
   let x2 = singleton (99) in
   let x3 = singleton (73) in
   let x4 =
     union
       [ (union [ (singleton (14)); (singleton (33)); (singleton (84)) ]);
         (singleton (95));
         (union [ (singleton (82)); (singleton (104)); (singleton (74)) ]) ] in
   union [ x0; (union [ x1; x2 ]); (union [ x3; x4 ]) ] =
   union [ x0; x1; x2; x3; x4 ])
;;

testi
  (6)
  (let x0 = singleton (67) in
   let x1 = singleton (64) in
   let x2 =
     union
       [ (union [ (singleton (53)); (singleton (124)); (singleton (53)) ]);
         (union [ (singleton (33)); (singleton (45)); (singleton (21)) ]);
         (union [ (singleton (7)); (singleton (68)); (singleton (20)) ]) ] in
   let x3 = singleton (73) in
   let x4 = singleton (7) in
   union [ x0; (union [ x1; x2 ]); (union [ x3; x4 ]) ] =
   union [ x0; x1; x2; x3; x4 ])
;;

testi
  (7)
  (let x0 =
     union
       [ (singleton (5));
         (union [ (singleton (115)); (singleton (30)); (singleton (21)) ]);
         (singleton (68)) ] in
   let x1 =
     union
       [ (union [ (singleton (14)); (singleton (33)); (singleton (84)) ]);
         (singleton (78)); (singleton (114)) ] in
   let x2 = empty in
   let x3 =
     union
       [ (union [ (singleton (14)); (singleton (33)); (singleton (84)) ]);
         (singleton (52));
         (union [ (singleton (7)); (singleton (68)); (singleton (20)) ]) ] in
   let x4 =
     union
       [ (union [ (singleton (117)); (singleton (11)); (singleton (119)) ]);
         (union [ (singleton (69)); (singleton (36)); (singleton (75)) ]);
         (singleton (68)) ] in
   union [ x0; (union [ x1; x2 ]); (union [ x3; x4 ]) ] =
   union [ x0; x1; x2; x3; x4 ])
;;

testi
  (8)
  (let x0 = union [ (singleton (19)); (singleton (98)); (singleton (13)) ] in
   let x1 = singleton (7) in
   let x2 = union [ (singleton (47)); (singleton (78)); (singleton (23)) ] in
   let x3 = union [ (singleton (59)); (singleton (95)); (singleton (114)) ] in
   let x4 = singleton (67) in
   union [ x0; (union [ x1; x2 ]); (union [ x3; x4 ]) ] =
   union [ x0; x1; x2; x3; x4 ])
;;

testi
  (9)
  (let x0 = singleton (54) in
   let x1 = union [ (singleton (19)); (singleton (98)); (singleton (13)) ] in
   let x2 = singleton (7) in
   let x3 = union [ (singleton (47)); (singleton (78)); (singleton (23)) ] in
   let x4 =
     union
       [ (union [ (singleton (99)); (singleton (55)); (singleton (69)) ]);
         (union [ (singleton (115)); (singleton (30)); (singleton (59)) ]);
         (union [ (singleton (37)); (singleton (106)); (singleton (91)) ]) ] in
   union [ x0; (union [ x1; x2 ]); (union [ x3; x4 ]) ] =
   union [ x0; x1; x2; x3; x4 ])
;;

testi
  (10)
  (let x0 = singleton (97) in
   let x1 =
     union
       [ (singleton (49));
         (union [ (singleton (62)); (singleton (69)); (singleton (50)) ]);
         (union [ (singleton (77)); (singleton (1)); (singleton (93)) ]) ] in
   let x2 = singleton (97) in
   let x3 = singleton (64) in
   union [ (union [ x0; x1; x2 ]); x3 ] = union [ x0; x1; x2; x3 ])
;;

testi
  (11)
  (let x0 = singleton (76) in
   let x1 = singleton (9) in
   let x2 = singleton (47) in
   let x3 = union [ (singleton (14)); (singleton (98)); (singleton (93)) ] in
   union [ (union [ x0; x1; x2 ]); x3 ] = union [ x0; x1; x2; x3 ])
;;

testi
  (12)
  (let x0 =
     union
       [ (singleton (49));
         (union [ (singleton (62)); (singleton (69)); (singleton (50)) ]);
         (union [ (singleton (77)); (singleton (1)); (singleton (93)) ]) ] in
   let x1 = singleton (31) in
   let x2 = singleton (1) in
   let x3 = union [ (singleton (2)); (singleton (98)); (singleton (99)) ] in
   union [ (union [ x0; x1; x2 ]); x3 ] = union [ x0; x1; x2; x3 ])
;;

testi
  (13)
  (let x0 =
     union
       [ (singleton (14)); (singleton (63));
         (union [ (singleton (59)); (singleton (46)); (singleton (85)) ]) ] in
   let x1 =
     union
       [ (union [ (singleton (45)); (singleton (27)); (singleton (32)) ]);
         (union [ (singleton (62)); (singleton (69)); (singleton (50)) ]);
         (union [ (singleton (9)); (singleton (71)); (singleton (93)) ]) ] in
   let x2 =
     union
       [ (singleton (4)); (singleton (11));
         (union [ (singleton (59)); (singleton (46)); (singleton (85)) ]) ] in
   let x3 = singleton (9) in
   union [ (union [ x0; x1; x2 ]); x3 ] = union [ x0; x1; x2; x3 ])
;;

testi
  (14)
  (let x0 = singleton (64) in
   let x1 = union [ (singleton (14)); (singleton (98)); (singleton (93)) ] in
   let x2 =
     union
       [ (singleton (14)); (singleton (63));
         (union [ (singleton (59)); (singleton (46)); (singleton (85)) ]) ] in
   let x3 =
     union
       [ (union [ (singleton (45)); (singleton (27)); (singleton (32)) ]);
         (singleton (98));
         (union [ (singleton (77)); (singleton (57)); (singleton (93)) ]) ] in
   union [ (union [ x0; x1; x2 ]); x3 ] = union [ x0; x1; x2; x3 ])
;;

testi
  (15)
  (let x0 =
     union
       [ (singleton (32)); (union [ empty; empty; (singleton (28)) ]);
         (singleton (28)) ] in
   let x1 = singleton (24) in union [ x0; empty; x1 ] = union [ x0; x1 ])
;;

testi
  (16)
  (let x0 = singleton (1) in
   let x1 =
     union
       [ (singleton (32)); (union [ empty; empty; (singleton (28)) ]);
         (singleton (28)) ] in
   union [ x0; empty; x1 ] = union [ x0; x1 ])
;;

testi
  (17)
  (let x0 = singleton (16) in
   let x1 = singleton (19) in union [ x0; empty; x1 ] = union [ x0; x1 ])
;;

testi
  (18)
  (let x0 = singleton (1) in
   let x1 =
     union
       [ (singleton (49));
         (union [ (singleton (16)); (singleton (20)); (singleton (26)) ]);
         (singleton (25)) ] in
   union [ x0; empty; x1 ] = union [ x0; x1 ])
;;

testi
  (19)
  (let x0 = singleton (44) in
   let x1 =
     union
       [ (singleton (49));
         (union [ (singleton (16)); (singleton (20)); (singleton (26)) ]);
         (singleton (25)) ] in
   union [ x0; empty; x1 ] = union [ x0; x1 ])
;;

testi (20) (let x0 = singleton (6) in union [ empty; x0 ] = x0)
;;

testi (21) (let x0 = singleton (6) in union [ empty; x0 ] = x0)
;;

testi
  (22)
  (let x0 =
     union
       [ (singleton (5));
         (union [ (singleton (16)); (singleton (12)); (singleton (4)) ]);
         (union [ (singleton (7)); (singleton (9)); (singleton (17)) ]) ] in
   union [ empty; x0 ] = x0)
;;

testi (23) (let x0 = singleton (6) in union [ empty; x0 ] = x0)
;;

testi
  (24)
  (let x0 =
     union
       [ (union [ (singleton (23)); empty; (singleton (3)) ]);
         (union [ (singleton (16)); (singleton (12)); (singleton (4)) ]);
         (union [ (singleton (7)); (singleton (9)); (singleton (17)) ]) ] in
   union [ empty; x0 ] = x0)
;;

testi
  (25)
  (let x0 =
     union
       [ (union [ (singleton (15)); (singleton (13)); (singleton (6)) ]);
         (singleton (24)); (singleton (8)) ] in
   union [ x0; empty; empty ] = x0)
;;

testi (26) (let x0 = singleton (0) in union [ x0; empty; empty ] = x0)
;;

testi
  (27)
  (let x0 =
     union
       [ (union [ (singleton (15)); (singleton (13)); (singleton (6)) ]);
         (singleton (24)); (singleton (8)) ] in
   union [ x0; empty; empty ] = x0)
;;

testi (28) (let x0 = singleton (9) in union [ x0; empty; empty ] = x0)
;;

testi
  (29)
  (let x0 =
     union
       [ (union [ (singleton (15)); (singleton (13)); (singleton (6)) ]);
         (singleton (24)); (singleton (8)) ] in
   union [ x0; empty; empty ] = x0)
;;

testi
  (30)
  (let x0 = singleton (95) in
   let x1 =
     union
       [ (singleton (19));
         (union [ (singleton (20)); (singleton (5)); (singleton (11)) ]);
         (singleton (63)) ] in
   let x2 = singleton (29) in
   let x3 = singleton (90) in
   union [ x0; x1; x2; x3 ] = union [ x1; x0; x3; x2 ])
;;

testi
  (31)
  (let x0 =
     union
       [ (union [ (singleton (74)); (singleton (31)); (singleton (97)) ]);
         (union [ (singleton (16)); (singleton (18)); (singleton (45)) ]);
         (singleton (90)) ] in
   let x1 = singleton (51) in
   let x2 =
     union
       [ (union [ (singleton (97)); (singleton (31)); (singleton (30)) ]);
         (singleton (71));
         (union [ (singleton (37)); (singleton (23)); (singleton (73)) ]) ] in
   let x3 = singleton (29) in
   union [ x0; x1; x2; x3 ] = union [ x1; x0; x3; x2 ])
;;

testi
  (32)
  (let x0 =
     union
       [ (singleton (19));
         (union [ (singleton (20)); (singleton (5)); (singleton (11)) ]);
         (singleton (63)) ] in
   let x1 = union [ empty; (singleton (84)); (singleton (97)) ] in
   let x2 = singleton (95) in
   let x3 =
     union
       [ (union [ (singleton (74)); empty; (singleton (30)) ]);
         (singleton (37));
         (union [ (singleton (49)); (singleton (44)); (singleton (35)) ]) ] in
   union [ x0; x1; x2; x3 ] = union [ x1; x0; x3; x2 ])
;;

testi
  (33)
  (let x0 =
     union
       [ (singleton (19)); (singleton (37));
         (union [ (singleton (37)); (singleton (23)); (singleton (73)) ]) ] in
   let x1 = singleton (29) in
   let x2 = singleton (51) in
   let x3 = singleton (29) in
   union [ x0; x1; x2; x3 ] = union [ x1; x0; x3; x2 ])
;;

testi
  (34)
  (let x0 =
     union
       [ (singleton (19)); (singleton (37));
         (union [ (singleton (37)); (singleton (23)); (singleton (73)) ]) ] in
   let x1 =
     union
       [ (union [ (singleton (74)); empty; (singleton (30)) ]);
         (union [ (singleton (47)); (singleton (80)); (singleton (11)) ]);
         (union [ (singleton (47)); (singleton (23)); (singleton (0)) ]) ] in
   let x2 = singleton (54) in
   let x3 = singleton (95) in
   union [ x0; x1; x2; x3 ] = union [ x1; x0; x3; x2 ])
;;

testi
  (35)
  (let x0 =
     union
       [ (singleton (36)); (singleton (67));
         (union [ (singleton (92)); (singleton (31)); (singleton (73)) ]) ] in
   let x1 = singleton (91) in
   let x2 = singleton (52) in
   let x3 = singleton (11) in
   union [ x0; x1; x2; x3 ] = union [ x3; x1; x2; x0 ])
;;

testi
  (36)
  (let x0 = singleton (11) in
   let x1 =
     union
       [ (union [ (singleton (84)); (singleton (52)); (singleton (41)) ]);
         (union [ (singleton (6)); (singleton (0)); (singleton (42)) ]);
         (singleton (70)) ] in
   let x2 =
     union
       [ (union [ (singleton (84)); (singleton (52)); (singleton (41)) ]);
         (singleton (6));
         (union [ (singleton (92)); (singleton (31)); (singleton (73)) ]) ] in
   let x3 =
     union
       [ (union [ (singleton (84)); (singleton (50)); (singleton (41)) ]);
         (union [ (singleton (47)); (singleton (38)); (singleton (91)) ]);
         (singleton (78)) ] in
   union [ x0; x1; x2; x3 ] = union [ x3; x1; x2; x0 ])
;;

testi
  (37)
  (let x0 =
     union
       [ (union [ (singleton (84)); (singleton (52)); (singleton (41)) ]);
         (union [ (singleton (6)); (singleton (0)); (singleton (42)) ]);
         (singleton (82)) ] in
   let x1 = singleton (11) in
   let x2 = singleton (64) in
   let x3 =
     union
       [ (singleton (36)); (singleton (67));
         (union [ (singleton (92)); (singleton (31)); (singleton (73)) ]) ] in
   union [ x0; x1; x2; x3 ] = union [ x3; x1; x2; x0 ])
;;

testi
  (38)
  (let x0 = singleton (67) in
   let x1 = singleton (67) in
   let x2 = singleton (67) in
   let x3 =
     union
       [ (union [ (singleton (84)); (singleton (52)); (singleton (41)) ]);
         (union [ (singleton (6)); (singleton (0)); (singleton (42)) ]);
         (singleton (82)) ] in
   union [ x0; x1; x2; x3 ] = union [ x3; x1; x2; x0 ])
;;

testi
  (39)
  (let x0 = singleton (8) in
   let x1 = singleton (34) in
   let x2 =
     union
       [ (union [ (singleton (45)); (singleton (50)); (singleton (23)) ]);
         (singleton (67)); (singleton (82)) ] in
   let x3 =
     union
       [ (union [ (singleton (84)); (singleton (50)); (singleton (41)) ]);
         (union [ (singleton (47)); (singleton (38)); (singleton (91)) ]);
         (singleton (78)) ] in
   union [ x0; x1; x2; x3 ] = union [ x3; x1; x2; x0 ])
;;

testi
  (40)
  (let x0 =
     union
       [ (union [ (singleton (20)); (singleton (36)); (singleton (92)) ]);
         (union [ (singleton (81)); (singleton (93)); (singleton (27)) ]);
         (singleton (28)) ] in
   let x1 =
     union
       [ (singleton (0));
         (union [ (singleton (34)); empty; (singleton (74)) ]);
         (singleton (63)) ] in
   let x2 = singleton (98) in
   let x3 =
     union
       [ (union [ empty; (singleton (96)); (singleton (1)) ]);
         (singleton (29));
         (union [ (singleton (48)); (singleton (39)); (singleton (43)) ]) ] in
   union [ x0; x1; x2; x3 ] = union [ x3; x2; x1; x0 ])
;;

testi
  (41)
  (let x0 = singleton (2) in
   let x1 = singleton (2) in
   let x2 =
     union
       [ (union [ empty; (singleton (96)); (singleton (1)) ]);
         (singleton (39)); (singleton (53)) ] in
   let x3 =
     union
       [ (union [ (singleton (15)); (singleton (36)); (singleton (92)) ]);
         (singleton (63));
         (union [ (singleton (17)); (singleton (72)); (singleton (84)) ]) ] in
   union [ x0; x1; x2; x3 ] = union [ x3; x2; x1; x0 ])
;;

testi
  (42)
  (let x0 =
     union
       [ (union [ (singleton (20)); (singleton (36)); (singleton (92)) ]);
         (union [ (singleton (81)); (singleton (93)); (singleton (27)) ]);
         (singleton (35)) ] in
   let x1 =
     union
       [ (union [ (singleton (20)); (singleton (36)); (singleton (92)) ]);
         (union [ (singleton (81)); (singleton (93)); (singleton (27)) ]);
         (singleton (28)) ] in
   let x2 = singleton (9) in
   let x3 =
     union
       [ (union [ (singleton (15)); (singleton (36)); (singleton (92)) ]);
         (singleton (63));
         (union [ (singleton (17)); (singleton (72)); (singleton (84)) ]) ] in
   union [ x0; x1; x2; x3 ] = union [ x3; x2; x1; x0 ])
;;

testi
  (43)
  (let x0 = singleton (2) in
   let x1 = singleton (23) in
   let x2 =
     union
       [ (union [ (singleton (20)); (singleton (36)); (singleton (92)) ]);
         (union [ (singleton (84)); (singleton (93)); (singleton (93)) ]);
         (singleton (63)) ] in
   let x3 = singleton (47) in
   union [ x0; x1; x2; x3 ] = union [ x3; x2; x1; x0 ])
;;

testi
  (44)
  (let x0 =
     union
       [ (union [ empty; (singleton (96)); (singleton (1)) ]);
         (union [ empty; (singleton (72)); (singleton (71)) ]);
         (singleton (43)) ] in
   let x1 = singleton (23) in
   let x2 =
     union
       [ (union [ empty; (singleton (96)); (singleton (1)) ]);
         (singleton (39)); (singleton (53)) ] in
   let x3 =
     union
       [ (union [ empty; (singleton (96)); (singleton (1)) ]);
         (singleton (29));
         (union [ (singleton (48)); (singleton (39)); (singleton (43)) ]) ] in
   union [ x0; x1; x2; x3 ] = union [ x3; x2; x1; x0 ])
;;

testi
  (45)
  (let x0 =
     union
       [ (union [ (singleton (18)); (singleton (48)); (singleton (9)) ]);
         (union [ (singleton (97)); (singleton (73)); (singleton (5)) ]);
         (union [ empty; (singleton (70)); (singleton (32)) ]) ] in
   let x1 = singleton (53) in
   let x2 = union [ (singleton (50)); (singleton (90)); (singleton (19)) ] in
   let x3 =
     union
       [ (union [ (singleton (18)); (singleton (48)); (singleton (9)) ]);
         (union [ (singleton (97)); (singleton (73)); (singleton (5)) ]);
         (union [ empty; (singleton (70)); (singleton (32)) ]) ] in
   union [ x0; x1; x2; x3 ] = union [ x2; x1; x0; x3 ])
;;

testi
  (46)
  (let x0 = singleton (93) in
   let x1 = singleton (70) in
   let x2 =
     union
       [ (singleton (32));
         (union [ (singleton (2)); (singleton (23)); (singleton (16)) ]);
         (union [ (singleton (83)); (singleton (70)); (singleton (9)) ]) ] in
   let x3 =
     union
       [ (union [ (singleton (18)); (singleton (48)); (singleton (9)) ]);
         (union [ (singleton (68)); (singleton (49)); (singleton (5)) ]);
         (union [ empty; (singleton (99)); (singleton (32)) ]) ] in
   union [ x0; x1; x2; x3 ] = union [ x2; x1; x0; x3 ])
;;

testi
  (47)
  (let x0 = singleton (26) in
   let x1 = singleton (9) in
   let x2 =
     union
       [ (union [ (singleton (18)); (singleton (48)); (singleton (9)) ]);
         (union [ (singleton (68)); (singleton (49)); (singleton (5)) ]);
         (union [ empty; (singleton (99)); (singleton (32)) ]) ] in
   let x3 =
     union
       [ (union [ (singleton (18)); (singleton (48)); (singleton (9)) ]);
         (union [ (singleton (97)); (singleton (58)); (singleton (33)) ]);
         (singleton (15)) ] in
   union [ x0; x1; x2; x3 ] = union [ x2; x1; x0; x3 ])
;;

testi
  (48)
  (let x0 = singleton (20) in
   let x1 =
     union
       [ (union [ (singleton (18)); (singleton (4)); (singleton (98)) ]);
         (union [ (singleton (68)); (singleton (49)); (singleton (5)) ]);
         (singleton (58)) ] in
   let x2 =
     union
       [ (singleton (32));
         (union [ (singleton (2)); (singleton (23)); (singleton (16)) ]);
         (union [ (singleton (83)); (singleton (70)); (singleton (9)) ]) ] in
   let x3 =
     union
       [ (union [ (singleton (92)); (singleton (1)); (singleton (9)) ]);
         (union [ (singleton (21)); (singleton (54)); (singleton (59)) ]);
         (singleton (18)) ] in
   union [ x0; x1; x2; x3 ] = union [ x2; x1; x0; x3 ])
;;

testi
  (49)
  (let x0 = singleton (20) in
   let x1 = singleton (85) in
   let x2 =
     union
       [ (singleton (32));
         (union [ (singleton (2)); (singleton (23)); (singleton (16)) ]);
         (union [ (singleton (83)); (singleton (70)); (singleton (9)) ]) ] in
   let x3 = singleton (49) in
   union [ x0; x1; x2; x3 ] = union [ x2; x1; x0; x3 ])
;;

testi
  (50)
  (let x0 =
     union
       [ empty; (union [ (singleton (21)); (singleton (0)); empty ]);
         (union [ (singleton (23)); (singleton (3)); (singleton (14)) ]) ] in
   union [ x0; x0 ] = x0)
;;

testi
  (51)
  (let x0 =
     union
       [ (union [ (singleton (24)); (singleton (1)); (singleton (20)) ]);
         (singleton (14));
         (union [ (singleton (23)); (singleton (3)); (singleton (14)) ]) ] in
   union [ x0; x0 ] = x0)
;;

testi
  (52)
  (let x0 =
     union
       [ (union [ (singleton (24)); (singleton (1)); (singleton (20)) ]);
         (singleton (14));
         (union [ (singleton (23)); (singleton (3)); (singleton (14)) ]) ] in
   union [ x0; x0 ] = x0)
;;

testi
  (53)
  (let x0 =
     union
       [ (union [ (singleton (24)); (singleton (1)); (singleton (20)) ]);
         (union [ (singleton (21)); (singleton (0)); empty ]);
         (union [ (singleton (23)); (singleton (3)); (singleton (14)) ]) ] in
   union [ x0; x0 ] = x0)
;;

testi
  (54)
  (let x0 =
     union
       [ (union [ (singleton (24)); (singleton (1)); (singleton (20)) ]);
         (singleton (14));
         (union [ (singleton (23)); (singleton (3)); (singleton (14)) ]) ] in
   union [ x0; x0 ] = x0)
;;

testi
  (55)
  (let x0 =
     union
       [ (singleton (70)); (union [ (singleton (3)); empty; empty ]);
         (singleton (66)) ] in
   let x1 = singleton (45) in
   let x2 =
     union
       [ (union [ (singleton (13)); (singleton (12)); (singleton (0)) ]);
         (union [ (singleton (3)); (singleton (56)); (singleton (41)) ]);
         (singleton (14)) ] in
   union [ x0; x1; x1; x2 ] = union [ x0; x1; x2 ])
;;

testi
  (56)
  (let x0 = singleton (59) in
   let x1 =
     union
       [ (singleton (70)); (singleton (28));
         (union [ (singleton (18)); (singleton (0)); (singleton (24)) ]) ] in
   let x2 =
     union
       [ (union [ (singleton (13)); (singleton (49)); empty ]);
         (union [ (singleton (37)); empty; (singleton (27)) ]);
         (singleton (14)) ] in
   union [ x0; x1; x1; x2 ] = union [ x0; x1; x2 ])
;;

testi
  (57)
  (let x0 = singleton (64) in
   let x1 =
     union
       [ (singleton (70)); (singleton (28));
         (union [ (singleton (18)); (singleton (0)); (singleton (24)) ]) ] in
   let x2 =
     union
       [ (union [ (singleton (67)); (singleton (19)); empty ]);
         (union [ (singleton (3)); (singleton (56)); (singleton (41)) ]);
         (singleton (14)) ] in
   union [ x0; x1; x1; x2 ] = union [ x0; x1; x2 ])
;;

testi
  (58)
  (let x0 =
     union
       [ (union [ (singleton (13)); (singleton (49)); empty ]);
         (union [ (singleton (37)); empty; (singleton (27)) ]);
         (singleton (14)) ] in
   let x1 = singleton (53) in
   let x2 =
     union
       [ (singleton (27));
         (union [ (singleton (3)); (singleton (59)); (singleton (39)) ]);
         (union [ (singleton (18)); (singleton (0)); (singleton (24)) ]) ] in
   union [ x0; x1; x1; x2 ] = union [ x0; x1; x2 ])
;;

testi
  (59)
  (let x0 =
     union
       [ (union [ (singleton (13)); (singleton (38)); (singleton (34)) ]);
         (union [ (singleton (37)); empty; (singleton (27)) ]);
         (union [ (singleton (18)); (singleton (0)); (singleton (24)) ]) ] in
   let x1 =
     union
       [ (singleton (59));
         (union [ (singleton (37)); empty; (singleton (31)) ]);
         (union [ (singleton (18)); (singleton (0)); (singleton (24)) ]) ] in
   let x2 = singleton (64) in union [ x0; x1; x1; x2 ] = union [ x0; x1; x2 ])
;;

testi
  (60)
  (let x0 =
     phospho
       ((ph [ (name ("57")); (name ("69")); (name ("38")) ]),
        (union [ empty; empty; empty ])) in
   let x1 =
     ph
       [ (phospho ((name ("14")), empty));
         (complex [ (name ("48")); (name ("20")); (name ("42")) ]);
         (complex [ (name ("66")); (name ("58")); (name ("22")) ]) ] in
   let x2 = phospho ((name ("64")), (union [ empty; empty; empty ])) in
   complex [ (complex [ x0; x1 ]); x2 ] = complex [ x0; x1; x2 ])
;;

testi
  (61)
  (let x0 =
     ph
       [ (name ("47")); (phospho ((name ("20")), empty));
         (phospho ((name ("14")), empty)) ] in
   let x1 = name ("38") in
   let x2 =
     ph
       [ (name ("52")); (ph [ (name ("3")); (name ("2")); (name ("65")) ]);
         (phospho ((name ("22")), empty)) ] in
   complex [ (complex [ x0; x1 ]); x2 ] = complex [ x0; x1; x2 ])
;;

testi
  (62)
  (let x0 =
     complex
       [ (complex [ (name ("23")); (name ("72")); (name ("9")) ]);
         (ph [ (name ("28")); (name ("2")); (name ("55")) ]);
         (ph [ (name ("13")); (name ("62")); (name ("74")) ]) ] in
   let x1 =
     ph
       [ (name ("1")); (ph [ (name ("17")); (name ("50")); (name ("42")) ]);
         (name ("29")) ] in
   let x2 =
     phospho
       ((ph [ (name ("16")); (name ("21")); (name ("23")) ]),
        (singleton (name ("15")))) in
   complex [ (complex [ x0; x1 ]); x2 ] = complex [ x0; x1; x2 ])
;;

testi
  (63)
  (let x0 =
     complex
       [ (complex [ (name ("23")); (name ("72")); (name ("9")) ]);
         (ph [ (name ("28")); (name ("2")); (name ("55")) ]);
         (ph [ (name ("13")); (name ("62")); (name ("74")) ]) ] in
   let x1 = complex [ (name ("58")); (name ("38")); (name ("49")) ] in
   let x2 = complex [ (name ("58")); (name ("38")); (name ("49")) ] in
   complex [ (complex [ x0; x1 ]); x2 ] = complex [ x0; x1; x2 ])
;;

testi
  (64)
  (let x0 =
     ph
       [ (complex [ (name ("57")); (name ("58")); (name ("42")) ]);
         (ph [ (name ("62")); (name ("21")); (name ("7")) ]); (name ("12")) ] in
   let x1 =
     phospho
       ((ph [ (name ("16")); (name ("21")); (name ("23")) ]),
        (union [ empty; empty; empty ])) in
   let x2 =
     phospho
       ((complex [ (name ("48")); (name ("21")); (name ("6")) ]),
        (union [ empty; empty; empty ])) in
   complex [ (complex [ x0; x1 ]); x2 ] = complex [ x0; x1; x2 ])
;;

testi
  (65)
  (let x0 =
     phospho
       ((ph [ (name ("38")); (name ("118")); (name ("71")) ]),
        (singleton (name ("86")))) in
   let x1 =
     phospho
       ((complex [ (name ("6")); (name ("53")); (name ("15")) ]),
        (union [ empty; empty; empty ])) in
   let x2 =
     complex
       [ (phospho ((name ("106")), empty)); (phospho ((name ("31")), empty));
         (complex [ (name ("74")); (name ("95")); (name ("105")) ]) ] in
   let x3 = name ("120") in
   let x4 =
     complex
       [ (complex [ (name ("86")); (name ("16")); (name ("23")) ]);
         (ph [ (name ("81")); (name ("102")); (name ("18")) ]);
         (complex [ (name ("47")); (name ("95")); (name ("0")) ]) ] in
   complex [ x0; (complex [ x1; x2 ]); (complex [ x3; x4 ]) ] =
   complex [ x0; x1; x2; x3; x4 ])
;;

testi
  (66)
  (let x0 = name ("64") in
   let x1 =
     complex
       [ (phospho ((name ("71")), empty)); (phospho ((name ("31")), empty));
         (phospho ((name ("94")), empty)) ] in
   let x2 = name ("43") in
   let x3 =
     phospho
       ((ph [ (name ("32")); (name ("49")); (name ("71")) ]),
        (singleton (name ("109")))) in
   let x4 = name ("64") in
   complex [ x0; (complex [ x1; x2 ]); (complex [ x3; x4 ]) ] =
   complex [ x0; x1; x2; x3; x4 ])
;;

testi
  (67)
  (let x0 = name ("64") in
   let x1 =
     complex
       [ (phospho ((name ("71")), empty)); (phospho ((name ("31")), empty));
         (phospho ((name ("94")), empty)) ] in
   let x2 =
     ph
       [ (phospho ((name ("80")), empty)); (name ("119"));
         (complex [ (name ("119")); (name ("25")); (name ("102")) ]) ] in
   let x3 =
     complex
       [ (complex [ (name ("86")); (name ("16")); (name ("23")) ]);
         (ph [ (name ("81")); (name ("102")); (name ("18")) ]);
         (complex [ (name ("47")); (name ("95")); (name ("0")) ]) ] in
   let x4 = name ("23") in
   complex [ x0; (complex [ x1; x2 ]); (complex [ x3; x4 ]) ] =
   complex [ x0; x1; x2; x3; x4 ])
;;

testi
  (68)
  (let x0 =
     complex
       [ (complex [ (name ("39")); (name ("33")); (name ("58")) ]);
         (complex [ (name ("85")); (name ("74")); (name ("124")) ]);
         (name ("85")) ] in
   let x1 = phospho ((name ("18")), (union [ empty; empty; empty ])) in
   let x2 = name ("41") in
   let x3 =
     complex
       [ (complex [ (name ("86")); (name ("16")); (name ("23")) ]);
         (ph [ (name ("81")); (name ("102")); (name ("18")) ]);
         (complex [ (name ("47")); (name ("95")); (name ("0")) ]) ] in
   let x4 =
     complex
       [ (complex [ (name ("86")); (name ("16")); (name ("23")) ]);
         (ph [ (name ("81")); (name ("102")); (name ("18")) ]);
         (complex [ (name ("47")); (name ("95")); (name ("0")) ]) ] in
   complex [ x0; (complex [ x1; x2 ]); (complex [ x3; x4 ]) ] =
   complex [ x0; x1; x2; x3; x4 ])
;;

testi
  (69)
  (let x0 =
     complex
       [ (phospho ((name ("106")), empty));
         (complex [ (name ("85")); (name ("76")); (name ("45")) ]);
         (phospho ((name ("100")), empty)) ] in
   let x1 =
     complex
       [ (phospho ((name ("106")), empty)); (phospho ((name ("31")), empty));
         (complex [ (name ("74")); (name ("95")); (name ("105")) ]) ] in
   let x2 =
     ph [ (name ("98")); (phospho ((name ("29")), empty)); (name ("49")) ] in
   let x3 = name ("0") in
   let x4 =
     complex
       [ (phospho ((name ("104")), empty)); (phospho ((name ("31")), empty));
         (phospho ((name ("94")), empty)) ] in
   complex [ x0; (complex [ x1; x2 ]); (complex [ x3; x4 ]) ] =
   complex [ x0; x1; x2; x3; x4 ])
;;

testi
  (70)
  (let x0 =
     ph
       [ (complex [ (name ("63")); (name ("45")); (name ("41")) ]);
         (complex [ (name ("26")); (name ("6")); (name ("1")) ]);
         (phospho ((name ("50")), empty)) ] in
   let x1 =
     phospho
       ((complex [ (name ("67")); (name ("75")); (name ("20")) ]),
        (union [ empty; empty; empty ])) in
   let x2 = name ("80") in
   let x3 =
     phospho
       ((complex [ (name ("84")); (name ("13")); (name ("23")) ]),
        (singleton (name ("67")))) in
   complex [ (complex [ x0; x1; x2 ]); x3 ] = complex [ x0; x1; x2; x3 ])
;;

testi
  (71)
  (let x0 =
     ph
       [ (complex [ (name ("63")); (name ("45")); (name ("41")) ]);
         (complex [ (name ("26")); (name ("6")); (name ("1")) ]);
         (phospho ((name ("50")), empty)) ] in
   let x1 = name ("76") in
   let x2 = name ("79") in
   let x3 =
     phospho
       ((complex [ (name ("24")); (name ("13")); (name ("1")) ]),
        (union [ empty; empty; empty ])) in
   complex [ (complex [ x0; x1; x2 ]); x3 ] = complex [ x0; x1; x2; x3 ])
;;

testi
  (72)
  (let x0 =
     phospho
       ((ph [ (name ("97")); (name ("39")); (name ("69")) ]),
        (union [ empty; empty; empty ])) in
   let x1 =
     complex
       [ (phospho ((name ("53")), empty)); (name ("75"));
         (complex [ (name ("57")); (name ("14")); (name ("44")) ]) ] in
   let x2 =
     complex
       [ (complex [ (name ("72")); (name ("5")); (name ("36")) ]);
         (name ("28")); (name ("72")) ] in
   let x3 =
     complex
       [ (ph [ (name ("76")); (name ("12")); (name ("7")) ]);
         (complex [ (name ("64")); (name ("24")); (name ("51")) ]);
         (complex [ (name ("33")); (name ("57")); (name ("92")) ]) ] in
   complex [ (complex [ x0; x1; x2 ]); x3 ] = complex [ x0; x1; x2; x3 ])
;;

testi
  (73)
  (let x0 =
     complex
       [ (ph [ (name ("76")); (name ("65")); (name ("69")) ]);
         (ph [ (name ("44")); (name ("90")); (name ("16")) ]); (name ("33")) ] in
   let x1 =
     complex
       [ (phospho ((name ("53")), empty));
         (complex [ (name ("64")); (name ("3")); (name ("1")) ]);
         (complex [ (name ("33")); (name ("57")); (name ("92")) ]) ] in
   let x2 = name ("85") in
   let x3 =
     ph
       [ (complex [ (name ("91")); (name ("69")); (name ("23")) ]);
         (phospho ((name ("4")), empty)); (phospho ((name ("50")), empty)) ] in
   complex [ (complex [ x0; x1; x2 ]); x3 ] = complex [ x0; x1; x2; x3 ])
;;

testi
  (74)
  (let x0 =
     complex
       [ (ph [ (name ("76")); (name ("65")); (name ("69")) ]);
         (complex [ (name ("65")); (name ("30")); (name ("51")) ]);
         (ph [ (name ("15")); (name ("39")); (name ("19")) ]) ] in
   let x1 =
     complex
       [ (phospho ((name ("53")), empty)); (name ("75"));
         (complex [ (name ("57")); (name ("14")); (name ("44")) ]) ] in
   let x2 =
     complex
       [ (ph [ (name ("76")); (name ("65")); (name ("69")) ]);
         (complex [ (name ("65")); (name ("30")); (name ("51")) ]);
         (ph [ (name ("15")); (name ("39")); (name ("19")) ]) ] in
   let x3 = name ("98") in
   complex [ (complex [ x0; x1; x2 ]); x3 ] = complex [ x0; x1; x2; x3 ])
;;

testi
  (75)
  (let x0 = name ("29") in
   let x1 =
     phospho ((phospho ((name ("55")), empty)), (singleton (name ("35")))) in
   let x2 = name ("29") in
   let x3 =
     ph [ (name ("2")); (phospho ((name ("9")), empty)); (name ("50")) ] in
   complex [ x0; x1; x2; x3 ] = complex [ x1; x0; x3; x2 ])
;;

testi
  (76)
  (let x0 =
     complex
       [ (complex [ (name ("58")); (name ("16")); (name ("23")) ]);
         (name ("39")); (ph [ (name ("70")); (name ("9")); (name ("60")) ]) ] in
   let x1 =
     ph
       [ (ph [ (name ("56")); (name ("55")); (name ("6")) ]);
         (ph [ (name ("3")); (name ("31")); (name ("74")) ]);
         (complex [ (name ("75")); (name ("98")); (name ("60")) ]) ] in
   let x2 =
     ph
       [ (ph [ (name ("56")); (name ("1")); (name ("20")) ]); (name ("11"));
         (complex [ (name ("82")); (name ("34")); (name ("60")) ]) ] in
   let x3 = phospho ((name ("6")), (singleton (name ("46")))) in
   complex [ x0; x1; x2; x3 ] = complex [ x1; x0; x3; x2 ])
;;

testi
  (77)
  (let x0 = name ("67") in
   let x1 =
     ph
       [ (ph [ (name ("56")); (name ("55")); (name ("6")) ]);
         (ph [ (name ("3")); (name ("31")); (name ("74")) ]);
         (complex [ (name ("75")); (name ("98")); (name ("60")) ]) ] in
   let x2 =
     ph
       [ (ph [ (name ("56")); (name ("1")); (name ("20")) ]); (name ("11"));
         (complex [ (name ("82")); (name ("34")); (name ("60")) ]) ] in
   let x3 =
     ph [ (name ("2")); (phospho ((name ("9")), empty)); (name ("50")) ] in
   complex [ x0; x1; x2; x3 ] = complex [ x1; x0; x3; x2 ])
;;

testi
  (78)
  (let x0 =
     complex
       [ (name ("3"));
         (complex [ (name ("75")); (name ("64")); (name ("52")) ]);
         (name ("50")) ] in
   let x1 =
     complex
       [ (ph [ (name ("97")); (name ("65")); (name ("48")) ]);
         (complex [ (name ("24")); (name ("31")); (name ("50")) ]);
         (complex [ (name ("25")); (name ("90")); (name ("11")) ]) ] in
   let x2 =
     ph
       [ (complex [ (name ("77")); (name ("11")); (name ("31")) ]);
         (complex [ (name ("42")); (name ("69")); (name ("66")) ]);
         (ph [ (name ("43")); (name ("37")); (name ("90")) ]) ] in
   let x3 =
     complex
       [ (complex [ (name ("11")); (name ("7")); (name ("39")) ]);
         (ph [ (name ("93")); (name ("23")); (name ("88")) ]);
         (ph [ (name ("70")); (name ("9")); (name ("60")) ]) ] in
   complex [ x0; x1; x2; x3 ] = complex [ x1; x0; x3; x2 ])
;;

testi
  (79)
  (let x0 =
     ph
       [ (ph [ (name ("56")); (name ("1")); (name ("20")) ]); (name ("11"));
         (complex [ (name ("82")); (name ("34")); (name ("60")) ]) ] in
   let x1 = ph [ (name ("26")); (name ("83")); (name ("79")) ] in
   let x2 = name ("29") in
   let x3 = phospho ((name ("66")), (singleton (name ("21")))) in
   complex [ x0; x1; x2; x3 ] = complex [ x1; x0; x3; x2 ])
;;

testi
  (80)
  (let x0 =
     complex
       [ (phospho ((name ("87")), empty));
         (ph [ (name ("7")); (name ("3")); (name ("38")) ]);
         (phospho ((name ("94")), empty)) ] in
   let x1 = name ("17") in
   let x2 = name ("80") in
   let x3 = phospho ((name ("63")), (union [ empty; empty; empty ])) in
   complex [ x0; x1; x2; x3 ] = complex [ x3; x1; x2; x0 ])
;;

testi
  (81)
  (let x0 = name ("72") in
   let x1 =
     ph
       [ (phospho ((name ("23")), empty)); (name ("21"));
         (complex [ (name ("15")); (name ("59")); (name ("69")) ]) ] in
   let x2 = name ("42") in
   let x3 = name ("73") in
   complex [ x0; x1; x2; x3 ] = complex [ x3; x1; x2; x0 ])
;;

testi
  (82)
  (let x0 =
     ph
       [ (phospho ((name ("32")), empty)); (phospho ((name ("84")), empty));
         (ph [ (name ("92")); (name ("3")); (name ("63")) ]) ] in
   let x1 = name ("40") in
   let x2 = name ("73") in
   let x3 =
     ph
       [ (ph [ (name ("47")); (name ("74")); (name ("22")) ]);
         (ph [ (name ("25")); (name ("0")); (name ("46")) ]);
         (phospho ((name ("10")), empty)) ] in
   complex [ x0; x1; x2; x3 ] = complex [ x3; x1; x2; x0 ])
;;

testi
  (83)
  (let x0 =
     phospho
       ((complex [ (name ("92")); (name ("30")); (name ("5")) ]),
        (union [ empty; empty; empty ])) in
   let x1 =
     ph
       [ (phospho ((name ("32")), empty)); (phospho ((name ("65")), empty));
         (complex [ (name ("83")); (name ("22")); (name ("91")) ]) ] in
   let x2 = name ("72") in
   let x3 =
     complex
       [ (complex [ (name ("90")); (name ("73")); (name ("53")) ]);
         (ph [ (name ("23")); (name ("47")); (name ("62")) ]);
         (complex [ (name ("14")); (name ("47")); (name ("8")) ]) ] in
   complex [ x0; x1; x2; x3 ] = complex [ x3; x1; x2; x0 ])
;;

testi
  (84)
  (let x0 = name ("52") in
   let x1 =
     ph
       [ (phospho ((name ("32")), empty));
         (ph [ (name ("25")); (name ("0")); (name ("46")) ]);
         (complex [ (name ("83")); (name ("22")); (name ("91")) ]) ] in
   let x2 =
     phospho
       ((phospho ((name ("83")), empty)), (union [ empty; empty; empty ])) in
   let x3 = name ("86") in
   complex [ x0; x1; x2; x3 ] = complex [ x3; x1; x2; x0 ])
;;

testi
  (85)
  (let x0 =
     complex
       [ (ph [ (name ("34")); (name ("2")); (name ("53")) ]);
         (ph [ (name ("84")); (name ("46")); (name ("78")) ]); (name ("79")) ] in
   let x1 =
     complex
       [ (name ("93")); (ph [ (name ("84")); (name ("46")); (name ("78")) ]);
         (name ("74")) ] in
   let x2 =
     ph
       [ (complex [ (name ("34")); (name ("40")); (name ("98")) ]);
         (complex [ (name ("38")); (name ("43")); (name ("0")) ]);
         (complex [ (name ("45")); (name ("0")); (name ("16")) ]) ] in
   let x3 =
     complex
       [ (ph [ (name ("5")); (name ("0")); (name ("53")) ]);
         (complex [ (name ("36")); (name ("95")); (name ("40")) ]);
         (name ("79")) ] in
   complex [ x0; x1; x2; x3 ] = complex [ x3; x2; x1; x0 ])
;;

testi
  (86)
  (let x0 =
     phospho
       ((ph [ (name ("25")); (name ("95")); (name ("76")) ]),
        (singleton (name ("94")))) in
   let x1 =
     complex
       [ (phospho ((name ("45")), empty)); (name ("95"));
         (phospho ((name ("44")), empty)) ] in
   let x2 =
     ph
       [ (complex [ (name ("34")); (name ("40")); (name ("98")) ]);
         (complex [ (name ("38")); (name ("43")); (name ("0")) ]);
         (complex [ (name ("45")); (name ("0")); (name ("16")) ]) ] in
   let x3 =
     ph
       [ (complex [ (name ("34")); (name ("8")); (name ("10")) ]);
         (ph [ (name ("74")); (name ("23")); (name ("23")) ]);
         (ph [ (name ("93")); (name ("66")); (name ("56")) ]) ] in
   complex [ x0; x1; x2; x3 ] = complex [ x3; x2; x1; x0 ])
;;

testi
  (87)
  (let x0 =
     ph
       [ (phospho ((name ("56")), empty));
         (complex [ (name ("26")); (name ("93")); (name ("71")) ]);
         (complex [ (name ("40")); (name ("15")); (name ("18")) ]) ] in
   let x1 = name ("53") in
   let x2 = name ("12") in
   let x3 = phospho ((name ("79")), (singleton (name ("19")))) in
   complex [ x0; x1; x2; x3 ] = complex [ x3; x2; x1; x0 ])
;;

testi
  (88)
  (let x0 =
     phospho
       ((ph [ (name ("25")); (name ("95")); (name ("76")) ]),
        (union [ empty; empty; empty ])) in
   let x1 = phospho ((name ("79")), (singleton (name ("89")))) in
   let x2 =
     ph
       [ (complex [ (name ("34")); (name ("32")); (name ("10")) ]);
         (complex [ (name ("50")); (name ("84")); (name ("71")) ]);
         (ph [ (name ("1")); (name ("66")); (name ("73")) ]) ] in
   let x3 = name ("6") in
   complex [ x0; x1; x2; x3 ] = complex [ x3; x2; x1; x0 ])
;;

testi
  (89)
  (let x0 =
     ph
       [ (complex [ (name ("34")); (name ("32")); (name ("10")) ]);
         (complex [ (name ("26")); (name ("93")); (name ("71")) ]);
         (ph [ (name ("54")); (name ("31")); (name ("22")) ]) ] in
   let x1 =
     complex
       [ (name ("93")); (ph [ (name ("84")); (name ("46")); (name ("78")) ]);
         (name ("74")) ] in
   let x2 =
     ph
       [ (complex [ (name ("34")); (name ("32")); (name ("10")) ]);
         (complex [ (name ("50")); (name ("84")); (name ("71")) ]);
         (ph [ (name ("1")); (name ("66")); (name ("73")) ]) ] in
   let x3 =
     complex
       [ (phospho ((name ("45")), empty)); (phospho ((name ("5")), empty));
         (name ("74")) ] in
   complex [ x0; x1; x2; x3 ] = complex [ x3; x2; x1; x0 ])
;;

testi
  (90)
  (let x0 =
     ph
       [ (ph [ (name ("80")); (name ("73")); (name ("45")) ]);
         (phospho ((name ("1")), empty));
         (ph [ (name ("91")); (name ("21")); (name ("45")) ]) ] in
   let x1 =
     phospho
       ((ph [ (name ("5")); (name ("61")); (name ("87")) ]),
        (union [ empty; empty; empty ])) in
   let x2 =
     ph
       [ (ph [ (name ("80")); (name ("73")); (name ("45")) ]); (name ("97"));
         (ph [ (name ("3")); (name ("34")); (name ("68")) ]) ] in
   let x3 =
     complex
       [ (phospho ((name ("11")), empty)); (phospho ((name ("20")), empty));
         (phospho ((name ("64")), empty)) ] in
   complex [ x0; x1; x2; x3 ] = complex [ x2; x1; x0; x3 ])
;;

testi
  (91)
  (let x0 = name ("65") in
   let x1 =
     ph
       [ (ph [ (name ("80")); (name ("73")); (name ("45")) ]);
         (ph [ (name ("73")); (name ("71")); (name ("78")) ]);
         (phospho ((name ("69")), empty)) ] in
   let x2 =
     complex
       [ (name ("63")); (name ("56"));
         (complex [ (name ("59")); (name ("7")); (name ("51")) ]) ] in
   let x3 =
     phospho
       ((phospho ((name ("74")), empty)), (union [ empty; empty; empty ])) in
   complex [ x0; x1; x2; x3 ] = complex [ x2; x1; x0; x3 ])
;;

testi
  (92)
  (let x0 =
     ph
       [ (ph [ (name ("80")); (name ("73")); (name ("45")) ]);
         (complex [ (name ("47")); (name ("88")); (name ("76")) ]);
         (ph [ (name ("3")); (name ("34")); (name ("68")) ]) ] in
   let x1 =
     phospho
       ((phospho ((name ("74")), empty)), (union [ empty; empty; empty ])) in
   let x2 =
     ph
       [ (phospho ((name ("19")), empty)); (phospho ((name ("98")), empty));
         (complex [ (name ("69")); (name ("7")); (name ("89")) ]) ] in
   let x3 = name ("65") in
   complex [ x0; x1; x2; x3 ] = complex [ x2; x1; x0; x3 ])
;;

testi
  (93)
  (let x0 = name ("2") in
   let x1 =
     complex
       [ (name ("63")); (name ("56"));
         (complex [ (name ("59")); (name ("7")); (name ("51")) ]) ] in
   let x2 =
     complex
       [ (name ("63")); (name ("56"));
         (complex [ (name ("59")); (name ("7")); (name ("51")) ]) ] in
   let x3 = name ("65") in
   complex [ x0; x1; x2; x3 ] = complex [ x2; x1; x0; x3 ])
;;

testi
  (94)
  (let x0 =
     phospho
       ((ph [ (name ("5")); (name ("61")); (name ("87")) ]),
        (union [ empty; empty; empty ])) in
   let x1 =
     complex
       [ (ph [ (name ("81")); (name ("63")); (name ("75")) ]);
         (ph [ (name ("12")); (name ("86")); (name ("42")) ]);
         (phospho ((name ("64")), empty)) ] in
   let x2 = phospho ((name ("70")), (union [ empty; empty; empty ])) in
   let x3 = name ("11") in
   complex [ x0; x1; x2; x3 ] = complex [ x2; x1; x0; x3 ])
;;

testi
  (95)
  (let x0 =
     ph
       [ (ph [ (name ("6")); (name ("63")); (name ("15")) ]); (name ("18"));
         (complex [ (name ("7")); (name ("46")); (name ("41")) ]) ] in
   let x1 =
     complex
       [ (phospho ((name ("62")), empty)); (phospho ((name ("11")), empty));
         (phospho ((name ("34")), empty)) ] in
   let x2 = name ("73") in ph [ (ph [ x0; x1 ]); x2 ] = ph [ x0; x1; x2 ])
;;

testi
  (96)
  (let x0 =
     phospho
       ((complex [ (name ("24")); (name ("54")); (name ("6")) ]),
        (singleton (name ("49")))) in
   let x1 =
     phospho
       ((ph [ (name ("6")); (name ("71")); (name ("69")) ]),
        (union [ empty; empty; empty ])) in
   let x2 =
     ph
       [ (complex [ (name ("68")); (name ("74")); (name ("35")) ]);
         (ph [ (name ("52")); (name ("41")); (name ("69")) ]);
         (ph [ (name ("33")); (name ("74")); (name ("60")) ]) ] in
   ph [ (ph [ x0; x1 ]); x2 ] = ph [ x0; x1; x2 ])
;;

testi
  (97)
  (let x0 =
     ph
       [ (phospho ((name ("67")), empty)); (name ("29"));
         (ph [ (name ("33")); (name ("74")); (name ("60")) ]) ] in
   let x1 =
     complex
       [ (complex [ (name ("5")); (name ("35")); (name ("46")) ]);
         (phospho ((name ("48")), empty)); (phospho ((name ("34")), empty)) ] in
   let x2 =
     complex
       [ (phospho ((name ("62")), empty)); (phospho ((name ("11")), empty));
         (phospho ((name ("34")), empty)) ] in
   ph [ (ph [ x0; x1 ]); x2 ] = ph [ x0; x1; x2 ])
;;

testi
  (98)
  (let x0 = name ("29") in
   let x1 = name ("73") in
   let x2 =
     phospho
       ((complex [ (name ("24")); (name ("54")); (name ("6")) ]),
        (singleton (name ("60")))) in
   ph [ (ph [ x0; x1 ]); x2 ] = ph [ x0; x1; x2 ])
;;

testi
  (99)
  (let x0 = name ("29") in
   let x1 = name ("11") in
   let x2 =
     ph
       [ (phospho ((name ("67")), empty)); (name ("29"));
         (ph [ (name ("33")); (name ("74")); (name ("60")) ]) ] in
   ph [ (ph [ x0; x1 ]); x2 ] = ph [ x0; x1; x2 ])
;;

testi
  (100)
  (let x0 = name ("7") in
   let x1 =
     complex
       [ (ph [ (name ("88")); (name ("0")); (name ("89")) ]);
         (ph [ (name ("110")); (name ("110")); (name ("94")) ]);
         (ph [ (name ("62")); (name ("64")); (name ("10")) ]) ] in
   let x2 =
     phospho ((phospho ((name ("58")), empty)), (singleton (name ("80")))) in
   let x3 = name ("95") in
   let x4 =
     ph
       [ (ph [ (name ("86")); (name ("97")); (name ("103")) ]);
         (ph [ (name ("119")); (name ("97")); (name ("54")) ]);
         (phospho ((name ("16")), empty)) ] in
   ph [ x0; (ph [ x1; x2 ]); (ph [ x3; x4 ]) ] = ph [ x0; x1; x2; x3; x4 ])
;;

testi
  (101)
  (let x0 =
     complex
       [ (ph [ (name ("121")); (name ("31")); (name ("17")) ]);
         (ph [ (name ("73")); (name ("0")); (name ("25")) ]);
         (complex [ (name ("57")); (name ("68")); (name ("84")) ]) ] in
   let x1 =
     complex
       [ (phospho ((name ("10")), empty));
         (ph [ (name ("73")); (name ("0")); (name ("25")) ]);
         (complex [ (name ("57")); (name ("68")); (name ("84")) ]) ] in
   let x2 =
     phospho ((phospho ((name ("58")), empty)), (singleton (name ("18")))) in
   let x3 =
     phospho
       ((ph [ (name ("115")); (name ("67")); (name ("36")) ]),
        (singleton (name ("101")))) in
   let x4 = name ("73") in
   ph [ x0; (ph [ x1; x2 ]); (ph [ x3; x4 ]) ] = ph [ x0; x1; x2; x3; x4 ])
;;

testi
  (102)
  (let x0 = name ("27") in
   let x1 =
     ph
       [ (ph [ (name ("38")); (name ("13")); (name ("98")) ]);
         (name ("105"));
         (complex [ (name ("34")); (name ("115")); (name ("111")) ]) ] in
   let x2 = name ("78") in
   let x3 =
     complex
       [ (phospho ((name ("10")), empty));
         (ph [ (name ("73")); (name ("0")); (name ("25")) ]);
         (complex [ (name ("57")); (name ("68")); (name ("84")) ]) ] in
   let x4 =
     complex
       [ (name ("68")); (phospho ((name ("72")), empty));
         (ph [ (name ("51")); (name ("28")); (name ("111")) ]) ] in
   ph [ x0; (ph [ x1; x2 ]); (ph [ x3; x4 ]) ] = ph [ x0; x1; x2; x3; x4 ])
;;

testi
  (103)
  (let x0 =
     phospho
       ((ph [ (name ("115")); (name ("67")); (name ("14")) ]),
        (singleton (name ("119")))) in
   let x1 =
     complex
       [ (ph [ (name ("121")); (name ("31")); (name ("17")) ]);
         (complex [ (name ("68")); (name ("43")); (name ("54")) ]);
         (name ("87")) ] in
   let x2 = name ("95") in
   let x3 =
     phospho ((phospho ((name ("58")), empty)), (singleton (name ("18")))) in
   let x4 =
     ph
       [ (phospho ((name ("51")), empty));
         (ph [ (name ("4")); (name ("100")); (name ("0")) ]); (name ("8")) ] in
   ph [ x0; (ph [ x1; x2 ]); (ph [ x3; x4 ]) ] = ph [ x0; x1; x2; x3; x4 ])
;;

testi
  (104)
  (let x0 =
     complex
       [ (name ("47"));
         (complex [ (name ("25")); (name ("121")); (name ("27")) ]);
         (complex [ (name ("65")); (name ("10")); (name ("31")) ]) ] in
   let x1 =
     complex
       [ (complex [ (name ("34")); (name ("37")); (name ("6")) ]);
         (ph [ (name ("1")); (name ("111")); (name ("99")) ]);
         (ph [ (name ("51")); (name ("28")); (name ("111")) ]) ] in
   let x2 =
     phospho
       ((complex [ (name ("72")); (name ("37")); (name ("68")) ]),
        (union [ empty; empty; empty ])) in
   let x3 =
     complex
       [ (complex [ (name ("34")); (name ("37")); (name ("6")) ]);
         (ph [ (name ("1")); (name ("111")); (name ("99")) ]);
         (ph [ (name ("51")); (name ("28")); (name ("111")) ]) ] in
   let x4 =
     phospho
       ((ph [ (name ("23")); (name ("109")); (name ("36")) ]),
        (singleton (name ("80")))) in
   ph [ x0; (ph [ x1; x2 ]); (ph [ x3; x4 ]) ] = ph [ x0; x1; x2; x3; x4 ])
;;

testi
  (105)
  (let x0 =
     complex
       [ (name ("3")); (phospho ((name ("3")), empty));
         (ph [ (name ("99")); (name ("72")); (name ("25")) ]) ] in
   let x1 =
     phospho
       ((ph [ (name ("71")); (name ("37")); (name ("36")) ]),
        (singleton (name ("70")))) in
   let x2 =
     ph
       [ (complex [ (name ("13")); (name ("39")); (name ("14")) ]);
         (ph [ (name ("15")); (name ("40")); (name ("42")) ]); (name ("0")) ] in
   let x3 =
     complex
       [ (name ("76")); (ph [ (name ("90")); (name ("40")); (name ("92")) ]);
         (ph [ (name ("79")); (name ("97")); (name ("0")) ]) ] in
   ph [ (ph [ x0; x1; x2 ]); x3 ] = ph [ x0; x1; x2; x3 ])
;;

testi
  (106)
  (let x0 =
     phospho
       ((ph [ (name ("71")); (name ("37")); (name ("36")) ]),
        (union [ empty; empty; empty ])) in
   let x1 = name ("82") in
   let x2 =
     complex
       [ (phospho ((name ("49")), empty)); (name ("97"));
         (ph [ (name ("0")); (name ("97")); (name ("76")) ]) ] in
   let x3 =
     ph
       [ (complex [ (name ("77")); (name ("39")); (name ("14")) ]);
         (ph [ (name ("15")); (name ("40")); (name ("42")) ]);
         (phospho ((name ("91")), empty)) ] in
   ph [ (ph [ x0; x1; x2 ]); x3 ] = ph [ x0; x1; x2; x3 ])
;;

testi
  (107)
  (let x0 =
     ph
       [ (ph [ (name ("21")); (name ("79")); (name ("97")) ]);
         (phospho ((name ("13")), empty)); (name ("4")) ] in
   let x1 = name ("23") in
   let x2 =
     phospho
       ((ph [ (name ("71")); (name ("37")); (name ("36")) ]),
        (union [ empty; empty; empty ])) in
   let x3 = name ("90") in
   ph [ (ph [ x0; x1; x2 ]); x3 ] = ph [ x0; x1; x2; x3 ])
;;

testi
  (108)
  (let x0 = name ("82") in
   let x1 =
     complex
       [ (name ("90")); (name ("3"));
         (ph [ (name ("0")); (name ("97")); (name ("76")) ]) ] in
   let x2 = name ("10") in
   let x3 =
     complex
       [ (name ("3")); (phospho ((name ("3")), empty));
         (ph [ (name ("99")); (name ("72")); (name ("25")) ]) ] in
   ph [ (ph [ x0; x1; x2 ]); x3 ] = ph [ x0; x1; x2; x3 ])
;;

testi
  (109)
  (let x0 =
     complex
       [ (name ("90")); (ph [ (name ("39")); (name ("21")); (name ("25")) ]);
         (complex [ (name ("77")); (name ("59")); (name ("42")) ]) ] in
   let x1 =
     phospho
       ((ph [ (name ("71")); (name ("37")); (name ("36")) ]),
        (union [ empty; empty; empty ])) in
   let x2 = name ("64") in
   let x3 = name ("89") in
   ph [ (ph [ x0; x1; x2 ]); x3 ] = ph [ x0; x1; x2; x3 ])
;;

testi
  (110)
  (let x0 = name ("63") in
   let x1 =
     ph
       [ (complex [ (name ("48")); (name ("30")); (name ("81")) ]);
         (name ("75")); (phospho ((name ("30")), empty)) ] in
   let x2 =
     ph
       [ (ph [ (name ("61")); (name ("3")); (name ("16")) ]);
         (phospho ((name ("70")), empty)); (phospho ((name ("74")), empty)) ] in
   let x3 =
     ph
       [ (phospho ((name ("28")), empty)); (phospho ((name ("70")), empty));
         (ph [ (name ("13")); (name ("23")); (name ("33")) ]) ] in
   ph [ x0; x1; x2; x3 ] = ph [ x1; x0; x3; x2 ])
;;

testi
  (111)
  (let x0 =
     phospho
       ((ph [ (name ("59")); (name ("17")); (name ("81")) ]),
        (union [ empty; empty; empty ])) in
   let x1 = name ("88") in
   let x2 =
     phospho
       ((ph [ (name ("59")); (name ("17")); (name ("81")) ]),
        (singleton (name ("88")))) in
   let x3 =
     phospho
       ((ph [ (name ("67")); (name ("30")); (name ("81")) ]),
        (union [ empty; empty; empty ])) in
   ph [ x0; x1; x2; x3 ] = ph [ x1; x0; x3; x2 ])
;;

testi
  (112)
  (let x0 =
     ph
       [ (phospho ((name ("28")), empty)); (name ("75"));
         (ph [ (name ("13")); (name ("35")); (name ("88")) ]) ] in
   let x1 =
     phospho
       ((ph [ (name ("11")); (name ("57")); (name ("1")) ]),
        (union [ empty; empty; empty ])) in
   let x2 =
     phospho
       ((ph [ (name ("59")); (name ("17")); (name ("81")) ]),
        (singleton (name ("88")))) in
   let x3 =
     complex
       [ (ph [ (name ("99")); (name ("41")); (name ("29")) ]);
         (complex [ (name ("97")); (name ("84")); (name ("60")) ]);
         (complex [ (name ("5")); (name ("48")); (name ("14")) ]) ] in
   ph [ x0; x1; x2; x3 ] = ph [ x1; x0; x3; x2 ])
;;

testi
  (113)
  (let x0 = name ("21") in
   let x1 =
     phospho
       ((ph [ (name ("59")); (name ("17")); (name ("81")) ]),
        (union [ empty; empty; empty ])) in
   let x2 =
     ph
       [ (phospho ((name ("1")), empty)); (name ("22"));
         (phospho ((name ("94")), empty)) ] in
   let x3 = name ("88") in ph [ x0; x1; x2; x3 ] = ph [ x1; x0; x3; x2 ])
;;

testi
  (114)
  (let x0 =
     complex
       [ (complex [ (name ("56")); (name ("13")); (name ("24")) ]);
         (phospho ((name ("40")), empty)); (phospho ((name ("10")), empty)) ] in
   let x1 =
     complex
       [ (phospho ((name ("53")), empty)); (phospho ((name ("41")), empty));
         (phospho ((name ("33")), empty)) ] in
   let x2 =
     ph
       [ (phospho ((name ("28")), empty)); (name ("75"));
         (ph [ (name ("13")); (name ("35")); (name ("88")) ]) ] in
   let x3 = name ("56") in ph [ x0; x1; x2; x3 ] = ph [ x1; x0; x3; x2 ])
;;

testi
  (115)
  (let x0 = name ("99") in
   let x1 = name ("32") in
   let x2 =
     complex
       [ (complex [ (name ("42")); (name ("44")); (name ("80")) ]);
         (ph [ (name ("79")); (name ("12")); (name ("60")) ]); (name ("13")) ] in
   let x3 = name ("41") in ph [ x0; x1; x2; x3 ] = ph [ x3; x1; x2; x0 ])
;;

testi
  (116)
  (let x0 = name ("32") in
   let x1 = name ("48") in
   let x2 =
     phospho
       ((ph [ (name ("53")); (name ("74")); (name ("28")) ]),
        (union [ empty; empty; empty ])) in
   let x3 =
     complex
       [ (complex [ (name ("76")); (name ("84")); (name ("36")) ]);
         (complex [ (name ("67")); (name ("22")); (name ("89")) ]);
         (name ("53")) ] in
   ph [ x0; x1; x2; x3 ] = ph [ x3; x1; x2; x0 ])
;;

testi
  (117)
  (let x0 = name ("39") in
   let x1 = phospho ((name ("60")), (union [ empty; empty; empty ])) in
   let x2 = name ("32") in
   let x3 =
     ph
       [ (ph [ (name ("1")); (name ("83")); (name ("29")) ]);
         (ph [ (name ("22")); (name ("66")); (name ("60")) ]);
         (ph [ (name ("33")); (name ("38")); (name ("14")) ]) ] in
   ph [ x0; x1; x2; x3 ] = ph [ x3; x1; x2; x0 ])
;;

testi
  (118)
  (let x0 =
     complex
       [ (phospho ((name ("18")), empty)); (name ("71")); (name ("76")) ] in
   let x1 =
     phospho
       ((ph [ (name ("53")); (name ("74")); (name ("28")) ]),
        (union [ empty; empty; empty ])) in
   let x2 =
     complex
       [ (complex [ (name ("56")); (name ("5")); (name ("19")) ]);
         (ph [ (name ("63")); (name ("45")); (name ("69")) ]);
         (phospho ((name ("42")), empty)) ] in
   let x3 =
     complex
       [ (complex [ (name ("85")); (name ("11")); (name ("65")) ]);
         (phospho ((name ("73")), empty)); (name ("25")) ] in
   ph [ x0; x1; x2; x3 ] = ph [ x3; x1; x2; x0 ])
;;

testi
  (119)
  (let x0 =
     phospho
       ((complex [ (name ("61")); (name ("62")); (name ("98")) ]),
        (singleton (name ("0")))) in
   let x1 = name ("41") in
   let x2 =
     complex
       [ (complex [ (name ("85")); (name ("11")); (name ("65")) ]);
         (phospho ((name ("73")), empty)); (name ("25")) ] in
   let x3 =
     complex
       [ (complex [ (name ("42")); (name ("44")); (name ("80")) ]);
         (complex [ (name ("67")); (name ("22")); (name ("89")) ]);
         (phospho ((name ("86")), empty)) ] in
   ph [ x0; x1; x2; x3 ] = ph [ x3; x1; x2; x0 ])
;;

testi
  (120)
  (let x0 =
     ph
       [ (ph [ (name ("69")); (name ("49")); (name ("73")) ]);
         (phospho ((name ("14")), empty)); (phospho ((name ("68")), empty)) ] in
   let x1 =
     phospho ((phospho ((name ("25")), empty)), (singleton (name ("40")))) in
   let x2 =
     phospho
       ((ph [ (name ("81")); (name ("87")); (name ("54")) ]),
        (singleton (name ("57")))) in
   let x3 = name ("60") in ph [ x0; x1; x2; x3 ] = ph [ x3; x2; x1; x0 ])
;;

testi
  (121)
  (let x0 =
     phospho ((phospho ((name ("63")), empty)), (singleton (name ("40")))) in
   let x1 =
     complex
       [ (phospho ((name ("8")), empty)); (phospho ((name ("35")), empty));
         (name ("80")) ] in
   let x2 =
     phospho
       ((ph [ (name ("81")); (name ("87")); (name ("54")) ]),
        (singleton (name ("57")))) in
   let x3 =
     phospho
       ((complex [ (name ("73")); (name ("25")); (name ("31")) ]),
        (singleton (name ("57")))) in
   ph [ x0; x1; x2; x3 ] = ph [ x3; x2; x1; x0 ])
;;

testi
  (122)
  (let x0 =
     phospho ((phospho ((name ("63")), empty)), (singleton (name ("15")))) in
   let x1 =
     complex
       [ (phospho ((name ("8")), empty)); (name ("32")); (name ("56")) ] in
   let x2 = name ("73") in
   let x3 = name ("64") in ph [ x0; x1; x2; x3 ] = ph [ x3; x2; x1; x0 ])
;;

testi
  (123)
  (let x0 =
     ph
       [ (ph [ (name ("69")); (name ("49")); (name ("73")) ]);
         (phospho ((name ("14")), empty)); (phospho ((name ("68")), empty)) ] in
   let x1 =
     phospho ((phospho ((name ("63")), empty)), (singleton (name ("40")))) in
   let x2 =
     phospho
       ((ph [ (name ("56")); (name ("87")); (name ("97")) ]),
        (singleton (name ("57")))) in
   let x3 = name ("57") in ph [ x0; x1; x2; x3 ] = ph [ x3; x2; x1; x0 ])
;;

testi
  (124)
  (let x0 =
     phospho
       ((complex [ (name ("73")); (name ("25")); (name ("31")) ]),
        (singleton (name ("15")))) in
   let x1 =
     ph
       [ (ph [ (name ("82")); (name ("49")); (name ("52")) ]);
         (phospho ((name ("73")), empty)); (name ("8")) ] in
   let x2 = name ("36") in
   let x3 =
     phospho
       ((ph [ (name ("81")); (name ("87")); (name ("54")) ]),
        (union [ empty; empty; empty ])) in
   ph [ x0; x1; x2; x3 ] = ph [ x3; x2; x1; x0 ])
;;

testi
  (125)
  (let x0 =
     complex
       [ (name ("36")); (phospho ((name ("59")), empty));
         (complex [ (name ("39")); (name ("22")); (name ("69")) ]) ] in
   let x1 =
     phospho
       ((ph [ (name ("26")); (name ("20")); (name ("57")) ]),
        (union [ empty; empty; empty ])) in
   let x2 =
     ph
       [ (complex [ (name ("60")); (name ("52")); (name ("88")) ]);
         (phospho ((name ("42")), empty)); (phospho ((name ("37")), empty)) ] in
   let x3 = phospho ((name ("57")), (union [ empty; empty; empty ])) in
   ph [ x0; x1; x2; x3 ] = ph [ x2; x1; x0; x3 ])
;;

testi
  (126)
  (let x0 =
     phospho
       ((ph [ (name ("26")); (name ("20")); (name ("57")) ]),
        (union [ empty; empty; empty ])) in
   let x1 =
     phospho
       ((ph [ (name ("36")); (name ("40")); (name ("16")) ]),
        (union [ empty; empty; empty ])) in
   let x2 =
     complex
       [ (ph [ (name ("22")); (name ("7")); (name ("1")) ]);
         (phospho ((name ("65")), empty));
         (ph [ (name ("72")); (name ("81")); (name ("3")) ]) ] in
   let x3 =
     ph
       [ (complex [ (name ("60")); (name ("92")); (name ("68")) ]);
         (phospho ((name ("42")), empty));
         (ph [ (name ("22")); (name ("7")); (name ("20")) ]) ] in
   ph [ x0; x1; x2; x3 ] = ph [ x2; x1; x0; x3 ])
;;

testi
  (127)
  (let x0 =
     complex
       [ (complex [ (name ("93")); (name ("44")); (name ("1")) ]);
         (complex [ (name ("35")); (name ("20")); (name ("25")) ]);
         (name ("13")) ] in
   let x1 =
     complex
       [ (phospho ((name ("92")), empty));
         (complex [ (name ("21")); (name ("3")); (name ("4")) ]);
         (complex [ (name ("62")); (name ("1")); (name ("47")) ]) ] in
   let x2 = name ("51") in
   let x3 = name ("51") in ph [ x0; x1; x2; x3 ] = ph [ x2; x1; x0; x3 ])
;;

testi
  (128)
  (let x0 =
     phospho
       ((ph [ (name ("26")); (name ("20")); (name ("57")) ]),
        (union [ empty; empty; empty ])) in
   let x1 =
     ph [ (phospho ((name ("89")), empty)); (name ("48")); (name ("90")) ] in
   let x2 =
     phospho
       ((complex [ (name ("92")); (name ("37")); (name ("65")) ]),
        (union [ empty; empty; empty ])) in
   let x3 =
     complex
       [ (complex [ (name ("93")); (name ("44")); (name ("1")) ]);
         (complex [ (name ("35")); (name ("20")); (name ("25")) ]);
         (name ("13")) ] in
   ph [ x0; x1; x2; x3 ] = ph [ x2; x1; x0; x3 ])
;;

testi
  (129)
  (let x0 =
     ph
       [ (ph [ (name ("42")); (name ("81")); (name ("57")) ]);
         (complex [ (name ("2")); (name ("71")); (name ("50")) ]);
         (phospho ((name ("67")), empty)) ] in
   let x1 =
     phospho
       ((complex [ (name ("58")); (name ("37")); (name ("71")) ]),
        (union [ empty; empty; empty ])) in
   let x2 =
     ph
       [ (phospho ((name ("22")), empty));
         (ph [ (name ("93")); (name ("5")); (name ("29")) ]); (name ("90")) ] in
   let x3 = name ("8") in ph [ x0; x1; x2; x3 ] = ph [ x2; x1; x0; x3 ])
;;

