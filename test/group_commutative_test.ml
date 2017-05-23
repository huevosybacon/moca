open Group_commutative
;;

open Gentest
;;

testing ("Group_commutative (automatic) - seed: 125610644")
;;

testi
  (0)
  (let x0 = add ((add ((gen (23)), (gen (6)))), (gen (14))) in
   let x1 = opp (add ((gen (3)), (gen (19)))) in add (x0, x1) = add (x1, x0))
;;

testi
  (1)
  (let x0 = opp (add ((gen (3)), (gen (19)))) in
   let x1 = add ((add ((gen (23)), (gen (6)))), (gen (14))) in
   add (x0, x1) = add (x1, x0))
;;

testi
  (2)
  (let x0 = add ((gen (15)), (opp (gen (20)))) in
   let x1 = gen (45) in add (x0, x1) = add (x1, x0))
;;

testi
  (3)
  (let x0 = opp (add ((gen (3)), (gen (31)))) in
   let x1 = add ((add ((gen (9)), zero)), (gen (3))) in
   add (x0, x1) = add (x1, x0))
;;

testi
  (4)
  (let x0 = add ((gen (9)), (add ((gen (43)), (gen (15))))) in
   let x1 = add ((gen (15)), (gen (14))) in add (x0, x1) = add (x1, x0))
;;

testi (5) (let x0 = gen (23) in add (x0, zero) = x0)
;;

testi (6) (let x0 = gen (23) in add (x0, zero) = x0)
;;

testi (7) (let x0 = add ((opp (gen (24))), (gen (5))) in add (x0, zero) = x0)
;;

testi
  (8)
  (let x0 = add ((opp (gen (24))), (opp (gen (14)))) in add (x0, zero) = x0)
;;

testi (9) (let x0 = add ((opp (gen (24))), (gen (5))) in add (x0, zero) = x0)
;;

testi (10) (let x0 = gen (9) in add (x0, (opp x0)) = zero)
;;

testi
  (11)
  (let x0 = add (zero, (add (zero, (gen (7))))) in add (x0, (opp x0)) = zero)
;;

testi (12) (let x0 = opp (opp (gen (16))) in add (x0, (opp x0)) = zero)
;;

testi (13) (let x0 = gen (9) in add (x0, (opp x0)) = zero)
;;

testi
  (14)
  (let x0 = add ((add ((gen (1)), (gen (9)))), (gen (0))) in
   add (x0, (opp x0)) = zero)
;;

testi
  (15)
  (let x2 = gen (7) in
   let x1 = gen (60) in
   let x0 = gen (18) in add ((add (x2, x1)), x0) = add (x2, (add (x1, x0))))
;;

testi
  (16)
  (let x2 = gen (18) in
   let x1 = gen (60) in
   let x0 = opp (gen (64)) in
   add ((add (x2, x1)), x0) = add (x2, (add (x1, x0))))
;;

testi
  (17)
  (let x2 = gen (60) in
   let x1 = opp (gen (55)) in
   let x0 = gen (72) in add ((add (x2, x1)), x0) = add (x2, (add (x1, x0))))
;;

testi
  (18)
  (let x2 = opp (opp (gen (29))) in
   let x1 =
     add ((add ((gen (15)), (gen (43)))), (add ((gen (57)), (gen (58))))) in
   let x0 =
     add ((add ((gen (11)), (gen (43)))), (add ((gen (57)), (gen (58))))) in
   add ((add (x2, x1)), x0) = add (x2, (add (x1, x0))))
;;

testi
  (19)
  (let x2 =
     add ((add ((gen (13)), (gen (33)))), (add ((gen (57)), (gen (51))))) in
   let x1 = opp (gen (55)) in
   let x0 = gen (72) in add ((add (x2, x1)), x0) = add (x2, (add (x1, x0))))
;;

testi (20) (let x0 = opp (opp (gen (2))) in add (zero, x0) = x0)
;;

testi (21) (let x0 = gen (14) in add (zero, x0) = x0)
;;

testi
  (22)
  (let x0 = add ((gen (21)), (opp (gen (7)))) in add (zero, x0) = x0)
;;

testi
  (23)
  (let x0 = opp (add ((gen (9)), (gen (22)))) in add (zero, x0) = x0)
;;

testi
  (24)
  (let x0 = add ((add (zero, zero)), (opp (gen (7)))) in add (zero, x0) = x0)
;;

testi (25) (let x0 = gen (11) in add ((opp x0), x0) = zero)
;;

testi
  (26)
  (let x0 = opp (add ((gen (0)), (gen (12)))) in add ((opp x0), x0) = zero)
;;

testi (27) (let x0 = add (zero, zero) in add ((opp x0), x0) = zero)
;;

testi
  (28)
  (let x0 = opp (add ((gen (0)), (gen (12)))) in add ((opp x0), x0) = zero)
;;

testi
  (29)
  (let x0 = add ((opp zero), (add ((gen (0)), (gen (19))))) in
   add ((opp x0), x0) = zero)
;;

