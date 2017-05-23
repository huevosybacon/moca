open Morebool
;;

open Gentest
;;

testing ("Morebool (automatic) - seed: 395173289")
;;

testi
  (0)
  (let x0 = bnot (bnot (batom ("16"))) in
   let x1 = batom ("40") in band (x0, x1) = band (x1, x0))
;;

testi
  (1)
  (let x0 = bfalse in
   let x1 = bnot (bnot bfalse) in band (x0, x1) = band (x1, x0))
;;

testi
  (2)
  (let x0 = bnot (batom ("13")) in
   let x1 = batom ("40") in band (x0, x1) = band (x1, x0))
;;

testi
  (3)
  (let x0 = batom ("13") in
   let x1 = bnot (band ((batom ("19")), (batom ("44")))) in
   band (x0, x1) = band (x1, x0))
;;

testi
  (4)
  (let x0 = bnot (band ((batom ("19")), (batom ("44")))) in
   let x1 = bnot (bnot (batom ("16"))) in band (x0, x1) = band (x1, x0))
;;

