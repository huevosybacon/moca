open Monoid_modules_list
;;

open Gentest
;;

testing ("Monoid_modules_list (automatic) - seed: 90033697")
;;

testi
  (0)
  (let x0 =
     mult [ (gen (22)); (mult [ unit; (gen (26)); (gen (56)) ]); (gen (50)) ] in
   let x1 =
     mult
       [ (gen (64)); (mult [ (gen (49)); (gen (46)); (gen (44)) ]);
         (gen (50)) ] in
   let x2 =
     mult
       [ (gen (64)); (mult [ (gen (49)); (gen (46)); (gen (44)) ]);
         (gen (50)) ] in
   mult [ (mult [ x0; x1 ]); x2 ] = mult [ x0; x1; x2 ])
;;

testi
  (1)
  (let x0 = unit in
   let x1 =
     mult
       [ (mult [ (gen (65)); (gen (45)); (gen (44)) ]); (gen (32));
         (mult [ unit; (gen (48)); (gen (71)) ]) ] in
   let x2 =
     mult [ (gen (22)); (mult [ unit; (gen (26)); (gen (56)) ]); (gen (50)) ] in
   mult [ (mult [ x0; x1 ]); x2 ] = mult [ x0; x1; x2 ])
;;

testi
  (2)
  (let x0 = gen (21) in
   let x1 = mult [ (gen (64)); (gen (27)); (gen (42)) ] in
   let x2 = unit in mult [ (mult [ x0; x1 ]); x2 ] = mult [ x0; x1; x2 ])
;;

testi
  (3)
  (let x0 = gen (73) in
   let x1 =
     mult [ (gen (22)); (mult [ unit; (gen (26)); (gen (56)) ]); (gen (50)) ] in
   let x2 = unit in mult [ (mult [ x0; x1 ]); x2 ] = mult [ x0; x1; x2 ])
;;

testi
  (4)
  (let x0 =
     mult
       [ (gen (64)); (mult [ (gen (49)); (gen (46)); (gen (44)) ]);
         (gen (50)) ] in
   let x1 = gen (0) in
   let x2 =
     mult
       [ (mult [ (gen (65)); (gen (45)); (gen (44)) ]);
         (mult [ (gen (49)); unit; (gen (47)) ]); (gen (42)) ] in
   mult [ (mult [ x0; x1 ]); x2 ] = mult [ x0; x1; x2 ])
;;

testi
  (5)
  (let x0 =
     mult
       [ (gen (20)); (gen (57)); (mult [ (gen (25)); (gen (3)); (gen (42)) ]) ] in
   let x1 = gen (4) in
   let x2 =
     mult
       [ (gen (87)); (gen (2)); (mult [ (gen (79)); (gen (14)); (gen (31)) ]) ] in
   let x3 = gen (4) in
   let x4 = gen (15) in
   mult [ x0; (mult [ x1; x2 ]); (mult [ x3; x4 ]) ] =
   mult [ x0; x1; x2; x3; x4 ])
;;

testi
  (6)
  (let x0 =
     mult
       [ (mult [ (gen (64)); (gen (39)); (gen (101)) ]);
         (mult [ (gen (123)); (gen (109)); (gen (1)) ]);
         (mult [ unit; (gen (21)); (gen (67)) ]) ] in
   let x1 = gen (35) in
   let x2 = gen (16) in
   let x3 = gen (19) in
   let x4 = gen (69) in
   mult [ x0; (mult [ x1; x2 ]); (mult [ x3; x4 ]) ] =
   mult [ x0; x1; x2; x3; x4 ])
;;

testi
  (7)
  (let x0 = mult [ (gen (20)); (gen (74)); (gen (113)) ] in
   let x1 = gen (48) in
   let x2 =
     mult
       [ (mult [ (gen (42)); (gen (64)); (gen (85)) ]); (gen (57));
         (gen (53)) ] in
   let x3 =
     mult
       [ (gen (87)); (gen (56));
         (mult [ (gen (93)); (gen (76)); (gen (54)) ]) ] in
   let x4 =
     mult
       [ (mult [ (gen (2)); (gen (80)); (gen (100)) ]); (gen (74));
         (mult [ (gen (79)); (gen (14)); (gen (31)) ]) ] in
   mult [ x0; (mult [ x1; x2 ]); (mult [ x3; x4 ]) ] =
   mult [ x0; x1; x2; x3; x4 ])
