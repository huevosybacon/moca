open Group_list
;;

open Gentest
;;

testing ("Group_list (automatic) - seed: 146564748")
;;

testi
  (0)
  (let x0 = gen (0) in
   let x1 = gen (0) in
   let x2 =
     mult
       [ (gen (19)); (mult [ (gen (33)); (gen (66)); (gen (43)) ]);
         (mult [ (gen (32)); (gen (43)); (gen (15)) ]) ] in
   mult [ (mult [ x0; x1 ]); x2 ] = mult [ x0; x1; x2 ])
;;

testi
  (1)
  (let x0 = gen (35) in
   let x1 = opp (mult [ (gen (4)); (gen (49)); (gen (69)) ]) in
   let x2 = opp (opp (gen (50))) in
   mult [ (mult [ x0; x1 ]); x2 ] = mult [ x0; x1; x2 ])
;;

testi
  (2)
  (let x0 = gen (8) in
   let x1 = opp (mult [ (gen (4)); (gen (36)); (gen (51)) ]) in
   let x2 = gen (35) in mult [ (mult [ x0; x1 ]); x2 ] = mult [ x0; x1; x2 ])
;;

testi
  (3)
  (let x0 = opp (mult [ (gen (4)); (gen (36)); (gen (67)) ]) in
   let x1 = mult [ (opp (gen (73))); (gen (56)); (gen (20)) ] in
   let x2 = gen (8) in mult [ (mult [ x0; x1 ]); x2 ] = mult [ x0; x1; x2 ])
;;

testi
  (4)
  (let x0 = gen (0) in
   let x1 = gen (8) in
   let x2 = gen (4) in mult [ (mult [ x0; x1 ]); x2 ] = mult [ x0; x1; x2 ])
;;

testi
  (5)
  (let x0 = gen (117) in
   let x1 = gen (49) in
   let x2 =
     mult
       [ (mult [ (gen (3)); (gen (18)); (gen (41)) ]); (gen (75));
         (opp (gen (61))) ] in
   let x3 = opp (gen (10)) in
   let x4 =
     mult
       [ (gen (82)); (opp unit);
         (mult [ (gen (104)); (gen (96)); (gen (32)) ]) ] in
   mult [ x0; (mult [ x1; x2 ]); (mult [ x3; x4 ]) ] =
   mult [ x0; x1; x2; x3; x4 ])
;;

testi
  (6)
  (let x0 = opp (gen (1)) in
   let x1 =
     mult
       [ (mult [ (gen (3)); (gen (35)); (gen (71)) ]); (gen (104));
         (mult [ (gen (104)); (gen (96)); (gen (32)) ]) ] in
   let x2 =
     mult
       [ (mult [ (gen (3)); (gen (35)); (gen (71)) ]); (gen (104));
         (mult [ (gen (104)); (gen (96)); (gen (32)) ]) ] in
   let x3 = gen (14) in
   let x4 = opp (gen (30)) in
   mult [ x0; (mult [ x1; x2 ]); (mult [ x3; x4 ]) ] =
   mult [ x0; x1; x2; x3; x4 ])
;;

testi
  (7)
  (let x0 = opp (opp unit) in
   let x1 = gen (49) in
   let x2 = gen (7) in
   let x3 = gen (76) in
   let x4 = mult [ (gen (108)); (opp (gen (20))); (opp (gen (44))) ] in
   mult [ x0; (mult [ x1; x2 ]); (mult [ x3; x4 ]) ] =
   mult [ x0; x1; x2; x3; x4 ])
;;

testi
  (8)
  (let x0 = opp (gen (10)) in
   let x1 = gen (23) in
   let x2 = opp (gen (1)) in
   let x3 = gen (29) in
   let x4 = opp (gen (110)) in
   mult [ x0; (mult [ x1; x2 ]); (mult [ x3; x4 ]) ] =
   mult [ x0; x1; x2; x3; x4 ])
;;

testi
  (9)
  (let x0 = opp (gen (110)) in
   let x1 = opp (gen (1)) in
   let x2 = gen (29) in
   let x3 = gen (76) in
   let x4 =
     mult
       [ (opp (gen (111))); (gen (75));
         (mult [ (gen (20)); (gen (121)); (gen (55)) ]) ] in
   mult [ x0; (mult [ x1; x2 ]); (mult [ x3; x4 ]) ] =
   mult [ x0; x1; x2; x3; x4 ])
;;

testi
  (10)
  (let x0 =
     mult
       [ (gen (61)); (mult [ (gen (74)); (gen (85)); (gen (51)) ]);
         (mult [ (gen (56)); (gen (82)); (gen (89)) ]) ] in
   let x1 = opp (mult [ unit; (gen (99)); (gen (35)) ]) in
   let x2 = mult [ (gen (78)); (gen (30)); (opp (gen (77))) ] in
   let x3 = gen (6) in
   mult [ (mult [ x0; x1; x2 ]); x3 ] = mult [ x0; x1; x2; x3 ])
