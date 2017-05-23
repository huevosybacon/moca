open Ski_sharing
;;

open Gentest
;;

testing ("Ski_sharing (automatic) - seed: 749984216")
;;

testi (0) (let x0 = app ((app (s, s)), (app (s, k))) in app (i, x0) = x0)
;;

testi (1) (let x0 = app (i, (app (k, k))) in app (i, x0) = x0)
;;

testi (2) (let x0 = app ((app (s, s)), (app (s, k))) in app (i, x0) = x0)
;;

testi (3) (let x0 = k in app (i, x0) = x0)
;;

testi (4) (let x0 = s in app (i, x0) = x0)
;;

testi
  (5)
  (let x3 = k in
   let x1 = app ((app (k, k)), (app (s, s))) in
   let x0 = app ((app (i, k)), (app (i, s))) in
   app ((app ((app (s, x3)), x1)), x0) = app ((app (x3, x0)), (app (x1, x0))))
;;

testi
  (6)
  (let x3 = app ((app (i, k)), (app (i, s))) in
   let x1 = app ((app (k, k)), (app (s, s))) in
   let x0 = app ((app (k, k)), (app (s, s))) in
   app ((app ((app (s, x3)), x1)), x0) = app ((app (x3, x0)), (app (x1, x0))))
;;

testi
  (7)
  (let x3 = app ((app (i, s)), (app (i, s))) in
   let x1 = app ((app (i, k)), (app (k, k))) in
   let x0 = app ((app (i, s)), (app (i, s))) in
   app ((app ((app (s, x3)), x1)), x0) = app ((app (x3, x0)), (app (x1, x0))))
;;

testi
  (8)
  (let x3 = app ((app (k, k)), (app (k, k))) in
   let x1 = app ((app (i, k)), (app (s, i))) in
   let x0 = k in
   app ((app ((app (s, x3)), x1)), x0) = app ((app (x3, x0)), (app (x1, x0))))
;;

testi
  (9)
  (let x3 = app ((app (s, s)), (app (k, k))) in
   let x1 = app ((app (k, k)), (app (s, i))) in
   let x0 = s in
   app ((app ((app (s, x3)), x1)), x0) = app ((app (x3, x0)), (app (x1, x0))))
;;

testi
  (10)
  (let x0 = app (i, (app (i, s))) in
   let x1 = app (k, (app (i, s))) in app ((app (k, x0)), x1) = x0)
;;

testi
  (11)
  (let x0 = app (i, (app (i, s))) in
   let x1 = app ((app (s, i)), (app (i, s))) in app ((app (k, x0)), x1) = x0)
;;

testi
  (12)
  (let x0 = app (i, (app (k, i))) in
   let x1 = app (i, (app (i, s))) in app ((app (k, x0)), x1) = x0)
;;

testi
  (13)
  (let x0 = app (i, (app (s, s))) in
   let x1 = app ((app (s, i)), (app (s, k))) in app ((app (k, x0)), x1) = x0)
;;

testi
  (14)
  (let x0 = app ((app (s, i)), (app (s, k))) in
   let x1 = app ((app (s, i)), (app (s, k))) in app ((app (k, x0)), x1) = x0)
;;

testi (15) (let x0 = app ((app (i, k)), s) in app ((app (s, k)), x0) = i)
;;

testi (16) (let x0 = i in app ((app (s, k)), x0) = i)
;;

testi (17) (let x0 = app ((app (i, k)), s) in app ((app (s, k)), x0) = i)
;;

testi (18) (let x0 = app ((app (i, k)), s) in app ((app (s, k)), x0) = i)
;;

testi
  (19)
  (let x0 = app ((app (i, k)), (app (s, k))) in app ((app (s, k)), x0) = i)
;;

