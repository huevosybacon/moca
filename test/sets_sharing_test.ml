open Sets_sharing
;;

open Gentest
;;

testing ("Sets_sharing (automatic) - seed: 103888963")
;;

testi
  (0)
  (let x0 = singleton (35) in
   let x1 = singleton (28) in union (x0, x1) = union (x1, x0))
;;

testi
  (1)
  (let x0 =
     union
       ((union ((singleton (44)), (singleton (49)))),
        (union ((singleton (5)), (singleton (20))))) in
   let x1 =
     union
       ((union ((singleton (6)), (singleton (13)))),
        (union ((singleton (5)), (singleton (20))))) in
   union (x0, x1) = union (x1, x0))
;;

testi
  (2)
  (let x0 =
     union ((union ((singleton (43)), (singleton (13)))), (singleton (45))) in
   let x1 =
     union ((union ((singleton (44)), (singleton (49)))), (singleton (32))) in
   union (x0, x1) = union (x1, x0))
;;

testi
  (3)
  (let x0 = singleton (28) in
   let x1 = empty in union (x0, x1) = union (x1, x0))
;;

testi
  (4)
  (let x0 =
     union
       ((union ((singleton (44)), (singleton (49)))),
        (union ((singleton (23)), (singleton (3))))) in
   let x1 =
     union ((singleton (48)), (union ((singleton (5)), (singleton (20))))) in
   union (x0, x1) = union (x1, x0))
;;

testi (5) (let x0 = singleton (1) in union (x0, empty) = x0)
;;

testi (6) (let x0 = singleton (16) in union (x0, empty) = x0)
;;

testi (7) (let x0 = singleton (1) in union (x0, empty) = x0)
;;

testi
  (8)
  (let x0 = union ((singleton (10)), (singleton (14))) in
   union (x0, empty) = x0)
;;

testi (9) (let x0 = singleton (1) in union (x0, empty) = x0)
;;

testi
  (10)
  (let x1 =
     union ((union ((singleton (46)), (singleton (15)))), (singleton (6))) in
   let x0 =
     union ((singleton (38)), (union ((singleton (1)), (singleton (34))))) in
   union (x1, (union (x1, x0))) = union (x1, x0))
;;

testi
  (11)
  (let x1 = singleton (17) in
   let x0 = singleton (36) in union (x1, (union (x1, x0))) = union (x1, x0))
;;

testi
  (12)
  (let x1 =
     union ((singleton (1)), (union ((singleton (1)), (singleton (33))))) in
   let x0 = singleton (19) in union (x1, (union (x1, x0))) = union (x1, x0))
;;

testi
  (13)
  (let x1 =
     union
       ((union ((singleton (46)), (singleton (15)))),
        (union ((singleton (1)), (singleton (33))))) in
   let x0 = singleton (17) in union (x1, (union (x1, x0))) = union (x1, x0))
;;

testi
  (14)
  (let x1 = singleton (36) in
   let x0 =
     union
       ((union ((singleton (46)), (singleton (14)))),
        (union ((singleton (46)), (singleton (34))))) in
   union (x1, (union (x1, x0))) = union (x1, x0))
;;

testi
  (15)
  (let x1 = union (empty, empty) in
   let x0 = singleton (44) in union ((union (x1, x0)), x0) = union (x1, x0))
;;

testi
  (16)
  (let x1 = singleton (4) in
   let x0 = union ((singleton (22)), (singleton (47))) in
   union ((union (x1, x0)), x0) = union (x1, x0))
;;

testi
  (17)
  (let x1 = singleton (8) in
   let x0 = union ((singleton (26)), empty) in
   union ((union (x1, x0)), x0) = union (x1, x0))
;;

testi
  (18)
  (let x1 = singleton (4) in
   let x0 = singleton (47) in union ((union (x1, x0)), x0) = union (x1, x0))
;;

testi
  (19)
  (let x1 = union (empty, (union ((singleton (29)), (singleton (27))))) in
   let x0 = singleton (4) in union ((union (x1, x0)), x0) = union (x1, x0))
;;

testi
  (20)
  (let x2 =
     union
       ((union ((singleton (67)), (singleton (28)))),
        (union ((singleton (16)), (singleton (2))))) in
   let x1 = union ((singleton (53)), (singleton (71))) in
   let x0 = empty in
   union ((union (x2, x1)), x0) = union (x2, (union (x1, x0))))
;;

testi
  (21)
  (let x2 = union ((union (empty, (singleton (53)))), (singleton (20))) in
   let x1 = singleton (14) in
   let x0 = union ((singleton (53)), empty) in
   union ((union (x2, x1)), x0) = union (x2, (union (x1, x0))))
;;

testi
  (22)
  (let x2 = union (empty, (singleton (71))) in
   let x1 = singleton (1) in
   let x0 = singleton (57) in
   union ((union (x2, x1)), x0) = union (x2, (union (x1, x0))))
;;

testi
  (23)
  (let x2 = union ((singleton (53)), (singleton (71))) in
   let x1 =
     union ((union ((singleton (67)), (singleton (28)))), (singleton (71))) in
   let x0 = union ((singleton (72)), (singleton (71))) in
   union ((union (x2, x1)), x0) = union (x2, (union (x1, x0))))
;;

testi
  (24)
  (let x2 = singleton (1) in
   let x1 = singleton (13) in
   let x0 = union ((singleton (53)), (singleton (71))) in
   union ((union (x2, x1)), x0) = union (x2, (union (x1, x0))))
;;

testi (25) (let x0 = singleton (12) in union (empty, x0) = x0)
;;

testi
  (26)
  (let x0 =
     union
       ((union ((singleton (7)), (singleton (18)))),
        (union ((singleton (2)), (singleton (8))))) in
   union (empty, x0) = x0)
;;

testi (27) (let x0 = singleton (20) in union (empty, x0) = x0)
;;

testi
  (28)
  (let x0 =
     union
       ((union ((singleton (7)), (singleton (18)))),
        (union ((singleton (15)), (singleton (8))))) in
   union (empty, x0) = x0)
;;

testi (29) (let x0 = singleton (12) in union (empty, x0) = x0)
;;

