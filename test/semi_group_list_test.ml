open Semi_group_list
;;

open Gentest
;;

testing ("Semi_group_list (automatic) - seed: 877580611")
;;

testi
  (0)
  (let x0 = gen (55) in
   let x1 =
     mult
       [ (gen (7)); (mult [ (gen (71)); (gen (18)); (gen (26)) ]); (gen (31)) ] in
   let x2 = gen (25) in mult [ (mult [ x0; x1 ]); x2 ] = mult [ x0; x1; x2 ])
;;

testi
  (1)
  (let x0 = gen (72) in
   let x1 =
     mult
       [ (mult [ (gen (36)); (gen (60)); (gen (2)) ]);
         (mult [ (gen (71)); (gen (18)); (gen (26)) ]);
         (mult [ (gen (71)); (gen (65)); (gen (72)) ]) ] in
   let x2 =
     mult
       [ (mult [ (gen (36)); (gen (60)); (gen (2)) ]);
         (mult [ (gen (71)); (gen (18)); (gen (26)) ]);
         (mult [ (gen (71)); (gen (65)); (gen (72)) ]) ] in
   mult [ (mult [ x0; x1 ]); x2 ] = mult [ x0; x1; x2 ])
;;

testi
  (2)
  (let x0 =
     mult
       [ (gen (7)); (gen (60)); (mult [ (gen (71)); (gen (67)); (gen (53)) ]) ] in
   let x1 = gen (18) in
   let x2 = gen (44) in mult [ (mult [ x0; x1 ]); x2 ] = mult [ x0; x1; x2 ])
;;

testi
  (3)
  (let x0 = gen (25) in
   let x1 = gen (18) in
   let x2 = gen (56) in mult [ (mult [ x0; x1 ]); x2 ] = mult [ x0; x1; x2 ])
;;

testi
  (4)
  (let x0 = gen (18) in
   let x1 =
     mult
       [ (mult [ (gen (69)); (gen (34)); (gen (23)) ]); (gen (49));
         (gen (31)) ] in
   let x2 =
     mult
       [ (gen (7)); (mult [ (gen (71)); (gen (18)); (gen (26)) ]); (gen (31)) ] in
   mult [ (mult [ x0; x1 ]); x2 ] = mult [ x0; x1; x2 ])
;;

testi
  (5)
  (let x0 = gen (49) in
   let x1 = gen (49) in
   let x2 = gen (84) in
   let x3 = gen (41) in
   let x4 = gen (49) in
   mult [ x0; (mult [ x1; x2 ]); (mult [ x3; x4 ]) ] =
   mult [ x0; x1; x2; x3; x4 ])
;;

testi
  (6)
  (let x0 = gen (18) in
   let x1 = gen (49) in
   let x2 =
     mult
       [ (mult [ (gen (88)); (gen (93)); (gen (31)) ]);
         (mult [ (gen (44)); (gen (91)); (gen (85)) ]);
         (mult [ (gen (119)); (gen (80)); (gen (70)) ]) ] in
   let x3 =
     mult
       [ (mult [ (gen (47)); (gen (70)); (gen (122)) ]);
         (mult [ (gen (29)); (gen (99)); (gen (85)) ]); (gen (47)) ] in
   let x4 = mult [ (gen (46)); (gen (14)); (gen (45)) ] in
   mult [ x0; (mult [ x1; x2 ]); (mult [ x3; x4 ]) ] =
   mult [ x0; x1; x2; x3; x4 ])
;;

testi
  (7)
  (let x0 =
     mult
       [ (mult [ (gen (12)); (gen (70)); (gen (45)) ]); (gen (22));
         (gen (47)) ] in
   let x1 =
     mult
       [ (gen (83)); (mult [ (gen (84)); (gen (109)); (gen (38)) ]);
         (gen (45)) ] in
   let x2 = mult [ (gen (83)); (gen (121)); (gen (47)) ] in
   let x3 =
     mult
       [ (mult [ (gen (12)); (gen (70)); (gen (45)) ]); (gen (32));
         (gen (65)) ] in
   let x4 =
     mult
       [ (gen (0)); (mult [ (gen (1)); (gen (19)); (gen (18)) ]);
         (mult [ (gen (119)); (gen (80)); (gen (70)) ]) ] in
   mult [ x0; (mult [ x1; x2 ]); (mult [ x3; x4 ]) ] =
   mult [ x0; x1; x2; x3; x4 ])
;;

