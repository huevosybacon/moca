open Monoid_list
;;

open Gentest
;;

testing ("Monoid_list (automatic) - seed: 429675324")
;;

testi
  (0)
  (let x0 = gen (14) in
   let x1 =
     mult [ (gen (12)); (mult [ (gen (14)); unit; (gen (18)) ]); (gen (40)) ] in
   let x2 =
     mult
       [ (mult [ (gen (20)); (gen (44)); (gen (73)) ]);
         (mult [ (gen (23)); (gen (31)); (gen (10)) ]);
         (mult [ (gen (49)); (gen (31)); (gen (3)) ]) ] in
   mult [ (mult [ x0; x1 ]); x2 ] = mult [ x0; x1; x2 ])
;;

testi
  (1)
  (let x0 =
     mult [ (mult [ (gen (20)); (gen (44)); (gen (73)) ]); unit; (gen (51)) ] in
   let x1 = gen (71) in
   let x2 = gen (71) in mult [ (mult [ x0; x1 ]); x2 ] = mult [ x0; x1; x2 ])
;;

testi
  (2)
  (let x0 = gen (42) in
   let x1 =
     mult
       [ (gen (57)); (mult [ (gen (23)); (gen (31)); (gen (10)) ]);
         (gen (17)) ] in
   let x2 = gen (14) in mult [ (mult [ x0; x1 ]); x2 ] = mult [ x0; x1; x2 ])
;;

testi
  (3)
  (let x0 = gen (62) in
   let x1 =
     mult
       [ (gen (57)); (mult [ (gen (23)); (gen (16)); (gen (58)) ]);
         (gen (51)) ] in
   let x2 =
     mult [ (gen (12)); (mult [ (gen (14)); unit; (gen (18)) ]); (gen (40)) ] in
   mult [ (mult [ x0; x1 ]); x2 ] = mult [ x0; x1; x2 ])
;;

testi
  (4)
  (let x0 =
     mult
       [ (gen (57)); (mult [ (gen (23)); (gen (16)); (gen (58)) ]);
         (gen (51)) ] in
   let x1 = gen (42) in
   let x2 = gen (42) in mult [ (mult [ x0; x1 ]); x2 ] = mult [ x0; x1; x2 ])
;;

testi
  (5)
  (let x0 =
     mult
       [ (mult [ (gen (110)); (gen (109)); (gen (24)) ]); (gen (79));
         (mult [ (gen (88)); (gen (87)); (gen (75)) ]) ] in
   let x1 = gen (69) in
   let x2 = gen (36) in
   let x3 =
     mult
       [ (mult [ (gen (110)); (gen (109)); (gen (24)) ]); (gen (79));
         (mult [ (gen (88)); (gen (87)); (gen (75)) ]) ] in
   let x4 = gen (61) in
   mult [ x0; (mult [ x1; x2 ]); (mult [ x3; x4 ]) ] =
   mult [ x0; x1; x2; x3; x4 ])
;;

testi
  (6)
  (let x0 = gen (45) in
   let x1 =
     mult
       [ (mult [ (gen (88)); (gen (77)); (gen (81)) ]);
         (mult [ (gen (97)); (gen (4)); (gen (69)) ]); (gen (73)) ] in
   let x2 = gen (10) in
   let x3 =
     mult
       [ (mult [ (gen (88)); (gen (57)); (gen (24)) ]); (gen (67));
         (mult [ (gen (56)); (gen (15)); (gen (87)) ]) ] in
   let x4 =
     mult
       [ (gen (83)); (gen (124));
         (mult [ (gen (56)); (gen (15)); (gen (87)) ]) ] in
   mult [ x0; (mult [ x1; x2 ]); (mult [ x3; x4 ]) ] =
   mult [ x0; x1; x2; x3; x4 ])
;;

testi
  (7)
  (let x0 =
     mult
       [ (gen (83)); (gen (124));
         (mult [ (gen (56)); (gen (15)); (gen (87)) ]) ] in
   let x1 =
     mult
       [ (mult [ (gen (31)); (gen (48)); (gen (124)) ]);
         (mult [ (gen (81)); (gen (123)); (gen (73)) ]); (gen (45)) ] in
   let x2 = gen (104) in
   let x3 = gen (10) in
   let x4 = mult [ (gen (61)); (gen (19)); (gen (100)) ] in
   mult [ x0; (mult [ x1; x2 ]); (mult [ x3; x4 ]) ] =
   mult [ x0; x1; x2; x3; x4 ])
;;

testi
  (8)
  (let x0 = gen (104) in
   let x1 = gen (36) in
   let x2 = gen (67) in
   let x3 = mult [ (gen (83)); unit; (gen (100)) ] in
   let x4 =
     mult
       [ unit; (mult [ (gen (72)); (gen (4)); (gen (73)) ]);
         (mult [ (gen (88)); (gen (87)); (gen (75)) ]) ] in
   mult [ x0; (mult [ x1; x2 ]); (mult [ x3; x4 ]) ] =
   mult [ x0; x1; x2; x3; x4 ])
;;

testi
  (9)
  (let x0 = gen (114) in
   let x1 = gen (45) in
   let x2 = gen (85) in
   let x3 =
     mult
       [ (gen (61)); (mult [ (gen (81)); (gen (123)); (gen (73)) ]);
         (gen (38)) ] in
   let x4 =
     mult
       [ (mult [ (gen (88)); (gen (77)); (gen (81)) ]);
         (mult [ (gen (97)); (gen (4)); (gen (69)) ]); (gen (73)) ] in
   mult [ x0; (mult [ x1; x2 ]); (mult [ x3; x4 ]) ] =
   mult [ x0; x1; x2; x3; x4 ])
