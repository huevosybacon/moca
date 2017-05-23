open Monoid_list_sharing
;;

open Gentest
;;

testing ("Monoid_list_sharing (automatic) - seed: 937135033")
;;

testi
  (0)
  (let x0 =
     mult
       [ (mult [ (gen (11)); (gen (71)); (gen (58)) ]); (gen (42));
         (gen (74)) ] in
   let x1 = gen (42) in
   let x2 =
     mult
       [ (gen (31)); (gen (5)); (mult [ (gen (2)); (gen (52)); (gen (28)) ]) ] in
   mult [ (mult [ x0; x1 ]); x2 ] = mult [ x0; x1; x2 ])
;;

testi
  (1)
  (let x0 =
     mult
       [ (mult [ (gen (11)); (gen (71)); (gen (58)) ]); (gen (42));
         (gen (52)) ] in
   let x1 =
     mult
       [ (gen (48)); (mult [ (gen (68)); (gen (66)); (gen (25)) ]);
         (mult [ (gen (9)); (gen (70)); (gen (12)) ]) ] in
   let x2 =
     mult
       [ (mult [ (gen (11)); (gen (71)); (gen (58)) ]); (gen (42));
         (gen (52)) ] in
   mult [ (mult [ x0; x1 ]); x2 ] = mult [ x0; x1; x2 ])
;;

testi
  (2)
  (let x0 = gen (37) in
   let x1 =
     mult
       [ (gen (52)); (mult [ (gen (68)); (gen (66)); (gen (25)) ]);
         (mult [ (gen (9)); (gen (70)); (gen (12)) ]) ] in
   let x2 =
     mult
       [ (gen (52)); (mult [ (gen (68)); (gen (66)); (gen (25)) ]);
         (mult [ (gen (9)); (gen (70)); (gen (12)) ]) ] in
   mult [ (mult [ x0; x1 ]); x2 ] = mult [ x0; x1; x2 ])
;;

testi
  (3)
  (let x0 = gen (4) in
   let x1 = gen (41) in
   let x2 =
     mult
       [ (mult [ (gen (11)); (gen (71)); (gen (58)) ]); (gen (42));
         (gen (74)) ] in
   mult [ (mult [ x0; x1 ]); x2 ] = mult [ x0; x1; x2 ])
;;

testi
  (4)
  (let x0 = gen (41) in
   let x1 =
     mult
       [ (mult [ (gen (11)); (gen (71)); (gen (58)) ]); (gen (42));
         (gen (52)) ] in
   let x2 = gen (16) in mult [ (mult [ x0; x1 ]); x2 ] = mult [ x0; x1; x2 ])
;;

testi
  (5)
  (let x0 =
     mult
       [ (gen (67)); (mult [ (gen (124)); (gen (97)); (gen (109)) ]);
         (mult [ (gen (112)); (gen (99)); (gen (10)) ]) ] in
   let x1 = gen (18) in
   let x2 = gen (42) in
   let x3 =
     mult
       [ (gen (86)); (mult [ (gen (124)); (gen (97)); (gen (109)) ]);
         (mult [ (gen (30)); (gen (47)); (gen (19)) ]) ] in
   let x4 =
     mult
       [ (mult [ (gen (83)); (gen (40)); (gen (27)) ]);
         (mult [ (gen (19)); (gen (92)); (gen (52)) ]); (gen (24)) ] in
   mult [ x0; (mult [ x1; x2 ]); (mult [ x3; x4 ]) ] =
   mult [ x0; x1; x2; x3; x4 ])
;;

testi
  (6)
  (let x0 =
     mult
       [ (gen (74)); (gen (4));
         (mult [ (gen (30)); (gen (19)); (gen (120)) ]) ] in
   let x1 = gen (86) in
   let x2 =
     mult
       [ (gen (86)); (mult [ (gen (124)); (gen (97)); (gen (109)) ]);
         (gen (82)) ] in
   let x3 = gen (18) in
   let x4 =
     mult
       [ (gen (86)); (mult [ (gen (19)); (gen (92)); (gen (52)) ]);
         (mult [ (gen (124)); (gen (26)); (gen (10)) ]) ] in
   mult [ x0; (mult [ x1; x2 ]); (mult [ x3; x4 ]) ] =
   mult [ x0; x1; x2; x3; x4 ])
;;

