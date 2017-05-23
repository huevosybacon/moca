open Monoid
;;

open Gentest
;;

testing ("Monoid (automatic) - seed: 55250350")
;;

testi (0) (let x0 = unit in mult (x0, unit) = x0)
;;

testi
  (1)
  (let x0 = mult ((gen (0)), (mult ((gen (1)), (gen (16))))) in
   mult (x0, unit) = x0)
;;

testi (2) (let x0 = mult ((gen (3)), (gen (16))) in mult (x0, unit) = x0)
;;

testi
  (3)
  (let x0 = mult ((gen (0)), (mult ((gen (1)), (gen (16))))) in
   mult (x0, unit) = x0)
;;

testi (4) (let x0 = gen (6) in mult (x0, unit) = x0)
;;

testi
  (5)
  (let x2 = mult ((gen (45)), (mult ((gen (47)), (gen (9))))) in
   let x1 = gen (25) in
   let x0 = gen (25) in
   mult ((mult (x2, x1)), x0) = mult (x2, (mult (x1, x0))))
;;

testi
  (6)
  (let x2 = mult ((gen (12)), (mult ((gen (47)), (gen (27))))) in
   let x1 = gen (33) in
   let x0 = gen (73) in
   mult ((mult (x2, x1)), x0) = mult (x2, (mult (x1, x0))))
;;

testi
  (7)
  (let x2 = gen (33) in
   let x1 = gen (69) in
   let x0 = gen (52) in
   mult ((mult (x2, x1)), x0) = mult (x2, (mult (x1, x0))))
;;

testi
  (8)
  (let x2 = mult ((mult ((gen (52)), (gen (62)))), (gen (21))) in
   let x1 = mult ((mult ((gen (59)), (gen (67)))), (gen (21))) in
   let x0 =
     mult ((mult ((gen (52)), (gen (62)))), (mult ((gen (47)), (gen (9))))) in
   mult ((mult (x2, x1)), x0) = mult (x2, (mult (x1, x0))))
;;

testi
  (9)
  (let x2 = mult (unit, (gen (16))) in
   let x1 = mult ((mult ((gen (59)), (gen (67)))), (gen (21))) in
   let x0 = mult ((gen (12)), (gen (16))) in
   mult ((mult (x2, x1)), x0) = mult (x2, (mult (x1, x0))))
;;

testi (10) (let x0 = mult ((gen (24)), (gen (11))) in mult (unit, x0) = x0)
;;

testi (11) (let x0 = gen (7) in mult (unit, x0) = x0)
;;

testi (12) (let x0 = gen (7) in mult (unit, x0) = x0)
;;

testi (13) (let x0 = mult ((gen (24)), (gen (11))) in mult (unit, x0) = x0)
;;

testi (14) (let x0 = unit in mult (unit, x0) = x0)
;;

