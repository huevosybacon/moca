open Monoid_modules_list_sharing
;;

open Gentest
;;

testing ("Monoid_modules_list_sharing (automatic) - seed: 971191539")
;;

testi
  (0)
  (let x0 =
     mult
       [ (mult [ (gen (46)); (gen (43)); (gen (37)) ]); (gen (5));
         (mult [ unit; (gen (11)); unit ]) ] in
   let x1 = gen (58) in
   let x2 =
     mult
       [ (mult [ (gen (17)); (gen (23)); (gen (37)) ]); unit;
         (mult [ unit; (gen (11)); unit ]) ] in
   mult [ (mult [ x0; x1 ]); x2 ] = mult [ x0; x1; x2 ])
;;

testi
  (1)
  (let x0 = unit in
   let x1 =
     mult
       [ (mult [ (gen (27)); (gen (41)); (gen (56)) ]); (gen (53));
         (gen (63)) ] in
   let x2 =
     mult
       [ (mult [ (gen (17)); (gen (23)); (gen (37)) ]); (gen (31));
         (mult [ unit; (gen (11)); unit ]) ] in
   mult [ (mult [ x0; x1 ]); x2 ] = mult [ x0; x1; x2 ])
;;

testi
  (2)
  (let x0 = mult [ (gen (54)); (gen (42)); (gen (41)) ] in
   let x1 = gen (58) in
   let x2 =
     mult
       [ (mult [ (gen (27)); (gen (41)); (gen (56)) ]); (gen (53));
         (gen (63)) ] in
   mult [ (mult [ x0; x1 ]); x2 ] = mult [ x0; x1; x2 ])
;;

testi
  (3)
  (let x0 = unit in
   let x1 = gen (58) in
   let x2 = gen (42) in mult [ (mult [ x0; x1 ]); x2 ] = mult [ x0; x1; x2 ])
;;

testi
  (4)
  (let x0 = gen (35) in
   let x1 =
     mult
       [ (gen (54)); (mult [ (gen (45)); (gen (0)); (gen (59)) ]); (gen (41)) ] in
   let x2 =
     mult
       [ (mult [ (gen (17)); (gen (23)); (gen (37)) ]); (gen (31));
         (mult [ unit; (gen (11)); unit ]) ] in
   mult [ (mult [ x0; x1 ]); x2 ] = mult [ x0; x1; x2 ])
;;

testi
  (5)
  (let x0 = gen (62) in
   let x1 = gen (87) in
   let x2 = gen (79) in
   let x3 =
     mult
       [ (gen (98)); (gen (24));
         (mult [ (gen (36)); (gen (44)); (gen (43)) ]) ] in
   let x4 = gen (46) in
   mult [ x0; (mult [ x1; x2 ]); (mult [ x3; x4 ]) ] =
   mult [ x0; x1; x2; x3; x4 ])
;;

testi
  (6)
  (let x0 = gen (32) in
   let x1 =
     mult
       [ (mult [ (gen (4)); (gen (43)); (gen (49)) ]); (gen (13)); (gen (38)) ] in
   let x2 = gen (13) in
   let x3 =
     mult
       [ (mult [ (gen (19)); (gen (73)); unit ]);
         (mult [ (gen (68)); (gen (7)); (gen (8)) ]);
         (mult [ (gen (87)); (gen (34)); (gen (84)) ]) ] in
   let x4 = gen (59) in
   mult [ x0; (mult [ x1; x2 ]); (mult [ x3; x4 ]) ] =
   mult [ x0; x1; x2; x3; x4 ])
;;

testi
  (7)
  (let x0 =
     mult
       [ (mult [ (gen (4)); (gen (43)); (gen (49)) ]);
         (mult [ (gen (50)); (gen (77)); (gen (59)) ]);
         (mult [ (gen (36)); (gen (44)); (gen (43)) ]) ] in
   let x1 = gen (19) in
   let x2 =
     mult
       [ (mult [ (gen (4)); (gen (35)); (gen (102)) ]);
         (mult [ (gen (68)); (gen (7)); (gen (8)) ]);
         (mult [ (gen (87)); (gen (34)); (gen (84)) ]) ] in
   let x3 =
     mult
       [ (gen (98)); (gen (24));
         (mult [ (gen (36)); (gen (44)); (gen (43)) ]) ] in
   let x4 = gen (19) in
   mult [ x0; (mult [ x1; x2 ]); (mult [ x3; x4 ]) ] =
   mult [ x0; x1; x2; x3; x4 ])
