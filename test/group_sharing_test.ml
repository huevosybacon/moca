open Group_sharing
;;

open Gentest
;;

testing ("Group_sharing (automatic) - seed: 149479570")
;;

testi (0) (let x0 = mult ((opp (gen (1))), unit) in mult (x0, unit) = x0)
;;

testi
  (1)
  (let x0 = mult ((opp (gen (1))), (mult ((gen (22)), (gen (7))))) in
   mult (x0, unit) = x0)
;;

testi (2) (let x0 = gen (22) in mult (x0, unit) = x0)
;;

testi (3) (let x0 = gen (22) in mult (x0, unit) = x0)
;;

testi (4) (let x0 = gen (21) in mult (x0, unit) = x0)
;;

testi (5) (let x0 = gen (1) in mult (x0, (opp x0)) = unit)
;;

testi
  (6)
  (let x0 = mult ((gen (15)), (mult ((gen (17)), (gen (8))))) in
   mult (x0, (opp x0)) = unit)
;;

testi
  (7)
  (let x0 = mult ((gen (15)), (mult ((gen (17)), (gen (8))))) in
   mult (x0, (opp x0)) = unit)
;;

testi (8) (let x0 = opp (gen (4)) in mult (x0, (opp x0)) = unit)
;;

testi
  (9)
  (let x0 = mult ((opp (gen (1))), (gen (13))) in mult (x0, (opp x0)) = unit)
;;

testi
  (10)
  (let x2 = mult ((gen (14)), (opp (gen (51)))) in
   let x1 = opp (mult ((gen (70)), (gen (62)))) in
   let x0 = mult ((opp (gen (27))), (opp (gen (51)))) in
   mult ((mult (x2, x1)), x0) = mult (x2, (mult (x1, x0))))
;;

testi
  (11)
  (let x2 = opp (mult ((gen (71)), (gen (6)))) in
   let x1 = gen (56) in
   let x0 =
     mult ((mult ((gen (67)), (gen (24)))), (mult ((gen (58)), (gen (18))))) in
   mult ((mult (x2, x1)), x0) = mult (x2, (mult (x1, x0))))
;;

testi
  (12)
  (let x2 = mult ((opp (gen (27))), (gen (28))) in
   let x1 = mult ((opp (gen (59))), (opp (gen (38)))) in
   let x0 = mult ((opp (gen (27))), (opp (gen (51)))) in
   mult ((mult (x2, x1)), x0) = mult (x2, (mult (x1, x0))))
;;

testi
  (13)
  (let x2 = opp (mult ((gen (35)), (gen (62)))) in
   let x1 = opp (opp unit) in
   let x0 = gen (31) in
   mult ((mult (x2, x1)), x0) = mult (x2, (mult (x1, x0))))
;;

testi
  (14)
  (let x2 = mult ((opp (gen (11))), (opp (gen (38)))) in
   let x1 = opp (opp unit) in
   let x0 = gen (58) in
   mult ((mult (x2, x1)), x0) = mult (x2, (mult (x1, x0))))
;;

testi (15) (let x0 = gen (24) in mult (unit, x0) = x0)
;;

testi
  (16)
  (let x0 = opp (mult ((gen (16)), (gen (9)))) in mult (unit, x0) = x0)
;;

testi (17) (let x0 = opp (gen (13)) in mult (unit, x0) = x0)
;;

testi (18) (let x0 = gen (14) in mult (unit, x0) = x0)
;;

testi
  (19)
  (let x0 = opp (mult ((gen (16)), (gen (9)))) in mult (unit, x0) = x0)
;;

testi (20) (let x0 = opp (opp (gen (6))) in mult ((opp x0), x0) = unit)
;;

testi (21) (let x0 = gen (10) in mult ((opp x0), x0) = unit)
;;

testi
  (22)
  (let x0 = mult ((opp (gen (8))), (gen (1))) in mult ((opp x0), x0) = unit)
;;

testi
  (23)
  (let x0 = mult ((opp (gen (8))), (opp (gen (7)))) in
   mult ((opp x0), x0) = unit)
;;

testi (24) (let x0 = opp (opp (gen (6))) in mult ((opp x0), x0) = unit)
;;