;;

testi
  (8)
  (let x0 = gen (98) in
   let x1 = gen (48) in
   let x2 =
     mult
       [ (mult [ (gen (42)); (gen (64)); (gen (85)) ]); (gen (57));
         (gen (53)) ] in
   let x3 =
     mult
       [ (gen (87)); (gen (2)); (mult [ (gen (79)); (gen (14)); (gen (31)) ]) ] in
   let x4 = gen (36) in
   mult [ x0; (mult [ x1; x2 ]); (mult [ x3; x4 ]) ] =
   mult [ x0; x1; x2; x3; x4 ])
;;

testi
  (9)
  (let x0 = gen (98) in
   let x1 = gen (4) in
   let x2 = gen (55) in
   let x3 =
     mult
       [ (gen (7)); (mult [ (gen (118)); unit; (gen (71)) ]); (gen (124)) ] in
   let x4 =
     mult
       [ (gen (7)); (mult [ (gen (118)); unit; (gen (71)) ]); (gen (124)) ] in
   mult [ x0; (mult [ x1; x2 ]); (mult [ x3; x4 ]) ] =
   mult [ x0; x1; x2; x3; x4 ])
;;

testi
  (10)
  (let x0 = mult [ (gen (95)); (gen (80)); (gen (96)) ] in
   let x1 =
     mult
       [ (mult [ (gen (63)); (gen (39)); (gen (9)) ]); (gen (48)); (gen (88)) ] in
   let x2 =
     mult
       [ (mult [ (gen (52)); (gen (39)); (gen (37)) ]);
         (mult [ (gen (66)); (gen (23)); (gen (69)) ]); (gen (88)) ] in
   let x3 = gen (36) in
   mult [ (mult [ x0; x1; x2 ]); x3 ] = mult [ x0; x1; x2; x3 ])
;;

testi
  (11)
  (let x0 = gen (35) in
   let x1 =
     mult
       [ (mult [ (gen (52)); (gen (39)); (gen (37)) ]);
         (mult [ (gen (66)); (gen (23)); (gen (69)) ]); (gen (88)) ] in
   let x2 =
     mult
       [ (gen (57)); (gen (14));
         (mult [ (gen (68)); (gen (21)); (gen (32)) ]) ] in
   let x3 = gen (72) in
   mult [ (mult [ x0; x1; x2 ]); x3 ] = mult [ x0; x1; x2; x3 ])
;;

testi
  (12)
  (let x0 = gen (36) in
   let x1 = gen (51) in
   let x2 =
     mult
       [ (mult [ (gen (63)); (gen (39)); (gen (9)) ]);
         (mult [ (gen (52)); (gen (32)); (gen (39)) ]); (gen (21)) ] in
   let x3 =
     mult
       [ (mult [ (gen (52)); (gen (39)); (gen (37)) ]);
         (mult [ (gen (66)); (gen (23)); (gen (69)) ]); (gen (88)) ] in
   mult [ (mult [ x0; x1; x2 ]); x3 ] = mult [ x0; x1; x2; x3 ])
;;

testi
  (13)
  (let x0 = gen (68) in
   let x1 = mult [ (gen (95)); (gen (80)); (gen (96)) ] in
   let x2 =
     mult
       [ (gen (57)); (gen (14));
         (mult [ (gen (68)); (gen (21)); (gen (32)) ]) ] in
   let x3 = gen (50) in
   mult [ (mult [ x0; x1; x2 ]); x3 ] = mult [ x0; x1; x2; x3 ])
;;

testi
  (14)
  (let x0 =
     mult [ unit; (mult [ (gen (52)); (gen (32)); (gen (39)) ]); (gen (96)) ] in
   let x1 = gen (72) in
   let x2 = mult [ (gen (50)); (gen (14)); (gen (8)) ] in
   let x3 =
     mult [ unit; (mult [ (gen (52)); (gen (32)); (gen (39)) ]); (gen (96)) ] in
   mult [ (mult [ x0; x1; x2 ]); x3 ] = mult [ x0; x1; x2; x3 ])