testi
  (7)
  (let x0 =
     mult
       [ (gen (67)); (mult [ (gen (91)); (gen (22)); (gen (15)) ]);
         (gen (27)) ] in
   let x1 =
     mult
       [ (gen (28)); (gen (116));
         (mult [ (gen (30)); (gen (87)); (gen (22)) ]) ] in
   let x2 =
     mult
       [ (gen (86)); (gen (4));
         (mult [ (gen (124)); (gen (26)); (gen (10)) ]) ] in
   let x3 = gen (18) in
   let x4 = gen (55) in
   mult [ x0; (mult [ x1; x2 ]); (mult [ x3; x4 ]) ] =
   mult [ x0; x1; x2; x3; x4 ])
;;

testi
  (8)
  (let x0 =
     mult
       [ (gen (28)); (mult [ (gen (19)); (gen (92)); (gen (52)) ]);
         (gen (53)) ] in
   let x1 = gen (27) in
   let x2 = gen (17) in
   let x3 =
     mult
       [ (gen (28)); (mult [ (gen (19)); (gen (92)); (gen (52)) ]);
         (gen (53)) ] in
   let x4 =
     mult
       [ (gen (67)); (mult [ (gen (91)); (gen (22)); (gen (15)) ]);
         (gen (27)) ] in
   mult [ x0; (mult [ x1; x2 ]); (mult [ x3; x4 ]) ] =
   mult [ x0; x1; x2; x3; x4 ])
;;

testi
  (9)
  (let x0 = gen (94) in
   let x1 =
     mult
       [ (gen (67)); (mult [ (gen (91)); (gen (22)); (gen (15)) ]);
         (gen (27)) ] in
   let x2 =
     mult
       [ (gen (86)); (mult [ (gen (91)); (gen (22)); (gen (32)) ]);
         (gen (32)) ] in
   let x3 =
     mult
       [ (gen (86)); (gen (116));
         (mult [ (gen (112)); (gen (99)); (gen (10)) ]) ] in
   let x4 =
     mult
       [ (gen (86)); (mult [ (gen (124)); (gen (97)); (gen (109)) ]);
         (mult [ (gen (30)); (gen (47)); (gen (19)) ]) ] in
   mult [ x0; (mult [ x1; x2 ]); (mult [ x3; x4 ]) ] =
   mult [ x0; x1; x2; x3; x4 ])
;;

testi
  (10)
  (let x0 = gen (93) in
   let x1 =
     mult
       [ (gen (12)); (mult [ (gen (54)); (gen (27)); (gen (41)) ]);
         (mult [ (gen (33)); (gen (61)); (gen (85)) ]) ] in
   let x2 =
     mult
       [ (mult [ (gen (69)); (gen (93)); (gen (75)) ]);
         (mult [ (gen (8)); (gen (93)); (gen (76)) ]); (gen (79)) ] in
   let x3 =
     mult
       [ (gen (10)); (mult [ (gen (82)); (gen (56)); (gen (14)) ]);
         (mult [ (gen (47)); (gen (2)); unit ]) ] in
   mult [ (mult [ x0; x1; x2 ]); x3 ] = mult [ x0; x1; x2; x3 ])
;;

testi
  (11)
  (let x0 = gen (10) in
   let x1 = gen (59) in
   let x2 =
     mult
       [ (gen (12)); (mult [ (gen (54)); (gen (27)); (gen (41)) ]);
         (mult [ (gen (33)); (gen (61)); (gen (85)) ]) ] in
   let x3 =
     mult
       [ (mult [ (gen (96)); (gen (62)); (gen (78)) ]); (gen (66));
         (mult [ (gen (67)); (gen (2)); unit ]) ] in
   mult [ (mult [ x0; x1; x2 ]); x3 ] = mult [ x0; x1; x2; x3 ])
;;

testi
  (12)
  (let x0 =
     mult
       [ (mult [ (gen (92)); (gen (93)); (gen (38)) ]); (gen (29));
         (mult [ (gen (65)); (gen (2)); unit ]) ] in
   let x1 =
     mult
       [ (mult [ (gen (92)); (gen (67)); (gen (88)) ]); (gen (78));
         (mult [ (gen (47)); (gen (2)); unit ]) ] in
   let x2 = gen (78) in
   let x3 = gen (10) in
   mult [ (mult [ x0; x1; x2 ]); x3 ] = mult [ x0; x1; x2; x3 ])
