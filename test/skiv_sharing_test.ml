open Skiv_sharing
;;

open Gentest
;;

testing ("Skiv_sharing (automatic) - seed: 313583584")
;;

testi (0) (let x0 = app ((var ("14")), i) in app (i, x0) = x0)
;;

testi (1) (let x0 = app ((app (k, k)), s) in app (i, x0) = x0)
;;

testi (2) (let x0 = app ((app (k, (var ("8")))), s) in app (i, x0) = x0)
;;

testi (3) (let x0 = k in app (i, x0) = x0)
;;

testi (4) (let x0 = app ((var ("14")), i) in app (i, x0) = x0)
;;

testi
  (5)
  (let x3 = var ("21") in
   let x1 = var ("54") in
   let x0 = app ((var ("38")), (app ((var ("46")), (var ("7"))))) in
   app ((app ((app (s, x3)), x1)), x0) = app ((app (x3, x0)), (app (x1, x0))))
;;

testi
  (6)
  (let x3 = app ((app (s, (var ("2")))), (var ("63"))) in
   let x1 = app (i, (app ((var ("46")), (var ("7"))))) in
   let x0 = var ("54") in
   app ((app ((app (s, x3)), x1)), x0) = app ((app (x3, x0)), (app (x1, x0))))
;;

testi
  (7)
  (let x3 = var ("54") in
   let x1 = var ("21") in
   let x0 = var ("20") in
   app ((app ((app (s, x3)), x1)), x0) = app ((app (x3, x0)), (app (x1, x0))))
;;

testi
  (8)
  (let x3 = app ((var ("65")), (app ((var ("46")), (var ("7"))))) in
   let x1 = app ((app (s, (var ("2")))), (var ("63"))) in
   let x0 = app ((app ((var ("64")), (var ("38")))), (var ("63"))) in
   app ((app ((app (s, x3)), x1)), x0) = app ((app (x3, x0)), (app (x1, x0))))
;;

testi
  (9)
  (let x3 = var ("20") in
   let x1 = var ("21") in
   let x0 = var ("11") in
   app ((app ((app (s, x3)), x1)), x0) = app ((app (x3, x0)), (app (x1, x0))))
;;

testi
  (10)
  (let x0 = var ("41") in
   let x1 =
     app
       ((app ((var ("13")), (var ("8")))), (app ((var ("3")), (var ("1"))))) in
   app ((app (k, x0)), x1) = x0)
;;

testi
  (11)
  (let x0 = var ("42") in
   let x1 = app ((app ((var ("13")), (var ("8")))), (var ("37"))) in
   app ((app (k, x0)), x1) = x0)
;;

testi
  (12)
  (let x0 = var ("41") in let x1 = var ("49") in app ((app (k, x0)), x1) = x0)
;;

testi
  (13)
  (let x0 = var ("41") in let x1 = var ("41") in app ((app (k, x0)), x1) = x0)
;;

testi
  (14)
  (let x0 = var ("49") in
   let x1 = app ((app ((var ("13")), (var ("8")))), (var ("13"))) in
   app ((app (k, x0)), x1) = x0)
;;

testi (15) (let x0 = var ("17") in app ((app (s, k)), x0) = i)
;;

testi (16) (let x0 = var ("17") in app ((app (s, k)), x0) = i)
;;

testi
  (17)
  (let x0 = app ((app ((var ("18")), k)), (var ("24"))) in
   app ((app (s, k)), x0) = i)
;;

testi (18) (let x0 = s in app ((app (s, k)), x0) = i)
;;

testi (19) (let x0 = s in app ((app (s, k)), x0) = i)
;;