;;

testi
  (15)
  (let x0 = gen (24) in
   let x1 = gen (20) in mult [ x0; unit; x1 ] = mult [ x0; x1 ])
;;

testi
  (16)
  (let x0 = gen (46) in
   let x1 =
     mult
       [ (gen (11)); (mult [ (gen (42)); (gen (47)); (gen (19)) ]);
         (mult [ (gen (49)); (gen (9)); unit ]) ] in
   mult [ x0; unit; x1 ] = mult [ x0; x1 ])
;;

testi
  (17)
  (let x0 =
     mult
       [ (mult [ unit; (gen (0)); (gen (4)) ]);
         (mult [ (gen (11)); (gen (19)); (gen (19)) ]);
         (mult [ (gen (49)); (gen (9)); unit ]) ] in
   let x1 = gen (20) in mult [ x0; unit; x1 ] = mult [ x0; x1 ])
;;

testi
  (18)
  (let x0 =
     mult
       [ (gen (11)); (mult [ (gen (22)); (gen (19)); (gen (2)) ]);
         (mult [ (gen (33)); (gen (28)); (gen (9)) ]) ] in
   let x1 = gen (24) in mult [ x0; unit; x1 ] = mult [ x0; x1 ])
;;

testi
  (19)
  (let x0 = gen (14) in
   let x1 = gen (20) in mult [ x0; unit; x1 ] = mult [ x0; x1 ])
;;

testi
  (20)
  (let x0 =
     mult
       [ (mult [ (gen (6)); (gen (14)); (gen (11)) ]);
         (mult [ (gen (1)); (gen (18)); (gen (23)) ]);
         (mult [ (gen (18)); (gen (24)); (gen (15)) ]) ] in
   mult [ unit; x0 ] = x0)
;;

testi (21) (let x0 = gen (15) in mult [ unit; x0 ] = x0)
;;

testi (22) (let x0 = gen (15) in mult [ unit; x0 ] = x0)
;;

testi
  (23)
  (let x0 =
     mult [ unit; (mult [ (gen (20)); (gen (1)); (gen (9)) ]); (gen (15)) ] in
   mult [ unit; x0 ] = x0)
;;

testi
  (24)
  (let x0 =
     mult
       [ (mult [ (gen (6)); (gen (14)); (gen (11)) ]);
         (mult [ (gen (1)); (gen (18)); (gen (23)) ]);
         (mult [ (gen (18)); (gen (24)); (gen (15)) ]) ] in
   mult [ unit; x0 ] = x0)
;;

testi
  (25)
  (let x0 =
     mult
       [ (mult [ (gen (16)); (gen (18)); (gen (1)) ]);
         (mult [ (gen (9)); unit; (gen (4)) ]); (gen (8)) ] in
   mult [ x0; unit; unit ] = x0)
;;

testi (26) (let x0 = unit in mult [ x0; unit; unit ] = x0)
;;

testi
  (27)
  (let x0 =
     mult
       [ (mult [ (gen (16)); (gen (18)); (gen (1)) ]);
         (mult [ (gen (9)); unit; (gen (4)) ]); (gen (8)) ] in
   mult [ x0; unit; unit ] = x0)
;;

testi
  (28)
  (let x0 =
     mult
       [ (mult [ (gen (16)); (gen (18)); (gen (1)) ]);
         (mult [ (gen (9)); unit; (gen (4)) ]); (gen (8)) ] in
   mult [ x0; unit; unit ] = x0)
;;

testi
  (29)
  (let x0 =
     mult
       [ (mult [ (gen (16)); (gen (18)); (gen (1)) ]);
         (mult [ (gen (9)); unit; (gen (4)) ]); (gen (5)) ] in
   mult [ x0; unit; unit ] = x0)
;;

testi
  (30)
  (let x2 = gen (38) in
   let x1 =
     mult
       [ (gen (33)); (mult [ (gen (30)); (gen (26)); (gen (7)) ]); (gen (43)) ] in
   let x0 = lGen (14) in
   lAct (x2, (lAct (x1, x0))) = lAct ((mult [ x2; x1 ]), x0))