;;

testi
  (8)
  (let x0 = gen (123) in
   let x1 =
     mult
       [ (mult [ (gen (4)); (gen (43)); (gen (49)) ]);
         (mult [ (gen (50)); (gen (77)); (gen (59)) ]);
         (mult [ (gen (36)); (gen (44)); (gen (43)) ]) ] in
   let x2 = gen (62) in
   let x3 = gen (1) in
   let x4 = gen (62) in
   mult [ x0; (mult [ x1; x2 ]); (mult [ x3; x4 ]) ] =
   mult [ x0; x1; x2; x3; x4 ])
;;

testi
  (9)
  (let x0 =
     mult
       [ (mult [ (gen (4)); (gen (35)); (gen (102)) ]); (gen (13));
         (mult [ (gen (1)); (gen (90)); (gen (10)) ]) ] in
   let x1 = gen (1) in
   let x2 =
     mult
       [ (mult [ (gen (19)); (gen (86)); (gen (92)) ]);
         (mult [ (gen (65)); unit; (gen (122)) ]); (gen (97)) ] in
   let x3 =
     mult
       [ (mult [ (gen (4)); (gen (35)); (gen (102)) ]); unit;
         (mult [ (gen (36)); (gen (44)); (gen (43)) ]) ] in
   let x4 = gen (46) in
   mult [ x0; (mult [ x1; x2 ]); (mult [ x3; x4 ]) ] =
   mult [ x0; x1; x2; x3; x4 ])
;;

testi
  (10)
  (let x0 = gen (68) in
   let x1 = gen (70) in
   let x2 = gen (98) in
   let x3 = gen (97) in
   mult [ (mult [ x0; x1; x2 ]); x3 ] = mult [ x0; x1; x2; x3 ])
;;

testi
  (11)
  (let x0 =
     mult [ (gen (85)); (mult [ (gen (71)); (gen (69)); (gen (59)) ]); unit ] in
   let x1 = mult [ (gen (34)); (gen (34)); (gen (67)) ] in
   let x2 = gen (97) in
   let x3 = gen (98) in
   mult [ (mult [ x0; x1; x2 ]); x3 ] = mult [ x0; x1; x2; x3 ])
;;

testi
  (12)
  (let x0 = gen (72) in
   let x1 =
     mult
       [ (gen (17)); (mult [ (gen (71)); (gen (69)); (gen (2)) ]);
         (mult [ (gen (63)); (gen (14)); (gen (16)) ]) ] in
   let x2 = gen (97) in
   let x3 =
     mult
       [ (gen (17)); (gen (51));
         (mult [ (gen (71)); (gen (76)); (gen (81)) ]) ] in
   mult [ (mult [ x0; x1; x2 ]); x3 ] = mult [ x0; x1; x2; x3 ])
;;

testi
  (13)
  (let x0 =
     mult
       [ (mult [ (gen (47)); (gen (17)); (gen (10)) ]);
         (mult [ (gen (34)); unit; (gen (59)) ]);
         (mult [ (gen (12)); (gen (50)); (gen (7)) ]) ] in
   let x1 = gen (97) in
   let x2 =
     mult [ unit; (gen (34)); (mult [ (gen (63)); (gen (14)); (gen (16)) ]) ] in
   let x3 = gen (29) in
   mult [ (mult [ x0; x1; x2 ]); x3 ] = mult [ x0; x1; x2; x3 ])
;;

testi
  (14)
  (let x0 = gen (57) in
   let x1 =
     mult [ unit; (gen (34)); (mult [ (gen (63)); (gen (14)); (gen (16)) ]) ] in
   let x2 = gen (98) in
   let x3 = gen (41) in
   mult [ (mult [ x0; x1; x2 ]); x3 ] = mult [ x0; x1; x2; x3 ])
;;

testi
  (15)
  (let x0 = mult [ (gen (7)); (gen (4)); (gen (24)) ] in
   let x1 = gen (19) in mult [ x0; unit; x1 ] = mult [ x0; x1 ])
;;

testi
  (16)
  (let x0 = gen (30) in
   let x1 = mult [ (gen (7)); (gen (4)); (gen (24)) ] in
   mult [ x0; unit; x1 ] = mult [ x0; x1 ])
;;

testi
  (17)
  (let x0 =
     mult
       [ (mult [ unit; (gen (6)); (gen (8)) ]);
         (mult [ (gen (41)); (gen (7)); (gen (32)) ]);
         (mult [ (gen (5)); (gen (47)); (gen (31)) ]) ] in
   let x1 = gen (30) in mult [ x0; unit; x1 ] = mult [ x0; x1 ])
