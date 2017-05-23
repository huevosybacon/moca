open Monoid_modules_sharing
;;

open Gentest
;;

testing ("Monoid_modules_sharing (automatic) - seed: 895794749")
;;

testi
  (0)
  (let x0 = mult ((mult ((gen (13)), unit)), (mult ((gen (9)), (gen (14))))) in
   mult (x0, unit) = x0)
;;

testi
  (1)
  (let x0 = mult ((mult ((gen (13)), unit)), (mult ((gen (9)), (gen (14))))) in
   mult (x0, unit) = x0)
;;

testi (2) (let x0 = gen (19) in mult (x0, unit) = x0)
;;

testi
  (3)
  (let x0 = mult ((mult ((gen (13)), unit)), (mult ((gen (9)), (gen (14))))) in
   mult (x0, unit) = x0)
;;

testi (4) (let x0 = gen (0) in mult (x0, unit) = x0)
;;

testi
  (5)
  (let x2 = unit in
   let x1 = gen (40) in
   let x0 = gen (6) in
   mult ((mult (x2, x1)), x0) = mult (x2, (mult (x1, x0))))
;;

testi
  (6)
  (let x2 = unit in
   let x1 = gen (34) in
   let x0 = gen (6) in
   mult ((mult (x2, x1)), x0) = mult (x2, (mult (x1, x0))))
;;

testi
  (7)
  (let x2 = mult ((gen (20)), (gen (33))) in
   let x1 = mult ((mult ((gen (46)), (gen (6)))), (gen (47))) in
   let x0 = mult ((gen (20)), (gen (33))) in
   mult ((mult (x2, x1)), x0) = mult (x2, (mult (x1, x0))))
;;

testi
  (8)
  (let x2 = mult ((gen (59)), unit) in
   let x1 = gen (62) in
   let x0 = mult ((gen (57)), (mult ((gen (25)), (gen (64))))) in
   mult ((mult (x2, x1)), x0) = mult (x2, (mult (x1, x0))))
;;

testi
  (9)
  (let x2 = mult ((gen (59)), unit) in
   let x1 = gen (6) in
   let x0 = mult ((gen (31)), (mult ((gen (26)), (gen (4))))) in
   mult ((mult (x2, x1)), x0) = mult (x2, (mult (x1, x0))))
;;

testi (10) (let x0 = mult ((gen (0)), (gen (4))) in mult (unit, x0) = x0)
;;

testi (11) (let x0 = mult ((gen (0)), (gen (18))) in mult (unit, x0) = x0)
;;

testi (12) (let x0 = mult ((gen (0)), (gen (4))) in mult (unit, x0) = x0)
;;

testi (13) (let x0 = gen (20) in mult (unit, x0) = x0)
;;

testi (14) (let x0 = gen (6) in mult (unit, x0) = x0)
;;

testi
  (15)
  (let x2 = mult ((mult ((gen (20)), (gen (46)))), unit) in
   let x1 = mult ((mult ((gen (20)), (gen (46)))), (gen (20))) in
   let x0 = lGen (16) in
   lAct (x2, (lAct (x1, x0))) = lAct ((mult (x2, x1)), x0))
;;

testi
  (16)
  (let x2 = gen (0) in
   let x1 = mult ((mult ((gen (20)), (gen (46)))), (gen (20))) in
   let x0 = lGen (2) in
   lAct (x2, (lAct (x1, x0))) = lAct ((mult (x2, x1)), x0))
;;

testi
  (17)
  (let x2 = mult ((mult ((gen (20)), (gen (46)))), unit) in
   let x1 =
     mult ((mult ((gen (18)), (gen (46)))), (mult ((gen (28)), (gen (33))))) in
   let x0 = lGen (2) in
   lAct (x2, (lAct (x1, x0))) = lAct ((mult (x2, x1)), x0))
;;

testi
  (18)
  (let x2 = mult ((gen (30)), (mult ((gen (28)), (gen (33))))) in
   let x1 = gen (44) in
   let x0 = lGen (23) in
   lAct (x2, (lAct (x1, x0))) = lAct ((mult (x2, x1)), x0))
;;

testi
  (19)
  (let x2 = mult ((mult ((gen (18)), (gen (46)))), (gen (17))) in
   let x1 = mult ((mult ((gen (20)), (gen (36)))), (gen (20))) in
   let x0 =
     lAct ((mult ((gen (2)), (gen (4)))), (lAct ((gen (14)), (lGen (23))))) in
   lAct (x2, (lAct (x1, x0))) = lAct ((mult (x2, x1)), x0))
;;

testi (20) (let x0 = lGen (17) in lAct (unit, x0) = x0)
;;