;;

testi
  (31)
  (let x2 = unit in
   let x1 = gen (25) in
   let x0 = lGen (14) in
   lAct (x2, (lAct (x1, x0))) = lAct ((mult [ x2; x1 ]), x0))
;;

testi
  (32)
  (let x2 = unit in
   let x1 = gen (48) in
   let x0 = lAct ((gen (9)), (lGen (5))) in
   lAct (x2, (lAct (x1, x0))) = lAct ((mult [ x2; x1 ]), x0))
;;

testi
  (33)
  (let x2 = gen (25) in
   let x1 =
     mult
       [ (mult [ (gen (30)); unit; (gen (7)) ]); (gen (20));
         (mult [ unit; (gen (46)); (gen (31)) ]) ] in
   let x0 = lGen (14) in
   lAct (x2, (lAct (x1, x0))) = lAct ((mult [ x2; x1 ]), x0))
;;

testi
  (34)
  (let x2 = gen (25) in
   let x1 =
     mult
       [ (mult [ (gen (30)); unit; (gen (7)) ]); (gen (32));
         (mult [ (gen (11)); (gen (46)); (gen (26)) ]) ] in
   let x0 = lGen (9) in
   lAct (x2, (lAct (x1, x0))) = lAct ((mult [ x2; x1 ]), x0))
;;

testi (35) (let x0 = lGen (8) in lAct (unit, x0) = x0)
;;

testi
  (36)
  (let x0 = lAct ((gen (13)), (lAct (unit, (lGen (13))))) in
   lAct (unit, x0) = x0)
;;

testi
  (37)
  (let x0 = lAct ((gen (20)), (lAct (unit, (lGen (13))))) in
   lAct (unit, x0) = x0)
;;

testi (38) (let x0 = lGen (8) in lAct (unit, x0) = x0)
;;

testi (39) (let x0 = lGen (8) in lAct (unit, x0) = x0)
;;

testi (40) (let x0 = rGen (19) in rAct (x0, unit) = x0)
;;

testi (41) (let x0 = rGen (23) in rAct (x0, unit) = x0)
;;

testi
  (42)
  (let x0 =
     rAct
       ((rAct ((rGen (12)), (gen (21)))),
        (mult [ (gen (16)); (gen (3)); (gen (9)) ])) in
   rAct (x0, unit) = x0)
;;

testi
  (43)
  (let x0 =
     rAct
       ((rAct ((rGen (20)), (gen (21)))),
        (mult [ (gen (16)); (gen (3)); (gen (15)) ])) in
   rAct (x0, unit) = x0)
;;

testi (44) (let x0 = rGen (23) in rAct (x0, unit) = x0)
;;

testi
  (45)
  (let x2 = rAct ((rGen (16)), (gen (9))) in
   let x1 = gen (18) in
   let x0 =
     mult [ unit; (gen (47)); (mult [ (gen (21)); (gen (43)); (gen (28)) ]) ] in
   rAct ((rAct (x2, x1)), x0) = rAct (x2, (mult [ x1; x0 ])))
;;

testi
  (46)
  (let x2 = rGen (5) in
   let x1 = gen (27) in
   let x0 =
     mult
       [ (mult [ (gen (11)); (gen (46)); (gen (26)) ]);
         (mult [ (gen (0)); unit; (gen (38)) ]);
         (mult [ (gen (14)); (gen (2)); (gen (35)) ]) ] in
   rAct ((rAct (x2, x1)), x0) = rAct (x2, (mult [ x1; x0 ])))
;;

testi
  (47)
  (let x2 = rAct ((rAct ((rGen (2)), (gen (9)))), (gen (9))) in
   let x1 = gen (44) in
   let x0 = gen (45) in
   rAct ((rAct (x2, x1)), x0) = rAct (x2, (mult [ x1; x0 ])))
;;

testi
  (48)
  (let x2 = rGen (5) in
   let x1 =
     mult [ (gen (43)); (mult [ (gen (46)); unit; unit ]); (gen (39)) ] in
   let x0 = gen (44) in
   rAct ((rAct (x2, x1)), x0) = rAct (x2, (mult [ x1; x0 ])))