testi
  (8)
  (let x0 =
     mult
       [ (gen (0)); (mult [ (gen (1)); (gen (19)); (gen (18)) ]);
         (mult [ (gen (119)); (gen (80)); (gen (70)) ]) ] in
   let x1 =
     mult
       [ (mult [ (gen (47)); (gen (70)); (gen (122)) ]); (gen (102));
         (gen (17)) ] in
   let x2 = gen (13) in
   let x3 = gen (71) in
   let x4 =
     mult
       [ (mult [ (gen (12)); (gen (70)); (gen (45)) ]); (gen (22));
         (gen (47)) ] in
   mult [ x0; (mult [ x1; x2 ]); (mult [ x3; x4 ]) ] =
   mult [ x0; x1; x2; x3; x4 ])
;;

testi
  (9)
  (let x0 =
     mult
       [ (gen (0)); (mult [ (gen (1)); (gen (19)); (gen (18)) ]);
         (mult [ (gen (119)); (gen (80)); (gen (70)) ]) ] in
   let x1 =
     mult
       [ (mult [ (gen (101)); (gen (93)); (gen (45)) ]);
         (mult [ (gen (106)); (gen (99)); (gen (12)) ]);
         (mult [ (gen (42)); (gen (81)); (gen (44)) ]) ] in
   let x2 = gen (105) in
   let x3 =
     mult
       [ (mult [ (gen (47)); (gen (70)); (gen (122)) ]); (gen (102));
         (gen (17)) ] in
   let x4 =
     mult
       [ (gen (12)); (mult [ (gen (84)); (gen (91)); (gen (18)) ]);
         (mult [ (gen (42)); (gen (65)); (gen (30)) ]) ] in
   mult [ x0; (mult [ x1; x2 ]); (mult [ x3; x4 ]) ] =
   mult [ x0; x1; x2; x3; x4 ])
;;

testi
  (10)
  (let x0 = mult [ (gen (14)); (gen (20)); (gen (99)) ] in
   let x1 =
     mult
       [ (mult [ (gen (47)); (gen (6)); (gen (33)) ]);
         (mult [ (gen (25)); (gen (41)); (gen (19)) ]); (gen (4)) ] in
   let x2 = mult [ (gen (14)); (gen (20)); (gen (99)) ] in
   let x3 = gen (5) in
   mult [ (mult [ x0; x1; x2 ]); x3 ] = mult [ x0; x1; x2; x3 ])
;;

testi
  (11)
  (let x0 =
     mult
       [ (gen (12)); (mult [ (gen (6)); (gen (92)); (gen (29)) ]); (gen (90)) ] in
   let x1 =
     mult
       [ (gen (14)); (gen (48));
         (mult [ (gen (27)); (gen (95)); (gen (49)) ]) ] in
   let x2 = mult [ (gen (96)); (gen (3)); (gen (36)) ] in
   let x3 =
     mult
       [ (mult [ (gen (42)); (gen (69)); (gen (61)) ]);
         (mult [ (gen (4)); (gen (41)); (gen (25)) ]); (gen (99)) ] in
   mult [ (mult [ x0; x1; x2 ]); x3 ] = mult [ x0; x1; x2; x3 ])
;;

testi
  (12)
  (let x0 =
     mult
       [ (mult [ (gen (28)); (gen (50)); (gen (43)) ]);
         (mult [ (gen (6)); (gen (92)); (gen (29)) ]); (gen (3)) ] in
   let x1 =
     mult
       [ (gen (12)); (mult [ (gen (6)); (gen (92)); (gen (29)) ]); (gen (90)) ] in
   let x2 =
     mult
       [ (mult [ (gen (47)); (gen (6)); (gen (33)) ]);
         (mult [ (gen (25)); (gen (41)); (gen (19)) ]); (gen (4)) ] in
   let x3 = gen (6) in
   mult [ (mult [ x0; x1; x2 ]); x3 ] = mult [ x0; x1; x2; x3 ])
;;

testi
  (13)
  (let x0 =
     mult
       [ (gen (12)); (mult [ (gen (6)); (gen (92)); (gen (29)) ]); (gen (90)) ] in
   let x1 = gen (6) in
   let x2 =
     mult
       [ (mult [ (gen (42)); (gen (69)); (gen (61)) ]);
         (mult [ (gen (4)); (gen (41)); (gen (25)) ]); (gen (99)) ] in
   let x3 = gen (6) in
   mult [ (mult [ x0; x1; x2 ]); x3 ] = mult [ x0; x1; x2; x3 ])
;;

testi
  (14)
  (let x0 =
     mult
       [ (mult [ (gen (42)); (gen (69)); (gen (61)) ]);
         (mult [ (gen (4)); (gen (41)); (gen (25)) ]); (gen (99)) ] in
   let x1 = gen (55) in
   let x2 =
     mult
       [ (gen (14)); (gen (48));
         (mult [ (gen (27)); (gen (95)); (gen (49)) ]) ] in
   let x3 = gen (94) in
   mult [ (mult [ x0; x1; x2 ]); x3 ] = mult [ x0; x1; x2; x3 ])
;;

