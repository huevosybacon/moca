open Group_commutative_gh
;;

open Gentest
;;

testing ("Group_commutative_gh (automatic) - seed: 737655525")
;;

testi
  (0)
  (let x0 = add ((h (24)), (h (48))) in
   let x1 = gen (48) in add (x0, x1) = add (x1, x0))
;;

testi
  (1)
  (let x0 = opp (add ((h (18)), (gen (6)))) in
   let x1 = add ((h (21)), (h (48))) in add (x0, x1) = add (x1, x0))
;;

testi
  (2)
  (let x0 = gen (1) in let x1 = gen (37) in add (x0, x1) = add (x1, x0))
;;

testi
  (3)
  (let x0 = add ((h (49)), (h (48))) in
   let x1 = opp (gen (8)) in add (x0, x1) = add (x1, x0))
;;

testi
  (4)
  (let x0 = opp (add ((h (18)), (gen (6)))) in
   let x1 = add ((h (18)), (h (48))) in add (x0, x1) = add (x1, x0))
;;

testi (5) (let x0 = opp (opp (gen (15))) in add (x0, zero) = x0)
;;

testi (6) (let x0 = gen (22) in add (x0, zero) = x0)
;;

testi (7) (let x0 = gen (14) in add (x0, zero) = x0)
;;

testi (8) (let x0 = add ((gen (10)), (h (17))) in add (x0, zero) = x0)
;;

testi (9) (let x0 = h (23) in add (x0, zero) = x0)
;;

testi (10) (let x0 = opp (h (19)) in add (x0, (opp x0)) = zero)
;;

testi (11) (let x0 = opp (opp zero) in add (x0, (opp x0)) = zero)
;;

testi
  (12)
  (let x0 = add ((add ((gen (2)), (h (2)))), (gen (22))) in
   add (x0, (opp x0)) = zero)
;;

testi (13) (let x0 = gen (16) in add (x0, (opp x0)) = zero)
;;

testi
  (14)
  (let x0 = add ((add ((gen (2)), (h (2)))), (gen (22))) in
   add (x0, (opp x0)) = zero)
;;

testi
  (15)
  (let x2 = opp (add ((gen (26)), (h (13)))) in
   let x1 = h (38) in
   let x0 = opp (opp (gen (57))) in
   add ((add (x2, x1)), x0) = add (x2, (add (x1, x0))))
;;

testi
  (16)
  (let x2 = opp (opp (h (38))) in
   let x1 = gen (64) in
   let x0 = gen (15) in add ((add (x2, x1)), x0) = add (x2, (add (x1, x0))))
;;

testi
  (17)
  (let x2 = h (12) in
   let x1 = add ((gen (2)), (gen (2))) in
   let x0 = gen (26) in add ((add (x2, x1)), x0) = add (x2, (add (x1, x0))))
;;

testi
  (18)
  (let x2 = gen (34) in
   let x1 = gen (34) in
   let x0 = opp (opp (gen (57))) in
   add ((add (x2, x1)), x0) = add (x2, (add (x1, x0))))
;;

testi
  (19)
  (let x2 = add ((h (41)), (add ((h (8)), (gen (47))))) in
   let x1 = h (20) in
   let x0 = gen (26) in add ((add (x2, x1)), x0) = add (x2, (add (x1, x0))))
;;

testi (20) (let x0 = gen (6) in add (zero, x0) = x0)
;;

testi (21) (let x0 = gen (0) in add (zero, x0) = x0)
;;

testi (22) (let x0 = gen (1) in add (zero, x0) = x0)
;;

testi (23) (let x0 = gen (1) in add (zero, x0) = x0)
;;

testi (24) (let x0 = gen (6) in add (zero, x0) = x0)
;;

testi (25) (let x0 = gen (0) in add ((opp x0), x0) = zero)
;;

testi
  (26)
  (let x0 = add ((opp (gen (15))), (h (2))) in add ((opp x0), x0) = zero)
;;

testi (27) (let x0 = gen (16) in add ((opp x0), x0) = zero)
;;

testi
  (28)
  (let x0 = add ((opp (gen (15))), (h (2))) in add ((opp x0), x0) = zero)
;;

testi
  (29)
  (let x0 = add ((opp (gen (15))), (h (2))) in add ((opp x0), x0) = zero)
;;

