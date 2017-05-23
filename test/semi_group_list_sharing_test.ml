open Semi_group_list_sharing
;;

open Gentest
;;

testing ("Semi_group_list_sharing (automatic) - seed: 265722490")
;;

testi
  (0)
  (let x0 = gen (28) in
   let x1 = gen (52) in
   let x2 =
     mult
       [ (gen (47)); (gen (55));
         (mult [ (gen (40)); (gen (30)); (gen (68)) ]) ] in
   mult [ (mult [ x0; x1 ]); x2 ] = mult [ x0; x1; x2 ])
;;

testi
  (1)
  (let x0 = gen (63) in
   let x1 = gen (26) in
   let x2 = gen (63) in mult [ (mult [ x0; x1 ]); x2 ] = mult [ x0; x1; x2 ])
;;

testi
  (2)
  (let x0 =
     mult
       [ (gen (47)); (gen (55));
         (mult [ (gen (40)); (gen (30)); (gen (68)) ]) ] in
   let x1 = gen (63) in
   let x2 = gen (52) in mult [ (mult [ x0; x1 ]); x2 ] = mult [ x0; x1; x2 ])
;;

testi
  (3)
  (let x0 = gen (52) in
   let x1 =
     mult
       [ (mult [ (gen (8)); (gen (24)); (gen (3)) ]);
         (mult [ (gen (27)); (gen (36)); (gen (24)) ]); (gen (49)) ] in
   let x2 =
     mult
       [ (mult [ (gen (8)); (gen (45)); (gen (3)) ]);
         (mult [ (gen (27)); (gen (69)); (gen (24)) ]); (gen (69)) ] in
   mult [ (mult [ x0; x1 ]); x2 ] = mult [ x0; x1; x2 ])
;;

testi
  (4)
  (let x0 = gen (63) in
   let x1 =
     mult
       [ (mult [ (gen (8)); (gen (45)); (gen (3)) ]);
         (mult [ (gen (27)); (gen (69)); (gen (24)) ]); (gen (69)) ] in
   let x2 =
     mult
       [ (mult [ (gen (1)); (gen (24)); (gen (43)) ]); (gen (46));
         (mult [ (gen (41)); (gen (36)); (gen (25)) ]) ] in
   mult [ (mult [ x0; x1 ]); x2 ] = mult [ x0; x1; x2 ])
;;

testi
  (5)
  (let x0 = gen (26) in
   let x1 = gen (27) in
   let x2 =
     mult
       [ (mult [ (gen (87)); (gen (123)); (gen (110)) ]);
         (mult [ (gen (5)); (gen (12)); (gen (56)) ]); (gen (107)) ] in
   let x3 = gen (44) in
   let x4 = gen (7) in
   mult [ x0; (mult [ x1; x2 ]); (mult [ x3; x4 ]) ] =
   mult [ x0; x1; x2; x3; x4 ])
;;

testi
  (6)
  (let x0 = gen (81) in
   let x1 = gen (2) in
   let x2 = mult [ (gen (25)); (gen (99)); (gen (1)) ] in
   let x3 = gen (106) in
   let x4 =
     mult
       [ (mult [ (gen (70)); (gen (46)); (gen (107)) ]);
         (mult [ (gen (38)); (gen (12)); (gen (70)) ]);
         (mult [ (gen (100)); (gen (61)); (gen (110)) ]) ] in
   mult [ x0; (mult [ x1; x2 ]); (mult [ x3; x4 ]) ] =
   mult [ x0; x1; x2; x3; x4 ])
;;

testi
  (7)
  (let x0 =
     mult
       [ (mult [ (gen (70)); (gen (46)); (gen (107)) ]);
         (mult [ (gen (38)); (gen (12)); (gen (70)) ]);
         (mult [ (gen (100)); (gen (61)); (gen (110)) ]) ] in
   let x1 =
     mult
       [ (gen (46)); (mult [ (gen (5)); (gen (12)); (gen (56)) ]);
         (mult [ (gen (11)); (gen (69)); (gen (65)) ]) ] in
   let x2 =
     mult
       [ (gen (25)); (gen (65));
         (mult [ (gen (33)); (gen (61)); (gen (32)) ]) ] in
   let x3 =
     mult
       [ (mult [ (gen (87)); (gen (123)); (gen (110)) ]);
         (mult [ (gen (5)); (gen (12)); (gen (56)) ]); (gen (107)) ] in
   let x4 = gen (105) in
   mult [ x0; (mult [ x1; x2 ]); (mult [ x3; x4 ]) ] =
   mult [ x0; x1; x2; x3; x4 ])
;;