;;

testi
  (18)
  (let x0 = mult [ (gen (7)); (gen (4)); (gen (24)) ] in
   let x1 = gen (19) in mult [ x0; unit; x1 ] = mult [ x0; x1 ])
;;

testi
  (19)
  (let x0 = gen (19) in
   let x1 =
     mult
       [ (mult [ (gen (13)); (gen (16)); (gen (5)) ]);
         (mult [ (gen (17)); (gen (7)); (gen (12)) ]); (gen (24)) ] in
   mult [ x0; unit; x1 ] = mult [ x0; x1 ])
;;

testi
  (20)
  (let x0 =
     mult [ (mult [ (gen (2)); unit; (gen (7)) ]); (gen (12)); (gen (23)) ] in
   mult [ unit; x0 ] = x0)
;;

testi (21) (let x0 = gen (22) in mult [ unit; x0 ] = x0)
;;

testi
  (22)
  (let x0 =
     mult
       [ (mult [ (gen (2)); unit; (gen (7)) ]); (gen (12));
         (mult [ (gen (12)); (gen (9)); (gen (3)) ]) ] in
   mult [ unit; x0 ] = x0)
;;

testi (23) (let x0 = gen (11) in mult [ unit; x0 ] = x0)
;;

testi (24) (let x0 = unit in mult [ unit; x0 ] = x0)
;;

testi
  (25)
  (let x0 =
     mult [ (gen (7)); (mult [ (gen (12)); (gen (14)); (gen (5)) ]); unit ] in
   mult [ x0; unit; unit ] = x0)
;;

testi
  (26)
  (let x0 =
     mult [ (gen (7)); (mult [ (gen (12)); (gen (14)); (gen (5)) ]); unit ] in
   mult [ x0; unit; unit ] = x0)
;;

testi (27) (let x0 = gen (20) in mult [ x0; unit; unit ] = x0)
;;

testi
  (28)
  (let x0 =
     mult
       [ (gen (7)); (mult [ (gen (12)); (gen (14)); (gen (5)) ]);
         (mult [ (gen (14)); (gen (5)); (gen (23)) ]) ] in
   mult [ x0; unit; unit ] = x0)
;;

testi
  (29)
  (let x0 =
     mult
       [ (gen (7)); (mult [ (gen (12)); (gen (14)); (gen (5)) ]);
         (mult [ (gen (14)); (gen (5)); (gen (23)) ]) ] in
   mult [ x0; unit; unit ] = x0)
;;

testi
  (30)
  (let x2 =
     mult
       [ (mult [ (gen (27)); unit; (gen (18)) ]);
         (mult [ (gen (27)); (gen (37)); (gen (17)) ]); unit ] in
   let x1 = mult [ (gen (40)); (gen (0)); (gen (8)) ] in
   let x0 = lGen (2) in
   lAct (x2, (lAct (x1, x0))) = lAct ((mult [ x2; x1 ]), x0))
;;

testi
  (31)
  (let x2 = unit in
   let x1 =
     mult
       [ (gen (40)); (mult [ (gen (35)); (gen (39)); (gen (17)) ]);
         (mult [ (gen (36)); (gen (41)); (gen (44)) ]) ] in
   let x0 = lGen (2) in
   lAct (x2, (lAct (x1, x0))) = lAct ((mult [ x2; x1 ]), x0))
;;

testi
  (32)
  (let x2 =
     mult
       [ (mult [ (gen (27)); unit; (gen (18)) ]);
         (mult [ (gen (27)); (gen (37)); (gen (17)) ]);
         (mult [ unit; (gen (6)); (gen (44)) ]) ] in
   let x1 =
     mult
       [ (mult [ (gen (27)); unit; (gen (18)) ]);
         (mult [ (gen (27)); (gen (37)); (gen (17)) ]); unit ] in
   let x0 = lAct ((mult [ unit; (gen (1)); (gen (21)) ]), (lGen (24))) in
   lAct (x2, (lAct (x1, x0))) = lAct ((mult [ x2; x1 ]), x0))
;;

testi
  (33)
  (let x2 =
     mult
       [ (mult [ (gen (27)); unit; (gen (18)) ]);
         (mult [ (gen (27)); (gen (37)); (gen (17)) ]);
         (mult [ unit; (gen (6)); (gen (44)) ]) ] in
   let x1 = gen (42) in
   let x0 = lGen (0) in
   lAct (x2, (lAct (x1, x0))) = lAct ((mult [ x2; x1 ]), x0))
