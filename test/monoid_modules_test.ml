open Monoid_modules
;;

open Gentest
;;

testing ("Monoid_modules (automatic) - seed: 293006405")
;;

testi
  (0)
  (let x0 = mult ((gen (15)), (mult ((gen (2)), (gen (13))))) in
   mult (x0, unit) = x0)
;;

testi (1) (let x0 = mult ((gen (15)), (gen (0))) in mult (x0, unit) = x0)
;;

testi (2) (let x0 = mult ((gen (15)), (gen (0))) in mult (x0, unit) = x0)
;;

testi (3) (let x0 = gen (3) in mult (x0, unit) = x0)
;;

testi (4) (let x0 = mult ((gen (15)), (gen (0))) in mult (x0, unit) = x0)
;;

testi
  (5)
  (let x2 = gen (53) in
   let x1 = mult (unit, (mult ((gen (62)), (gen (34))))) in
   let x0 = mult ((gen (40)), (gen (62))) in
   mult ((mult (x2, x1)), x0) = mult (x2, (mult (x1, x0))))
;;

testi
  (6)
  (let x2 = gen (43) in
   let x1 = gen (61) in
   let x0 = mult ((mult ((gen (3)), (gen (64)))), (gen (57))) in
   mult ((mult (x2, x1)), x0) = mult (x2, (mult (x1, x0))))
;;

testi
  (7)
  (let x2 = gen (8) in
   let x1 =
     mult ((mult ((gen (36)), (gen (64)))), (mult ((gen (58)), (gen (34))))) in
   let x0 = mult ((mult ((gen (3)), (gen (64)))), (gen (57))) in
   mult ((mult (x2, x1)), x0) = mult (x2, (mult (x1, x0))))
;;

testi
  (8)
  (let x2 = gen (29) in
   let x1 = gen (29) in
   let x0 = gen (5) in
   mult ((mult (x2, x1)), x0) = mult (x2, (mult (x1, x0))))
;;

testi
  (9)
  (let x2 = mult ((mult ((gen (3)), (gen (64)))), (gen (17))) in
   let x1 = gen (5) in
   let x0 =
     mult ((mult ((gen (36)), (gen (64)))), (mult ((gen (58)), (gen (34))))) in
   mult ((mult (x2, x1)), x0) = mult (x2, (mult (x1, x0))))
;;

testi (10) (let x0 = gen (8) in mult (unit, x0) = x0)
;;

testi
  (11)
  (let x0 = mult ((gen (23)), (mult ((gen (2)), (gen (18))))) in
   mult (unit, x0) = x0)
;;

testi (12) (let x0 = gen (7) in mult (unit, x0) = x0)
;;

testi (13) (let x0 = mult ((gen (18)), (gen (19))) in mult (unit, x0) = x0)
;;

testi (14) (let x0 = gen (2) in mult (unit, x0) = x0)
;;

testi
  (15)
  (let x2 = unit in
   let x1 = gen (0) in
   let x0 = lGen (15) in
   lAct (x2, (lAct (x1, x0))) = lAct ((mult (x2, x1)), x0))
;;

testi
  (16)
  (let x2 = unit in
   let x1 = mult ((gen (10)), (gen (19))) in
   let x0 = lGen (15) in
   lAct (x2, (lAct (x1, x0))) = lAct ((mult (x2, x1)), x0))
;;

testi
  (17)
  (let x2 = gen (28) in
   let x1 = mult ((gen (41)), (mult (unit, (gen (49))))) in
   let x0 = lAct ((gen (11)), (lAct (unit, (lGen (0))))) in
   lAct (x2, (lAct (x1, x0))) = lAct ((mult (x2, x1)), x0))
;;

testi
  (18)
  (let x2 = gen (9) in
   let x1 = gen (20) in
   let x0 = lAct ((gen (24)), (lAct ((gen (6)), (lGen (4))))) in
   lAct (x2, (lAct (x1, x0))) = lAct ((mult (x2, x1)), x0))
;;

testi
  (19)
  (let x2 = mult ((gen (41)), (mult (unit, (gen (49))))) in
   let x1 = mult ((gen (10)), (gen (19))) in
   let x0 = lAct ((gen (20)), (lAct (unit, (lGen (0))))) in
   lAct (x2, (lAct (x1, x0))) = lAct ((mult (x2, x1)), x0))
;;

