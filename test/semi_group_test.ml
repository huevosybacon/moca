open Semi_group
;;

open Gentest
;;

testing ("Semi_group (automatic) - seed: 177577803")
;;

testi
  (0)
  (let x2 = gen (42) in
   let x1 = mult ((gen (72)), (gen (45))) in
   let x0 = mult ((gen (72)), (mult ((gen (15)), (gen (59))))) in
   mult ((mult (x2, x1)), x0) = mult (x2, (mult (x1, x0))))
;;

testi
  (1)
  (let x2 = gen (42) in
   let x1 = gen (14) in
   let x0 = mult ((mult ((gen (22)), (gen (63)))), (gen (34))) in
   mult ((mult (x2, x1)), x0) = mult (x2, (mult (x1, x0))))
;;

testi
  (2)
  (let x2 = mult ((gen (43)), (mult ((gen (13)), (gen (59))))) in
   let x1 = gen (42) in
   let x0 =
     mult ((mult ((gen (22)), (gen (63)))), (mult ((gen (13)), (gen (59))))) in
   mult ((mult (x2, x1)), x0) = mult (x2, (mult (x1, x0))))
;;

testi
  (3)
  (let x2 = mult ((mult ((gen (22)), (gen (7)))), (gen (13))) in
   let x1 = gen (14) in
   let x0 = gen (14) in
   mult ((mult (x2, x1)), x0) = mult (x2, (mult (x1, x0))))
;;

testi
  (4)
  (let x2 = mult ((mult ((gen (22)), (gen (63)))), (gen (5))) in
   let x1 = gen (43) in
   let x0 = gen (20) in
   mult ((mult (x2, x1)), x0) = mult (x2, (mult (x1, x0))))
;;

