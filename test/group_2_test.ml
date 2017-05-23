open Group_2
;;

open Gentest
;;

testing ("Group_2 (automatic) - seed: 744718901")
;;

testi (0) (let x0 = opp one in add (x0, zero) = x0)
;;

testi
  (1)
  (let x0 = add ((opp zero), (add (two, two))) in add (x0, zero) = x0)
;;

testi (2) (let x0 = opp (opp two) in add (x0, zero) = x0)
;;

testi (3) (let x0 = add ((opp one), (opp zero)) in add (x0, zero) = x0)
;;

testi (4) (let x0 = add ((opp one), (opp zero)) in add (x0, zero) = x0)
;;

testi (5) (let x0 = zero in add (x0, (opp x0)) = zero)
;;

testi
  (6)
  (let x0 = add ((opp zero), (add (one, one))) in add (x0, (opp x0)) = zero)
;;

testi (7) (let x0 = opp (add (zero, one)) in add (x0, (opp x0)) = zero)
;;

testi (8) (let x0 = add ((opp one), one) in add (x0, (opp x0)) = zero)
;;

testi (9) (let x0 = two in add (x0, (opp x0)) = zero)
;;

testi
  (10)
  (let x2 = add ((opp zero), (add (two, one))) in
   let x1 = add ((add (two, one)), (add (zero, one))) in
   let x0 = opp (opp two) in
   add ((add (x2, x1)), x0) = add (x2, (add (x1, x0))))
;;

testi
  (11)
  (let x2 = add ((opp two), (opp one)) in
   let x1 = opp (opp one) in
   let x0 = opp (opp one) in
   add ((add (x2, x1)), x0) = add (x2, (add (x1, x0))))
;;

testi
  (12)
  (let x2 = add ((add (zero, zero)), (add (zero, one))) in
   let x1 = opp (add (zero, one)) in
   let x0 = opp (opp two) in
   add ((add (x2, x1)), x0) = add (x2, (add (x1, x0))))
;;

testi
  (13)
  (let x2 = opp (add (zero, one)) in
   let x1 = opp (opp two) in
   let x0 = opp (opp two) in
   add ((add (x2, x1)), x0) = add (x2, (add (x1, x0))))
;;

testi
  (14)
  (let x2 = opp (opp two) in
   let x1 = opp (add (one, two)) in
   let x0 = opp (opp two) in
   add ((add (x2, x1)), x0) = add (x2, (add (x1, x0))))
;;

testi (15) (let x0 = opp (add (zero, zero)) in add (zero, x0) = x0)
;;

testi (16) (let x0 = add ((add (one, zero)), zero) in add (zero, x0) = x0)
;;

testi (17) (let x0 = two in add (zero, x0) = x0)
;;

testi (18) (let x0 = opp (add (zero, zero)) in add (zero, x0) = x0)
;;

testi (19) (let x0 = zero in add (zero, x0) = x0)
;;

testi (20) (let x0 = opp (opp one) in add ((opp x0), x0) = zero)
;;

testi (21) (let x0 = one in add ((opp x0), x0) = zero)
;;

testi (22) (let x0 = add ((opp one), two) in add ((opp x0), x0) = zero)
;;

testi (23) (let x0 = opp (opp one) in add ((opp x0), x0) = zero)
;;

testi (24) (let x0 = opp (opp one) in add ((opp x0), x0) = zero)
;;

