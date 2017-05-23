open Sequence_list_sharing
;;

open Gentest
;;

testing ("Sequence_list_sharing (automatic) - seed: 635852378")
;;

testi
  (0)
  (let x0 = element (37) in
   let x1 = element (37) in
   let x2 =
     concat
       [ (concat [ (element (9)); (element (37)); (element (19)) ]);
         (element (44)); (element (42)) ] in
   concat [ (concat [ x0; x1 ]); x2 ] = concat [ x0; x1; x2 ])
;;

testi
  (1)
  (let x0 =
     concat
       [ (concat [ (element (9)); (element (37)); (element (19)) ]);
         (element (44)); (element (42)) ] in
   let x1 = element (30) in
   let x2 = element (37) in
   concat [ (concat [ x0; x1 ]); x2 ] = concat [ x0; x1; x2 ])
;;

testi
  (2)
  (let x0 =
     concat
       [ (concat [ (element (9)); (element (37)); (element (19)) ]);
         (element (44)); (element (42)) ] in
   let x1 = element (37) in
   let x2 = element (70) in
   concat [ (concat [ x0; x1 ]); x2 ] = concat [ x0; x1; x2 ])
;;

testi
  (3)
  (let x0 =
     concat
       [ (element (13)); (concat [ empty; (element (65)); (element (73)) ]);
         (element (9)) ] in
   let x1 = element (38) in
   let x2 =
     concat
       [ (element (13)); (concat [ empty; (element (65)); (element (73)) ]);
         (element (9)) ] in
   concat [ (concat [ x0; x1 ]); x2 ] = concat [ x0; x1; x2 ])
;;

testi
  (4)
  (let x0 = element (30) in
   let x1 = element (67) in
   let x2 = empty in
   concat [ (concat [ x0; x1 ]); x2 ] = concat [ x0; x1; x2 ])
;;

testi
  (5)
  (let x0 = element (59) in
   let x1 =
     concat
       [ (concat [ (element (114)); (element (92)); (element (84)) ]);
         (element (62)); (element (108)) ] in
   let x2 = element (10) in
   let x3 =
     concat
       [ (concat [ (element (114)); (element (92)); (element (84)) ]);
         (element (62)); (element (108)) ] in
   let x4 =
     concat
       [ (element (66));
         (concat [ (element (103)); (element (83)); (element (12)) ]);
         (concat [ (element (74)); (element (94)); (element (6)) ]) ] in
   concat [ x0; (concat [ x1; x2 ]); (concat [ x3; x4 ]) ] =
   concat [ x0; x1; x2; x3; x4 ])
;;

testi
  (6)
  (let x0 =
     concat
       [ (concat [ (element (69)); (element (90)); (element (72)) ]);
         (element (56));
         (concat [ (element (74)); (element (94)); (element (6)) ]) ] in
   let x1 =
     concat
       [ (concat [ (element (18)); (element (85)); (element (72)) ]);
         (element (16));
         (concat [ (element (91)); (element (94)); (element (80)) ]) ] in
   let x2 =
     concat
       [ (concat [ (element (114)); (element (83)); (element (51)) ]);
         (element (110));
         (concat [ (element (95)); (element (5)); (element (58)) ]) ] in
   let x3 =
     concat
       [ (concat [ (element (122)); (element (14)); (element (51)) ]);
         (element (110)); (element (64)) ] in
   let x4 =
     concat
       [ (concat [ (element (114)); (element (83)); (element (51)) ]);
         (element (110));
         (concat [ (element (95)); (element (5)); (element (58)) ]) ] in
   concat [ x0; (concat [ x1; x2 ]); (concat [ x3; x4 ]) ] =
   concat [ x0; x1; x2; x3; x4 ])
;;

testi
  (7)
  (let x0 =
     concat
       [ (concat [ (element (114)); (element (92)); (element (84)) ]);
         (element (62)); (element (108)) ] in
   let x1 = element (48) in
   let x2 =
     concat
       [ (element (88)); (element (93));
         (concat [ (element (95)); (element (5)); (element (58)) ]) ] in
   let x3 = element (41) in
   let x4 =
     concat
       [ (concat [ (element (114)); (element (83)); (element (51)) ]);
         (element (110));
         (concat [ (element (95)); (element (5)); (element (58)) ]) ] in
   concat [ x0; (concat [ x1; x2 ]); (concat [ x3; x4 ]) ] =
   concat [ x0; x1; x2; x3; x4 ])
;;

testi
  (8)
  (let x0 = element (35) in
   let x1 =
     concat
       [ (concat [ (element (69)); (element (83)); (element (84)) ]);
         (element (62));
         (concat [ (element (85)); (element (124)); (element (53)) ]) ] in
   let x2 = element (48) in
   let x3 =
     concat
       [ (element (124)); (element (110));
         (concat [ (element (85)); (element (124)); (element (53)) ]) ] in
   let x4 =
     concat
       [ (concat [ (element (122)); (element (14)); (element (51)) ]);
         (element (110)); (element (64)) ] in
   concat [ x0; (concat [ x1; x2 ]); (concat [ x3; x4 ]) ] =
   concat [ x0; x1; x2; x3; x4 ])
;;

testi
  (9)
  (let x0 =
     concat
       [ (element (66));
         (concat [ (element (103)); (element (83)); (element (12)) ]);
         (concat [ (element (74)); (element (94)); (element (6)) ]) ] in
   let x1 =
     concat
       [ (concat [ (element (122)); (element (14)); (element (51)) ]);
         (element (110)); (element (64)) ] in
   let x2 = element (35) in
   let x3 =
     concat
       [ (concat [ (element (122)); (element (14)); (element (51)) ]);
         (element (110)); (element (64)) ] in
   let x4 =
     concat
       [ (concat [ (element (114)); (element (92)); (element (84)) ]);
         (element (62)); (element (108)) ] in
   concat [ x0; (concat [ x1; x2 ]); (concat [ x3; x4 ]) ] =
   concat [ x0; x1; x2; x3; x4 ])
