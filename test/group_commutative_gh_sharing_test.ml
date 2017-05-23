open Group_commutative_gh_sharing
;;

open Gentest
;;

testing ("Group_commutative_gh_sharing (automatic) - seed: 323139851")
;;

testi
  (0)
  (let x0 = gen (13) in let x1 = gen (46) in add (x0, x1) = add (x1, x0))
;;

testi
  (1)
  (let x0 = h (16) in
   let x1 = add ((opp (gen (26))), (opp (gen (30)))) in
   add (x0, x1) = add (x1, x0))
;;

testi
  (2)
  (let x0 = gen (36) in
   let x1 = add ((gen (45)), (opp (h (34)))) in add (x0, x1) = add (x1, x0))
;;

testi
  (3)
  (let x0 = gen (46) in
   let x1 = add ((h (27)), (gen (10))) in add (x0, x1) = add (x1, x0))
;;

testi
  (4)
  (let x0 = gen (5) in
   let x1 = opp (add ((h (48)), (gen (19)))) in add (x0, x1) = add (x1, x0))
;;

testi (5) (let x0 = h (14) in add (x0, zero) = x0)
;;

testi (6) (let x0 = opp (add ((gen (14)), (h (15)))) in add (x0, zero) = x0)
;;

testi (7) (let x0 = gen (11) in add (x0, zero) = x0)
;;

testi (8) (let x0 = gen (12) in add (x0, zero) = x0)
;;

testi (9) (let x0 = h (22) in add (x0, zero) = x0)
;;

testi (10) (let x0 = add ((h (7)), (gen (13))) in add (x0, (opp x0)) = zero)
;;

testi (11) (let x0 = opp (gen (20)) in add (x0, (opp x0)) = zero)
;;

testi (12) (let x0 = gen (24) in add (x0, (opp x0)) = zero)
;;

testi (13) (let x0 = h (4) in add (x0, (opp x0)) = zero)
;;

testi (14) (let x0 = add ((gen (18)), (h (3))) in add (x0, (opp x0)) = zero)
;;

testi
  (15)
  (let x2 = add ((add ((h (1)), (h (57)))), (opp (gen (64)))) in
   let x1 = h (49) in
   let x0 = gen (56) in add ((add (x2, x1)), x0) = add (x2, (add (x1, x0))))
;;

testi
  (16)
  (let x2 = add ((add ((gen (64)), (gen (73)))), zero) in
   let x1 = h (38) in
   let x0 = gen (41) in add ((add (x2, x1)), x0) = add (x2, (add (x1, x0))))
;;

testi
  (17)
  (let x2 = h (49) in
   let x1 = add ((add ((h (1)), (h (57)))), (opp (gen (64)))) in
   let x0 = gen (34) in add ((add (x2, x1)), x0) = add (x2, (add (x1, x0))))
;;

testi
  (18)
  (let x2 = h (58) in
   let x1 = h (41) in
   let x0 = gen (25) in add ((add (x2, x1)), x0) = add (x2, (add (x1, x0))))
;;

testi
  (19)
  (let x2 = opp (opp (h (57))) in
   let x1 = gen (25) in
   let x0 = gen (44) in add ((add (x2, x1)), x0) = add (x2, (add (x1, x0))))
;;

testi (20) (let x0 = opp (gen (22)) in add (zero, x0) = x0)
;;

testi (21) (let x0 = opp zero in add (zero, x0) = x0)
;;

testi (22) (let x0 = gen (13) in add (zero, x0) = x0)
;;

testi
  (23)
  (let x0 = add ((add ((gen (23)), (gen (24)))), (opp (gen (1)))) in
   add (zero, x0) = x0)
;;

testi
  (24)
  (let x0 = add ((add ((gen (23)), (gen (24)))), (opp (gen (1)))) in
   add (zero, x0) = x0)
;;

testi
  (25)
  (let x0 = opp (add ((gen (11)), (gen (10)))) in add ((opp x0), x0) = zero)
;;

testi (26) (let x0 = gen (18) in add ((opp x0), x0) = zero)
;;

testi
  (27)
  (let x0 = add ((gen (17)), (add ((gen (13)), (h (9))))) in
   add ((opp x0), x0) = zero)
;;

testi
  (28)
  (let x0 = add ((gen (15)), (opp (gen (14)))) in add ((opp x0), x0) = zero)
;;

testi (29) (let x0 = gen (18) in add ((opp x0), x0) = zero)
;;

