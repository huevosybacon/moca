open Set0_sharing
;;

open Gentest
;;

testing ("Set0_sharing (automatic) - seed: 260076184")
;;

testi
  (0)
  (let x1 = (0) in
   let x0 = empty in cons (x1, (cons (x1, x0))) = cons (x1, x0))
;;

testi
  (1)
  (let x1 = (21) in
   let x0 = cons ((1), (cons ((24), empty))) in
   cons (x1, (cons (x1, x0))) = cons (x1, x0))
;;

testi
  (2)
  (let x1 = (0) in
   let x0 = empty in cons (x1, (cons (x1, x0))) = cons (x1, x0))
;;

testi
  (3)
  (let x1 = (7) in
   let x0 = cons ((17), (cons ((4), empty))) in
   cons (x1, (cons (x1, x0))) = cons (x1, x0))
;;

testi
  (4)
  (let x1 = (13) in
   let x0 = cons ((21), (cons ((24), empty))) in
   cons (x1, (cons (x1, x0))) = cons (x1, x0))
;;

