open Multiset_sharing
;;

open Gentest
;;

testing ("Multiset_sharing (automatic) - seed: 455690413")
;;

testi
  (0)
  (let x0 = union ((singleton (14)), empty) in
   let x1 =
     union ((union ((singleton (39)), (singleton (36)))), (singleton (28))) in
   union (x0, x1) = union (x1, x0))
;;

testi
  (1)
  (let x0 = singleton (18) in
   let x1 = empty in union (x0, x1) = union (x1, x0))
;;

testi
  (2)
  (let x0 = union ((union ((singleton (39)), (singleton (36)))), empty) in
   let x1 = singleton (0) in union (x0, x1) = union (x1, x0))
;;

testi
  (3)
  (let x0 = union ((singleton (14)), empty) in
   let x1 = singleton (18) in union (x0, x1) = union (x1, x0))
;;

testi
  (4)
  (let x0 =
     union
       ((union (empty, (singleton (37)))),
        (union ((singleton (24)), (singleton (40))))) in
   let x1 = singleton (4) in union (x0, x1) = union (x1, x0))
;;

testi (5) (let x0 = singleton (8) in union (x0, empty) = x0)
;;

testi (6) (let x0 = singleton (20) in union (x0, empty) = x0)
;;

testi (7) (let x0 = singleton (20) in union (x0, empty) = x0)
;;

testi (8) (let x0 = singleton (13) in union (x0, empty) = x0)
;;

testi
  (9)
  (let x0 = union ((singleton (21)), (singleton (4))) in
   union (x0, empty) = x0)
;;

testi
  (10)
  (let x2 = singleton (13) in
   let x1 = singleton (58) in
   let x0 =
     union
       ((union ((singleton (48)), (singleton (71)))),
        (union ((singleton (64)), (singleton (45))))) in
   union ((union (x2, x1)), x0) = union (x2, (union (x1, x0))))
;;

testi
  (11)
  (let x2 =
     union ((singleton (6)), (union ((singleton (20)), (singleton (40))))) in
   let x1 =
     union
       ((union ((singleton (48)), (singleton (71)))),
        (union ((singleton (20)), (singleton (40))))) in
   let x0 = singleton (58) in
   union ((union (x2, x1)), x0) = union (x2, (union (x1, x0))))
;;

testi
  (12)
  (let x2 = singleton (49) in
   let x1 = union ((singleton (67)), (singleton (33))) in
   let x0 = singleton (58) in
   union ((union (x2, x1)), x0) = union (x2, (union (x1, x0))))
;;

testi
  (13)
  (let x2 =
     union
       ((union ((singleton (48)), (singleton (71)))),
        (union ((singleton (64)), (singleton (45))))) in
   let x1 =
     union ((singleton (6)), (union ((singleton (20)), (singleton (40))))) in
   let x0 =
     union
       ((union ((singleton (48)), (singleton (71)))),
        (union ((singleton (20)), (singleton (40))))) in
   union ((union (x2, x1)), x0) = union (x2, (union (x1, x0))))
;;

testi
  (14)
  (let x2 = union ((singleton (7)), (singleton (48))) in
   let x1 =
     union ((union ((singleton (33)), (singleton (6)))), (singleton (72))) in
   let x0 = singleton (12) in
   union ((union (x2, x1)), x0) = union (x2, (union (x1, x0))))
;;

testi (15) (let x0 = singleton (20) in union (empty, x0) = x0)
;;

testi (16) (let x0 = singleton (20) in union (empty, x0) = x0)
;;

testi
  (17)
  (let x0 =
     union ((union ((singleton (20)), (singleton (0)))), (singleton (3))) in
   union (empty, x0) = x0)
;;

testi (18) (let x0 = singleton (9) in union (empty, x0) = x0)
;;

testi (19) (let x0 = singleton (20) in union (empty, x0) = x0)
;;