;;

testi
  (11)
  (let x0 = gen (35) in
   let x1 = opp (mult [ (gen (93)); (gen (66)); (gen (35)) ]) in
   let x2 =
     mult
       [ (gen (99)); (gen (34)); (mult [ (gen (0)); (gen (47)); (gen (89)) ]) ] in
   let x3 = gen (35) in
   mult [ (mult [ x0; x1; x2 ]); x3 ] = mult [ x0; x1; x2; x3 ])
;;

testi
  (12)
  (let x0 = gen (34) in
   let x1 = mult [ (gen (78)); (gen (30)); (opp (gen (77))) ] in
   let x2 = mult [ (opp (gen (96))); (opp (gen (35))); (opp (gen (36))) ] in
   let x3 = opp (mult [ (gen (20)); (gen (75)); (gen (72)) ]) in
   mult [ (mult [ x0; x1; x2 ]); x3 ] = mult [ x0; x1; x2; x3 ])
;;

testi
  (13)
  (let x0 = opp (gen (39)) in
   let x1 = mult [ (opp (gen (96))); (opp (gen (35))); (opp (gen (36))) ] in
   let x2 = opp (mult [ (gen (93)); (gen (66)); (gen (35)) ]) in
   let x3 = gen (6) in
   mult [ (mult [ x0; x1; x2 ]); x3 ] = mult [ x0; x1; x2; x3 ])
;;

testi
  (14)
  (let x0 =
     mult
       [ (opp (gen (28))); (opp (gen (80)));
         (mult [ (gen (0)); (gen (69)); (gen (4)) ]) ] in
   let x1 = gen (21) in
   let x2 = opp (gen (29)) in
   let x3 = mult [ (gen (78)); (gen (30)); (opp (gen (77))) ] in
   mult [ (mult [ x0; x1; x2 ]); x3 ] = mult [ x0; x1; x2; x3 ])
;;

testi
  (15)
  (let x0 = gen (29) in
   let x1 = gen (39) in mult [ x0; unit; x1 ] = mult [ x0; x1 ])
;;

testi
  (16)
  (let x0 = gen (45) in
   let x1 = opp (gen (23)) in mult [ x0; unit; x1 ] = mult [ x0; x1 ])
;;

testi
  (17)
  (let x0 = opp (gen (17)) in
   let x1 = opp (mult [ (gen (40)); (gen (4)); (gen (24)) ]) in
   mult [ x0; unit; x1 ] = mult [ x0; x1 ])
;;

testi
  (18)
  (let x0 = opp (mult [ (gen (23)); unit; (gen (43)) ]) in
   let x1 =
     mult [ (gen (8)); unit; (mult [ (gen (23)); (gen (48)); (gen (46)) ]) ] in
   mult [ x0; unit; x1 ] = mult [ x0; x1 ])
;;

testi
  (19)
  (let x0 = opp (gen (23)) in
   let x1 = gen (45) in mult [ x0; unit; x1 ] = mult [ x0; x1 ])
;;

testi (20) (let x0 = gen (5) in mult [ unit; x0 ] = x0)
;;

testi (21) (let x0 = gen (22) in mult [ unit; x0 ] = x0)
;;

testi
  (22)
  (let x0 =
     mult
       [ (mult [ (gen (0)); (gen (24)); (gen (10)) ]); (gen (3));
         (mult [ (gen (6)); (gen (23)); (gen (2)) ]) ] in
   mult [ unit; x0 ] = x0)
;;

testi (23) (let x0 = opp (opp (gen (19))) in mult [ unit; x0 ] = x0)
;;

testi
  (24)
  (let x0 = mult [ (opp (gen (12))); (opp (gen (5))); (gen (21)) ] in
   mult [ unit; x0 ] = x0)
;;

testi (25) (let x0 = gen (15) in mult [ x0; unit; unit ] = x0)
;;

testi (26) (let x0 = opp (gen (6)) in mult [ x0; unit; unit ] = x0)
;;

testi
  (27)
  (let x0 =
     mult
       [ (mult [ (gen (4)); (gen (8)); (gen (17)) ]);
         (mult [ (gen (18)); (gen (1)); unit ]); (opp (gen (11))) ] in
   mult [ x0; unit; unit ] = x0)
;;

testi
  (28)
  (let x0 =
     mult
       [ (mult [ (gen (4)); (gen (8)); (gen (17)) ]);
         (mult [ (gen (18)); (gen (1)); unit ]); (opp (gen (11))) ] in
   mult [ x0; unit; unit ] = x0)
;;

testi (29) (let x0 = opp unit in mult [ x0; unit; unit ] = x0)
;;

