open Group_list_sharing
;;

open Gentest
;;

testing ("Group_list_sharing (automatic) - seed: 893433404")
;;

testi
  (0)
  (let x0 = opp (mult [ (gen (35)); (gen (52)); (gen (50)) ]) in
   let x1 = gen (30) in
   let x2 = gen (51) in mult [ (mult [ x0; x1 ]); x2 ] = mult [ x0; x1; x2 ])
;;

testi
  (1)
  (let x0 = gen (64) in
   let x1 = gen (36) in
   let x2 =
     mult
       [ (opp unit); (mult [ (gen (26)); (gen (67)); (gen (29)) ]);
         (gen (62)) ] in
   mult [ (mult [ x0; x1 ]); x2 ] = mult [ x0; x1; x2 ])
;;

testi
  (2)
  (let x0 = mult [ (gen (62)); (opp (gen (74))); (gen (73)) ] in
   let x1 = gen (64) in
   let x2 = gen (64) in mult [ (mult [ x0; x1 ]); x2 ] = mult [ x0; x1; x2 ])
;;

testi
  (3)
  (let x0 =
     mult
       [ (mult [ (gen (38)); (gen (57)); (gen (41)) ]);
         (mult [ (gen (58)); (gen (67)); (gen (62)) ]); (opp (gen (43))) ] in
   let x1 =
     mult
       [ (opp (gen (12))); (mult [ (gen (26)); (gen (67)); (gen (29)) ]);
         (mult [ unit; (gen (32)); (gen (60)) ]) ] in
   let x2 =
     mult
       [ (opp unit); (mult [ (gen (26)); (gen (67)); (gen (29)) ]);
         (gen (62)) ] in
   mult [ (mult [ x0; x1 ]); x2 ] = mult [ x0; x1; x2 ])
;;

testi
  (4)
  (let x0 = mult [ (opp (gen (12))); (gen (12)); (gen (73)) ] in
   let x1 = opp (mult [ (gen (35)); (gen (52)); (gen (50)) ]) in
   let x2 = opp (opp (gen (37))) in
   mult [ (mult [ x0; x1 ]); x2 ] = mult [ x0; x1; x2 ])
;;

testi
  (5)
  (let x0 = mult [ (opp (gen (71))); (gen (108)); (gen (20)) ] in
   let x1 = gen (55) in
   let x2 = gen (117) in
   let x3 = gen (55) in
   let x4 =
     mult
       [ (mult [ (gen (74)); (gen (121)); (gen (121)) ]); (opp (gen (77)));
         (opp (gen (19))) ] in
   mult [ x0; (mult [ x1; x2 ]); (mult [ x3; x4 ]) ] =
   mult [ x0; x1; x2; x3; x4 ])
;;

testi
  (6)
  (let x0 = gen (92) in
   let x1 =
     mult
       [ (gen (42)); (mult [ (gen (100)); (gen (54)); (gen (100)) ]); unit ] in
   let x2 = opp (mult [ (gen (18)); (gen (76)); (gen (122)) ]) in
   let x3 = gen (113) in
   let x4 = mult [ (gen (99)); (opp (gen (39))); (gen (97)) ] in
   mult [ x0; (mult [ x1; x2 ]); (mult [ x3; x4 ]) ] =
   mult [ x0; x1; x2; x3; x4 ])
;;

testi
  (7)
  (let x0 = mult [ (gen (99)); (opp (gen (39))); (gen (97)) ] in
   let x1 = opp (mult [ (gen (18)); (gen (48)); (gen (43)) ]) in
   let x2 = opp (gen (95)) in
   let x3 =
     mult
       [ (gen (62)); (mult [ (gen (69)); (gen (114)); (gen (9)) ]);
         (gen (20)) ] in
   let x4 = opp (opp (gen (26))) in
   mult [ x0; (mult [ x1; x2 ]); (mult [ x3; x4 ]) ] =
   mult [ x0; x1; x2; x3; x4 ])
;;

testi
  (8)
  (let x0 = gen (55) in
   let x1 = gen (27) in
   let x2 = mult [ (gen (10)); (opp (gen (54))); (gen (20)) ] in
   let x3 =
     mult
       [ (gen (62)); (mult [ (gen (69)); (gen (114)); (gen (9)) ]);
         (gen (20)) ] in
   let x4 = gen (55) in
   mult [ x0; (mult [ x1; x2 ]); (mult [ x3; x4 ]) ] =
   mult [ x0; x1; x2; x3; x4 ])
;;