;;

testi
  (49)
  (let x2 = rGen (3) in
   let x1 =
     mult
       [ (mult [ (gen (11)); (gen (46)); (gen (26)) ]);
         (mult [ (gen (0)); unit; (gen (38)) ]);
         (mult [ (gen (14)); (gen (2)); (gen (35)) ]) ] in
   let x0 =
     mult
       [ (mult [ (gen (11)); (gen (46)); (gen (26)) ]);
         (mult [ (gen (0)); unit; (gen (38)) ]);
         (mult [ (gen (14)); (gen (2)); (gen (35)) ]) ] in
   rAct ((rAct (x2, x1)), x0) = rAct (x2, (mult [ x1; x0 ])))
;;

testi
  (50)
  (let x2 = gen (38) in
   let x1 =
     mult
       [ (gen (33)); (mult [ (gen (30)); (gen (26)); (gen (7)) ]); (gen (43)) ] in
   let x0 = bGen (24) in
   bLAct (x2, (bLAct (x1, x0))) = bLAct ((mult [ x2; x1 ]), x0))
;;

testi
  (51)
  (let x2 = unit in
   let x1 = gen (25) in
   let x0 = bRAct ((bLAct ((gen (18)), (bGen (3)))), (gen (23))) in
   bLAct (x2, (bLAct (x1, x0))) = bLAct ((mult [ x2; x1 ]), x0))
;;

testi
  (52)
  (let x2 = unit in
   let x1 = gen (48) in
   let x0 = bRAct ((bLAct ((gen (18)), (bGen (3)))), (gen (5))) in
   bLAct (x2, (bLAct (x1, x0))) = bLAct ((mult [ x2; x1 ]), x0))
;;

testi
  (53)
  (let x2 = gen (25) in
   let x1 =
     mult
       [ (mult [ (gen (30)); unit; (gen (7)) ]); (gen (20));
         (mult [ unit; (gen (46)); (gen (31)) ]) ] in
   let x0 = bGen (14) in
   bLAct (x2, (bLAct (x1, x0))) = bLAct ((mult [ x2; x1 ]), x0))
;;

testi
  (54)
  (let x2 = gen (25) in
   let x1 =
     mult
       [ (mult [ (gen (30)); unit; (gen (7)) ]); (gen (32));
         (mult [ (gen (11)); (gen (46)); (gen (26)) ]) ] in
   let x0 = bLAct ((mult [ (gen (0)); (gen (24)); (gen (11)) ]), (bGen (1))) in
   bLAct (x2, (bLAct (x1, x0))) = bLAct ((mult [ x2; x1 ]), x0))
;;

testi (55) (let x0 = bGen (12) in bLAct (unit, x0) = x0)
;;

testi (56) (let x0 = bLAct ((gen (4)), (bGen (21))) in bLAct (unit, x0) = x0)
;;

testi
  (57)
  (let x0 =
     bLAct
       ((mult [ (gen (7)); (gen (9)); (gen (0)) ]),
        (bRAct ((bGen (24)), (gen (16))))) in
   bLAct (unit, x0) = x0)
;;

testi (58) (let x0 = bGen (4) in bLAct (unit, x0) = x0)
;;

testi (59) (let x0 = bGen (12) in bLAct (unit, x0) = x0)
;;

testi
  (60)
  (let x0 = bLAct ((gen (22)), (bLAct (unit, (bGen (16))))) in
   bRAct (x0, unit) = x0)
;;

testi
  (61)
  (let x0 = bRAct ((bGen (22)), (gen (17))) in bRAct (x0, unit) = x0)
;;

testi
  (62)
  (let x0 = bLAct ((gen (8)), (bRAct ((bGen (3)), (gen (14))))) in
   bRAct (x0, unit) = x0)
;;

testi
  (63)
  (let x0 = bRAct ((bLAct ((gen (7)), (bGen (18)))), (gen (1))) in
   bRAct (x0, unit) = x0)
;;

testi (64) (let x0 = bGen (9) in bRAct (x0, unit) = x0)
;;

