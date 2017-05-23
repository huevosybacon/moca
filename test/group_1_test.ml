open Group_1
;;

open Gentest
;;

testing ("Group_1 (automatic) - seed: 328428070")
;;

testi (0) (let x0 = add ((opp one), zero) in add (x0, zero) = x0)
;;

testi
  (1)
  (let x0 = add ((add (zero, one)), (opp one)) in add (x0, zero) = x0)
;;

testi (2) (let x0 = zero in add (x0, zero) = x0)
;;

testi (3) (let x0 = opp (opp zero) in add (x0, zero) = x0)
;;

testi (4) (let x0 = one in add (x0, zero) = x0)
;;

testi
  (5)
  (let x0 = add ((add (zero, one)), (opp one)) in add (x0, (opp x0)) = zero)
;;

testi
  (6)
  (let x0 = add (one, (add (zero, zero))) in add (x0, (opp x0)) = zero)
;;

testi (7) (let x0 = zero in add (x0, (opp x0)) = zero)
;;

testi (8) (let x0 = opp (opp zero) in add (x0, (opp x0)) = zero)
;;

testi
  (9)
  (let x0 = add ((add (zero, one)), (opp zero)) in add (x0, (opp x0)) = zero)
;;

testi
  (10)
  (let x2 = add ((add (zero, zero)), (add (one, zero))) in
   let x1 = add ((opp one), (add (one, zero))) in
   let x0 = add ((opp one), one) in
   add ((add (x2, x1)), x0) = add (x2, (add (x1, x0))))
;;

testi
  (11)
  (let x2 = opp (add (zero, one)) in
   let x1 = one in
   let x0 = zero in add ((add (x2, x1)), x0) = add (x2, (add (x1, x0))))
;;

testi
  (12)
  (let x2 = add ((opp one), (add (zero, one))) in
   let x1 = add ((add (one, zero)), (opp one)) in
   let x0 = add ((add (zero, zero)), (add (one, zero))) in
   add ((add (x2, x1)), x0) = add (x2, (add (x1, x0))))
;;

testi
  (13)
  (let x2 = opp (opp zero) in
   let x1 = add ((add (one, zero)), (opp one)) in
   let x0 = opp (add (one, one)) in
   add ((add (x2, x1)), x0) = add (x2, (add (x1, x0))))
;;

testi
  (14)
  (let x2 = opp (opp zero) in
   let x1 = opp (opp zero) in
   let x0 = one in add ((add (x2, x1)), x0) = add (x2, (add (x1, x0))))
;;

testi
  (15)
  (let x0 = add ((add (one, one)), (add (one, one))) in add (zero, x0) = x0)
;;

testi
  (16)
  (let x0 = add ((add (one, one)), (opp zero)) in add (zero, x0) = x0)
;;

testi (17) (let x0 = one in add (zero, x0) = x0)
;;

testi
  (18)
  (let x0 = add ((opp one), (add (one, one))) in add (zero, x0) = x0)
;;

testi (19) (let x0 = opp (add (one, one)) in add (zero, x0) = x0)
;;

testi (20) (let x0 = opp (add (zero, one)) in add ((opp x0), x0) = zero)
;;

testi
  (21)
  (let x0 = add (one, (add (zero, one))) in add ((opp x0), x0) = zero)
;;

testi
  (22)
  (let x0 = add (one, (add (zero, one))) in add ((opp x0), x0) = zero)
;;

testi (23) (let x0 = zero in add ((opp x0), x0) = zero)
;;

testi (24) (let x0 = opp (opp one) in add ((opp x0), x0) = zero)
;;

