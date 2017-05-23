open Additive_monoid_sharing
;;

open Gentest
;;

testing ("Additive_monoid_sharing (automatic) - seed: 148947373")
;;

testi
  (0)
  (let x0 = add ((add (zero, one)), (add (zero, zero))) in
   let x1 = add ((add (zero, zero)), zero) in add (x0, x1) = add (x1, x0))
;;

testi
  (1)
  (let x0 = add ((add (zero, zero)), (add (one, zero))) in
   let x1 = add ((add (zero, one)), (add (one, zero))) in
   add (x0, x1) = add (x1, x0))
;;

testi
  (2)
  (let x0 = add ((add (zero, zero)), zero) in
   let x1 = add ((add (zero, zero)), (add (one, zero))) in
   add (x0, x1) = add (x1, x0))
;;

testi
  (3)
  (let x0 = add ((add (zero, one)), (add (zero, zero))) in
   let x1 = add ((add (zero, zero)), (add (zero, zero))) in
   add (x0, x1) = add (x1, x0))
;;

testi
  (4)
  (let x0 = add ((add (zero, zero)), zero) in
   let x1 = add ((add (zero, zero)), zero) in add (x0, x1) = add (x1, x0))
;;

testi
  (5)
  (let x0 = add ((add (one, zero)), (add (zero, one))) in add (x0, zero) = x0)
;;

testi
  (6)
  (let x0 = add ((add (one, zero)), (add (zero, one))) in add (x0, zero) = x0)
;;

testi
  (7)
  (let x0 = add ((add (one, zero)), (add (zero, one))) in add (x0, zero) = x0)
;;

testi
  (8)
  (let x0 = add ((add (one, zero)), (add (zero, one))) in add (x0, zero) = x0)
;;

testi (9) (let x0 = zero in add (x0, zero) = x0)
;;

testi
  (10)
  (let x2 = add ((add (one, zero)), (add (zero, zero))) in
   let x1 = add ((add (zero, one)), (add (one, zero))) in
   let x0 = add ((add (one, one)), (add (one, zero))) in
   add ((add (x2, x1)), x0) = add (x2, (add (x1, x0))))
;;

testi
  (11)
  (let x2 = add (zero, (add (one, one))) in
   let x1 = add ((add (one, zero)), (add (zero, zero))) in
   let x0 = add ((add (one, zero)), (add (zero, zero))) in
   add ((add (x2, x1)), x0) = add (x2, (add (x1, x0))))
;;

testi
  (12)
  (let x2 = zero in
   let x1 = zero in
   let x0 = add (zero, (add (one, one))) in
   add ((add (x2, x1)), x0) = add (x2, (add (x1, x0))))
;;

testi
  (13)
  (let x2 = add ((add (zero, zero)), (add (one, zero))) in
   let x1 = add ((add (zero, zero)), (add (one, zero))) in
   let x0 = one in add ((add (x2, x1)), x0) = add (x2, (add (x1, x0))))
;;

testi
  (14)
  (let x2 = add ((add (zero, one)), (add (one, one))) in
   let x1 = add ((add (zero, one)), (add (zero, zero))) in
   let x0 = add ((add (zero, zero)), (add (one, zero))) in
   add ((add (x2, x1)), x0) = add (x2, (add (x1, x0))))
;;

testi (15) (let x0 = add (zero, (add (zero, one))) in add (zero, x0) = x0)
;;

testi
  (16)
  (let x0 = add ((add (zero, one)), (add (zero, zero))) in
   add (zero, x0) = x0)
;;

testi (17) (let x0 = zero in add (zero, x0) = x0)
;;

testi (18) (let x0 = zero in add (zero, x0) = x0)
;;

testi (19) (let x0 = add (zero, one) in add (zero, x0) = x0)
;;

