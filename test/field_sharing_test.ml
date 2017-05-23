open Field_sharing
;;

open Gentest
;;

testing ("Field_sharing (automatic) - seed: 900795178")
;;

testi
  (0)
  (try
   (let x0 = kProd ((kAdd (kZero, kOne)), (kAdd (kZero, kOne))) in
    let x1 = kAdd ((kAdd (kZero, kOne)), (kAdd (kZero, kZero))) in
    kAdd (x0, x1) = kAdd (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (1)
  (try
   (let x0 = kProd ((kProd (kOne, kZero)), (kAdd (kZero, kOne))) in
    let x1 = kProd ((kAdd (kZero, kOne)), (kProd (kOne, kZero))) in
    kAdd (x0, x1) = kAdd (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (2)
  (try
   (let x0 = kProd ((kAdd (kOne, kOne)), (kAdd (kOne, kZero))) in
    let x1 = kProd (kOne, (kAdd (kOne, kZero))) in
    kAdd (x0, x1) = kAdd (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (3)
  (try
   (let x0 = kOne in
    let x1 = kAdd ((kAdd (kZero, kOne)), (kAdd (kZero, kZero))) in
    kAdd (x0, x1) = kAdd (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (4)
  (try
   (let x0 = kProd ((kAdd (kZero, kOne)), (kAdd (kOne, kZero))) in
    let x1 = kOne in kAdd (x0, x1) = kAdd (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (5)
  (try
   (let x0 = kProd ((kProd (kZero, kZero)), (kProd (kZero, kOne))) in
    kAdd (x0, kZero) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (6)
  (try
   (let x0 = kProd ((kProd (kZero, kZero)), (kAdd (kOne, kZero))) in
    kAdd (x0, kZero) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (7)
  (try
   (let x0 = kAdd ((kAdd (kZero, kOne)), (kProd (kZero, kZero))) in
    kAdd (x0, kZero) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (8)
  (try
   (let x0 = kAdd ((kProd (kZero, kOne)), (kProd (kZero, kZero))) in
    kAdd (x0, kZero) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (9)
  (try
   (let x0 = kProd ((kProd (kZero, kZero)), (kProd (kZero, kOne))) in
    kAdd (x0, kZero) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (10)
  (try
   (let x2 = kProd ((kAdd (kOne, kOne)), (kAdd (kZero, kOne))) in
    let x1 = kAdd ((kProd (kOne, kZero)), (kProd (kZero, kZero))) in
    let x0 = kProd (kZero, (kAdd (kZero, kOne))) in
    kAdd ((kAdd (x2, x1)), x0) = kAdd (x2, (kAdd (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (11)
  (try
   (let x2 = kProd ((kAdd (kZero, kZero)), kOne) in
    let x1 = kAdd ((kAdd (kOne, kZero)), (kAdd (kZero, kOne))) in
    let x0 = kProd (kZero, (kAdd (kZero, kOne))) in
    kAdd ((kAdd (x2, x1)), x0) = kAdd (x2, (kAdd (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (12)
  (try
   (let x2 = kProd ((kProd (kZero, kOne)), (kAdd (kZero, kOne))) in
    let x1 = kProd ((kProd (kZero, kOne)), (kAdd (kOne, kOne))) in
    let x0 = kAdd ((kAdd (kZero, kZero)), kOne) in
    kAdd ((kAdd (x2, x1)), x0) = kAdd (x2, (kAdd (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (13)
  (try
   (let x2 = kProd ((kProd (kZero, kOne)), (kProd (kOne, kZero))) in
    let x1 = kAdd ((kAdd (kOne, kZero)), (kAdd (kZero, kOne))) in
    let x0 = kProd (kZero, (kAdd (kZero, kOne))) in
    kAdd ((kAdd (x2, x1)), x0) = kAdd (x2, (kAdd (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (14)
  (try
   (let x2 = kProd ((kAdd (kZero, kZero)), (kProd (kOne, kZero))) in
    let x1 = kAdd ((kAdd (kOne, kZero)), (kAdd (kZero, kZero))) in
    let x0 = kAdd ((kProd (kZero, kOne)), kOne) in
    kAdd ((kAdd (x2, x1)), x0) = kAdd (x2, (kAdd (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (15)
  (try
   (let x0 = kAdd ((kProd (kZero, kOne)), (kProd (kZero, kOne))) in
    kAdd (kZero, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (16)
  (try
   (let x0 = kProd ((kProd (kZero, kOne)), (kProd (kZero, kOne))) in
    kAdd (kZero, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (17)
  (try
   (let x0 = kProd ((kAdd (kZero, kOne)), (kProd (kZero, kOne))) in
    kAdd (kZero, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (18)
  (try (let x0 = kAdd (kOne, (kProd (kZero, kOne))) in kAdd (kZero, x0) = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (19)
  (try (let x0 = kAdd (kOne, (kProd (kZero, kOne))) in kAdd (kZero, x0) = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (20)
  (try
   (let x0 = kProd ((kAdd (kZero, kZero)), (kAdd (kOne, kOne))) in
    let x1 = kAdd ((kProd (kZero, kOne)), (kAdd (kZero, kOne))) in
    kProd (x0, x1) = kProd (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (21)
  (try
   (let x0 = kAdd ((kProd (kZero, kOne)), (kProd (kZero, kOne))) in
    let x1 = kProd (kZero, (kAdd (kOne, kZero))) in
    kProd (x0, x1) = kProd (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (22)
  (try
   (let x0 = kAdd ((kProd (kOne, kZero)), (kProd (kZero, kOne))) in
    let x1 = kAdd ((kAdd (kOne, kOne)), (kProd (kZero, kZero))) in
    kProd (x0, x1) = kProd (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (23)
  (try
   (let x0 = kAdd ((kAdd (kZero, kOne)), (kProd (kZero, kOne))) in
    let x1 = kAdd ((kProd (kZero, kOne)), (kAdd (kZero, kOne))) in
    kProd (x0, x1) = kProd (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (24)
  (try
   (let x0 = kAdd ((kProd (kZero, kOne)), (kAdd (kZero, kOne))) in
    let x1 = kProd ((kAdd (kOne, kZero)), (kAdd (kOne, kOne))) in
    kProd (x0, x1) = kProd (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (25)
  (try
   (let x0 = kAdd ((kProd (kOne, kZero)), (kAdd (kOne, kOne))) in
    kProd (x0, kZero) = kZero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (26)
  (try
   (let x0 = kProd (kOne, (kProd (kOne, kZero))) in kProd (x0, kZero) = kZero)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (27)
  (try
   (let x0 = kAdd ((kAdd (kOne, kZero)), (kProd (kOne, kOne))) in
    kProd (x0, kZero) = kZero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (28)
  (try
   (let x0 = kProd ((kProd (kOne, kOne)), (kProd (kOne, kZero))) in
    kProd (x0, kZero) = kZero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (29)
  (try
   (let x0 = kProd ((kProd (kOne, kOne)), (kAdd (kZero, kOne))) in
    kProd (x0, kZero) = kZero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (30)
  (try
   (let x0 = kAdd ((kProd (kZero, kZero)), (kProd (kOne, kZero))) in
    kProd (x0, kOne) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (31)
  (try
   (let x0 = kAdd ((kProd (kZero, kZero)), (kProd (kOne, kZero))) in
    kProd (x0, kOne) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (32)
  (try
   (let x0 = kProd (kZero, (kAdd (kZero, kOne))) in kProd (x0, kOne) = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (33)
  (try
   (let x0 = kAdd ((kProd (kZero, kZero)), (kProd (kOne, kZero))) in
    kProd (x0, kOne) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (34)
  (try
   (let x0 = kProd (kZero, (kProd (kZero, kZero))) in kProd (x0, kOne) = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (35)
  (try
   (let x1 = kAdd ((kAdd (kZero, kOne)), (kAdd (kZero, kOne))) in
    let x2 = kAdd ((kAdd (kZero, kOne)), (kAdd (kOne, kZero))) in
    let x0 = kAdd ((kProd (kOne, kOne)), (kProd (kOne, kZero))) in
    kProd (x1, (kAdd (x2, x0))) = kAdd ((kProd (x1, x2)), (kProd (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (36)
  (try
   (let x1 = kAdd ((kAdd (kZero, kOne)), (kAdd (kOne, kZero))) in
    let x2 = kProd ((kProd (kZero, kZero)), (kAdd (kZero, kOne))) in
    let x0 = kProd ((kAdd (kZero, kOne)), (kAdd (kOne, kOne))) in
    kProd (x1, (kAdd (x2, x0))) = kAdd ((kProd (x1, x2)), (kProd (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (37)
  (try
   (let x1 = kAdd ((kAdd (kZero, kOne)), (kProd (kZero, kOne))) in
    let x2 = kProd ((kAdd (kOne, kZero)), (kProd (kOne, kZero))) in
    let x0 = kZero in
    kProd (x1, (kAdd (x2, x0))) = kAdd ((kProd (x1, x2)), (kProd (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (38)
  (try
   (let x1 = kProd (kOne, (kProd (kOne, kZero))) in
    let x2 = kAdd ((kProd (kZero, kZero)), (kAdd (kOne, kZero))) in
    let x0 = kAdd ((kProd (kZero, kOne)), (kAdd (kZero, kOne))) in
    kProd (x1, (kAdd (x2, x0))) = kAdd ((kProd (x1, x2)), (kProd (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (39)
  (try
   (let x1 = kAdd ((kProd (kZero, kOne)), (kProd (kOne, kZero))) in
    let x2 = kProd ((kAdd (kZero, kOne)), (kAdd (kOne, kOne))) in
    let x0 = kAdd ((kAdd (kZero, kOne)), (kProd (kZero, kOne))) in
    kProd (x1, (kAdd (x2, x0))) = kAdd ((kProd (x1, x2)), (kProd (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (40)
  (try
   (let x3 = kProd ((kProd (kZero, kZero)), (kAdd (kOne, kZero))) in
    let x1 = kAdd ((kAdd (kZero, kZero)), (kAdd (kOne, kOne))) in
    let x0 = kAdd ((kProd (kZero, kZero)), (kAdd (kZero, kOne))) in
    kProd ((kAdd (x3, x1)), x0) = kAdd ((kProd (x3, x0)), (kProd (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (41)
  (try
   (let x3 = kZero in
    let x1 = kAdd ((kProd (kZero, kOne)), (kAdd (kZero, kOne))) in
    let x0 = kProd (kZero, (kAdd (kOne, kZero))) in
    kProd ((kAdd (x3, x1)), x0) = kAdd ((kProd (x3, x0)), (kProd (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (42)
  (try
   (let x3 = kAdd ((kProd (kZero, kOne)), (kAdd (kZero, kOne))) in
    let x1 = kProd ((kAdd (kOne, kZero)), (kAdd (kOne, kZero))) in
    let x0 = kProd ((kProd (kOne, kOne)), (kProd (kOne, kOne))) in
    kProd ((kAdd (x3, x1)), x0) = kAdd ((kProd (x3, x0)), (kProd (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (43)
  (try
   (let x3 = kProd ((kProd (kZero, kZero)), (kAdd (kOne, kZero))) in
    let x1 = kAdd ((kProd (kZero, kZero)), kOne) in
    let x0 = kAdd ((kProd (kZero, kZero)), kOne) in
    kProd ((kAdd (x3, x1)), x0) = kAdd ((kProd (x3, x0)), (kProd (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (44)
  (try
   (let x3 = kZero in
    let x1 = kProd (kZero, (kAdd (kOne, kOne))) in
    let x0 = kAdd ((kProd (kOne, kOne)), (kAdd (kOne, kOne))) in
    kProd ((kAdd (x3, x1)), x0) = kAdd ((kProd (x3, x0)), (kProd (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (45)
  (try (let x0 = kZero in kProd (kZero, x0) = kZero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (46)
  (try (let x0 = kZero in kProd (kZero, x0) = kZero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (47)
  (try
   (let x0 = kAdd ((kAdd (kZero, kZero)), (kAdd (kOne, kZero))) in
    kProd (kZero, x0) = kZero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (48)
  (try
   (let x0 = kAdd ((kAdd (kZero, kOne)), (kAdd (kZero, kOne))) in
    kProd (kZero, x0) = kZero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (49)
  (try
   (let x0 = kAdd (kZero, (kAdd (kZero, kOne))) in kProd (kZero, x0) = kZero)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (50)
  (try
   (let x2 = kProd ((kProd (kOne, kZero)), (kAdd (kZero, kOne))) in
    let x1 = kAdd ((kAdd (kOne, kZero)), (kAdd (kZero, kOne))) in
    let x0 = kAdd (kOne, (kProd (kOne, kOne))) in
    kProd ((kProd (x2, x1)), x0) = kProd (x2, (kProd (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (51)
  (try
   (let x2 = kProd ((kAdd (kOne, kZero)), kZero) in
    let x1 = kAdd ((kAdd (kOne, kZero)), (kAdd (kZero, kOne))) in
    let x0 = kOne in
    kProd ((kProd (x2, x1)), x0) = kProd (x2, (kProd (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (52)
  (try
   (let x2 = kProd ((kAdd (kZero, kZero)), kZero) in
    let x1 = kProd ((kProd (kOne, kZero)), (kAdd (kZero, kZero))) in
    let x0 = kProd ((kAdd (kOne, kZero)), (kAdd (kZero, kOne))) in
    kProd ((kProd (x2, x1)), x0) = kProd (x2, (kProd (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (53)
  (try
   (let x2 = kZero in
    let x1 = kAdd ((kAdd (kOne, kOne)), (kProd (kZero, kZero))) in
    let x0 = kAdd ((kAdd (kOne, kOne)), (kProd (kOne, kZero))) in
    kProd ((kProd (x2, x1)), x0) = kProd (x2, (kProd (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (54)
  (try
   (let x2 = kAdd ((kAdd (kZero, kZero)), (kProd (kZero, kOne))) in
    let x1 = kProd ((kProd (kZero, kZero)), (kAdd (kOne, kZero))) in
    let x0 = kAdd ((kAdd (kOne, kZero)), (kAdd (kOne, kZero))) in
    kProd ((kProd (x2, x1)), x0) = kProd (x2, (kProd (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (55)
  (try (let x0 = kAdd ((kAdd (kZero, kZero)), kOne) in kProd (kOne, x0) = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (56)
  (try
   (let x0 = kProd ((kProd (kZero, kOne)), (kAdd (kZero, kZero))) in
    kProd (kOne, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (57)
  (try
   (let x0 = kProd ((kProd (kOne, kZero)), (kProd (kOne, kZero))) in
    kProd (kOne, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (58)
  (try
   (let x0 = kProd ((kProd (kZero, kOne)), (kProd (kOne, kZero))) in
    kProd (kOne, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (59)
  (try
   (let x0 = kProd ((kProd (kZero, kOne)), (kProd (kOne, kZero))) in
    kProd (kOne, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