;;

testi
  (10)
  (let x0 = empty in
   let x1 = element (27) in
   let x2 =
     concat
       [ (element (16)); (element (39));
         (concat [ (element (24)); (element (28)); (element (89)) ]) ] in
   let x3 =
     concat
       [ (element (82)); (concat [ (element (94)); (element (43)); empty ]);
         (element (95)) ] in
   concat [ (concat [ x0; x1; x2 ]); x3 ] = concat [ x0; x1; x2; x3 ])
;;

testi
  (11)
  (let x0 = element (65) in
   let x1 = element (50) in
   let x2 = element (50) in
   let x3 = empty in
   concat [ (concat [ x0; x1; x2 ]); x3 ] = concat [ x0; x1; x2; x3 ])
;;

testi
  (12)
  (let x0 = element (22) in
   let x1 = element (17) in
   let x2 =
     concat
       [ (concat [ (element (40)); (element (27)); (element (79)) ]);
         (element (57));
         (concat [ (element (18)); (element (69)); (element (7)) ]) ] in
   let x3 = concat [ (element (82)); (element (96)); (element (64)) ] in
   concat [ (concat [ x0; x1; x2 ]); x3 ] = concat [ x0; x1; x2; x3 ])
;;

testi
  (13)
  (let x0 =
     concat
       [ (element (82)); (concat [ (element (94)); (element (43)); empty ]);
         (element (95)) ] in
   let x1 = element (22) in
   let x2 =
     concat
       [ (concat [ (element (6)); (element (12)); (element (35)) ]);
         (concat [ (element (94)); (element (43)); empty ]);
         (concat [ (element (24)); (element (28)); (element (89)) ]) ] in
   let x3 =
     concat
       [ (concat [ (element (40)); (element (27)); (element (79)) ]);
         (concat [ (element (94)); (element (43)); empty ]);
         (concat [ (element (24)); (element (28)); (element (89)) ]) ] in
   concat [ (concat [ x0; x1; x2 ]); x3 ] = concat [ x0; x1; x2; x3 ])
;;

testi
  (14)
  (let x0 = element (49) in
   let x1 = element (49) in
   let x2 =
     concat
       [ (concat [ (element (40)); (element (27)); (element (79)) ]);
         (element (57));
         (concat [ (element (18)); (element (69)); (element (7)) ]) ] in
   let x3 = element (17) in
   concat [ (concat [ x0; x1; x2 ]); x3 ] = concat [ x0; x1; x2; x3 ])
;;

testi
  (15)
  (let x0 = element (47) in
   let x1 = element (31) in concat [ x0; empty; x1 ] = concat [ x0; x1 ])
;;

testi
  (16)
  (let x0 =
     concat
       [ (concat [ (element (34)); (element (7)); (element (42)) ]);
         (concat [ (element (22)); (element (38)); (element (38)) ]);
         (concat [ (element (22)); (element (42)); empty ]) ] in
   let x1 =
     concat
       [ (concat [ (element (34)); (element (7)); (element (42)) ]);
         (concat [ (element (46)); (element (31)); (element (38)) ]);
         (element (23)) ] in
   concat [ x0; empty; x1 ] = concat [ x0; x1 ])
;;

testi
  (17)
  (let x0 =
     concat
       [ (concat [ (element (4)); (element (18)); (element (11)) ]);
         (element (26)); (element (23)) ] in
   let x1 =
     concat
       [ (concat [ (element (34)); (element (7)); (element (42)) ]);
         (concat [ (element (22)); (element (38)); (element (38)) ]);
         (concat [ (element (22)); (element (42)); empty ]) ] in
   concat [ x0; empty; x1 ] = concat [ x0; x1 ])
;;

testi
  (18)
  (let x0 = element (38) in
   let x1 = element (41) in concat [ x0; empty; x1 ] = concat [ x0; x1 ])
;;

testi
  (19)
  (let x0 = element (38) in
   let x1 = element (47) in concat [ x0; empty; x1 ] = concat [ x0; x1 ])
;;

testi
  (20)
  (let x0 =
     concat
       [ (element (16));
         (concat [ (element (9)); (element (18)); (element (10)) ]);
         (element (21)) ] in
   concat [ empty; x0 ] = x0)
;;

testi (21) (let x0 = element (9) in concat [ empty; x0 ] = x0)
;;

testi (22) (let x0 = element (2) in concat [ empty; x0 ] = x0)
;;

testi (23) (let x0 = element (2) in concat [ empty; x0 ] = x0)
;;

testi (24) (let x0 = element (9) in concat [ empty; x0 ] = x0)
;;

testi (25) (let x0 = element (14) in concat [ x0; empty; empty ] = x0)
;;

testi (26) (let x0 = element (15) in concat [ x0; empty; empty ] = x0)
;;

testi
  (27)
  (let x0 =
     concat
       [ (element (10)); (element (1));
         (concat [ (element (6)); empty; (element (8)) ]) ] in
   concat [ x0; empty; empty ] = x0)
;;

testi
  (28)
  (let x0 =
     concat
       [ (element (10)); (concat [ empty; (element (9)); (element (12)) ]);
         (element (14)) ] in
   concat [ x0; empty; empty ] = x0)
;;

testi (29) (let x0 = element (7) in concat [ x0; empty; empty ] = x0)
;;