testi
  (65)
  (let x2 =
     mult
       [ (gen (13)); (mult [ (gen (15)); (gen (18)); (gen (8)) ]);
         (mult [ (gen (22)); (gen (3)); (gen (5)) ]) ] in
   let x1 = bRAct ((bRAct ((bGen (4)), (gen (22)))), (gen (18))) in
   let x0 = gen (9) in
   bRAct ((bLAct (x2, x1)), x0) = bLAct (x2, (bRAct (x1, x0))))
;;

testi
  (66)
  (let x2 = gen (13) in
   let x1 =
     bRAct
       ((bRAct ((bGen (4)), (gen (22)))),
        (mult [ (gen (7)); (gen (0)); (gen (21)) ])) in
   let x0 = gen (2) in
   bRAct ((bLAct (x2, x1)), x0) = bLAct (x2, (bRAct (x1, x0))))
;;

testi
  (67)
  (let x2 =
     mult
       [ (mult [ (gen (16)); (gen (14)); unit ]); (gen (21));
         (mult [ (gen (22)); (gen (2)); (gen (5)) ]) ] in
   let x1 = bRAct ((bRAct ((bGen (4)), (gen (22)))), (gen (18))) in
   let x0 = mult [ (gen (10)); unit; unit ] in
   bRAct ((bLAct (x2, x1)), x0) = bLAct (x2, (bRAct (x1, x0))))
;;

testi
  (68)
  (let x2 = gen (3) in
   let x1 = bRAct ((bGen (21)), (mult [ (gen (4)); unit; (gen (18)) ])) in
   let x0 =
     mult
       [ (gen (10)); (gen (22)); (mult [ (gen (23)); (gen (18)); (gen (6)) ]) ] in
   bRAct ((bLAct (x2, x1)), x0) = bLAct (x2, (bRAct (x1, x0))))
;;

testi
  (69)
  (let x2 = mult [ (gen (6)); unit; (mult [ (gen (22)); unit; (gen (12)) ]) ] in
   let x1 = bGen (6) in
   let x0 =
     mult
       [ (gen (10)); (gen (22)); (mult [ (gen (23)); (gen (18)); (gen (6)) ]) ] in
   bRAct ((bLAct (x2, x1)), x0) = bLAct (x2, (bRAct (x1, x0))))
;;

testi
  (70)
  (let x2 = bGen (3) in
   let x1 = gen (37) in
   let x0 = gen (14) in
   bRAct ((bRAct (x2, x1)), x0) = bRAct (x2, (mult [ x1; x0 ])))
;;

testi
  (71)
  (let x2 = bGen (3) in
   let x1 = unit in
   let x0 =
     mult
       [ (gen (10)); (mult [ (gen (24)); (gen (46)); (gen (44)) ]);
         (mult [ (gen (28)); (gen (48)); (gen (36)) ]) ] in
   bRAct ((bRAct (x2, x1)), x0) = bRAct (x2, (mult [ x1; x0 ])))
;;

testi
  (72)
  (let x2 = bRAct ((bGen (3)), (mult [ (gen (21)); (gen (11)); (gen (13)) ])) in
   let x1 =
     mult
       [ (gen (28)); (gen (14));
         (mult [ (gen (23)); (gen (48)); (gen (36)) ]) ] in
   let x0 = gen (1) in
   bRAct ((bRAct (x2, x1)), x0) = bRAct (x2, (mult [ x1; x0 ])))
;;

testi
  (73)
  (let x2 = bLAct ((gen (6)), (bGen (22))) in
   let x1 = gen (2) in
   let x0 = unit in
   bRAct ((bRAct (x2, x1)), x0) = bRAct (x2, (mult [ x1; x0 ])))
;;

testi
  (74)
  (let x2 = bLAct (unit, (bLAct ((gen (2)), (bGen (0))))) in
   let x1 =
     mult
       [ (gen (28)); (gen (14));
         (mult [ (gen (23)); (gen (48)); (gen (36)) ]) ] in
   let x0 = gen (1) in
   bRAct ((bRAct (x2, x1)), x0) = bRAct (x2, (mult [ x1; x0 ])))
;;

