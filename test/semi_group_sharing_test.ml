open Semi_group_sharing
;;

open Gentest
;;

testing ("Semi_group_sharing (automatic) - seed: 550310626")
;;

testi
  (0)
  (let x2 = mult ((mult ((gen (25)), (gen (23)))), (gen (49))) in
   let x1 = mult ((mult ((gen (25)), (gen (23)))), (gen (58))) in
   let x0 = mult ((gen (9)), (mult ((gen (17)), (gen (64))))) in
   mult ((mult (x2, x1)), x0) = mult (x2, (mult (x1, x0))))
;;

testi
  (1)
  (let x2 = gen (1) in
   let x1 =
     mult ((mult ((gen (56)), (gen (23)))), (mult ((gen (44)), (gen (64))))) in
   let x0 = gen (23) in
   mult ((mult (x2, x1)), x0) = mult (x2, (mult (x1, x0))))
;;

testi
  (2)
  (let x2 = gen (12) in
   let x1 = gen (12) in
   let x0 = mult ((gen (14)), (mult ((gen (44)), (gen (64))))) in
   mult ((mult (x2, x1)), x0) = mult (x2, (mult (x1, x0))))
;;

testi
  (3)
  (let x2 = mult ((gen (67)), (mult ((gen (17)), (gen (45))))) in
   let x1 = gen (41) in
   let x0 = mult ((gen (28)), (mult ((gen (44)), (gen (60))))) in
   mult ((mult (x2, x1)), x0) = mult (x2, (mult (x1, x0))))
;;

testi
  (4)
  (let x2 = gen (24) in
   let x1 = gen (33) in
   let x0 = mult ((gen (72)), (mult ((gen (17)), (gen (45))))) in
   mult ((mult (x2, x1)), x0) = mult (x2, (mult (x1, x0))))
;;