;;

testi
  (34)
  (let x2 = gen (15) in
   let x1 = gen (15) in
   let x0 = lGen (0) in
   lAct (x2, (lAct (x1, x0))) = lAct ((mult [ x2; x1 ]), x0))
;;

testi (35) (let x0 = lAct ((gen (6)), (lGen (9))) in lAct (unit, x0) = x0)
;;

testi
  (36)
  (let x0 = lAct ((mult [ (gen (16)); (gen (2)); (gen (9)) ]), (lGen (9))) in
   lAct (unit, x0) = x0)
;;

testi (37) (let x0 = lGen (9) in lAct (unit, x0) = x0)
;;

testi
  (38)
  (let x0 = lAct ((mult [ (gen (16)); (gen (2)); (gen (9)) ]), (lGen (9))) in
   lAct (unit, x0) = x0)
;;

testi (39) (let x0 = lGen (9) in lAct (unit, x0) = x0)
;;

testi
  (40)
  (let x0 = rAct ((rAct ((rGen (2)), unit)), (gen (12))) in
   rAct (x0, unit) = x0)
;;

testi (41) (let x0 = rGen (17) in rAct (x0, unit) = x0)
;;

testi (42) (let x0 = rGen (9) in rAct (x0, unit) = x0)
;;

testi (43) (let x0 = rGen (17) in rAct (x0, unit) = x0)
;;

testi
  (44)
  (let x0 = rAct ((rAct ((rGen (2)), unit)), unit) in rAct (x0, unit) = x0)
;;

testi
  (45)
  (let x2 = rGen (19) in
   let x1 =
     mult
       [ (gen (35)); (mult [ (gen (30)); (gen (35)); (gen (21)) ]);
         (mult [ (gen (18)); (gen (19)); (gen (46)) ]) ] in
   let x0 = gen (4) in
   rAct ((rAct (x2, x1)), x0) = rAct (x2, (mult [ x1; x0 ])))
;;

testi
  (46)
  (let x2 = rGen (19) in
   let x1 = gen (46) in
   let x0 =
     mult [ (gen (35)); (mult [ (gen (30)); (gen (35)); (gen (21)) ]); unit ] in
   rAct ((rAct (x2, x1)), x0) = rAct (x2, (mult [ x1; x0 ])))
;;

testi
  (47)
  (let x2 = rGen (19) in
   let x1 = gen (44) in
   let x0 = mult [ (gen (8)); (gen (4)); (gen (43)) ] in
   rAct ((rAct (x2, x1)), x0) = rAct (x2, (mult [ x1; x0 ])))
;;

testi
  (48)
  (let x2 = rAct ((rGen (6)), (mult [ (gen (12)); (gen (18)); (gen (16)) ])) in
   let x1 = gen (24) in
   let x0 =
     mult
       [ (gen (35)); (mult [ (gen (30)); (gen (35)); (gen (21)) ]);
         (mult [ (gen (18)); (gen (19)); (gen (46)) ]) ] in
   rAct ((rAct (x2, x1)), x0) = rAct (x2, (mult [ x1; x0 ])))
;;

testi
  (49)
  (let x2 = rGen (13) in
   let x1 =
     mult
       [ (mult [ (gen (36)); (gen (6)); (gen (44)) ]); (gen (17)); (gen (43)) ] in
   let x0 = gen (2) in
   rAct ((rAct (x2, x1)), x0) = rAct (x2, (mult [ x1; x0 ])))
;;

testi
  (50)
  (let x2 =
     mult
       [ (mult [ (gen (27)); unit; (gen (18)) ]);
         (mult [ (gen (27)); (gen (37)); (gen (17)) ]); unit ] in
   let x1 = mult [ (gen (40)); (gen (0)); (gen (8)) ] in
   let x0 = bRAct ((bRAct ((bGen (17)), unit)), (gen (4))) in
   bLAct (x2, (bLAct (x1, x0))) = bLAct ((mult [ x2; x1 ]), x0))
;;

testi
  (51)
  (let x2 = unit in
   let x1 =
     mult
       [ (gen (40)); (mult [ (gen (35)); (gen (39)); (gen (17)) ]);
         (mult [ (gen (36)); (gen (41)); (gen (44)) ]) ] in
   let x0 = bRAct ((bRAct ((bGen (12)), (gen (1)))), (gen (4))) in
   bLAct (x2, (bLAct (x1, x0))) = bLAct ((mult [ x2; x1 ]), x0))
