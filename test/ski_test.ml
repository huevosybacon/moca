open Ski
;;

open Gentest
;;

testing ("Ski (automatic) - seed: 577462749")
;;

testi (0) (let x0 = app (s, s) in app (i, x0) = x0)
;;

testi (1) (let x0 = app (i, (app (s, i))) in app (i, x0) = x0)
;;

testi (2) (let x0 = app (s, (app (s, i))) in app (i, x0) = x0)
;;

testi (3) (let x0 = s in app (i, x0) = x0)
;;

testi (4) (let x0 = app ((app (s, i)), i) in app (i, x0) = x0)
;;

testi
  (5)
  (let x3 = app ((app (k, k)), (app (i, s))) in
   let x1 = app ((app (s, s)), (app (k, k))) in
   let x0 = app ((app (s, s)), (app (i, s))) in
   app ((app ((app (s, x3)), x1)), x0) = app ((app (x3, x0)), (app (x1, x0))))
;;

testi
  (6)
  (let x3 = s in
   let x1 = app ((app (i, k)), (app (k, k))) in
   let x0 = app ((app (i, s)), (app (k, k))) in
   app ((app ((app (s, x3)), x1)), x0) = app ((app (x3, x0)), (app (x1, x0))))
;;

testi
  (7)
  (let x3 = app ((app (i, k)), s) in
   let x1 = app (i, k) in
   let x0 = app ((app (s, s)), (app (k, i))) in
   app ((app ((app (s, x3)), x1)), x0) = app ((app (x3, x0)), (app (x1, x0))))
;;

testi
  (8)
  (let x3 = app ((app (i, s)), (app (s, k))) in
   let x1 = app ((app (i, k)), s) in
   let x0 = i in
   app ((app ((app (s, x3)), x1)), x0) = app ((app (x3, x0)), (app (x1, x0))))
;;

testi
  (9)
  (let x3 = k in
   let x1 = app ((app (s, s)), (app (k, i))) in
   let x0 = app ((app (i, k)), (app (k, k))) in
   app ((app ((app (s, x3)), x1)), x0) = app ((app (x3, x0)), (app (x1, x0))))
;;

testi
  (10)
  (let x0 = app ((app (i, s)), (app (k, s))) in
   let x1 = app ((app (i, s)), (app (k, s))) in app ((app (k, x0)), x1) = x0)
;;

testi
  (11)
  (let x0 = app ((app (s, s)), s) in
   let x1 = k in app ((app (k, x0)), x1) = x0)
;;

testi
  (12)
  (let x0 = app (s, (app (k, s))) in
   let x1 = app (s, (app (k, s))) in app ((app (k, x0)), x1) = x0)
;;

testi
  (13)
  (let x0 = i in
   let x1 = app ((app (i, k)), (app (k, s))) in app ((app (k, x0)), x1) = x0)
;;

testi
  (14)
  (let x0 = app ((app (i, s)), (app (k, s))) in
   let x1 = app ((app (i, s)), (app (k, s))) in app ((app (k, x0)), x1) = x0)
;;

testi (15) (let x0 = i in app ((app (s, k)), x0) = i)
;;

testi (16) (let x0 = app (k, k) in app ((app (s, k)), x0) = i)
;;

testi (17) (let x0 = s in app ((app (s, k)), x0) = i)
;;

testi (18) (let x0 = app ((app (s, s)), s) in app ((app (s, k)), x0) = i)
;;

testi (19) (let x0 = app ((app (k, s)), i) in app ((app (s, k)), x0) = i)
;;

