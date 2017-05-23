open Group
;;

open Gentest
;;

testing ("Group (automatic) - seed: 542264771")
;;

testi
  (0)
  (let x0 = opp (mult ((gen (4)), (gen (6)))) in mult (x0, unit) = x0)
;;

testi (1) (let x0 = gen (19) in mult (x0, unit) = x0)
;;

testi (2) (let x0 = gen (19) in mult (x0, unit) = x0)
;;

testi (3) (let x0 = gen (19) in mult (x0, unit) = x0)
;;

testi
  (4)
  (let x0 = opp (mult ((gen (4)), (gen (6)))) in mult (x0, unit) = x0)
;;

testi (5) (let x0 = opp unit in mult (x0, (opp x0)) = unit)
;;

testi (6) (let x0 = opp (gen (11)) in mult (x0, (opp x0)) = unit)
;;

testi (7) (let x0 = gen (11) in mult (x0, (opp x0)) = unit)
;;

testi
  (8)
  (let x0 = mult ((mult ((gen (19)), (gen (11)))), (gen (16))) in
   mult (x0, (opp x0)) = unit)
;;

testi
  (9)
  (let x0 = mult ((opp (gen (1))), (opp (gen (20)))) in
   mult (x0, (opp x0)) = unit)
;;

testi
  (10)
  (let x2 = opp (gen (63)) in
   let x1 = gen (31) in
   let x0 = opp (opp (gen (66))) in
   mult ((mult (x2, x1)), x0) = mult (x2, (mult (x1, x0))))
;;

testi
  (11)
  (let x2 = opp (opp (gen (15))) in
   let x1 = gen (68) in
   let x0 = opp (gen (32)) in
   mult ((mult (x2, x1)), x0) = mult (x2, (mult (x1, x0))))
;;

testi
  (12)
  (let x2 = opp (gen (63)) in
   let x1 = mult ((gen (22)), (mult ((gen (10)), (gen (10))))) in
   let x0 = gen (72) in
   mult ((mult (x2, x1)), x0) = mult (x2, (mult (x1, x0))))
;;

testi
  (13)
  (let x2 = opp (mult ((gen (14)), (gen (55)))) in
   let x1 = gen (73) in
   let x0 = opp (mult ((gen (14)), (gen (55)))) in
   mult ((mult (x2, x1)), x0) = mult (x2, (mult (x1, x0))))
;;

testi
  (14)
  (let x2 = opp (mult ((gen (14)), (gen (55)))) in
   let x1 = mult ((gen (22)), (mult ((gen (10)), unit))) in
   let x0 = mult ((gen (0)), (gen (39))) in
   mult ((mult (x2, x1)), x0) = mult (x2, (mult (x1, x0))))
;;

testi (15) (let x0 = gen (1) in mult (unit, x0) = x0)
;;

testi (16) (let x0 = gen (0) in mult (unit, x0) = x0)
;;

testi (17) (let x0 = gen (0) in mult (unit, x0) = x0)
;;

testi (18) (let x0 = gen (12) in mult (unit, x0) = x0)
;;

testi
  (19)
  (let x0 = mult ((mult ((gen (5)), (gen (1)))), (opp (gen (6)))) in
   mult (unit, x0) = x0)
;;

testi (20) (let x0 = gen (22) in mult ((opp x0), x0) = unit)
;;

testi
  (21)
  (let x0 =
     mult ((mult ((gen (6)), (gen (0)))), (mult ((gen (22)), (gen (0))))) in
   mult ((opp x0), x0) = unit)
;;

testi
  (22)
  (let x0 = mult ((gen (11)), (mult ((gen (18)), (gen (0))))) in
   mult ((opp x0), x0) = unit)
;;

testi (23) (let x0 = gen (22) in mult ((opp x0), x0) = unit)
;;

testi (24) (let x0 = gen (13) in mult ((opp x0), x0) = unit)
;;

