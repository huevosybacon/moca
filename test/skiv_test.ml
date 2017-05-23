open Skiv
;;

open Gentest
;;

testing ("Skiv (automatic) - seed: 1028426353")
;;

testi (0) (let x0 = var ("24") in app (i, x0) = x0)
;;

testi (1) (let x0 = app ((var ("1")), (var ("20"))) in app (i, x0) = x0)
;;

testi (2) (let x0 = i in app (i, x0) = x0)
;;

testi (3) (let x0 = var ("24") in app (i, x0) = x0)
;;

testi (4) (let x0 = var ("18") in app (i, x0) = x0)
;;

testi
  (5)
  (let x3 = var ("74") in
   let x1 = app ((var ("4")), (var ("64"))) in
   let x0 = app ((var ("33")), s) in
   app ((app ((app (s, x3)), x1)), x0) = app ((app (x3, x0)), (app (x1, x0))))
;;

testi
  (6)
  (let x3 = app ((var ("33")), s) in
   let x1 =
     app
       ((app ((var ("63")), (var ("11")))), (app ((var ("8")), (var ("41"))))) in
   let x0 = var ("66") in
   app ((app ((app (s, x3)), x1)), x0) = app ((app (x3, x0)), (app (x1, x0))))
;;

testi
  (7)
  (let x3 = var ("66") in
   let x1 = app ((app ((var ("61")), i)), (app ((var ("32")), (var ("6"))))) in
   let x0 = var ("17") in
   app ((app ((app (s, x3)), x1)), x0) = app ((app (x3, x0)), (app (x1, x0))))
;;

testi
  (8)
  (let x3 = var ("28") in
   let x1 = app (s, s) in
   let x0 = app ((var ("33")), s) in
   app ((app ((app (s, x3)), x1)), x0) = app ((app (x3, x0)), (app (x1, x0))))
;;

testi
  (9)
  (let x3 = app ((var ("33")), (var ("73"))) in
   let x1 = var ("50") in
   let x0 = var ("17") in
   app ((app ((app (s, x3)), x1)), x0) = app ((app (x3, x0)), (app (x1, x0))))
;;

testi
  (10)
  (let x0 = app ((app (k, (var ("47")))), (app ((var ("11")), (var ("28"))))) in
   let x1 = app ((app ((var ("15")), (var ("9")))), (app (s, (var ("6"))))) in
   app ((app (k, x0)), x1) = x0)
;;

testi
  (11)
  (let x0 = var ("17") in let x1 = var ("3") in app ((app (k, x0)), x1) = x0)
;;

testi
  (12)
  (let x0 = var ("8") in let x1 = var ("3") in app ((app (k, x0)), x1) = x0)
;;

testi
  (13)
  (let x0 = app ((app (k, (var ("47")))), (app ((var ("11")), (var ("28"))))) in
   let x1 = app ((app ((var ("15")), (var ("9")))), (app (s, (var ("6"))))) in
   app ((app (k, x0)), x1) = x0)
;;

testi
  (14)
  (let x0 = app ((app (k, (var ("47")))), (app ((var ("11")), (var ("28"))))) in
   let x1 = var ("48") in app ((app (k, x0)), x1) = x0)
;;

testi (15) (let x0 = i in app ((app (s, k)), x0) = i)
;;

testi (16) (let x0 = s in app ((app (s, k)), x0) = i)
;;

testi (17) (let x0 = i in app ((app (s, k)), x0) = i)
;;

testi
  (18)
  (let x0 = app ((app ((var ("4")), s)), (var ("5"))) in
   app ((app (s, k)), x0) = i)
;;

testi
  (19)
  (let x0 = app ((app ((var ("4")), s)), (var ("12"))) in
   app ((app (s, k)), x0) = i)
;;