;;

testi
  (52)
  (let x2 =
     mult
       [ (mult [ (gen (27)); unit; (gen (18)) ]);
         (mult [ (gen (27)); (gen (37)); (gen (17)) ]);
         (mult [ unit; (gen (6)); (gen (44)) ]) ] in
   let x1 =
     mult
       [ (mult [ (gen (27)); unit; (gen (18)) ]);
         (mult [ (gen (27)); (gen (37)); (gen (17)) ]); unit ] in
   let x0 = bRAct ((bGen (12)), (gen (4))) in
   bLAct (x2, (bLAct (x1, x0))) = bLAct ((mult [ x2; x1 ]), x0))
;;

testi
  (53)
  (let x2 =
     mult
       [ (mult [ (gen (27)); unit; (gen (18)) ]);
         (mult [ (gen (27)); (gen (37)); (gen (17)) ]);
         (mult [ unit; (gen (6)); (gen (44)) ]) ] in
   let x1 = gen (42) in
   let x0 = bLAct ((mult [ unit; (gen (1)); (gen (21)) ]), (bGen (10))) in
   bLAct (x2, (bLAct (x1, x0))) = bLAct ((mult [ x2; x1 ]), x0))
;;

testi
  (54)
  (let x2 = gen (15) in
   let x1 = gen (15) in
   let x0 = bLAct ((mult [ unit; (gen (1)); (gen (21)) ]), (bGen (10))) in
   bLAct (x2, (bLAct (x1, x0))) = bLAct ((mult [ x2; x1 ]), x0))
;;

testi
  (55)
  (let x0 = bRAct ((bGen (24)), (mult [ (gen (0)); (gen (4)); unit ])) in
   bLAct (unit, x0) = x0)
;;

testi (56) (let x0 = bGen (2) in bLAct (unit, x0) = x0)
;;

testi (57) (let x0 = bGen (2) in bLAct (unit, x0) = x0)
;;

testi
  (58)
  (let x0 = bLAct ((mult [ (gen (22)); unit; (gen (10)) ]), (bGen (19))) in
   bLAct (unit, x0) = x0)
;;

testi
  (59)
  (let x0 = bRAct ((bGen (24)), (mult [ (gen (0)); (gen (4)); unit ])) in
   bLAct (unit, x0) = x0)
;;

testi (60) (let x0 = bGen (22) in bRAct (x0, unit) = x0)
;;

testi
  (61)
  (let x0 =
     bRAct
       ((bLAct ((gen (12)), (bGen (21)))),
        (mult [ (gen (6)); (gen (10)); (gen (20)) ])) in
   bRAct (x0, unit) = x0)
;;

testi
  (62)
  (let x0 =
     bRAct
       ((bLAct ((gen (12)), (bGen (21)))),
        (mult [ (gen (6)); (gen (10)); (gen (20)) ])) in
   bRAct (x0, unit) = x0)
;;

testi
  (63)
  (let x0 = bLAct ((gen (14)), (bRAct ((bGen (8)), (gen (5))))) in
   bRAct (x0, unit) = x0)
;;

testi
  (64)
  (let x0 = bLAct ((gen (14)), (bRAct ((bGen (8)), (gen (5))))) in
   bRAct (x0, unit) = x0)
;;

testi
  (65)
  (let x2 =
     mult
       [ (mult [ (gen (14)); (gen (22)); (gen (14)) ]);
         (mult [ (gen (23)); (gen (13)); (gen (6)) ]);
         (mult [ unit; (gen (11)); (gen (9)) ]) ] in
   let x1 = bLAct ((gen (20)), (bLAct ((gen (7)), (bGen (11))))) in
   let x0 =
     mult
       [ (gen (20)); (gen (3)); (mult [ (gen (3)); (gen (18)); (gen (13)) ]) ] in
   bRAct ((bLAct (x2, x1)), x0) = bLAct (x2, (bRAct (x1, x0))))
;;

testi
  (66)
  (let x2 =
     mult
       [ (mult [ (gen (14)); (gen (22)); (gen (14)) ]);
         (mult [ (gen (23)); (gen (13)); (gen (6)) ]);
         (mult [ unit; (gen (11)); (gen (9)) ]) ] in
   let x1 =
     bLAct ((mult [ (gen (15)); (gen (22)); (gen (16)) ]), (bGen (20))) in
   let x0 =
     mult
       [ (mult [ (gen (18)); unit; (gen (6)) ]);
         (mult [ unit; (gen (6)); (gen (8)) ]); (gen (10)) ] in
   bRAct ((bLAct (x2, x1)), x0) = bLAct (x2, (bRAct (x1, x0))))
