open Peano
;;

open Gentest
;;

testing ("Peano (automatic) - seed: 656994759")
;;

testi (0) (let x0 = zero in plus (x0, zero) = x0)
;;

testi (1) (let x0 = succ (succ zero) in plus (x0, zero) = x0)
;;

testi (2) (let x0 = succ (plus (zero, zero)) in plus (x0, zero) = x0)
;;

testi
  (3)
  (let x0 = plus ((plus (zero, zero)), (plus (zero, zero))) in
   plus (x0, zero) = x0)
;;

testi
  (4)
  (let x0 = plus ((plus (zero, zero)), (succ zero)) in plus (x0, zero) = x0)
;;

testi
  (5)
  (let x2 = plus ((succ zero), (succ zero)) in
   let x1 = plus ((plus (zero, zero)), (succ zero)) in
   let x0 = plus ((succ zero), (plus (zero, zero))) in
   plus ((plus (x2, x1)), x0) = plus (x2, (plus (x1, x0))))
;;

testi
  (6)
  (let x2 = succ (succ zero) in
   let x1 = plus ((succ zero), (plus (zero, zero))) in
   let x0 = plus ((plus (zero, zero)), (plus (zero, zero))) in
   plus ((plus (x2, x1)), x0) = plus (x2, (plus (x1, x0))))
;;

testi
  (7)
  (let x2 = plus ((succ zero), (succ zero)) in
   let x1 = succ (succ zero) in
   let x0 = succ (succ zero) in
   plus ((plus (x2, x1)), x0) = plus (x2, (plus (x1, x0))))
;;

testi
  (8)
  (let x2 = plus ((plus (zero, zero)), (plus (zero, zero))) in
   let x1 = plus ((plus (zero, zero)), (plus (zero, zero))) in
   let x0 = succ (succ zero) in
   plus ((plus (x2, x1)), x0) = plus (x2, (plus (x1, x0))))
;;

testi
  (9)
  (let x2 = succ (succ zero) in
   let x1 = plus ((plus (zero, zero)), (plus (zero, zero))) in
   let x0 = succ (succ zero) in
   plus ((plus (x2, x1)), x0) = plus (x2, (plus (x1, x0))))
;;

testi (10) (let x0 = succ (succ zero) in plus (zero, x0) = x0)
;;

testi
  (11)
  (let x0 = plus ((plus (zero, zero)), (plus (zero, zero))) in
   plus (zero, x0) = x0)
;;

testi (12) (let x0 = succ zero in plus (zero, x0) = x0)
;;

testi
  (13)
  (let x0 = plus ((plus (zero, zero)), (succ zero)) in plus (zero, x0) = x0)
;;

testi (14) (let x0 = succ zero in plus (zero, x0) = x0)
;;

testi
  (15)
  (let x1 = plus ((plus (zero, zero)), (succ zero)) in
   let x0 = succ (succ zero) in plus ((succ x1), x0) = succ (plus (x1, x0)))
;;

testi
  (16)
  (let x1 = succ (plus (zero, zero)) in
   let x0 = plus ((plus (zero, zero)), (succ zero)) in
   plus ((succ x1), x0) = succ (plus (x1, x0)))
;;

testi
  (17)
  (let x1 = plus ((plus (zero, zero)), (succ zero)) in
   let x0 = succ (succ zero) in plus ((succ x1), x0) = succ (plus (x1, x0)))
;;

testi
  (18)
  (let x1 = plus ((plus (zero, zero)), (plus (zero, zero))) in
   let x0 = succ (succ zero) in plus ((succ x1), x0) = succ (plus (x1, x0)))
;;

testi
  (19)
  (let x1 = succ (succ zero) in
   let x0 = succ (succ zero) in plus ((succ x1), x0) = succ (plus (x1, x0)))
;;