testi (20) (let x0 = lAct ((gen (11)), (lGen (1))) in lAct (unit, x0) = x0)
;;

testi (21) (let x0 = lGen (8) in lAct (unit, x0) = x0)
;;

testi (22) (let x0 = lGen (24) in lAct (unit, x0) = x0)
;;

testi (23) (let x0 = lGen (8) in lAct (unit, x0) = x0)
;;

testi (24) (let x0 = lGen (15) in lAct (unit, x0) = x0)
;;

testi (25) (let x0 = rGen (18) in rAct (x0, unit) = x0)
;;

testi
  (26)
  (let x0 = rAct ((rGen (2)), (mult ((gen (2)), (gen (13))))) in
   rAct (x0, unit) = x0)
;;

testi
  (27)
  (let x0 = rAct ((rGen (2)), (mult ((gen (2)), (gen (13))))) in
   rAct (x0, unit) = x0)
;;

testi
  (28)
  (let x0 = rAct ((rGen (2)), (mult ((gen (2)), (gen (13))))) in
   rAct (x0, unit) = x0)
;;

testi (29) (let x0 = rGen (18) in rAct (x0, unit) = x0)
;;

testi
  (30)
  (let x2 = rGen (5) in
   let x1 = mult ((gen (44)), (gen (43))) in
   let x0 = mult ((mult ((gen (20)), (gen (6)))), (gen (43))) in
   rAct ((rAct (x2, x1)), x0) = rAct (x2, (mult (x1, x0))))
;;

testi
  (31)
  (let x2 = rAct ((rGen (8)), (gen (22))) in
   let x1 = gen (22) in
   let x0 = gen (20) in
   rAct ((rAct (x2, x1)), x0) = rAct (x2, (mult (x1, x0))))
;;

testi
  (32)
  (let x2 = rAct ((rGen (7)), (gen (22))) in
   let x1 =
     mult ((mult ((gen (20)), (gen (42)))), (mult ((gen (22)), (gen (7))))) in
   let x0 = gen (20) in
   rAct ((rAct (x2, x1)), x0) = rAct (x2, (mult (x1, x0))))
;;

testi
  (33)
  (let x2 = rGen (2) in
   let x1 = mult ((mult ((gen (20)), (gen (6)))), (gen (43))) in
   let x0 = gen (20) in
   rAct ((rAct (x2, x1)), x0) = rAct (x2, (mult (x1, x0))))
;;

testi
  (34)
  (let x2 = rAct ((rGen (7)), (mult ((gen (16)), (gen (10))))) in
   let x1 = gen (7) in
   let x0 = gen (4) in
   rAct ((rAct (x2, x1)), x0) = rAct (x2, (mult (x1, x0))))
;;

testi
  (35)
  (let x2 = unit in
   let x1 = gen (0) in
   let x0 = bLAct ((gen (20)), (bLAct (unit, (bGen (4))))) in
   bLAct (x2, (bLAct (x1, x0))) = bLAct ((mult (x2, x1)), x0))
;;

testi
  (36)
  (let x2 = unit in
   let x1 = mult ((gen (10)), (gen (19))) in
   let x0 = bRAct ((bGen (8)), (gen (24))) in
   bLAct (x2, (bLAct (x1, x0))) = bLAct ((mult (x2, x1)), x0))
;;

testi
  (37)
  (let x2 = gen (28) in
   let x1 = mult ((gen (41)), (mult (unit, (gen (49))))) in
   let x0 = bGen (16) in
   bLAct (x2, (bLAct (x1, x0))) = bLAct ((mult (x2, x1)), x0))
;;

testi
  (38)
  (let x2 = gen (9) in
   let x1 = gen (20) in
   let x0 = bGen (15) in
   bLAct (x2, (bLAct (x1, x0))) = bLAct ((mult (x2, x1)), x0))
;;

testi
  (39)
  (let x2 = mult ((gen (41)), (mult (unit, (gen (49))))) in
   let x1 = mult ((gen (10)), (gen (19))) in
   let x0 = bRAct ((bLAct ((gen (21)), (bGen (16)))), (gen (24))) in
   bLAct (x2, (bLAct (x1, x0))) = bLAct ((mult (x2, x1)), x0))
;;

testi (40) (let x0 = bGen (9) in bLAct (unit, x0) = x0)
;;

