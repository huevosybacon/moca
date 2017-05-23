open Monoid_sharing
;;

open Gentest
;;

testing ("Monoid_sharing (automatic) - seed: 829670124")
;;

testi (0) (let x0 = gen (2) in mult (x0, unit) = x0)
;;

testi (1) (let x0 = gen (2) in mult (x0, unit) = x0)
;;

testi
  (2)
  (let x0 = mult ((mult ((gen (5)), (gen (8)))), (gen (0))) in
   mult (x0, unit) = x0)
;;

testi (3) (let x0 = gen (9) in mult (x0, unit) = x0)
;;

testi (4) (let x0 = gen (2) in mult (x0, unit) = x0)
;;

testi
  (5)
  (let x2 = gen (71) in
   let x1 = mult ((gen (39)), (mult ((gen (10)), (gen (36))))) in
   let x0 = mult ((gen (29)), (mult ((gen (59)), (gen (36))))) in
   mult ((mult (x2, x1)), x0) = mult (x2, (mult (x1, x0))))
;;

testi
  (6)
  (let x2 = gen (34) in
   let x1 = mult ((mult ((gen (16)), (gen (46)))), (gen (21))) in
   let x0 = mult ((gen (29)), (mult ((gen (59)), (gen (36))))) in
   mult ((mult (x2, x1)), x0) = mult (x2, (mult (x1, x0))))
;;

testi
  (7)
  (let x2 = gen (71) in
   let x1 = gen (42) in
   let x0 = mult ((gen (62)), (gen (21))) in
   mult ((mult (x2, x1)), x0) = mult (x2, (mult (x1, x0))))
;;

testi
  (8)
  (let x2 = gen (42) in
   let x1 = gen (34) in
   let x0 = mult ((gen (31)), (mult ((gen (10)), (gen (36))))) in
   mult ((mult (x2, x1)), x0) = mult (x2, (mult (x1, x0))))
;;

testi
  (9)
  (let x2 = gen (73) in
   let x1 = unit in
   let x0 = mult ((gen (62)), (gen (21))) in
   mult ((mult (x2, x1)), x0) = mult (x2, (mult (x1, x0))))
;;

testi
  (10)
  (let x0 = mult ((mult (unit, (gen (22)))), (gen (12))) in
   mult (unit, x0) = x0)
;;

testi (11) (let x0 = gen (23) in mult (unit, x0) = x0)
;;

testi (12) (let x0 = mult (unit, (gen (12))) in mult (unit, x0) = x0)
;;

testi (13) (let x0 = gen (2) in mult (unit, x0) = x0)
;;

testi (14) (let x0 = gen (8) in mult (unit, x0) = x0)
;;

