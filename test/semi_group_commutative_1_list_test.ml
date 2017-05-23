open Semi_group_commutative_1_list
;;

open Gentest
;;

testing ("Semi_group_commutative_1_list (automatic) - seed: 954963970")
;;

testi
  (0)
  (let x0 = add ((add (one, one)), (add (one, one))) in
   let x1 = add ((add (one, one)), (add (one, one))) in
   add (x0, x1) = add (x1, x0))
;;

testi
  (1)
  (let x0 = add ((add (one, one)), (add (one, one))) in
   let x1 = add ((add (one, one)), (add (one, one))) in
   add (x0, x1) = add (x1, x0))
;;

testi
  (2)
  (let x0 = add ((add (one, one)), (add (one, one))) in
   let x1 = one in add (x0, x1) = add (x1, x0))
;;

testi
  (3)
  (let x0 = one in
   let x1 = add (one, (add (one, one))) in add (x0, x1) = add (x1, x0))
;;

testi
  (4)
  (let x0 = add ((add (one, one)), (add (one, one))) in
   let x1 = add (one, (add (one, one))) in add (x0, x1) = add (x1, x0))
;;

testi
  (5)
  (let x2 = add ((add (one, one)), (add (one, one))) in
   let x1 = add ((add (one, one)), (add (one, one))) in
   let x0 = add (one, (add (one, one))) in
   add ((add (x2, x1)), x0) = add (x2, (add (x1, x0))))
;;

testi
  (6)
  (let x2 = add ((add (one, one)), (add (one, one))) in
   let x1 = add ((add (one, one)), (add (one, one))) in
   let x0 = add ((add (one, one)), (add (one, one))) in
   add ((add (x2, x1)), x0) = add (x2, (add (x1, x0))))
;;

testi
  (7)
  (let x2 = add ((add (one, one)), (add (one, one))) in
   let x1 = add (one, (add (one, one))) in
   let x0 = add ((add (one, one)), (add (one, one))) in
   add ((add (x2, x1)), x0) = add (x2, (add (x1, x0))))
;;

testi
  (8)
  (let x2 = add ((add (one, one)), (add (one, one))) in
   let x1 = add ((add (one, one)), (add (one, one))) in
   let x0 = add ((add (one, one)), (add (one, one))) in
   add ((add (x2, x1)), x0) = add (x2, (add (x1, x0))))
;;

testi
  (9)
  (let x2 = add (one, (add (one, one))) in
   let x1 = add ((add (one, one)), (add (one, one))) in
   let x0 = add ((add (one, one)), (add (one, one))) in
   add ((add (x2, x1)), x0) = add (x2, (add (x1, x0))))
;;

