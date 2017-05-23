open Ring_sharing
;;

open Gentest
;;

testing ("Ring_sharing (automatic) - seed: 491046587")
;;

testi
  (0)
  (try
   (let x0 = gen (20) in
    let x1 = add ((mul ((gen (13)), zero)), one) in
    add (x0, x1) = add (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (1)
  (try
   (let x0 = mul ((mul ((gen (48)), zero)), (gen (0))) in
    let x1 = opp (gen (34)) in add (x0, x1) = add (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (2)
  (try (let x0 = gen (20) in let x1 = opp one in add (x0, x1) = add (x1, x0))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (3)
  (try
   (let x0 =
      add ((mul ((gen (13)), (gen (43)))), (add ((gen (46)), (gen (20))))) in
    let x1 = opp zero in add (x0, x1) = add (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (4)
  (try
   (let x0 = add ((opp one), (mul ((gen (17)), one))) in
    let x1 = add ((mul ((gen (13)), zero)), one) in
    add (x0, x1) = add (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (5)
  (try (let x0 = gen (12) in add (x0, zero) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (6)
  (try
   (let x0 =
      add ((mul ((gen (5)), (gen (17)))), (mul ((gen (12)), (gen (3))))) in
    add (x0, zero) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (7)
  (try
   (let x0 = add ((add (zero, (gen (0)))), (mul ((gen (12)), (gen (3))))) in
    add (x0, zero) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (8)
  (try (let x0 = zero in add (x0, zero) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (9)
  (try
   (let x0 = mul ((opp zero), (add ((gen (5)), (gen (11))))) in
    add (x0, zero) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (10)
  (try
   (let x0 = mul ((mul (zero, (gen (1)))), (mul ((gen (8)), zero))) in
    add (x0, (opp x0)) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (11)
  (try
   (let x0 = mul ((gen (4)), (opp (gen (18)))) in add (x0, (opp x0)) = zero)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (12)
  (try
   (let x0 = opp (add ((gen (18)), (gen (17)))) in add (x0, (opp x0)) = zero)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (13)
  (try
   (let x0 = mul ((gen (4)), (opp (gen (18)))) in add (x0, (opp x0)) = zero)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (14)
  (try
   (let x0 = opp (add ((gen (18)), (gen (10)))) in add (x0, (opp x0)) = zero)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (15)
  (try
   (let x2 = opp (add ((gen (31)), zero)) in
    let x1 = zero in
    let x0 = add ((opp (gen (63))), (opp (gen (74)))) in
    add ((add (x2, x1)), x0) = add (x2, (add (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (16)
  (try
   (let x2 = add ((add (one, (gen (13)))), (opp (gen (74)))) in
    let x1 = opp (add ((gen (56)), zero)) in
    let x0 = mul ((gen (66)), (gen (27))) in
    add ((add (x2, x1)), x0) = add (x2, (add (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (17)
  (try
   (let x2 = add ((opp (gen (32))), (add ((gen (34)), (gen (51))))) in
    let x1 = gen (35) in
    let x0 = gen (3) in add ((add (x2, x1)), x0) = add (x2, (add (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (18)
  (try
   (let x2 = add ((mul ((gen (25)), (gen (60)))), (gen (53))) in
    let x1 = mul ((gen (66)), (add ((gen (39)), (gen (24))))) in
    let x0 = opp (add ((gen (53)), (gen (17)))) in
    add ((add (x2, x1)), x0) = add (x2, (add (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (19)
  (try
   (let x2 = gen (31) in
    let x1 = mul ((gen (66)), (gen (27))) in
    let x0 = mul ((gen (66)), (gen (10))) in
    add ((add (x2, x1)), x0) = add (x2, (add (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (20)
  (try
   (let x0 = mul ((opp one), (add ((gen (19)), (gen (9))))) in
    add (zero, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (21)
  (try (let x0 = opp (add ((gen (13)), (gen (4)))) in add (zero, x0) = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (22)
  (try
   (let x0 = add ((mul ((gen (7)), (gen (0)))), (mul ((gen (18)), one))) in
    add (zero, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (23)
  (try (let x0 = opp (add ((gen (13)), (gen (4)))) in add (zero, x0) = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (24)
  (try (let x0 = opp (add ((gen (13)), (gen (4)))) in add (zero, x0) = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (25)
  (try
   (let x0 = mul ((add (zero, zero)), (gen (1))) in add ((opp x0), x0) = zero)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (26)
  (try (let x0 = gen (18) in add ((opp x0), x0) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (27)
  (try (let x0 = opp (opp (gen (6))) in add ((opp x0), x0) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (28)
  (try (let x0 = gen (18) in add ((opp x0), x0) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (29)
  (try (let x0 = gen (5) in add ((opp x0), x0) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (30)
  (try
   (let x0 = opp (mul ((gen (33)), (gen (6)))) in
    let x1 = mul ((add ((gen (24)), (gen (6)))), (gen (25))) in
    mul (x0, x1) = mul (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (31)
  (try
   (let x0 = opp (add ((gen (9)), (gen (10)))) in
    let x1 = mul ((add ((gen (24)), (gen (6)))), (opp (gen (32)))) in
    mul (x0, x1) = mul (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (32)
  (try
   (let x0 = mul ((opp (gen (9))), (add ((gen (6)), (gen (38))))) in
    let x1 = mul ((add ((gen (24)), (gen (6)))), (opp (gen (32)))) in
    mul (x0, x1) = mul (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (33)
  (try
   (let x0 =
      mul ((mul ((gen (14)), (gen (23)))), (add ((gen (6)), (gen (38))))) in
    let x1 = add ((gen (43)), (mul ((gen (40)), (gen (49))))) in
    mul (x0, x1) = mul (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (34)
  (try
   (let x0 = gen (47) in
    let x1 = add ((opp (gen (1))), (gen (32))) in mul (x0, x1) = mul (x1, x0))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (35)
  (try
   (let x0 = mul ((mul (zero, one)), (opp (gen (11)))) in
    mul (x0, zero) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (36)
  (try (let x0 = gen (24) in mul (x0, zero) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (37)
  (try
   (let x0 =
      add ((add ((gen (9)), (gen (2)))), (mul ((gen (18)), (gen (3))))) in
    mul (x0, zero) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (38)
  (try
   (let x0 = mul ((gen (8)), (mul ((gen (6)), (gen (7))))) in
    mul (x0, zero) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (39)
  (try
   (let x0 = mul ((gen (8)), (mul ((gen (6)), (gen (7))))) in
    mul (x0, zero) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (40)
  (try (let x0 = opp (opp (gen (4))) in mul (x0, one) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (41)
  (try (let x0 = mul ((opp (gen (6))), (gen (23))) in mul (x0, one) = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (42)
  (try
   (let x0 = mul ((opp (gen (6))), (mul (zero, (gen (1))))) in
    mul (x0, one) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (43)
  (try
   (let x0 = mul ((opp (gen (6))), (mul (zero, zero))) in mul (x0, one) = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (44)
  (try
   (let x0 = add ((add (zero, (gen (23)))), (gen (24))) in mul (x0, one) = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (45)
  (try
   (let x1 = add ((opp (gen (67))), (add (zero, (gen (64))))) in
    let x2 = add ((opp (gen (67))), (add (zero, (gen (64))))) in
    let x0 = gen (35) in
    mul (x1, (add (x2, x0))) = add ((mul (x1, x2)), (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (46)
  (try
   (let x1 = opp (opp (gen (8))) in
    let x2 =
      mul ((add ((gen (33)), (gen (17)))), (add ((gen (46)), (gen (33))))) in
    let x0 = gen (7) in
    mul (x1, (add (x2, x0))) = add ((mul (x1, x2)), (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (47)
  (try
   (let x1 = gen (31) in
    let x2 = opp (gen (6)) in
    let x0 = opp (mul ((gen (40)), (gen (46)))) in
    mul (x1, (add (x2, x0))) = add ((mul (x1, x2)), (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (48)
  (try
   (let x1 = gen (35) in
    let x2 =
      mul ((add ((gen (33)), (gen (17)))), (mul ((gen (23)), (gen (31))))) in
    let x0 = mul ((mul ((gen (30)), (gen (65)))), (opp (gen (54)))) in
    mul (x1, (add (x2, x0))) = add ((mul (x1, x2)), (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (49)
  (try
   (let x1 = one in
    let x2 =
      add ((mul ((gen (10)), (gen (54)))), (add ((gen (49)), (gen (64))))) in
    let x0 = gen (7) in
    mul (x1, (add (x2, x0))) = add ((mul (x1, x2)), (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (50)
  (try
   (let x1 = add ((add (one, (gen (27)))), (add ((gen (1)), (gen (31))))) in
    let x0 = one in mul (x1, (opp x0)) = opp (mul (x1, x0))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (51)
  (try
   (let x1 = opp (opp (gen (3))) in
    let x0 = add ((gen (49)), (add ((gen (4)), (gen (31))))) in
    mul (x1, (opp x0)) = opp (mul (x1, x0))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (52)
  (try
   (let x1 = mul ((mul ((gen (36)), (gen (44)))), (opp (gen (34)))) in
    let x0 = opp (mul ((gen (39)), (gen (47)))) in
    mul (x1, (opp x0)) = opp (mul (x1, x0))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (53)
  (try
   (let x1 = opp (opp (gen (38))) in
    let x0 = mul ((gen (47)), (mul ((gen (35)), (gen (17))))) in
    mul (x1, (opp x0)) = opp (mul (x1, x0))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (54)
  (try
   (let x1 = mul ((mul ((gen (26)), (gen (20)))), (opp zero)) in
    let x0 = opp (mul ((gen (34)), (gen (15)))) in
    mul (x1, (opp x0)) = opp (mul (x1, x0))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (55)
  (try
   (let x3 = gen (32) in
    let x1 = opp (mul ((gen (50)), (gen (72)))) in
    let x0 = gen (3) in
    mul ((add (x3, x1)), x0) = add ((mul (x3, x0)), (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (56)
  (try
   (let x3 = opp (opp (gen (11))) in
    let x1 = gen (18) in
    let x0 = gen (59) in
    mul ((add (x3, x1)), x0) = add ((mul (x3, x0)), (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (57)
  (try
   (let x3 = gen (4) in
    let x1 = gen (59) in
    let x0 = opp (opp (gen (11))) in
    mul ((add (x3, x1)), x0) = add ((mul (x3, x0)), (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (58)
  (try
   (let x3 = opp (mul (zero, (gen (11)))) in
    let x1 = add ((mul ((gen (46)), (gen (60)))), (opp (gen (67)))) in
    let x0 = add ((gen (19)), (gen (28))) in
    mul ((add (x3, x1)), x0) = add ((mul (x3, x0)), (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (59)
  (try
   (let x3 = mul ((mul ((gen (43)), (gen (72)))), (mul ((gen (34)), zero))) in
    let x1 = one in
    let x0 = add ((add ((gen (42)), (gen (65)))), (opp (gen (8)))) in
    mul ((add (x3, x1)), x0) = add ((mul (x3, x0)), (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (60)
  (try (let x0 = add ((mul ((gen (12)), one)), one) in mul (zero, x0) = zero)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (61)
  (try (let x0 = add ((mul ((gen (12)), one)), one) in mul (zero, x0) = zero)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (62)
  (try (let x0 = mul ((opp (gen (3))), (gen (12))) in mul (zero, x0) = zero)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (63)
  (try (let x0 = mul ((opp (gen (3))), (opp one)) in mul (zero, x0) = zero)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (64)
  (try (let x0 = opp (gen (14)) in mul (zero, x0) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (65)
  (try
   (let x1 = gen (30) in
    let x0 = gen (5) in mul ((opp x1), x0) = opp (mul (x1, x0))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (66)
  (try
   (let x1 = opp (gen (42)) in
    let x0 = gen (47) in mul ((opp x1), x0) = opp (mul (x1, x0))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (67)
  (try
   (let x1 = mul ((add (zero, (gen (37)))), (mul ((gen (20)), zero))) in
    let x0 = gen (11) in mul ((opp x1), x0) = opp (mul (x1, x0))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (68)
  (try
   (let x1 = mul ((opp one), (gen (4))) in
    let x0 = add ((opp (gen (32))), (gen (14))) in
    mul ((opp x1), x0) = opp (mul (x1, x0))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (69)
  (try
   (let x1 = gen (15) in
    let x0 = gen (22) in mul ((opp x1), x0) = opp (mul (x1, x0))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (70)
  (try
   (let x2 = one in
    let x1 = gen (74) in
    let x0 = opp (opp (gen (44))) in
    mul ((mul (x2, x1)), x0) = mul (x2, (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (71)
  (try
   (let x2 = mul ((opp (gen (43))), (opp (gen (9)))) in
    let x1 =
      add ((add ((gen (70)), (gen (56)))), (add ((gen (41)), (gen (54))))) in
    let x0 =
      add ((add ((gen (32)), (gen (56)))), (mul ((gen (17)), (gen (45))))) in
    mul ((mul (x2, x1)), x0) = mul (x2, (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (72)
  (try
   (let x2 = add ((opp (gen (32))), (opp (gen (57)))) in
    let x1 = gen (73) in
    let x0 = opp (add ((gen (61)), (gen (62)))) in
    mul ((mul (x2, x1)), x0) = mul (x2, (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (73)
  (try
   (let x2 = mul ((mul ((gen (23)), (gen (22)))), (opp (gen (9)))) in
    let x1 =
      add ((add ((gen (32)), (gen (56)))), (mul ((gen (17)), (gen (45))))) in
    let x0 = gen (74) in mul ((mul (x2, x1)), x0) = mul (x2, (mul (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (74)
  (try
   (let x2 = add ((add ((gen (32)), (gen (56)))), (opp (gen (57)))) in
    let x1 = opp (opp (gen (6))) in
    let x0 =
      mul ((add ((gen (68)), (gen (17)))), (add ((gen (34)), (gen (60))))) in
    mul ((mul (x2, x1)), x0) = mul (x2, (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (75)
  (try
   (let x0 = add ((gen (23)), (mul ((gen (19)), zero))) in mul (one, x0) = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (76)
  (try (let x0 = opp (opp (gen (11))) in mul (one, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (77)
  (try (let x0 = opp (opp (gen (11))) in mul (one, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (78)
  (try
   (let x0 = add ((gen (23)), (mul ((gen (19)), zero))) in mul (one, x0) = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (79)
  (try (let x0 = add ((opp (gen (2))), (gen (11))) in mul (one, x0) = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