;;

testi
  (67)
  (let x2 =
     mult
       [ (mult [ (gen (14)); (gen (22)); (gen (14)) ]);
         (mult [ (gen (23)); (gen (13)); (gen (6)) ]);
         (mult [ unit; (gen (11)); (gen (9)) ]) ] in
   let x1 =
     bLAct ((mult [ (gen (15)); (gen (22)); (gen (16)) ]), (bGen (20))) in
   let x0 = gen (3) in
   bRAct ((bLAct (x2, x1)), x0) = bLAct (x2, (bRAct (x1, x0))))
;;

testi
  (68)
  (let x2 =
     mult
       [ (mult [ (gen (14)); (gen (22)); (gen (14)) ]);
         (mult [ (gen (23)); (gen (13)); (gen (6)) ]);
         (mult [ unit; (gen (11)); (gen (9)) ]) ] in
   let x1 = bGen (3) in
   let x0 =
     mult
       [ (gen (20)); (gen (3)); (mult [ (gen (3)); (gen (18)); (gen (13)) ]) ] in
   bRAct ((bLAct (x2, x1)), x0) = bLAct (x2, (bRAct (x1, x0))))
;;

testi
  (69)
  (let x2 =
     mult
       [ (mult [ (gen (14)); (gen (22)); (gen (14)) ]);
         (mult [ (gen (23)); (gen (13)); (gen (6)) ]);
         (mult [ unit; (gen (11)); (gen (9)) ]) ] in
   let x1 = bLAct ((gen (20)), (bLAct ((gen (7)), (bGen (11))))) in
   let x0 = unit in
   bRAct ((bLAct (x2, x1)), x0) = bLAct (x2, (bRAct (x1, x0))))
;;

testi
  (70)
  (let x2 =
     bLAct
       ((mult [ (gen (14)); (gen (14)); (gen (8)) ]),
        (bLAct ((gen (15)), (bGen (15))))) in
   let x1 = gen (28) in
   let x0 = gen (2) in
   bRAct ((bRAct (x2, x1)), x0) = bRAct (x2, (mult [ x1; x0 ])))
;;

testi
  (71)
  (let x2 = bRAct ((bGen (9)), (gen (0))) in
   let x1 =
     mult [ (mult [ (gen (24)); (gen (27)); (gen (18)) ]); unit; (gen (28)) ] in
   let x0 = gen (25) in
   bRAct ((bRAct (x2, x1)), x0) = bRAct (x2, (mult [ x1; x0 ])))
;;

testi
  (72)
  (let x2 =
     bLAct
       ((mult [ (gen (14)); (gen (14)); (gen (8)) ]),
        (bLAct ((gen (15)), (bGen (15))))) in
   let x1 =
     mult
       [ (gen (8)); (gen (39)); (mult [ (gen (16)); (gen (22)); (gen (28)) ]) ] in
   let x0 =
     mult
       [ (mult [ (gen (24)); (gen (27)); (gen (18)) ]); (gen (16));
         (gen (40)) ] in
   bRAct ((bRAct (x2, x1)), x0) = bRAct (x2, (mult [ x1; x0 ])))
;;

testi
  (73)
  (let x2 = bGen (12) in
   let x1 =
     mult
       [ (gen (8)); (gen (39)); (mult [ (gen (16)); (gen (22)); (gen (28)) ]) ] in
   let x0 = gen (11) in
   bRAct ((bRAct (x2, x1)), x0) = bRAct (x2, (mult [ x1; x0 ])))
;;

testi
  (74)
  (let x2 =
     bLAct
       ((mult [ (gen (14)); (gen (14)); (gen (2)) ]),
        (bRAct ((bGen (18)), (gen (1))))) in
   let x1 =
     mult
       [ (mult [ (gen (24)); (gen (27)); (gen (18)) ]); (gen (16));
         (gen (40)) ] in
   let x0 =
     mult
       [ (gen (8)); (gen (39)); (mult [ (gen (16)); (gen (22)); (gen (28)) ]) ] in
   bRAct ((bRAct (x2, x1)), x0) = bRAct (x2, (mult [ x1; x0 ])))
;;