testi
  (8)
  (let x0 =
     mult
       [ (gen (46)); (mult [ (gen (5)); (gen (12)); (gen (56)) ]);
         (mult [ (gen (11)); (gen (69)); (gen (65)) ]) ] in
   let x1 = gen (2) in
   let x2 =
     mult
       [ (mult [ (gen (35)); (gen (81)); (gen (110)) ]); (gen (65));
         (mult [ (gen (11)); (gen (69)); (gen (65)) ]) ] in
   let x3 = gen (44) in
   let x4 =
     mult
       [ (mult [ (gen (87)); (gen (123)); (gen (110)) ]);
         (mult [ (gen (38)); (gen (12)); (gen (70)) ]); (gen (124)) ] in
   mult [ x0; (mult [ x1; x2 ]); (mult [ x3; x4 ]) ] =
   mult [ x0; x1; x2; x3; x4 ])
;;

testi
  (9)
  (let x0 = gen (44) in
   let x1 =
     mult
       [ (gen (46)); (mult [ (gen (5)); (gen (12)); (gen (56)) ]);
         (mult [ (gen (11)); (gen (69)); (gen (65)) ]) ] in
   let x2 = mult [ (gen (25)); (gen (92)); (gen (120)) ] in
   let x3 = gen (34) in
   let x4 =
     mult
       [ (gen (47)); (mult [ (gen (5)); (gen (12)); (gen (56)) ]);
         (gen (124)) ] in
   mult [ x0; (mult [ x1; x2 ]); (mult [ x3; x4 ]) ] =
   mult [ x0; x1; x2; x3; x4 ])
;;

testi
  (10)
  (let x0 = gen (32) in
   let x1 =
     mult
       [ (gen (16)); (mult [ (gen (85)); (gen (59)); (gen (84)) ]);
         (gen (53)) ] in
   let x2 =
     mult
       [ (mult [ (gen (10)); (gen (42)); (gen (80)) ]);
         (mult [ (gen (85)); (gen (76)); (gen (84)) ]);
         (mult [ (gen (24)); (gen (32)); (gen (41)) ]) ] in
   let x3 =
     mult
       [ (mult [ (gen (61)); (gen (10)); (gen (61)) ]);
         (mult [ (gen (6)); (gen (22)); (gen (84)) ]); (gen (11)) ] in
   mult [ (mult [ x0; x1; x2 ]); x3 ] = mult [ x0; x1; x2; x3 ])
;;

testi
  (11)
  (let x0 =
     mult
       [ (mult [ (gen (10)); (gen (22)); (gen (64)) ]); (gen (33));
         (gen (89)) ] in
   let x1 =
     mult
       [ (mult [ (gen (61)); (gen (10)); (gen (61)) ]);
         (mult [ (gen (85)); (gen (76)); (gen (84)) ]);
         (mult [ (gen (57)); (gen (32)); (gen (61)) ]) ] in
   let x2 = gen (2) in
   let x3 =
     mult
       [ (gen (16)); (mult [ (gen (85)); (gen (59)); (gen (84)) ]);
         (gen (53)) ] in
   mult [ (mult [ x0; x1; x2 ]); x3 ] = mult [ x0; x1; x2; x3 ])
;;

testi
  (12)
  (let x0 = gen (88) in
   let x1 = gen (49) in
   let x2 = gen (14) in
   let x3 =
     mult
       [ (gen (16)); (mult [ (gen (85)); (gen (59)); (gen (84)) ]);
         (gen (53)) ] in
   mult [ (mult [ x0; x1; x2 ]); x3 ] = mult [ x0; x1; x2; x3 ])
;;

testi
  (13)
  (let x0 =
     mult
       [ (mult [ (gen (10)); (gen (42)); (gen (80)) ]);
         (mult [ (gen (6)); (gen (22)); (gen (84)) ]);
         (mult [ (gen (24)); (gen (32)); (gen (41)) ]) ] in
   let x1 = gen (1) in
   let x2 = gen (49) in
   let x3 =
     mult
       [ (gen (71)); (gen (95));
         (mult [ (gen (24)); (gen (98)); (gen (61)) ]) ] in
   mult [ (mult [ x0; x1; x2 ]); x3 ] = mult [ x0; x1; x2; x3 ])
;;

testi
  (14)
  (let x0 = gen (49) in
   let x1 = gen (75) in
   let x2 =
     mult
       [ (mult [ (gen (10)); (gen (22)); (gen (64)) ]); (gen (33));
         (gen (89)) ] in
   let x3 =
     mult
       [ (gen (16)); (mult [ (gen (85)); (gen (59)); (gen (84)) ]);
         (gen (53)) ] in
   mult [ (mult [ x0; x1; x2 ]); x3 ] = mult [ x0; x1; x2; x3 ])
;;

