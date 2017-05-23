open Set0
;;

open Gentest
;;

testing ("Set0 (automatic) - seed: 1059471454")
;;

testi
  (0)
  (let x1 = (9) in
   let x0 = cons ((12), (cons ((4), empty))) in
   cons (x1, (cons (x1, x0))) = cons (x1, x0))
;;

testi
  (1)
  (let x1 = (1) in
   let x0 = cons ((22), (cons ((4), empty))) in
   cons (x1, (cons (x1, x0))) = cons (x1, x0))
;;

testi
  (2)
  (let x1 = (15) in
   let x0 = cons ((12), (cons ((4), empty))) in
   cons (x1, (cons (x1, x0))) = cons (x1, x0))
;;

testi
  (3)
  (let x1 = (3) in
   let x0 = cons ((1), (cons ((4), empty))) in
   cons (x1, (cons (x1, x0))) = cons (x1, x0))
;;

testi
  (4)
  (let x1 = (17) in
   let x0 = empty in cons (x1, (cons (x1, x0))) = cons (x1, x0))
;;