testi
  (41)
  (let x0 = bRAct ((bLAct ((gen (11)), (bGen (11)))), (gen (19))) in
   bLAct (unit, x0) = x0)
;;

testi
  (42)
  (let x0 = bLAct (unit, (bRAct ((bGen (15)), (gen (4))))) in
   bLAct (unit, x0) = x0)
;;

testi (43) (let x0 = bGen (17) in bLAct (unit, x0) = x0)
;;

testi (44) (let x0 = bGen (17) in bLAct (unit, x0) = x0)
;;

testi (45) (let x0 = bRAct ((bGen (18)), unit) in bRAct (x0, unit) = x0)
;;

testi (46) (let x0 = bRAct ((bGen (18)), unit) in bRAct (x0, unit) = x0)
;;

testi (47) (let x0 = bRAct ((bGen (18)), (gen (3))) in bRAct (x0, unit) = x0)
;;

testi (48) (let x0 = bGen (15) in bRAct (x0, unit) = x0)
;;

testi (49) (let x0 = bGen (20) in bRAct (x0, unit) = x0)
;;

testi
  (50)
  (let x2 = mult ((gen (0)), (gen (18))) in
   let x1 =
     bRAct ((bRAct ((bGen (7)), (gen (6)))), (mult ((gen (22)), (gen (14))))) in
   let x0 = mult ((gen (7)), (gen (17))) in
   bRAct ((bLAct (x2, x1)), x0) = bLAct (x2, (bRAct (x1, x0))))
;;

testi
  (51)
  (let x2 = mult ((gen (19)), (mult ((gen (8)), (gen (0))))) in
   let x1 =
     bLAct ((mult (unit, (gen (17)))), (bRAct ((bGen (1)), (gen (14))))) in
   let x0 = gen (16) in
   bRAct ((bLAct (x2, x1)), x0) = bLAct (x2, (bRAct (x1, x0))))
;;

testi
  (52)
  (let x2 = mult ((gen (19)), (mult ((gen (8)), (gen (0))))) in
   let x1 = bGen (10) in
   let x0 = gen (16) in
   bRAct ((bLAct (x2, x1)), x0) = bLAct (x2, (bRAct (x1, x0))))
;;

testi
  (53)
  (let x2 = gen (4) in
   let x1 = bGen (2) in
   let x0 = mult ((mult ((gen (0)), (gen (21)))), (gen (4))) in
   bRAct ((bLAct (x2, x1)), x0) = bLAct (x2, (bRAct (x1, x0))))
;;

testi
  (54)
  (let x2 = gen (6) in
   let x1 = bRAct ((bGen (14)), (mult ((gen (22)), (gen (14))))) in
   let x0 = gen (16) in
   bRAct ((bLAct (x2, x1)), x0) = bLAct (x2, (bRAct (x1, x0))))
;;

testi
  (55)
  (let x2 =
     bRAct ((bLAct ((gen (0)), (bGen (8)))), (mult ((gen (16)), (gen (2))))) in
   let x1 = gen (0) in
   let x0 = mult (unit, (gen (46))) in
   bRAct ((bRAct (x2, x1)), x0) = bRAct (x2, (mult (x1, x0))))
;;

testi
  (56)
  (let x2 = bLAct ((mult (unit, unit)), (bLAct ((gen (21)), (bGen (18))))) in
   let x1 = mult ((mult (unit, (gen (16)))), unit) in
   let x0 = mult ((gen (26)), (mult ((gen (36)), (gen (2))))) in
   bRAct ((bRAct (x2, x1)), x0) = bRAct (x2, (mult (x1, x0))))
;;

testi
  (57)
  (let x2 = bGen (4) in
   let x1 = gen (0) in
   let x0 = gen (12) in
   bRAct ((bRAct (x2, x1)), x0) = bRAct (x2, (mult (x1, x0))))
;;

testi
  (58)
  (let x2 = bGen (4) in
   let x1 = gen (3) in
   let x0 = gen (12) in
   bRAct ((bRAct (x2, x1)), x0) = bRAct (x2, (mult (x1, x0))))
;;

testi
  (59)
  (let x2 = bRAct ((bLAct ((gen (0)), (bGen (8)))), (gen (3))) in
   let x1 = gen (12) in
   let x0 = mult ((mult (unit, (gen (16)))), unit) in
   bRAct ((bRAct (x2, x1)), x0) = bRAct (x2, (mult (x1, x0))))
;;

