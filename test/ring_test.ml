open Ring
;;

open Gentest
;;

testing ("Ring (automatic) - seed: 771871827")
;;

testi
  (0)
  (try
   (let x0 = mul ((opp (gen (3))), (mul ((gen (9)), (gen (1))))) in
    let x1 = one in add (x0, x1) = add (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (1)
  (try
   (let x0 = opp (gen (8)) in
    let x1 = mul ((gen (17)), (opp (gen (3)))) in add (x0, x1) = add (x1, x0))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (2)
  (try
   (let x0 = zero in let x1 = opp (gen (8)) in add (x0, x1) = add (x1, x0))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (3)
  (try
   (let x0 = opp (add ((gen (14)), (gen (20)))) in
    let x1 = add ((mul ((gen (8)), (gen (11)))), (opp (gen (5)))) in
    add (x0, x1) = add (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (4)
  (try
   (let x0 = mul ((gen (29)), (opp (gen (42)))) in
    let x1 = opp (gen (8)) in add (x0, x1) = add (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (5)
  (try
   (let x0 = add ((add ((gen (0)), one)), (gen (7))) in add (x0, zero) = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (6)
  (try
   (let x0 = add ((mul (zero, (gen (20)))), (gen (7))) in add (x0, zero) = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (7)
  (try (let x0 = zero in add (x0, zero) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (8)
  (try
   (let x0 =
      mul ((mul ((gen (16)), (gen (22)))), (add ((gen (23)), (gen (11))))) in
    add (x0, zero) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (9)
  (try
   (let x0 = add ((opp (gen (24))), (mul ((gen (13)), (gen (7))))) in
    add (x0, zero) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (10)
  (try (let x0 = gen (4) in add (x0, (opp x0)) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (11)
  (try
   (let x0 = add ((mul ((gen (24)), (gen (20)))), (opp (gen (17)))) in
    add (x0, (opp x0)) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (12)
  (try
   (let x0 = mul ((mul ((gen (18)), (gen (10)))), (add (one, one))) in
    add (x0, (opp x0)) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (13)
  (try (let x0 = gen (10) in add (x0, (opp x0)) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (14)
  (try
   (let x0 = add ((mul ((gen (24)), (gen (20)))), (opp (gen (17)))) in
    add (x0, (opp x0)) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (15)
  (try
   (let x2 = opp (mul ((gen (9)), (gen (44)))) in
    let x1 = gen (47) in
    let x0 = add ((opp (gen (59))), (mul ((gen (10)), (gen (64))))) in
    add ((add (x2, x1)), x0) = add (x2, (add (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (16)
  (try
   (let x2 =
      add ((mul ((gen (11)), (gen (73)))), (add ((gen (66)), (gen (46))))) in
    let x1 =
      add ((mul ((gen (62)), (gen (64)))), (add ((gen (4)), (gen (5))))) in
    let x0 = opp (opp (gen (43))) in
    add ((add (x2, x1)), x0) = add (x2, (add (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (17)
  (try
   (let x2 = gen (13) in
    let x1 = mul ((opp (gen (43))), (mul ((gen (45)), (gen (68))))) in
    let x0 = gen (47) in add ((add (x2, x1)), x0) = add (x2, (add (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (18)
  (try
   (let x2 =
      add ((add ((gen (57)), (gen (56)))), (add ((gen (66)), (gen (46))))) in
    let x1 = add ((opp (gen (59))), (add ((gen (66)), (gen (5))))) in
    let x0 = mul ((mul ((gen (39)), (gen (48)))), (gen (28))) in
    add ((add (x2, x1)), x0) = add (x2, (add (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (19)
  (try
   (let x2 =
      add ((add ((gen (57)), (gen (56)))), (add ((gen (4)), (gen (5))))) in
    let x1 = opp one in
    let x0 = opp (opp (gen (43))) in
    add ((add (x2, x1)), x0) = add (x2, (add (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (20)
  (try (let x0 = gen (22) in add (zero, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (21)
  (try (let x0 = opp (opp (gen (15))) in add (zero, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (22)
  (try (let x0 = gen (12) in add (zero, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (23)
  (try (let x0 = gen (12) in add (zero, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (24)
  (try (let x0 = add ((add (zero, (gen (2)))), zero) in add (zero, x0) = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (25)
  (try (let x0 = opp (opp (gen (22))) in add ((opp x0), x0) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (26)
  (try (let x0 = opp (gen (22)) in add ((opp x0), x0) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (27)
  (try (let x0 = opp (opp zero) in add ((opp x0), x0) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (28)
  (try (let x0 = opp (opp zero) in add ((opp x0), x0) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (29)
  (try
   (let x0 = mul ((mul ((gen (10)), one)), zero) in add ((opp x0), x0) = zero)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (30)
  (try
   (let x0 = mul ((add ((gen (39)), (gen (3)))), (opp (gen (48)))) in
    let x1 = mul (zero, (add ((gen (13)), (gen (20))))) in
    mul (x0, x1) = mul (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (31)
  (try
   (let x0 = gen (6) in
    let x1 = mul ((opp zero), (opp (gen (11)))) in
    mul (x0, x1) = mul (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (32)
  (try
   (let x0 = one in
    let x1 = mul ((mul ((gen (19)), (gen (16)))), (opp (gen (11)))) in
    mul (x0, x1) = mul (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (33)
  (try
   (let x0 = add ((mul ((gen (7)), one)), one) in
    let x1 = add ((mul ((gen (7)), one)), one) in mul (x0, x1) = mul (x1, x0))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (34)
  (try
   (let x0 = add ((add ((gen (9)), (gen (41)))), (add ((gen (4)), one))) in
    let x1 = gen (41) in mul (x0, x1) = mul (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (35)
  (try
   (let x0 = mul ((gen (1)), (mul (zero, (gen (7))))) in
    mul (x0, zero) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (36)
  (try (let x0 = opp one in mul (x0, zero) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (37)
  (try (let x0 = opp (gen (14)) in mul (x0, zero) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (38)
  (try (let x0 = gen (17) in mul (x0, zero) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (39)
  (try (let x0 = opp one in mul (x0, zero) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (40)
  (try (let x0 = gen (16) in mul (x0, one) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (41)
  (try (let x0 = gen (16) in mul (x0, one) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (42)
  (try (let x0 = opp (add ((gen (4)), zero)) in mul (x0, one) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (43)
  (try (let x0 = opp (opp (gen (14))) in mul (x0, one) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (44)
  (try
   (let x0 = mul ((opp (gen (19))), (mul ((gen (12)), (gen (12))))) in
    mul (x0, one) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (45)
  (try
   (let x1 = add ((opp (gen (6))), (opp (gen (62)))) in
    let x2 = mul ((gen (66)), (opp (gen (59)))) in
    let x0 = add ((opp (gen (6))), (opp (gen (62)))) in
    mul (x1, (add (x2, x0))) = add ((mul (x1, x2)), (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (46)
  (try
   (let x1 = zero in
    let x2 = opp (add ((gen (48)), (gen (48)))) in
    let x0 = opp (gen (64)) in
    mul (x1, (add (x2, x0))) = add ((mul (x1, x2)), (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (47)
  (try
   (let x1 = mul ((gen (66)), (mul (one, (gen (69))))) in
    let x2 =
      mul ((add ((gen (30)), (gen (11)))), (mul ((gen (27)), (gen (61))))) in
    let x0 = gen (11) in
    mul (x1, (add (x2, x0))) = add ((mul (x1, x2)), (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (48)
  (try
   (let x1 = mul ((gen (66)), (opp (gen (59)))) in
    let x2 = gen (11) in
    let x0 = opp (add ((gen (32)), (gen (2)))) in
    mul (x1, (add (x2, x0))) = add ((mul (x1, x2)), (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (49)
  (try
   (let x1 = opp (gen (64)) in
    let x2 = mul ((gen (66)), (mul ((gen (51)), one))) in
    let x0 =
      mul ((add ((gen (30)), (gen (11)))), (mul ((gen (27)), (gen (61))))) in
    mul (x1, (add (x2, x0))) = add ((mul (x1, x2)), (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (50)
  (try
   (let x1 = gen (21) in
    let x0 = mul ((add ((gen (10)), (gen (11)))), (add (zero, (gen (5))))) in
    mul (x1, (opp x0)) = opp (mul (x1, x0))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (51)
  (try
   (let x1 =
      add ((mul ((gen (32)), (gen (30)))), (mul ((gen (45)), (gen (31))))) in
    let x0 = gen (46) in mul (x1, (opp x0)) = opp (mul (x1, x0))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (52)
  (try
   (let x1 = mul ((add ((gen (10)), (gen (11)))), (add (zero, (gen (5))))) in
    let x0 = add ((mul (one, (gen (25)))), (mul ((gen (45)), (gen (31))))) in
    mul (x1, (opp x0)) = opp (mul (x1, x0))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (53)
  (try
   (let x1 = opp (mul (one, (gen (49)))) in
    let x0 = mul ((add ((gen (10)), (gen (11)))), one) in
    mul (x1, (opp x0)) = opp (mul (x1, x0))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (54)
  (try
   (let x1 = opp (gen (0)) in
    let x0 = mul ((add ((gen (10)), (gen (11)))), (opp (gen (47)))) in
    mul (x1, (opp x0)) = opp (mul (x1, x0))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (55)
  (try
   (let x3 =
      add ((add ((gen (39)), (gen (45)))), (add ((gen (33)), (gen (42))))) in
    let x1 = opp (gen (1)) in
    let x0 = mul ((gen (15)), (gen (29))) in
    mul ((add (x3, x1)), x0) = add ((mul (x3, x0)), (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (56)
  (try
   (let x3 = add ((mul ((gen (68)), (gen (18)))), (mul ((gen (31)), zero))) in
    let x1 = mul ((gen (45)), (gen (67))) in
    let x0 = gen (8) in
    mul ((add (x3, x1)), x0) = add ((mul (x3, x0)), (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (57)
  (try
   (let x3 = mul ((gen (15)), (opp (gen (74)))) in
    let x1 = add ((gen (14)), (opp (gen (21)))) in
    let x0 = gen (54) in
    mul ((add (x3, x1)), x0) = add ((mul (x3, x0)), (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (58)
  (try
   (let x3 = mul ((gen (45)), (gen (67))) in
    let x1 = gen (32) in
    let x0 = mul ((add ((gen (58)), (gen (17)))), (opp (gen (50)))) in
    mul ((add (x3, x1)), x0) = add ((mul (x3, x0)), (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (59)
  (try
   (let x3 = gen (10) in
    let x1 = opp (gen (51)) in
    let x0 = opp (add ((gen (1)), (gen (44)))) in
    mul ((add (x3, x1)), x0) = add ((mul (x3, x0)), (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (60)
  (try
   (let x0 = mul ((gen (12)), (mul ((gen (17)), one))) in
    mul (zero, x0) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (61)
  (try
   (let x0 = mul ((opp (gen (6))), (add ((gen (11)), (gen (24))))) in
    mul (zero, x0) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (62)
  (try
   (let x0 = add ((opp (gen (14))), (add ((gen (3)), (gen (19))))) in
    mul (zero, x0) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (63)
  (try (let x0 = one in mul (zero, x0) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (64)
  (try
   (let x0 = add ((opp (gen (14))), (add ((gen (3)), (gen (19))))) in
    mul (zero, x0) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (65)
  (try
   (let x1 = opp one in
    let x0 = mul ((opp zero), (add ((gen (46)), (gen (5))))) in
    mul ((opp x1), x0) = opp (mul (x1, x0))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (66)
  (try
   (let x1 = add ((mul ((gen (43)), one)), (gen (41))) in
    let x0 = mul ((gen (16)), zero) in
    mul ((opp x1), x0) = opp (mul (x1, x0))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (67)
  (try
   (let x1 = mul ((mul ((gen (11)), one)), (gen (49))) in
    let x0 = mul ((opp zero), zero) in
    mul ((opp x1), x0) = opp (mul (x1, x0))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (68)
  (try
   (let x1 = add ((mul ((gen (43)), one)), (gen (41))) in
    let x0 =
      add ((add ((gen (43)), (gen (18)))), (mul ((gen (18)), (gen (30))))) in
    mul ((opp x1), x0) = opp (mul (x1, x0))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (69)
  (try
   (let x1 = mul ((add ((gen (36)), (gen (3)))), (gen (49))) in
    let x0 = mul ((opp (gen (14))), (opp zero)) in
    mul ((opp x1), x0) = opp (mul (x1, x0))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (70)
  (try
   (let x2 = opp (opp (gen (5))) in
    let x1 =
      mul ((mul ((gen (37)), (gen (39)))), (add ((gen (40)), (gen (55))))) in
    let x0 = mul ((opp (gen (39))), (opp (gen (31)))) in
    mul ((mul (x2, x1)), x0) = mul (x2, (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (71)
  (try
   (let x2 = gen (22) in
    let x1 = opp (mul ((gen (60)), (gen (49)))) in
    let x0 = gen (60) in mul ((mul (x2, x1)), x0) = mul (x2, (mul (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (72)
  (try
   (let x2 =
      mul ((mul ((gen (37)), (gen (39)))), (add ((gen (61)), (gen (1))))) in
    let x1 =
      add ((add ((gen (58)), (gen (62)))), (mul ((gen (23)), (gen (57))))) in
    let x0 = gen (60) in mul ((mul (x2, x1)), x0) = mul (x2, (mul (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (73)
  (try
   (let x2 = mul (zero, one) in
    let x1 = mul ((mul (zero, (gen (33)))), (add ((gen (40)), (gen (55))))) in
    let x0 = add ((add ((gen (25)), one)), (gen (52))) in
    mul ((mul (x2, x1)), x0) = mul (x2, (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (74)
  (try
   (let x2 = mul (zero, one) in
    let x1 =
      add ((add ((gen (58)), (gen (62)))), (mul ((gen (23)), (gen (57))))) in
    let x0 = gen (60) in mul ((mul (x2, x1)), x0) = mul (x2, (mul (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (75)
  (try
   (let x0 = mul ((gen (24)), (mul ((gen (11)), (gen (8))))) in
    mul (one, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (76)
  (try
   (let x0 = mul ((opp (gen (13))), (mul ((gen (11)), (gen (8))))) in
    mul (one, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (77)
  (try (let x0 = opp (add ((gen (2)), (gen (18)))) in mul (one, x0) = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (78)
  (try (let x0 = one in mul (one, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (79)
  (try
   (let x0 = add ((mul (one, (gen (23)))), (add (one, one))) in
    mul (one, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

