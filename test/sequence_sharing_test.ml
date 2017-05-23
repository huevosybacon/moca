open Sequence_sharing
;;

open Gentest
;;

testing ("Sequence_sharing (automatic) - seed: 997772842")
;;

testi (0) (let x0 = element (0) in concat (x0, empty) = x0)
;;

testi
  (1)
  (let x0 = concat ((concat (empty, (element (18)))), (element (18))) in
   concat (x0, empty) = x0)
;;

testi
  (2)
  (let x0 = concat ((element (15)), (element (18))) in
   concat (x0, empty) = x0)
;;

testi
  (3)
  (let x0 = concat (empty, (element (18))) in concat (x0, empty) = x0)
;;

testi (4) (let x0 = element (0) in concat (x0, empty) = x0)
;;

testi
  (5)
  (let x2 = concat ((element (3)), (concat (empty, (element (15))))) in
   let x1 = element (44) in
   let x0 =
     concat ((concat ((element (18)), (element (34)))), (element (63))) in
   concat ((concat (x2, x1)), x0) = concat (x2, (concat (x1, x0))))
;;

testi
  (6)
  (let x2 =
     concat ((concat ((element (18)), (element (34)))), (element (63))) in
   let x1 = element (25) in
   let x0 =
     concat ((element (59)), (concat ((element (45)), (element (53))))) in
   concat ((concat (x2, x1)), x0) = concat (x2, (concat (x1, x0))))
;;

testi
  (7)
  (let x2 = element (47) in
   let x1 = empty in
   let x0 = element (47) in
   concat ((concat (x2, x1)), x0) = concat (x2, (concat (x1, x0))))
;;

testi
  (8)
  (let x2 = element (25) in
   let x1 =
     concat ((concat ((element (18)), (element (34)))), (element (63))) in
   let x0 = element (6) in
   concat ((concat (x2, x1)), x0) = concat (x2, (concat (x1, x0))))
;;

testi
  (9)
  (let x2 = concat ((element (3)), (concat (empty, (element (15))))) in
   let x1 = empty in
   let x0 = element (74) in
   concat ((concat (x2, x1)), x0) = concat (x2, (concat (x1, x0))))
;;

testi
  (10)
  (let x0 = concat ((element (17)), (concat ((element (2)), (element (3))))) in
   concat (empty, x0) = x0)
;;

testi
  (11)
  (let x0 = concat ((concat ((element (21)), (element (1)))), (element (20))) in
   concat (empty, x0) = x0)
;;

testi
  (12)
  (let x0 = concat ((element (15)), (element (20))) in
   concat (empty, x0) = x0)
;;

testi
  (13)
  (let x0 = concat ((concat ((element (21)), (element (1)))), (element (20))) in
   concat (empty, x0) = x0)
;;

testi
  (14)
  (let x0 = concat ((concat ((element (21)), (element (1)))), (element (20))) in
   concat (empty, x0) = x0)
;;

