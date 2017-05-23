open Sets
;;

open Gentest
;;

testing ("Sets (automatic) - seed: 81333590")
;;

testi
  (0)
  (let x0 = singleton (39) in
   let x1 =
     union ((union ((singleton (10)), (singleton (47)))), (singleton (27))) in
   union (x0, x1) = union (x1, x0))
;;

testi
  (1)
  (let x0 = singleton (28) in
   let x1 =
     union
       ((union ((singleton (10)), (singleton (47)))),
        (union ((singleton (35)), (singleton (23))))) in
   union (x0, x1) = union (x1, x0))
;;

testi
  (2)
  (let x0 = union ((union (empty, (singleton (10)))), (singleton (27))) in
   let x1 = singleton (45) in union (x0, x1) = union (x1, x0))
;;

testi
  (3)
  (let x0 = singleton (28) in
   let x1 = empty in union (x0, x1) = union (x1, x0))
;;

testi
  (4)
  (let x0 = singleton (32) in
   let x1 = singleton (28) in union (x0, x1) = union (x1, x0))
;;

testi
  (5)
  (let x0 = union ((union ((singleton (17)), empty)), (singleton (12))) in
   union (x0, empty) = x0)
;;

testi
  (6)
  (let x0 =
     union ((singleton (14)), (union ((singleton (14)), (singleton (24))))) in
   union (x0, empty) = x0)
;;

testi
  (7)
  (let x0 =
     union ((singleton (14)), (union ((singleton (14)), (singleton (24))))) in
   union (x0, empty) = x0)
;;

testi
  (8)
  (let x0 =
     union ((union ((singleton (0)), (singleton (24)))), (singleton (11))) in
   union (x0, empty) = x0)
;;

testi
  (9)
  (let x0 =
     union
       ((union ((singleton (0)), (singleton (24)))),
        (union ((singleton (14)), (singleton (24))))) in
   union (x0, empty) = x0)
;;

testi
  (10)
  (let x1 =
     union ((singleton (41)), (union ((singleton (18)), (singleton (13))))) in
   let x0 =
     union
       ((union ((singleton (25)), (singleton (42)))),
        (union ((singleton (0)), (singleton (22))))) in
   union (x1, (union (x1, x0))) = union (x1, x0))
;;

testi
  (11)
  (let x1 =
     union
       ((union ((singleton (25)), (singleton (42)))),
        (union ((singleton (15)), (singleton (8))))) in
   let x0 = singleton (13) in union (x1, (union (x1, x0))) = union (x1, x0))
;;

testi
  (12)
  (let x1 =
     union
       ((union ((singleton (25)), (singleton (42)))),
        (union ((singleton (15)), (singleton (8))))) in
   let x0 = union ((singleton (15)), (singleton (0))) in
   union (x1, (union (x1, x0))) = union (x1, x0))
;;

testi
  (13)
  (let x1 =
     union ((singleton (15)), (union ((singleton (18)), (singleton (13))))) in
   let x0 = singleton (32) in union (x1, (union (x1, x0))) = union (x1, x0))
;;

testi
  (14)
  (let x1 =
     union ((singleton (15)), (union ((singleton (18)), (singleton (13))))) in
   let x0 = singleton (32) in union (x1, (union (x1, x0))) = union (x1, x0))
;;

testi
  (15)
  (let x1 = singleton (43) in
   let x0 =
     union ((singleton (26)), (union ((singleton (22)), (singleton (30))))) in
   union ((union (x1, x0)), x0) = union (x1, x0))
;;

testi
  (16)
  (let x1 = singleton (18) in
   let x0 = singleton (43) in union ((union (x1, x0)), x0) = union (x1, x0))
;;

testi
  (17)
  (let x1 =
     union
       ((union ((singleton (16)), empty)),
        (union ((singleton (45)), (singleton (34))))) in
   let x0 = empty in union ((union (x1, x0)), x0) = union (x1, x0))
;;

testi
  (18)
  (let x1 =
     union
       ((union ((singleton (16)), empty)),
        (union ((singleton (22)), (singleton (30))))) in
   let x0 =
     union ((singleton (26)), (union ((singleton (22)), (singleton (30))))) in
   union ((union (x1, x0)), x0) = union (x1, x0))
;;

testi
  (19)
  (let x1 = singleton (18) in
   let x0 =
     union
       ((union ((singleton (16)), empty)),
        (union ((singleton (22)), (singleton (30))))) in
   union ((union (x1, x0)), x0) = union (x1, x0))
;;

testi
  (20)
  (let x2 = singleton (0) in
   let x1 = singleton (68) in
   let x0 = singleton (64) in
   union ((union (x2, x1)), x0) = union (x2, (union (x1, x0))))
;;

testi
  (21)
  (let x2 = singleton (39) in
   let x1 = singleton (39) in
   let x0 = union ((singleton (22)), (singleton (73))) in
   union ((union (x2, x1)), x0) = union (x2, (union (x1, x0))))
;;

testi
  (22)
  (let x2 = singleton (24) in
   let x1 = singleton (28) in
   let x0 =
     union ((singleton (52)), (union ((singleton (43)), (singleton (36))))) in
   union ((union (x2, x1)), x0) = union (x2, (union (x1, x0))))
;;

testi
  (23)
  (let x2 = union ((singleton (52)), (singleton (46))) in
   let x1 = union (empty, (singleton (10))) in
   let x0 =
     union ((singleton (52)), (union ((singleton (43)), (singleton (36))))) in
   union ((union (x2, x1)), x0) = union (x2, (union (x1, x0))))
;;

testi
  (24)
  (let x2 = singleton (39) in
   let x1 = singleton (74) in
   let x0 = singleton (28) in
   union ((union (x2, x1)), x0) = union (x2, (union (x1, x0))))
;;

testi (25) (let x0 = singleton (18) in union (empty, x0) = x0)
;;

testi (26) (let x0 = singleton (15) in union (empty, x0) = x0)
;;

testi (27) (let x0 = empty in union (empty, x0) = x0)
;;

testi
  (28)
  (let x0 = union ((singleton (4)), empty) in union (empty, x0) = x0)
;;

testi (29) (let x0 = singleton (21) in union (empty, x0) = x0)
;;