testi
  (21)
  (let x0 = lAct ((gen (13)), (lAct (unit, (lGen (9))))) in
   lAct (unit, x0) = x0)
;;

testi (22) (let x0 = lGen (1) in lAct (unit, x0) = x0)
;;

testi
  (23)
  (let x0 = lAct ((gen (14)), (lAct (unit, (lGen (9))))) in
   lAct (unit, x0) = x0)
;;

testi (24) (let x0 = lGen (17) in lAct (unit, x0) = x0)
;;

testi (25) (let x0 = rGen (0) in rAct (x0, unit) = x0)
;;

testi (26) (let x0 = rGen (0) in rAct (x0, unit) = x0)
;;

testi
  (27)
  (let x0 = rAct ((rGen (17)), (mult ((gen (9)), (gen (14))))) in
   rAct (x0, unit) = x0)
;;

testi (28) (let x0 = rGen (15) in rAct (x0, unit) = x0)
;;

testi (29) (let x0 = rGen (0) in rAct (x0, unit) = x0)
;;

testi
  (30)
  (let x2 = rGen (9) in
   let x1 = mult ((gen (3)), (gen (42))) in
   let x0 = gen (45) in
   rAct ((rAct (x2, x1)), x0) = rAct (x2, (mult (x1, x0))))
;;

testi
  (31)
  (let x2 = rAct ((rAct ((rGen (19)), unit)), (mult ((gen (21)), unit))) in
   let x1 = gen (16) in
   let x0 = gen (45) in
   rAct ((rAct (x2, x1)), x0) = rAct (x2, (mult (x1, x0))))
;;

testi
  (32)
  (let x2 = rAct ((rGen (1)), (gen (10))) in
   let x1 = gen (45) in
   let x0 = gen (13) in
   rAct ((rAct (x2, x1)), x0) = rAct (x2, (mult (x1, x0))))
;;

testi
  (33)
  (let x2 = rGen (16) in
   let x1 = mult ((mult ((gen (38)), (gen (25)))), (gen (1))) in
   let x0 = mult ((mult ((gen (38)), (gen (25)))), (gen (1))) in
   rAct ((rAct (x2, x1)), x0) = rAct (x2, (mult (x1, x0))))
;;

testi
  (34)
  (let x2 = rAct ((rAct ((rGen (19)), unit)), (gen (10))) in
   let x1 = mult ((mult ((gen (38)), (gen (25)))), (gen (42))) in
   let x0 = mult ((gen (3)), (gen (42))) in
   rAct ((rAct (x2, x1)), x0) = rAct (x2, (mult (x1, x0))))
;;

testi
  (35)
  (let x2 = mult ((mult ((gen (20)), (gen (46)))), unit) in
   let x1 = mult ((mult ((gen (20)), (gen (46)))), (gen (20))) in
   let x0 = bGen (16) in
   bLAct (x2, (bLAct (x1, x0))) = bLAct ((mult (x2, x1)), x0))
;;

testi
  (36)
  (let x2 = gen (0) in
   let x1 = mult ((mult ((gen (20)), (gen (46)))), (gen (20))) in
   let x0 = bGen (2) in
   bLAct (x2, (bLAct (x1, x0))) = bLAct ((mult (x2, x1)), x0))
;;

testi
  (37)
  (let x2 = mult ((mult ((gen (20)), (gen (46)))), unit) in
   let x1 =
     mult ((mult ((gen (18)), (gen (46)))), (mult ((gen (28)), (gen (33))))) in
   let x0 = bGen (23) in
   bLAct (x2, (bLAct (x1, x0))) = bLAct ((mult (x2, x1)), x0))
;;

testi
  (38)
  (let x2 = mult ((gen (30)), (mult ((gen (28)), (gen (33))))) in
   let x1 = gen (44) in
   let x0 = bGen (16) in
   bLAct (x2, (bLAct (x1, x0))) = bLAct ((mult (x2, x1)), x0))
;;

testi
  (39)
  (let x2 = mult ((mult ((gen (18)), (gen (46)))), (gen (17))) in
   let x1 = mult ((mult ((gen (20)), (gen (36)))), (gen (20))) in
   let x0 = bGen (16) in
   bLAct (x2, (bLAct (x1, x0))) = bLAct ((mult (x2, x1)), x0))
;;

testi
  (40)
  (let x0 =
     bLAct ((mult ((gen (1)), (gen (15)))), (bLAct ((gen (9)), (bGen (12))))) in
   bLAct (unit, x0) = x0)
;;

testi (41) (let x0 = bGen (21) in bLAct (unit, x0) = x0)
;;

testi
  (42)
  (let x0 =
     bLAct ((mult ((gen (1)), (gen (15)))), (bLAct ((gen (9)), (bGen (12))))) in
   bLAct (unit, x0) = x0)