;;

testi
  (13)
  (let x0 =
     mult
       [ (mult [ (gen (92)); (gen (67)); (gen (88)) ]); (gen (78));
         (mult [ (gen (47)); (gen (2)); unit ]) ] in
   let x1 = gen (22) in
   let x2 =
     mult
       [ (gen (70)); (mult [ (gen (54)); (gen (27)); (gen (41)) ]);
         (gen (41)) ] in
   let x3 = gen (78) in
   mult [ (mult [ x0; x1; x2 ]); x3 ] = mult [ x0; x1; x2; x3 ])
;;

testi
  (14)
  (let x0 = gen (59) in
   let x1 =
     mult
       [ (mult [ (gen (69)); (gen (93)); (gen (75)) ]);
         (mult [ (gen (8)); (gen (93)); (gen (76)) ]); (gen (79)) ] in
   let x2 = gen (72) in
   let x3 =
     mult
       [ (gen (10)); (mult [ (gen (82)); (gen (56)); (gen (14)) ]);
         (mult [ (gen (47)); (gen (2)); unit ]) ] in
   mult [ (mult [ x0; x1; x2 ]); x3 ] = mult [ x0; x1; x2; x3 ])
;;

testi
  (15)
  (let x0 = gen (16) in
   let x1 = gen (8) in mult [ x0; unit; x1 ] = mult [ x0; x1 ])
;;

testi
  (16)
  (let x0 = gen (41) in
   let x1 =
     mult
       [ (mult [ (gen (37)); (gen (21)); (gen (5)) ]);
         (mult [ (gen (36)); (gen (9)); (gen (34)) ]); (gen (30)) ] in
   mult [ x0; unit; x1 ] = mult [ x0; x1 ])
;;

testi
  (17)
  (let x0 =
     mult
       [ (mult [ (gen (37)); (gen (21)); (gen (5)) ]); (gen (13));
         (mult [ unit; (gen (18)); (gen (45)) ]) ] in
   let x1 = gen (26) in mult [ x0; unit; x1 ] = mult [ x0; x1 ])
;;

testi
  (18)
  (let x0 =
     mult
       [ (mult [ (gen (37)); (gen (21)); (gen (5)) ]);
         (mult [ (gen (36)); (gen (9)); (gen (34)) ]); (gen (30)) ] in
   let x1 = mult [ (gen (18)); (gen (13)); (gen (28)) ] in
   mult [ x0; unit; x1 ] = mult [ x0; x1 ])
;;

testi
  (19)
  (let x0 = gen (18) in
   let x1 = gen (28) in mult [ x0; unit; x1 ] = mult [ x0; x1 ])
;;

testi (20) (let x0 = gen (1) in mult [ unit; x0 ] = x0)
;;

testi (21) (let x0 = gen (0) in mult [ unit; x0 ] = x0)
;;

testi (22) (let x0 = gen (1) in mult [ unit; x0 ] = x0)
;;

testi (23) (let x0 = gen (1) in mult [ unit; x0 ] = x0)
;;

testi
  (24)
  (let x0 =
     mult
       [ (mult [ (gen (22)); (gen (20)); (gen (23)) ]);
         (mult [ (gen (5)); (gen (19)); (gen (22)) ]); (gen (14)) ] in
   mult [ unit; x0 ] = x0)
;;

testi
  (25)
  (let x0 =
     mult
       [ (mult [ (gen (15)); (gen (8)); unit ]);
         (mult [ (gen (12)); unit; unit ]);
         (mult [ (gen (7)); (gen (7)); (gen (3)) ]) ] in
   mult [ x0; unit; unit ] = x0)
;;

testi (26) (let x0 = gen (3) in mult [ x0; unit; unit ] = x0)
;;

testi
  (27)
  (let x0 =
     mult [ unit; (gen (9)); (mult [ (gen (7)); (gen (21)); (gen (13)) ]) ] in
   mult [ x0; unit; unit ] = x0)
;;

testi
  (28)
  (let x0 =
     mult
       [ (mult [ (gen (15)); (gen (8)); unit ]);
         (mult [ (gen (12)); unit; unit ]);
         (mult [ (gen (7)); (gen (7)); (gen (3)) ]) ] in
   mult [ x0; unit; unit ] = x0)
;;

testi (29) (let x0 = gen (3) in mult [ x0; unit; unit ] = x0)
;;

