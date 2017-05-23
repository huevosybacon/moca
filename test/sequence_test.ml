open Sequence
;;

open Gentest
;;

testing ("Sequence (automatic) - seed: 682060712")
;;

testi
  (0)
  (let x0 = concat ((element (18)), empty) in concat (x0, empty) = x0)
;;

testi
  (1)
  (let x0 = concat ((element (18)), empty) in concat (x0, empty) = x0)
;;

testi
  (2)
  (let x0 = concat ((element (18)), empty) in concat (x0, empty) = x0)
;;

testi (3) (let x0 = element (9) in concat (x0, empty) = x0)
;;

testi (4) (let x0 = element (15) in concat (x0, empty) = x0)
;;

testi
  (5)
  (let x2 =
     concat
       ((concat ((element (69)), (element (72)))),
        (concat ((element (50)), (element (57))))) in
   let x1 = element (22) in
   let x0 =
     concat
       ((concat ((element (69)), (element (72)))),
        (concat ((element (50)), (element (57))))) in
   concat ((concat (x2, x1)), x0) = concat (x2, (concat (x1, x0))))
;;

testi
  (6)
  (let x2 = element (3) in
   let x1 = concat ((element (59)), (element (8))) in
   let x0 = element (44) in
   concat ((concat (x2, x1)), x0) = concat (x2, (concat (x1, x0))))
;;

testi
  (7)
  (let x2 = concat ((concat ((element (48)), empty)), (element (13))) in
   let x1 = element (62) in
   let x0 =
     concat ((element (59)), (concat ((element (50)), (element (31))))) in
   concat ((concat (x2, x1)), x0) = concat (x2, (concat (x1, x0))))
;;

testi
  (8)
  (let x2 = element (25) in
   let x1 = element (10) in
   let x0 = element (3) in
   concat ((concat (x2, x1)), x0) = concat (x2, (concat (x1, x0))))
;;

testi
  (9)
  (let x2 =
     concat
       ((concat ((element (74)), (element (58)))),
        (concat ((element (50)), (element (31))))) in
   let x1 = element (3) in
   let x0 = element (22) in
   concat ((concat (x2, x1)), x0) = concat (x2, (concat (x1, x0))))
;;

testi
  (10)
  (let x0 = concat ((concat (empty, (element (21)))), (element (15))) in
   concat (empty, x0) = x0)
;;

testi (11) (let x0 = element (22) in concat (empty, x0) = x0)
;;

testi (12) (let x0 = element (4) in concat (empty, x0) = x0)
;;

testi
  (13)
  (let x0 = concat ((element (1)), (element (10))) in concat (empty, x0) = x0)
;;

testi (14) (let x0 = empty in concat (empty, x0) = x0)
;;