;;

testi
  (43)
  (let x0 = bRAct ((bRAct ((bGen (3)), unit)), (gen (10))) in
   bLAct (unit, x0) = x0)
;;

testi
  (44)
  (let x0 = bRAct ((bGen (15)), (gen (10))) in bLAct (unit, x0) = x0)
;;

testi (45) (let x0 = bGen (12) in bRAct (x0, unit) = x0)
;;

testi
  (46)
  (let x0 = bRAct ((bLAct ((gen (0)), (bGen (11)))), (gen (17))) in
   bRAct (x0, unit) = x0)
;;

testi
  (47)
  (let x0 = bLAct ((gen (20)), (bLAct ((gen (16)), (bGen (20))))) in
   bRAct (x0, unit) = x0)
;;

testi
  (48)
  (let x0 = bLAct ((gen (20)), (bLAct ((gen (16)), (bGen (20))))) in
   bRAct (x0, unit) = x0)
;;

testi
  (49)
  (let x0 = bRAct ((bLAct ((gen (0)), (bGen (11)))), (gen (17))) in
   bRAct (x0, unit) = x0)
;;

testi
  (50)
  (let x2 = unit in
   let x1 = bGen (18) in
   let x0 = mult ((mult ((gen (15)), (gen (6)))), (mult (unit, unit))) in
   bRAct ((bLAct (x2, x1)), x0) = bLAct (x2, (bRAct (x1, x0))))
;;

testi
  (51)
  (let x2 = mult ((gen (9)), (gen (10))) in
   let x1 = bLAct ((gen (16)), (bLAct ((gen (13)), (bGen (4))))) in
   let x0 = mult ((mult ((gen (15)), (gen (6)))), (mult (unit, unit))) in
   bRAct ((bLAct (x2, x1)), x0) = bLAct (x2, (bRAct (x1, x0))))
;;

testi
  (52)
  (let x2 = mult ((gen (9)), (gen (10))) in
   let x1 = bLAct ((gen (16)), (bLAct ((gen (6)), (bGen (14))))) in
   let x0 = mult ((mult ((gen (23)), unit)), (mult (unit, unit))) in
   bRAct ((bLAct (x2, x1)), x0) = bLAct (x2, (bRAct (x1, x0))))
;;

testi
  (53)
  (let x2 = gen (18) in
   let x1 = bLAct ((gen (16)), (bLAct ((gen (13)), (bGen (4))))) in
   let x0 = mult ((mult ((gen (15)), (gen (6)))), (mult (unit, unit))) in
   bRAct ((bLAct (x2, x1)), x0) = bLAct (x2, (bRAct (x1, x0))))
;;

testi
  (54)
  (let x2 = mult ((mult (unit, unit)), (mult ((gen (4)), (gen (12))))) in
   let x1 = bLAct ((gen (16)), (bLAct ((gen (6)), (bGen (14))))) in
   let x0 = gen (17) in
   bRAct ((bLAct (x2, x1)), x0) = bLAct (x2, (bRAct (x1, x0))))
;;

testi
  (55)
  (let x2 = bRAct ((bGen (20)), (gen (7))) in
   let x1 = gen (2) in
   let x0 = gen (20) in
   bRAct ((bRAct (x2, x1)), x0) = bRAct (x2, (mult (x1, x0))))
;;

testi
  (56)
  (let x2 = bGen (23) in
   let x1 =
     mult ((mult ((gen (35)), (gen (42)))), (mult ((gen (30)), (gen (15))))) in
   let x0 =
     mult ((mult ((gen (2)), (gen (42)))), (mult ((gen (30)), (gen (15))))) in
   bRAct ((bRAct (x2, x1)), x0) = bRAct (x2, (mult (x1, x0))))
;;

testi
  (57)
  (let x2 = bGen (11) in
   let x1 =
     mult ((mult ((gen (35)), (gen (42)))), (mult ((gen (30)), (gen (15))))) in
   let x0 = mult ((mult ((gen (40)), (gen (42)))), (gen (12))) in
   bRAct ((bRAct (x2, x1)), x0) = bRAct (x2, (mult (x1, x0))))
;;

testi
  (58)
  (let x2 = bGen (7) in
   let x1 = gen (20) in
   let x0 = mult ((gen (17)), (gen (40))) in
   bRAct ((bRAct (x2, x1)), x0) = bRAct (x2, (mult (x1, x0))))
;;

testi
  (59)
  (let x2 = bGen (11) in
   let x1 =
     mult ((mult ((gen (35)), (gen (42)))), (mult ((gen (30)), (gen (15))))) in
   let x0 = gen (34) in
   bRAct ((bRAct (x2, x1)), x0) = bRAct (x2, (mult (x1, x0))))
;;

