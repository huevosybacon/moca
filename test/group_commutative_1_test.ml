open Group_commutative_1
;;

open Gentest
;;

testing ("Group_commutative_1 (automatic) - seed: 1002489529")
;;

testi
  (0)
  (let x0 = opp (add (one, one)) in
   let x1 = opp (add (one, one)) in add (x0, x1) = add (x1, x0))
;;

testi
  (1)
  (let x0 = opp (add (one, one)) in
   let x1 = opp (add (one, one)) in add (x0, x1) = add (x1, x0))
;;

testi
  (2)
  (let x0 = one in
   let x1 = add ((opp zero), (add (zero, one))) in
   add (x0, x1) = add (x1, x0))
;;

testi
  (3)
  (let x0 = opp (add (zero, zero)) in
   let x1 = add ((opp zero), (add (zero, one))) in
   add (x0, x1) = add (x1, x0))
;;

testi
  (4)
  (let x0 = add ((add (one, one)), (opp zero)) in
   let x1 = add ((add (one, one)), (opp zero)) in add (x0, x1) = add (x1, x0))
;;

testi (5) (let x0 = one in add (x0, zero) = x0)
;;

testi (6) (let x0 = opp zero in add (x0, zero) = x0)
;;

testi (7) (let x0 = zero in add (x0, zero) = x0)
;;

testi (8) (let x0 = opp zero in add (x0, zero) = x0)
;;

testi (9) (let x0 = add ((opp zero), zero) in add (x0, zero) = x0)
;;

testi (10) (let x0 = opp one in add (x0, (opp x0)) = zero)
;;

testi (11) (let x0 = one in add (x0, (opp x0)) = zero)
;;

testi
  (12)
  (let x0 = add (one, (add (one, zero))) in add (x0, (opp x0)) = zero)
;;

testi (13) (let x0 = one in add (x0, (opp x0)) = zero)
;;

testi (14) (let x0 = opp (add (one, zero)) in add (x0, (opp x0)) = zero)
;;

testi
  (15)
  (let x2 = add ((add (zero, one)), (add (one, zero))) in
   let x1 = add ((add (zero, one)), (add (one, zero))) in
   let x0 = add ((opp one), (opp zero)) in
   add ((add (x2, x1)), x0) = add (x2, (add (x1, x0))))
;;

testi
  (16)
  (let x2 = opp (opp zero) in
   let x1 = add ((add (zero, one)), (add (one, zero))) in
   let x0 = opp (opp zero) in
   add ((add (x2, x1)), x0) = add (x2, (add (x1, x0))))
;;

testi
  (17)
  (let x2 = zero in
   let x1 = opp (opp one) in
   let x0 = add ((add (zero, one)), (add (one, zero))) in
   add ((add (x2, x1)), x0) = add (x2, (add (x1, x0))))
;;

testi
  (18)
  (let x2 = add ((add (one, one)), (add (one, zero))) in
   let x1 = opp (opp zero) in
   let x0 = add ((add (one, zero)), (opp one)) in
   add ((add (x2, x1)), x0) = add (x2, (add (x1, x0))))
;;

testi
  (19)
  (let x2 = add ((opp one), (add (one, zero))) in
   let x1 = opp (add (zero, zero)) in
   let x0 = add ((opp one), (opp one)) in
   add ((add (x2, x1)), x0) = add (x2, (add (x1, x0))))
;;

testi (20) (let x0 = opp (add (zero, one)) in add (zero, x0) = x0)
;;

testi (21) (let x0 = opp one in add (zero, x0) = x0)
;;

testi (22) (let x0 = opp one in add (zero, x0) = x0)
;;

testi (23) (let x0 = opp (add (zero, one)) in add (zero, x0) = x0)
;;

testi (24) (let x0 = opp (add (zero, one)) in add (zero, x0) = x0)
;;

testi
  (25)
  (let x0 = add ((opp zero), (add (zero, zero))) in add ((opp x0), x0) = zero)
;;

testi (26) (let x0 = add (zero, (opp zero)) in add ((opp x0), x0) = zero)
;;

testi
  (27)
  (let x0 = add ((opp zero), (add (zero, zero))) in add ((opp x0), x0) = zero)
;;

testi
  (28)
  (let x0 = add (zero, (add (one, one))) in add ((opp x0), x0) = zero)
;;

testi
  (29)
  (let x0 = add ((add (zero, zero)), (add (one, one))) in
   add ((opp x0), x0) = zero)
;;

