open Field_math_sharing
;;

open Gentest
;;

testing ("Field_math_sharing (automatic) - seed: 979219004")
;;

testi
  (0)
  (try
   (let x0 = fAdd ((fAdd (fOne, fZero)), (fInv fZero)) in
    let x1 = fOpp (fInv fZero) in fAdd (x0, x1) = fAdd (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (1)
  (try
   (let x0 = fMul ((fAdd (fOne, fZero)), (fMul (fOne, fOne))) in
    let x1 = fAdd ((fMul (fOne, fZero)), (fInv fZero)) in
    fAdd (x0, x1) = fAdd (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (2)
  (try
   (let x0 = fMul ((fAdd (fOne, fZero)), (fMul (fOne, fOne))) in
    let x1 = fInv (fOpp fZero) in fAdd (x0, x1) = fAdd (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (3)
  (try
   (let x0 = fAdd ((fMul (fOne, fZero)), (fInv fZero)) in
    let x1 = fMul ((fAdd (fOne, fOne)), (fAdd (fOne, fOne))) in
    fAdd (x0, x1) = fAdd (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (4)
  (try
   (let x0 = fMul ((fAdd (fOne, fZero)), (fMul (fOne, fOne))) in
    let x1 = fMul ((fMul (fOne, fZero)), (fOpp fZero)) in
    fAdd (x0, x1) = fAdd (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (5)
  (try (let x0 = fMul ((fOpp fZero), (fInv fOne)) in fAdd (x0, fZero) = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (6)
  (try (let x0 = fOpp (fInv fOne) in fAdd (x0, fZero) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (7)
  (try
   (let x0 = fAdd ((fAdd (fZero, fOne)), (fMul (fOne, fZero))) in
    fAdd (x0, fZero) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (8)
  (try (let x0 = fInv (fOpp fOne) in fAdd (x0, fZero) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (9)
  (try (let x0 = fInv (fInv fOne) in fAdd (x0, fZero) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (10)
  (try (let x0 = fOpp (fMul (fOne, fZero)) in fAdd (x0, (fOpp x0)) = fZero)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (11)
  (try (let x0 = fInv (fOpp fOne) in fAdd (x0, (fOpp x0)) = fZero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (12)
  (try (let x0 = fOne in fAdd (x0, (fOpp x0)) = fZero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (13)
  (try
   (let x0 = fAdd (fZero, (fMul (fZero, fZero))) in
    fAdd (x0, (fOpp x0)) = fZero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (14)
  (try
   (let x0 = fAdd ((fInv fZero), (fMul (fZero, fZero))) in
    fAdd (x0, (fOpp x0)) = fZero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (15)
  (try
   (let x2 = fMul ((fOpp fZero), (fInv fZero)) in
    let x1 = fAdd ((fOpp fOne), fOne) in
    let x0 = fOpp (fAdd (fOne, fZero)) in
    fAdd ((fAdd (x2, x1)), x0) = fAdd (x2, (fAdd (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (16)
  (try
   (let x2 = fAdd ((fInv fZero), (fMul (fOne, fOne))) in
    let x1 = fMul ((fInv fOne), (fInv fZero)) in
    let x0 = fInv (fInv fZero) in
    fAdd ((fAdd (x2, x1)), x0) = fAdd (x2, (fAdd (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (17)
  (try
   (let x2 = fOpp (fInv fZero) in
    let x1 = fMul ((fAdd (fOne, fZero)), (fInv fOne)) in
    let x0 = fMul ((fOpp fZero), (fOpp fZero)) in
    fAdd ((fAdd (x2, x1)), x0) = fAdd (x2, (fAdd (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (18)
  (try
   (let x2 = fAdd ((fMul (fOne, fOne)), (fInv fZero)) in
    let x1 = fInv (fMul (fZero, fZero)) in
    let x0 = fAdd ((fMul (fOne, fOne)), (fOpp fZero)) in
    fAdd ((fAdd (x2, x1)), x0) = fAdd (x2, (fAdd (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (19)
  (try
   (let x2 = fInv (fMul (fZero, fZero)) in
    let x1 = fOpp (fAdd (fOne, fZero)) in
    let x0 = fOpp fOne in
    fAdd ((fAdd (x2, x1)), x0) = fAdd (x2, (fAdd (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (20)
  (try (let x0 = fZero in fAdd (fZero, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (21)
  (try (let x0 = fOpp (fOpp fZero) in fAdd (fZero, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (22)
  (try (let x0 = fOpp (fOpp fZero) in fAdd (fZero, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (23)
  (try (let x0 = fOpp (fAdd (fZero, fOne)) in fAdd (fZero, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (24)
  (try (let x0 = fInv (fMul (fOne, fZero)) in fAdd (fZero, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (25)
  (try (let x0 = fAdd (fOne, (fOpp fZero)) in fAdd ((fOpp x0), x0) = fZero)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (26)
  (try
   (let x0 = fAdd ((fOpp fZero), (fOpp fZero)) in
    fAdd ((fOpp x0), x0) = fZero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (27)
  (try (let x0 = fOpp (fMul (fOne, fZero)) in fAdd ((fOpp x0), x0) = fZero)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (28)
  (try (let x0 = fOne in fAdd ((fOpp x0), x0) = fZero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (29)
  (try
   (let x0 = fMul ((fAdd (fZero, fZero)), (fInv fOne)) in
    fAdd ((fOpp x0), x0) = fZero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (30)
  (try
   (let x0 = fMul ((fMul (fOne, fOne)), (fMul (fOne, fOne))) in
    let x1 = fAdd ((fOpp fZero), (fInv fOne)) in
    fMul (x0, x1) = fMul (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (31)
  (try
   (let x0 = fInv (fAdd (fOne, fZero)) in
    let x1 = fAdd ((fOpp fZero), (fOpp fZero)) in
    fMul (x0, x1) = fMul (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (32)
  (try
   (let x0 = fInv (fOpp fZero) in
    let x1 = fInv (fMul (fOne, fZero)) in fMul (x0, x1) = fMul (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (33)
  (try
   (let x0 = fMul ((fMul (fOne, fOne)), (fMul (fOne, fOne))) in
    let x1 = fAdd ((fOpp fOne), (fAdd (fZero, fOne))) in
    fMul (x0, x1) = fMul (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (34)
  (try
   (let x0 = fAdd ((fOpp fZero), (fAdd (fOne, fOne))) in
    let x1 = fOpp (fMul (fZero, fOne)) in fMul (x0, x1) = fMul (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (35)
  (try (let x0 = fOpp (fOpp fZero) in fMul (x0, fZero) = fZero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (36)
  (try (let x0 = fZero in fMul (x0, fZero) = fZero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (37)
  (try
   (let x0 = fMul ((fAdd (fOne, fZero)), fZero) in fMul (x0, fZero) = fZero)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (38)
  (try (let x0 = fOpp (fAdd (fZero, fZero)) in fMul (x0, fZero) = fZero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (39)
  (try
   (let x0 = fAdd ((fAdd (fOne, fOne)), (fAdd (fOne, fZero))) in
    fMul (x0, fZero) = fZero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (40)
  (try (let x0 = fMul ((fOpp fOne), (fInv fOne)) in fMul (x0, fOne) = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (41)
  (try (let x0 = fOne in fMul (x0, fOne) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (42)
  (try (let x0 = fOpp (fMul (fZero, fZero)) in fMul (x0, fOne) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (43)
  (try (let x0 = fMul ((fMul (fOne, fOne)), fZero) in fMul (x0, fOne) = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (44)
  (try
   (let x0 = fMul ((fOpp fOne), (fAdd (fOne, fOne))) in fMul (x0, fOne) = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (45)
  (try (let x0 = fInv (fAdd (fZero, fOne)) in fMul (x0, (fInv x0)) = fOne)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (46)
  (try (let x0 = fOpp fOne in fMul (x0, (fInv x0)) = fOne) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (47)
  (try (let x0 = fOpp (fInv fOne) in fMul (x0, (fInv x0)) = fOne) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (48)
  (try
   (let x0 = fAdd ((fOpp fOne), (fAdd (fOne, fOne))) in
    fMul (x0, (fInv x0)) = fOne) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (49)
  (try (let x0 = fOpp fOne in fMul (x0, (fInv x0)) = fOne) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (50)
  (try
   (let x1 = fOpp (fAdd (fOne, fZero)) in
    let x2 = fOpp (fInv fZero) in
    let x0 = fOpp (fAdd (fZero, fOne)) in
    fMul (x1, (fAdd (x2, x0))) = fAdd ((fMul (x1, x2)), (fMul (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (51)
  (try
   (let x1 = fAdd ((fInv fOne), (fAdd (fZero, fOne))) in
    let x2 = fAdd ((fOpp fZero), (fInv fZero)) in
    let x0 = fAdd ((fMul (fZero, fZero)), (fMul (fZero, fZero))) in
    fMul (x1, (fAdd (x2, x0))) = fAdd ((fMul (x1, x2)), (fMul (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (52)
  (try
   (let x1 = fMul ((fOpp fZero), (fMul (fZero, fZero))) in
    let x2 = fInv (fAdd (fOne, fOne)) in
    let x0 = fMul ((fInv fZero), (fMul (fZero, fZero))) in
    fMul (x1, (fAdd (x2, x0))) = fAdd ((fMul (x1, x2)), (fMul (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (53)
  (try
   (let x1 = fMul ((fMul (fOne, fZero)), (fMul (fZero, fZero))) in
    let x2 = fMul ((fAdd (fZero, fOne)), (fInv fZero)) in
    let x0 = fInv (fMul (fOne, fZero)) in
    fMul (x1, (fAdd (x2, x0))) = fAdd ((fMul (x1, x2)), (fMul (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (54)
  (try
   (let x1 = fInv (fAdd (fZero, fOne)) in
    let x2 = fAdd ((fOpp fOne), (fInv fOne)) in
    let x0 = fMul ((fAdd (fZero, fOne)), (fInv fZero)) in
    fMul (x1, (fAdd (x2, x0))) = fAdd ((fMul (x1, x2)), (fMul (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (55)
  (try
   (let x3 = fInv (fOpp fOne) in
    let x1 = fInv (fMul (fOne, fZero)) in
    let x0 = fAdd ((fOpp fZero), fOne) in
    fMul ((fAdd (x3, x1)), x0) = fAdd ((fMul (x3, x0)), (fMul (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (56)
  (try
   (let x3 = fOpp (fMul (fZero, fZero)) in
    let x1 = fInv (fMul (fOne, fOne)) in
    let x0 = fInv (fAdd (fZero, fOne)) in
    fMul ((fAdd (x3, x1)), x0) = fAdd ((fMul (x3, x0)), (fMul (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (57)
  (try
   (let x3 = fOpp (fOpp fZero) in
    let x1 = fOpp (fAdd (fOne, fZero)) in
    let x0 = fOpp (fAdd (fOne, fZero)) in
    fMul ((fAdd (x3, x1)), x0) = fAdd ((fMul (x3, x0)), (fMul (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (58)
  (try
   (let x3 = fAdd (fZero, (fMul (fOne, fZero))) in
    let x1 = fOpp (fOpp fZero) in
    let x0 = fInv (fInv fOne) in
    fMul ((fAdd (x3, x1)), x0) = fAdd ((fMul (x3, x0)), (fMul (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (59)
  (try
   (let x3 = fAdd ((fOpp fZero), fOne) in
    let x1 = fMul ((fMul (fOne, fOne)), (fOpp fOne)) in
    let x0 = fMul (fZero, (fOpp fZero)) in
    fMul ((fAdd (x3, x1)), x0) = fAdd ((fMul (x3, x0)), (fMul (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (60)
  (try (let x0 = fZero in fMul (fZero, x0) = fZero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (61)
  (try
   (let x0 = fAdd ((fOpp fOne), (fInv fZero)) in fMul (fZero, x0) = fZero)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (62)
  (try
   (let x0 = fAdd ((fAdd (fOne, fZero)), (fInv fZero)) in
    fMul (fZero, x0) = fZero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (63)
  (try (let x0 = fInv (fInv fZero) in fMul (fZero, x0) = fZero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (64)
  (try
   (let x0 = fAdd ((fOpp fOne), (fInv fZero)) in fMul (fZero, x0) = fZero)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (65)
  (try
   (let x2 = fOpp (fOpp fOne) in
    let x1 = fAdd ((fMul (fZero, fZero)), (fMul (fOne, fZero))) in
    let x0 = fInv (fInv fZero) in
    fMul ((fMul (x2, x1)), x0) = fMul (x2, (fMul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (66)
  (try
   (let x2 = fOpp (fAdd (fZero, fZero)) in
    let x1 = fOpp (fMul (fZero, fZero)) in
    let x0 = fOne in fMul ((fMul (x2, x1)), x0) = fMul (x2, (fMul (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (67)
  (try
   (let x2 = fInv (fInv fOne) in
    let x1 = fOpp (fOpp fOne) in
    let x0 = fOpp (fOpp fOne) in
    fMul ((fMul (x2, x1)), x0) = fMul (x2, (fMul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (68)
  (try
   (let x2 = fAdd ((fInv fZero), (fMul (fZero, fOne))) in
    let x1 = fMul ((fMul (fZero, fOne)), (fMul (fOne, fOne))) in
    let x0 = fInv (fInv fZero) in
    fMul ((fMul (x2, x1)), x0) = fMul (x2, (fMul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (69)
  (try
   (let x2 = fOpp (fMul (fZero, fZero)) in
    let x1 = fOpp (fOpp fOne) in
    let x0 = fOpp (fAdd (fZero, fZero)) in
    fMul ((fMul (x2, x1)), x0) = fMul (x2, (fMul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (70)
  (try (let x0 = fInv fOne in fMul (fOne, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (71)
  (try (let x0 = fOpp (fInv fZero) in fMul (fOne, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (72)
  (try (let x0 = fOpp (fInv fZero) in fMul (fOne, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (73)
  (try
   (let x0 = fAdd ((fAdd (fOne, fZero)), (fAdd (fZero, fZero))) in
    fMul (fOne, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (74)
  (try (let x0 = fInv fOne in fMul (fOne, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (75)
  (try (let x0 = fOpp (fAdd (fZero, fZero)) in fMul ((fInv x0), x0) = fOne)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (76)
  (try (let x0 = fInv (fInv fZero) in fMul ((fInv x0), x0) = fOne) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (77)
  (try (let x0 = fInv fZero in fMul ((fInv x0), x0) = fOne) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (78)
  (try (let x0 = fZero in fMul ((fInv x0), x0) = fOne) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (79)
  (try (let x0 = fOpp (fAdd (fZero, fOne)) in fMul ((fInv x0), x0) = fOne)
   with
   | Failure "Division by Absorbent" -> true)
;;

