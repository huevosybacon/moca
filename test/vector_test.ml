open Vector
;;

open Gentest
;;

testing ("Vector (automatic) - seed: 496953642")
;;

open Field
;;

testi
  (0)
  (try
   (let x0 = vAdd ((vAdd (vZero, vZero)), (vDot (kZero, vZero))) in
    let x1 = vAdd ((vTensor (vZero, vZero)), (vDot (kZero, vZero))) in
    vAdd (x0, x1) = vAdd (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (1)
  (try
   (let x0 = vDot (kZero, (vTensor (vZero, vZero))) in
    let x1 = vDot ((kAdd (kOne, kZero)), (vDot (kZero, vZero))) in
    vAdd (x0, x1) = vAdd (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (2)
  (try
   (let x0 = vTensor ((vAdd (vZero, vZero)), (vAdd (vZero, vZero))) in
    let x1 = vAdd ((vDot (kOne, vZero)), (vDot (kZero, vZero))) in
    vAdd (x0, x1) = vAdd (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (3)
  (try
   (let x0 = vTensor ((vAdd (vZero, vZero)), (vDot (kOne, vZero))) in
    let x1 = vDot ((kProd (kZero, kZero)), (vAdd (vZero, vZero))) in
    vAdd (x0, x1) = vAdd (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (4)
  (try
   (let x0 = vTensor ((vAdd (vZero, vZero)), (vAdd (vZero, vZero))) in
    let x1 = vAdd ((vTensor (vZero, vZero)), (vAdd (vZero, vZero))) in
    vAdd (x0, x1) = vAdd (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (5)
  (try
   (let x0 = vDot ((kAdd (kOne, kOne)), (vDot (kOne, vZero))) in
    vAdd (x0, vZero) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (6)
  (try
   (let x0 = vTensor ((vDot (kOne, vZero)), (vDot (kOne, vZero))) in
    vAdd (x0, vZero) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (7)
  (try
   (let x0 = vAdd ((vDot (kOne, vZero)), (vDot (kOne, vZero))) in
    vAdd (x0, vZero) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (8)
  (try
   (let x0 = vTensor ((vDot (kOne, vZero)), (vTensor (vZero, vZero))) in
    vAdd (x0, vZero) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (9)
  (try (let x0 = vZero in vAdd (x0, vZero) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (10)
  (try
   (let x2 = vAdd ((vTensor (vZero, vZero)), (vDot (kOne, vZero))) in
    let x1 = vTensor ((vTensor (vZero, vZero)), (vAdd (vZero, vZero))) in
    let x0 = vAdd (vZero, (vDot (kOne, vZero))) in
    vAdd ((vAdd (x2, x1)), x0) = vAdd (x2, (vAdd (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (11)
  (try
   (let x2 = vAdd ((vDot (kOne, vZero)), (vAdd (vZero, vZero))) in
    let x1 = vTensor ((vTensor (vZero, vZero)), (vAdd (vZero, vZero))) in
    let x0 = vTensor ((vAdd (vZero, vZero)), (vDot (kOne, vZero))) in
    vAdd ((vAdd (x2, x1)), x0) = vAdd (x2, (vAdd (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (12)
  (try
   (let x2 = vTensor ((vTensor (vZero, vZero)), (vAdd (vZero, vZero))) in
    let x1 = vDot ((kAdd (kZero, kZero)), (vDot (kOne, vZero))) in
    let x0 = vAdd ((vDot (kZero, vZero)), (vAdd (vZero, vZero))) in
    vAdd ((vAdd (x2, x1)), x0) = vAdd (x2, (vAdd (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (13)
  (try
   (let x2 = vTensor ((vAdd (vZero, vZero)), vZero) in
    let x1 = vTensor ((vAdd (vZero, vZero)), (vTensor (vZero, vZero))) in
    let x0 = vDot ((kProd (kOne, kOne)), (vTensor (vZero, vZero))) in
    vAdd ((vAdd (x2, x1)), x0) = vAdd (x2, (vAdd (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (14)
  (try
   (let x2 = vAdd ((vAdd (vZero, vZero)), (vAdd (vZero, vZero))) in
    let x1 = vTensor ((vTensor (vZero, vZero)), (vTensor (vZero, vZero))) in
    let x0 = vDot ((kProd (kOne, kZero)), (vDot (kOne, vZero))) in
    vAdd ((vAdd (x2, x1)), x0) = vAdd (x2, (vAdd (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (15)
  (try
   (let x0 = vTensor ((vDot (kOne, vZero)), (vTensor (vZero, vZero))) in
    vAdd (vZero, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (16)
  (try (let x0 = vZero in vAdd (vZero, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (17)
  (try
   (let x0 = vDot ((kAdd (kOne, kOne)), (vDot (kOne, vZero))) in
    vAdd (vZero, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (18)
  (try
   (let x0 = vAdd ((vDot (kZero, vZero)), (vTensor (vZero, vZero))) in
    vAdd (vZero, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (19)
  (try
   (let x0 = vTensor ((vDot (kOne, vZero)), (vAdd (vZero, vZero))) in
    vAdd (vZero, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (20)
  (try (let x0 = kZero in vDot (x0, vZero) = vZero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (21)
  (try
   (let x0 = kProd ((kAdd (kOne, kOne)), kZero) in vDot (x0, vZero) = vZero)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (22)
  (try (let x0 = kOne in vDot (x0, vZero) = vZero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (23)
  (try
   (let x0 = kProd ((kProd (kOne, kZero)), (kProd (kZero, kZero))) in
    vDot (x0, vZero) = vZero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (24)
  (try
   (let x0 = kAdd ((kProd (kZero, kZero)), (kAdd (kOne, kZero))) in
    vDot (x0, vZero) = vZero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (25)
  (try
   (let x1 = kAdd ((kAdd (kZero, kOne)), (kProd (kOne, kOne))) in
    let x2 = vDot ((kAdd (kZero, kZero)), (vDot (kOne, vZero))) in
    let x0 = vTensor ((vTensor (vZero, vZero)), vZero) in
    vDot (x1, (vAdd (x2, x0))) = vAdd ((vDot (x1, x2)), (vDot (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (26)
  (try
   (let x1 = kAdd ((kAdd (kZero, kOne)), (kAdd (kOne, kZero))) in
    let x2 = vTensor ((vAdd (vZero, vZero)), (vTensor (vZero, vZero))) in
    let x0 = vTensor ((vAdd (vZero, vZero)), (vAdd (vZero, vZero))) in
    vDot (x1, (vAdd (x2, x0))) = vAdd ((vDot (x1, x2)), (vDot (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (27)
  (try
   (let x1 = kProd ((kAdd (kOne, kOne)), (kAdd (kZero, kZero))) in
    let x2 = vAdd ((vAdd (vZero, vZero)), (vDot (kOne, vZero))) in
    let x0 = vTensor ((vDot (kOne, vZero)), (vAdd (vZero, vZero))) in
    vDot (x1, (vAdd (x2, x0))) = vAdd ((vDot (x1, x2)), (vDot (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (28)
  (try
   (let x1 = kAdd ((kAdd (kZero, kOne)), (kProd (kZero, kZero))) in
    let x2 = vAdd ((vDot (kZero, vZero)), (vDot (kOne, vZero))) in
    let x0 = vDot ((kProd (kZero, kOne)), (vTensor (vZero, vZero))) in
    vDot (x1, (vAdd (x2, x0))) = vAdd ((vDot (x1, x2)), (vDot (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (29)
  (try
   (let x1 = kProd ((kAdd (kOne, kOne)), (kProd (kZero, kZero))) in
    let x2 = vAdd ((vDot (kZero, vZero)), (vAdd (vZero, vZero))) in
    let x0 = vAdd ((vDot (kOne, vZero)), (vTensor (vZero, vZero))) in
    vDot (x1, (vAdd (x2, x0))) = vAdd ((vDot (x1, x2)), (vDot (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (30)
  (try
   (let x0 = vTensor ((vDot (kZero, vZero)), (vAdd (vZero, vZero))) in
    vDot (kZero, x0) = vZero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (31)
  (try
   (let x0 = vTensor ((vAdd (vZero, vZero)), (vTensor (vZero, vZero))) in
    vDot (kZero, x0) = vZero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (32)
  (try
   (let x0 = vDot ((kAdd (kZero, kZero)), (vTensor (vZero, vZero))) in
    vDot (kZero, x0) = vZero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (33)
  (try
   (let x0 = vDot ((kAdd (kZero, kZero)), (vTensor (vZero, vZero))) in
    vDot (kZero, x0) = vZero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (34)
  (try
   (let x0 = vAdd ((vAdd (vZero, vZero)), (vAdd (vZero, vZero))) in
    vDot (kZero, x0) = vZero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (35)
  (try
   (let x0 = vTensor ((vAdd (vZero, vZero)), (vAdd (vZero, vZero))) in
    vDot (kOne, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (36)
  (try
   (let x0 = vDot ((kProd (kZero, kZero)), (vAdd (vZero, vZero))) in
    vDot (kOne, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (37)
  (try
   (let x0 = vTensor ((vDot (kZero, vZero)), (vDot (kOne, vZero))) in
    vDot (kOne, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (38)
  (try
   (let x0 = vTensor ((vDot (kZero, vZero)), (vDot (kOne, vZero))) in
    vDot (kOne, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (39)
  (try
   (let x0 = vAdd ((vTensor (vZero, vZero)), (vAdd (vZero, vZero))) in
    vDot (kOne, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (40)
  (try (let x0 = vZero in vTensor (x0, vZero) = vZero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (41)
  (try
   (let x0 = vDot (kZero, (vTensor (vZero, vZero))) in
    vTensor (x0, vZero) = vZero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (42)
  (try
   (let x0 = vDot ((kAdd (kZero, kOne)), (vAdd (vZero, vZero))) in
    vTensor (x0, vZero) = vZero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (43)
  (try
   (let x0 = vAdd (vZero, (vTensor (vZero, vZero))) in
    vTensor (x0, vZero) = vZero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (44)
  (try
   (let x0 = vDot ((kAdd (kZero, kOne)), (vAdd (vZero, vZero))) in
    vTensor (x0, vZero) = vZero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (45)
  (try
   (let x1 = vTensor ((vAdd (vZero, vZero)), (vDot (kZero, vZero))) in
    let x2 = vDot (kZero, (vAdd (vZero, vZero))) in
    let x0 = vDot ((kProd (kOne, kOne)), (vTensor (vZero, vZero))) in
    vTensor (x1, (vAdd (x2, x0))) =
    vAdd ((vTensor (x1, x2)), (vTensor (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (46)
  (try
   (let x1 = vDot ((kAdd (kOne, kOne)), (vDot (kOne, vZero))) in
    let x2 = vAdd ((vDot (kZero, vZero)), (vDot (kOne, vZero))) in
    let x0 = vTensor ((vDot (kZero, vZero)), (vTensor (vZero, vZero))) in
    vTensor (x1, (vAdd (x2, x0))) =
    vAdd ((vTensor (x1, x2)), (vTensor (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (47)
  (try
   (let x1 = vDot ((kAdd (kZero, kOne)), (vAdd (vZero, vZero))) in
    let x2 = vDot ((kAdd (kZero, kOne)), (vAdd (vZero, vZero))) in
    let x0 = vTensor ((vAdd (vZero, vZero)), (vDot (kZero, vZero))) in
    vTensor (x1, (vAdd (x2, x0))) =
    vAdd ((vTensor (x1, x2)), (vTensor (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (48)
  (try
   (let x1 = vTensor ((vTensor (vZero, vZero)), (vTensor (vZero, vZero))) in
    let x2 = vDot ((kAdd (kOne, kOne)), (vTensor (vZero, vZero))) in
    let x0 = vAdd ((vDot (kZero, vZero)), (vAdd (vZero, vZero))) in
    vTensor (x1, (vAdd (x2, x0))) =
    vAdd ((vTensor (x1, x2)), (vTensor (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (49)
  (try
   (let x1 = vDot ((kProd (kOne, kOne)), (vTensor (vZero, vZero))) in
    let x2 = vDot ((kAdd (kOne, kOne)), (vDot (kOne, vZero))) in
    let x0 = vDot ((kAdd (kOne, kZero)), (vTensor (vZero, vZero))) in
    vTensor (x1, (vAdd (x2, x0))) =
    vAdd ((vTensor (x1, x2)), (vTensor (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (50)
  (try
   (let x1 = vDot ((kAdd (kOne, kOne)), (vDot (kZero, vZero))) in
    let x2 = kAdd ((kProd (kOne, kZero)), kZero) in
    let x0 = vDot ((kAdd (kOne, kOne)), (vDot (kZero, vZero))) in
    vTensor (x1, (vDot (x2, x0))) = vDot (x2, (vTensor (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (51)
  (try
   (let x1 = vTensor ((vDot (kZero, vZero)), (vTensor (vZero, vZero))) in
    let x2 = kAdd ((kProd (kOne, kZero)), (kAdd (kOne, kZero))) in
    let x0 = vAdd ((vTensor (vZero, vZero)), (vTensor (vZero, vZero))) in
    vTensor (x1, (vDot (x2, x0))) = vDot (x2, (vTensor (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (52)
  (try
   (let x1 = vTensor ((vDot (kZero, vZero)), (vDot (kZero, vZero))) in
    let x2 = kAdd ((kProd (kOne, kZero)), (kAdd (kOne, kZero))) in
    let x0 = vDot ((kAdd (kZero, kOne)), vZero) in
    vTensor (x1, (vDot (x2, x0))) = vDot (x2, (vTensor (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (53)
  (try
   (let x1 = vTensor ((vTensor (vZero, vZero)), (vTensor (vZero, vZero))) in
    let x2 = kAdd ((kProd (kOne, kZero)), kZero) in
    let x0 = vAdd ((vAdd (vZero, vZero)), (vDot (kZero, vZero))) in
    vTensor (x1, (vDot (x2, x0))) = vDot (x2, (vTensor (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (54)
  (try
   (let x1 = vDot (kOne, (vTensor (vZero, vZero))) in
    let x2 = kProd ((kAdd (kZero, kZero)), (kAdd (kZero, kOne))) in
    let x0 = vTensor ((vAdd (vZero, vZero)), (vTensor (vZero, vZero))) in
    vTensor (x1, (vDot (x2, x0))) = vDot (x2, (vTensor (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (55)
  (try
   (let x3 = vTensor ((vAdd (vZero, vZero)), (vAdd (vZero, vZero))) in
    let x1 = vZero in
    let x0 = vTensor ((vAdd (vZero, vZero)), (vAdd (vZero, vZero))) in
    vTensor ((vAdd (x3, x1)), x0) =
    vAdd ((vTensor (x3, x0)), (vTensor (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (56)
  (try
   (let x3 = vDot ((kAdd (kOne, kZero)), (vTensor (vZero, vZero))) in
    let x1 = vAdd ((vAdd (vZero, vZero)), (vTensor (vZero, vZero))) in
    let x0 = vDot (kZero, (vDot (kZero, vZero))) in
    vTensor ((vAdd (x3, x1)), x0) =
    vAdd ((vTensor (x3, x0)), (vTensor (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (57)
  (try
   (let x3 = vTensor ((vAdd (vZero, vZero)), (vTensor (vZero, vZero))) in
    let x1 = vTensor ((vAdd (vZero, vZero)), (vAdd (vZero, vZero))) in
    let x0 = vAdd ((vTensor (vZero, vZero)), (vTensor (vZero, vZero))) in
    vTensor ((vAdd (x3, x1)), x0) =
    vAdd ((vTensor (x3, x0)), (vTensor (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (58)
  (try
   (let x3 = vAdd ((vTensor (vZero, vZero)), (vAdd (vZero, vZero))) in
    let x1 = vTensor (vZero, (vAdd (vZero, vZero))) in
    let x0 = vTensor (vZero, (vAdd (vZero, vZero))) in
    vTensor ((vAdd (x3, x1)), x0) =
    vAdd ((vTensor (x3, x0)), (vTensor (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (59)
  (try
   (let x3 = vAdd ((vDot (kZero, vZero)), (vTensor (vZero, vZero))) in
    let x1 = vTensor ((vAdd (vZero, vZero)), (vDot (kOne, vZero))) in
    let x0 = vDot ((kAdd (kOne, kZero)), (vAdd (vZero, vZero))) in
    vTensor ((vAdd (x3, x1)), x0) =
    vAdd ((vTensor (x3, x0)), (vTensor (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (60)
  (try
   (let x0 = vDot ((kProd (kOne, kZero)), (vAdd (vZero, vZero))) in
    vTensor (vZero, x0) = vZero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (61)
  (try
   (let x0 = vTensor ((vAdd (vZero, vZero)), (vTensor (vZero, vZero))) in
    vTensor (vZero, x0) = vZero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (62)
  (try
   (let x0 = vAdd ((vDot (kZero, vZero)), (vAdd (vZero, vZero))) in
    vTensor (vZero, x0) = vZero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (63)
  (try
   (let x0 = vDot ((kAdd (kZero, kZero)), (vAdd (vZero, vZero))) in
    vTensor (vZero, x0) = vZero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (64)
  (try
   (let x0 = vTensor ((vDot (kZero, vZero)), (vAdd (vZero, vZero))) in
    vTensor (vZero, x0) = vZero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (65)
  (try
   (let x2 = kAdd ((kProd (kOne, kOne)), (kAdd (kZero, kOne))) in
    let x1 = vTensor ((vTensor (vZero, vZero)), (vDot (kOne, vZero))) in
    let x0 = vDot ((kAdd (kOne, kOne)), (vDot (kOne, vZero))) in
    vTensor ((vDot (x2, x1)), x0) = vDot (x2, (vTensor (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (66)
  (try
   (let x2 = kAdd ((kProd (kOne, kZero)), (kProd (kOne, kZero))) in
    let x1 = vTensor ((vAdd (vZero, vZero)), (vTensor (vZero, vZero))) in
    let x0 = vDot ((kAdd (kOne, kZero)), (vDot (kOne, vZero))) in
    vTensor ((vDot (x2, x1)), x0) = vDot (x2, (vTensor (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (67)
  (try
   (let x2 = kAdd ((kProd (kOne, kZero)), (kProd (kOne, kZero))) in
    let x1 = vDot ((kAdd (kOne, kOne)), (vDot (kOne, vZero))) in
    let x0 = vTensor ((vAdd (vZero, vZero)), (vAdd (vZero, vZero))) in
    vTensor ((vDot (x2, x1)), x0) = vDot (x2, (vTensor (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (68)
  (try
   (let x2 = kAdd ((kAdd (kZero, kZero)), (kProd (kOne, kZero))) in
    let x1 = vDot ((kAdd (kOne, kOne)), (vDot (kOne, vZero))) in
    let x0 = vDot ((kAdd (kOne, kZero)), (vDot (kOne, vZero))) in
    vTensor ((vDot (x2, x1)), x0) = vDot (x2, (vTensor (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (69)
  (try
   (let x2 = kAdd ((kProd (kOne, kZero)), (kProd (kOne, kZero))) in
    let x1 = vTensor ((vAdd (vZero, vZero)), (vTensor (vZero, vZero))) in
    let x0 = vTensor ((vTensor (vZero, vZero)), (vAdd (vZero, vZero))) in
    vTensor ((vDot (x2, x1)), x0) = vDot (x2, (vTensor (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

