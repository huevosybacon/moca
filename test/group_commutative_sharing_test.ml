open Group_commutative_sharing
;;

open Gentest
;;

testing ("Group_commutative_sharing (automatic) - seed: 1037056685")
;;

testi
  (0)
  (let x0 = add ((gen (33)), (opp (gen (15)))) in
   let x1 = opp (gen (35)) in add (x0, x1) = add (x1, x0))
;;

testi
  (1)
  (let x0 = gen (32) in let x1 = gen (0) in add (x0, x1) = add (x1, x0))
;;

testi
  (2)
  (let x0 = opp (opp zero) in
   let x1 = gen (20) in add (x0, x1) = add (x1, x0))
;;

testi
  (3)
  (let x0 = gen (20) in
   let x1 = opp (opp zero) in add (x0, x1) = add (x1, x0))
;;

testi
  (4)
  (let x0 = opp (opp zero) in let x1 = zero in add (x0, x1) = add (x1, x0))
;;

testi
  (5)
  (let x0 = add ((add ((gen (15)), (gen (20)))), (opp (gen (7)))) in
   add (x0, zero) = x0)
;;

testi (6) (let x0 = opp zero in add (x0, zero) = x0)
;;

testi (7) (let x0 = gen (24) in add (x0, zero) = x0)
;;

testi (8) (let x0 = gen (3) in add (x0, zero) = x0)
;;

testi (9) (let x0 = gen (5) in add (x0, zero) = x0)
;;

testi
  (10)
  (let x0 = opp (add ((gen (8)), (gen (3)))) in add (x0, (opp x0)) = zero)
;;

testi (11) (let x0 = gen (2) in add (x0, (opp x0)) = zero)
;;

testi (12) (let x0 = gen (2) in add (x0, (opp x0)) = zero)
;;

testi (13) (let x0 = opp (gen (6)) in add (x0, (opp x0)) = zero)
;;

testi (14) (let x0 = opp (opp (gen (23))) in add (x0, (opp x0)) = zero)
;;

testi
  (15)
  (let x2 = opp (gen (8)) in
   let x1 = opp (add ((gen (43)), (gen (55)))) in
   let x0 = opp (add ((gen (43)), (gen (55)))) in
   add ((add (x2, x1)), x0) = add (x2, (add (x1, x0))))
;;

testi
  (16)
  (let x2 = add ((opp (gen (39))), (gen (74))) in
   let x1 = add ((gen (60)), (add ((gen (19)), (gen (57))))) in
   let x0 = opp (add ((gen (43)), (gen (55)))) in
   add ((add (x2, x1)), x0) = add (x2, (add (x1, x0))))
;;

testi
  (17)
  (let x2 = gen (59) in
   let x1 = add ((opp (gen (28))), (opp (gen (66)))) in
   let x0 = gen (41) in add ((add (x2, x1)), x0) = add (x2, (add (x1, x0))))
;;

testi
  (18)
  (let x2 = opp (gen (8)) in
   let x1 = opp (gen (8)) in
   let x0 = gen (59) in add ((add (x2, x1)), x0) = add (x2, (add (x1, x0))))
;;

testi
  (19)
  (let x2 = gen (59) in
   let x1 = gen (65) in
   let x0 = opp (gen (8)) in
   add ((add (x2, x1)), x0) = add (x2, (add (x1, x0))))
;;

testi (20) (let x0 = gen (16) in add (zero, x0) = x0)
;;

testi (21) (let x0 = opp (add (zero, (gen (3)))) in add (zero, x0) = x0)
;;

testi
  (22)
  (let x0 = add ((gen (18)), (opp (gen (22)))) in add (zero, x0) = x0)
;;

testi (23) (let x0 = opp (add (zero, (gen (3)))) in add (zero, x0) = x0)
;;

testi
  (24)
  (let x0 =
     add ((add ((gen (15)), (gen (3)))), (add ((gen (20)), (gen (4))))) in
   add (zero, x0) = x0)
;;

testi
  (25)
  (let x0 = opp (add ((gen (16)), (gen (10)))) in add ((opp x0), x0) = zero)
;;

testi (26) (let x0 = gen (13) in add ((opp x0), x0) = zero)
;;

testi
  (27)
  (let x0 = opp (add ((gen (16)), (gen (10)))) in add ((opp x0), x0) = zero)
;;

testi
  (28)
  (let x0 = opp (add ((gen (16)), (gen (10)))) in add ((opp x0), x0) = zero)
;;

testi (29) (let x0 = opp (opp zero) in add ((opp x0), x0) = zero)
;;

