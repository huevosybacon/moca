open Multiset
;;

open Gentest
;;

testing ("Multiset (automatic) - seed: 757558252")
;;

testi
  (0)
  (let x0 = union ((union ((singleton (13)), (singleton (24)))), empty) in
   let x1 = singleton (11) in union (x0, x1) = union (x1, x0))
;;

testi
  (1)
  (let x0 = singleton (42) in
   let x1 = union ((singleton (37)), (singleton (36))) in
   union (x0, x1) = union (x1, x0))
;;

testi
  (2)
  (let x0 =
     union ((union ((singleton (15)), (singleton (24)))), (singleton (36))) in
   let x1 = singleton (11) in union (x0, x1) = union (x1, x0))
;;

testi
  (3)
  (let x0 = empty in
   let x1 = union (empty, (union ((singleton (10)), empty))) in
   union (x0, x1) = union (x1, x0))
;;

testi
  (4)
  (let x0 = empty in
   let x1 = union (empty, (singleton (26))) in
   union (x0, x1) = union (x1, x0))
;;

testi (5) (let x0 = empty in union (x0, empty) = x0)
;;

testi (6) (let x0 = singleton (10) in union (x0, empty) = x0)
;;

testi
  (7)
  (let x0 = union ((union ((singleton (3)), empty)), (union (empty, empty))) in
   union (x0, empty) = x0)
;;

testi (8) (let x0 = singleton (10) in union (x0, empty) = x0)
;;

testi
  (9)
  (let x0 = union (empty, (union (empty, empty))) in union (x0, empty) = x0)
;;

testi
  (10)
  (let x2 = union ((singleton (25)), (singleton (62))) in
   let x1 = singleton (20) in
   let x0 = singleton (41) in
   union ((union (x2, x1)), x0) = union (x2, (union (x1, x0))))
;;

testi
  (11)
  (let x2 = union ((singleton (52)), (singleton (55))) in
   let x1 = singleton (36) in
   let x0 = singleton (53) in
   union ((union (x2, x1)), x0) = union (x2, (union (x1, x0))))
;;

testi
  (12)
  (let x2 = singleton (1) in
   let x1 =
     union ((singleton (25)), (union ((singleton (74)), (singleton (14))))) in
   let x0 =
     union ((union ((singleton (37)), (singleton (48)))), (singleton (22))) in
   union ((union (x2, x1)), x0) = union (x2, (union (x1, x0))))
;;

testi
  (13)
  (let x2 = singleton (41) in
   let x1 = singleton (20) in
   let x0 = singleton (53) in
   union ((union (x2, x1)), x0) = union (x2, (union (x1, x0))))
;;

testi
  (14)
  (let x2 = singleton (53) in
   let x1 =
     union ((union ((singleton (37)), (singleton (48)))), (singleton (22))) in
   let x0 = singleton (10) in
   union ((union (x2, x1)), x0) = union (x2, (union (x1, x0))))
;;

testi (15) (let x0 = singleton (22) in union (empty, x0) = x0)
;;

testi (16) (let x0 = empty in union (empty, x0) = x0)
;;

testi
  (17)
  (let x0 = union ((union (empty, (singleton (20)))), (singleton (8))) in
   union (empty, x0) = x0)
;;

testi
  (18)
  (let x0 = union ((singleton (10)), (singleton (7))) in
   union (empty, x0) = x0)
;;

testi (19) (let x0 = empty in union (empty, x0) = x0)
;;