;;

testi
  (10)
  (let x0 =
     mult [ (gen (45)); (mult [ (gen (93)); (gen (67)); unit ]); (gen (71)) ] in
   let x1 = gen (57) in
   let x2 = gen (44) in
   let x3 = gen (78) in
   mult [ (mult [ x0; x1; x2 ]); x3 ] = mult [ x0; x1; x2; x3 ])
;;

testi
  (11)
  (let x0 =
     mult
       [ (gen (59)); (mult [ (gen (75)); (gen (56)); (gen (93)) ]);
         (gen (34)) ] in
   let x1 =
     mult
       [ (mult [ (gen (77)); unit; (gen (11)) ]);
         (mult [ (gen (13)); (gen (17)); (gen (34)) ]);
         (mult [ (gen (86)); (gen (80)); unit ]) ] in
   let x2 = gen (48) in
   let x3 = gen (44) in
   mult [ (mult [ x0; x1; x2 ]); x3 ] = mult [ x0; x1; x2; x3 ])
;;

testi
  (12)
  (let x0 =
     mult
       [ (mult [ (gen (19)); (gen (75)); (gen (88)) ]); (gen (81));
         (gen (71)) ] in
   let x1 = gen (18) in
   let x2 = gen (57) in
   let x3 =
     mult
       [ (mult [ (gen (21)); (gen (96)); (gen (20)) ]);
         (mult [ (gen (3)); (gen (67)); (gen (70)) ]); (gen (10)) ] in
   mult [ (mult [ x0; x1; x2 ]); x3 ] = mult [ x0; x1; x2; x3 ])
;;

testi
  (13)
  (let x0 =
     mult
       [ (mult [ (gen (21)); (gen (96)); (gen (20)) ]); (gen (70));
         (gen (34)) ] in
   let x1 = gen (48) in
   let x2 =
     mult
       [ (mult [ (gen (19)); (gen (75)); (gen (88)) ]);
         (mult [ (gen (3)); (gen (67)); unit ]); (gen (30)) ] in
   let x3 = gen (78) in
   mult [ (mult [ x0; x1; x2 ]); x3 ] = mult [ x0; x1; x2; x3 ])
;;

testi
  (14)
  (let x0 = gen (64) in
   let x1 =
     mult
       [ (mult [ (gen (19)); (gen (75)); (gen (88)) ]); (gen (81));
         (gen (71)) ] in
   let x2 =
     mult
       [ (mult [ (gen (19)); (gen (75)); (gen (88)) ]); (gen (81));
         (gen (71)) ] in
   let x3 = gen (57) in
   mult [ (mult [ x0; x1; x2 ]); x3 ] = mult [ x0; x1; x2; x3 ])
;;

testi
  (15)
  (let x0 = gen (25) in
   let x1 = gen (49) in mult [ x0; unit; x1 ] = mult [ x0; x1 ])
;;

testi
  (16)
  (let x0 =
     mult
       [ (mult [ (gen (22)); unit; (gen (28)) ]);
         (mult [ unit; (gen (10)); (gen (5)) ]);
         (mult [ (gen (20)); (gen (16)); (gen (43)) ]) ] in
   let x1 = mult [ (gen (27)); (gen (45)); (gen (42)) ] in
   mult [ x0; unit; x1 ] = mult [ x0; x1 ])
;;

testi
  (17)
  (let x0 =
     mult
       [ (mult [ (gen (22)); unit; (gen (28)) ]);
         (mult [ unit; (gen (10)); (gen (5)) ]);
         (mult [ (gen (20)); (gen (16)); (gen (43)) ]) ] in
   let x1 = gen (14) in mult [ x0; unit; x1 ] = mult [ x0; x1 ])
;;

testi
  (18)
  (let x0 =
     mult
       [ (mult [ (gen (49)); (gen (24)); (gen (49)) ]); (gen (45));
         (mult [ unit; (gen (46)); (gen (28)) ]) ] in
   let x1 = gen (14) in mult [ x0; unit; x1 ] = mult [ x0; x1 ])
;;

testi
  (19)
  (let x0 =
     mult [ (mult [ (gen (22)); unit; (gen (28)) ]); (gen (45)); (gen (24)) ] in
   let x1 = mult [ (gen (4)); (gen (45)); (gen (32)) ] in
   mult [ x0; unit; x1 ] = mult [ x0; x1 ])
;;

testi (20) (let x0 = gen (22) in mult [ unit; x0 ] = x0)
;;

testi (21) (let x0 = gen (22) in mult [ unit; x0 ] = x0)
;;

testi (22) (let x0 = gen (22) in mult [ unit; x0 ] = x0)
;;

testi
  (23)
  (let x0 =
     mult
       [ (gen (12)); (gen (5)); (mult [ (gen (24)); (gen (18)); (gen (1)) ]) ] in
   mult [ unit; x0 ] = x0)
;;

testi (24) (let x0 = gen (4) in mult [ unit; x0 ] = x0)
;;

testi (25) (let x0 = gen (17) in mult [ x0; unit; unit ] = x0)
;;

testi (26) (let x0 = unit in mult [ x0; unit; unit ] = x0)
;;

testi
  (27)
  (let x0 =
     mult [ (gen (0)); (mult [ (gen (2)); unit; (gen (11)) ]); (gen (13)) ] in
   mult [ x0; unit; unit ] = x0)
;;

testi (28) (let x0 = gen (22) in mult [ x0; unit; unit ] = x0)
;;

testi (29) (let x0 = gen (14) in mult [ x0; unit; unit ] = x0)
;;