testi
  (9)
  (let x0 = gen (55) in
   let x1 = opp (mult [ (gen (18)); (gen (76)); (gen (122)) ]) in
   let x2 = gen (75) in
   let x3 =
     mult
       [ (gen (62)); (mult [ (gen (69)); (gen (114)); (gen (9)) ]);
         (gen (20)) ] in
   let x4 = opp (mult [ (gen (44)); (gen (65)); (gen (56)) ]) in
   mult [ x0; (mult [ x1; x2 ]); (mult [ x3; x4 ]) ] =
   mult [ x0; x1; x2; x3; x4 ])
;;

testi
  (10)
  (let x0 =
     mult
       [ (mult [ (gen (44)); (gen (53)); (gen (79)) ]); (opp (gen (32)));
         (gen (75)) ] in
   let x1 = gen (50) in
   let x2 = opp (opp (gen (31))) in
   let x3 = gen (25) in
   mult [ (mult [ x0; x1; x2 ]); x3 ] = mult [ x0; x1; x2; x3 ])
;;

testi
  (11)
  (let x0 = opp (gen (36)) in
   let x1 = mult [ (opp (gen (17))); (gen (70)); (opp (gen (22))) ] in
   let x2 = gen (89) in
   let x3 =
     mult
       [ (mult [ (gen (44)); (gen (53)); (gen (79)) ]); (opp (gen (32)));
         (gen (75)) ] in
   mult [ (mult [ x0; x1; x2 ]); x3 ] = mult [ x0; x1; x2; x3 ])
;;

testi
  (12)
  (let x0 = gen (90) in
   let x1 =
     mult
       [ (mult [ (gen (68)); (gen (51)); (gen (41)) ]); (opp (gen (71)));
         (mult [ (gen (14)); (gen (61)); (gen (39)) ]) ] in
   let x2 = gen (42) in
   let x3 =
     mult
       [ (opp (gen (8))); (opp (gen (71)));
         (mult [ (gen (21)); unit; (gen (7)) ]) ] in
   mult [ (mult [ x0; x1; x2 ]); x3 ] = mult [ x0; x1; x2; x3 ])
;;

testi
  (13)
  (let x0 = gen (98) in
   let x1 = gen (34) in
   let x2 = gen (15) in
   let x3 = gen (73) in
   mult [ (mult [ x0; x1; x2 ]); x3 ] = mult [ x0; x1; x2; x3 ])
;;

testi
  (14)
  (let x0 = opp (opp (gen (70))) in
   let x1 = unit in
   let x2 = opp (mult [ (gen (53)); (gen (91)); (gen (2)) ]) in
   let x3 = opp (mult [ (gen (15)); (gen (32)); (gen (61)) ]) in
   mult [ (mult [ x0; x1; x2 ]); x3 ] = mult [ x0; x1; x2; x3 ])
;;

testi
  (15)
  (let x0 = mult [ (opp (gen (8))); (opp (gen (49))); (gen (27)) ] in
   let x1 = gen (27) in mult [ x0; unit; x1 ] = mult [ x0; x1 ])
;;

testi
  (16)
  (let x0 = gen (30) in
   let x1 = opp (gen (25)) in mult [ x0; unit; x1 ] = mult [ x0; x1 ])
;;

testi
  (17)
  (let x0 = opp (gen (14)) in
   let x1 = opp (gen (14)) in mult [ x0; unit; x1 ] = mult [ x0; x1 ])
;;

testi
  (18)
  (let x0 = opp (gen (25)) in
   let x1 = gen (27) in mult [ x0; unit; x1 ] = mult [ x0; x1 ])
;;

testi
  (19)
  (let x0 = gen (27) in
   let x1 = mult [ (opp (gen (8))); (opp (gen (49))); (gen (27)) ] in
   mult [ x0; unit; x1 ] = mult [ x0; x1 ])
;;

testi (20) (let x0 = unit in mult [ unit; x0 ] = x0)
;;

testi (21) (let x0 = gen (20) in mult [ unit; x0 ] = x0)
;;

testi (22) (let x0 = unit in mult [ unit; x0 ] = x0)
;;

testi
  (23)
  (let x0 =
     mult
       [ (gen (13)); (mult [ (gen (18)); unit; (gen (16)) ]);
         (opp (gen (18))) ] in
   mult [ unit; x0 ] = x0)
;;

testi (24) (let x0 = gen (20) in mult [ unit; x0 ] = x0)
;;

testi (25) (let x0 = gen (3) in mult [ x0; unit; unit ] = x0)
;;

testi (26) (let x0 = gen (3) in mult [ x0; unit; unit ] = x0)
;;

testi (27) (let x0 = gen (22) in mult [ x0; unit; unit ] = x0)
;;

testi (28) (let x0 = gen (4) in mult [ x0; unit; unit ] = x0)
;;

testi (29) (let x0 = gen (3) in mult [ x0; unit; unit ] = x0)
;;

