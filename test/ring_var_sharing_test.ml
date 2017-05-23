open Ring_var_sharing
;;

open Gentest
;;

testing ("Ring_var_sharing (automatic) - seed: 711143487")
;;

testi
  (0)
  (try
   (let x0 = add ((opp (var ("25"))), (opp (var ("5")))) in
    let x1 = add ((opp (var ("32"))), zero) in add (x0, x1) = add (x1, x0))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (1)
  (try
   (let x0 = add ((opp (var ("32"))), (var ("32"))) in
    let x1 = opp (opp one) in add (x0, x1) = add (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (2)
  (try
   (let x0 = var ("31") in
    let x1 = opp (var ("17")) in add (x0, x1) = add (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (3)
  (try
   (let x0 = opp (var ("17")) in
    let x1 = mul ((add ((var ("28")), (var ("24")))), (opp (var ("43")))) in
    add (x0, x1) = add (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (4)
  (try
   (let x0 = mul ((opp (var ("1"))), one) in
    let x1 = mul ((add ((var ("28")), (var ("24")))), (var ("44"))) in
    add (x0, x1) = add (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (5)
  (try (let x0 = add ((var ("10")), one) in add (x0, zero) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (6)
  (try (let x0 = var ("12") in add (x0, zero) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (7)
  (try (let x0 = var ("9") in add (x0, zero) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (8)
  (try (let x0 = var ("12") in add (x0, zero) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (9)
  (try (let x0 = var ("5") in add (x0, zero) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (10)
  (try (let x0 = opp (add (one, (var ("17")))) in add (x0, (opp x0)) = zero)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (11)
  (try (let x0 = opp (opp (var ("24"))) in add (x0, (opp x0)) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (12)
  (try (let x0 = add (zero, zero) in add (x0, (opp x0)) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (13)
  (try (let x0 = var ("8") in add (x0, (opp x0)) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (14)
  (try (let x0 = var ("18") in add (x0, (opp x0)) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (15)
  (try
   (let x2 = opp (add ((var ("5")), (var ("65")))) in
    let x1 = var ("49") in
    let x0 = opp (var ("32")) in
    add ((add (x2, x1)), x0) = add (x2, (add (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (16)
  (try
   (let x2 = add ((opp (var ("14"))), (mul ((var ("42")), (var ("51"))))) in
    let x1 = var ("46") in
    let x0 = opp (var ("69")) in
    add ((add (x2, x1)), x0) = add (x2, (add (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (17)
  (try
   (let x2 = var ("61") in
    let x1 = var ("54") in
    let x0 = opp (var ("24")) in
    add ((add (x2, x1)), x0) = add (x2, (add (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (18)
  (try
   (let x2 = add ((var ("29")), (mul ((var ("42")), (var ("51"))))) in
    let x1 = add ((opp (var ("45"))), (var ("32"))) in
    let x0 = mul (zero, (mul (zero, (var ("44"))))) in
    add ((add (x2, x1)), x0) = add (x2, (add (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (19)
  (try
   (let x2 = mul ((add ((var ("65")), (var ("15")))), (var ("15"))) in
    let x1 = add ((opp (var ("14"))), (mul ((var ("42")), (var ("51"))))) in
    let x0 = opp (mul ((var ("24")), (var ("60")))) in
    add ((add (x2, x1)), x0) = add (x2, (add (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (20)
  (try
   (let x0 =
      add
        ((add ((var ("1")), (var ("19")))), (add ((var ("13")), (var ("9"))))) in
    add (zero, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (21)
  (try
   (let x0 = add ((var ("16")), (add ((var ("13")), (var ("9"))))) in
    add (zero, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (22)
  (try (let x0 = opp (opp (var ("24"))) in add (zero, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (23)
  (try (let x0 = zero in add (zero, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (24)
  (try
   (let x0 = opp (add ((var ("1")), (var ("14")))) in add (zero, x0) = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (25)
  (try
   (let x0 =
      mul
        ((mul ((var ("20")), (var ("16")))),
         (mul ((var ("15")), (var ("16"))))) in
    add ((opp x0), x0) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (26)
  (try
   (let x0 = add ((opp (var ("19"))), (add ((var ("11")), (var ("14"))))) in
    add ((opp x0), x0) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (27)
  (try
   (let x0 = mul ((var ("16")), (mul ((var ("8")), (var ("16"))))) in
    add ((opp x0), x0) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (28)
  (try
   (let x0 = add (zero, (mul ((var ("1")), one))) in
    add ((opp x0), x0) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (29)
  (try (let x0 = opp (opp (var ("1"))) in add ((opp x0), x0) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (30)
  (try
   (let x0 = mul ((mul (one, (var ("31")))), (opp zero)) in
    let x1 = mul ((mul (zero, (var ("22")))), (mul (one, (var ("27"))))) in
    mul (x0, x1) = mul (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (31)
  (try
   (let x0 = add ((mul ((var ("45")), zero)), (mul (zero, one))) in
    let x1 = add ((mul ((var ("45")), zero)), (mul (zero, one))) in
    mul (x0, x1) = mul (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (32)
  (try
   (let x0 = mul ((opp zero), (var ("49"))) in
    let x1 = var ("8") in mul (x0, x1) = mul (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (33)
  (try
   (let x0 = add ((var ("8")), (add ((var ("44")), one))) in
    let x1 = var ("12") in mul (x0, x1) = mul (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (34)
  (try
   (let x0 = opp (var ("7")) in
    let x1 = add ((var ("6")), (add (zero, (var ("44"))))) in
    mul (x0, x1) = mul (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (35)
  (try (let x0 = opp (mul (zero, (var ("7")))) in mul (x0, zero) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (36)
  (try (let x0 = one in mul (x0, zero) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (37)
  (try
   (let x0 = add (one, (add ((var ("15")), (var ("0"))))) in
    mul (x0, zero) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (38)
  (try
   (let x0 = mul ((add (zero, (var ("19")))), (opp (var ("6")))) in
    mul (x0, zero) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (39)
  (try
   (let x0 = add ((var ("13")), (mul (zero, (var ("24"))))) in
    mul (x0, zero) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (40)
  (try (let x0 = mul ((var ("1")), (var ("21"))) in mul (x0, one) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (41)
  (try (let x0 = var ("6") in mul (x0, one) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (42)
  (try
   (let x0 = mul (zero, (add ((var ("18")), zero))) in mul (x0, one) = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (43)
  (try (let x0 = mul ((var ("1")), (var ("21"))) in mul (x0, one) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (44)
  (try (let x0 = add ((opp zero), (var ("8"))) in mul (x0, one) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (45)
  (try
   (let x1 = var ("33") in
    let x2 = opp (opp (var ("66"))) in
    let x0 = opp (add ((var ("24")), (var ("55")))) in
    mul (x1, (add (x2, x0))) = add ((mul (x1, x2)), (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (46)
  (try
   (let x1 = var ("3") in
    let x2 = mul ((var ("21")), (opp (var ("43")))) in
    let x0 = opp (var ("0")) in
    mul (x1, (add (x2, x0))) = add ((mul (x1, x2)), (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (47)
  (try
   (let x1 = opp (add ((var ("24")), (var ("55")))) in
    let x2 =
      add ((mul (zero, (var ("22")))), (mul ((var ("16")), (var ("67"))))) in
    let x0 = opp (var ("0")) in
    mul (x1, (add (x2, x0))) = add ((mul (x1, x2)), (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (48)
  (try
   (let x1 =
      add
        ((add ((var ("55")), (var ("16")))),
         (add ((var ("35")), (var ("7"))))) in
    let x2 = var ("57") in
    let x0 = opp (opp (var ("18"))) in
    mul (x1, (add (x2, x0))) = add ((mul (x1, x2)), (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (49)
  (try
   (let x1 = mul ((var ("21")), (var ("50"))) in
    let x2 = mul ((opp (var ("4"))), (add ((var ("53")), (var ("61"))))) in
    let x0 = var ("32") in
    mul (x1, (add (x2, x0))) = add ((mul (x1, x2)), (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (50)
  (try
   (let x1 =
      mul ((mul ((var ("0")), zero)), (mul ((var ("7")), (var ("23"))))) in
    let x0 = mul ((opp (var ("40"))), (add ((var ("27")), zero))) in
    mul (x1, (opp x0)) = opp (mul (x1, x0))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (51)
  (try
   (let x1 = add ((mul ((var ("31")), (var ("30")))), (opp (var ("44")))) in
    let x0 = var ("37") in mul (x1, (opp x0)) = opp (mul (x1, x0))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (52)
  (try
   (let x1 = one in
    let x0 =
      mul
        ((mul ((var ("43")), (var ("34")))),
         (mul ((var ("7")), (var ("37"))))) in
    mul (x1, (opp x0)) = opp (mul (x1, x0))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (53)
  (try
   (let x1 = add ((add ((var ("43")), zero)), (var ("49"))) in
    let x0 = opp (var ("5")) in mul (x1, (opp x0)) = opp (mul (x1, x0))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (54)
  (try
   (let x1 = opp zero in
    let x0 =
      add
        ((add ((var ("32")), (var ("25")))),
         (mul ((var ("26")), (var ("17"))))) in
    mul (x1, (opp x0)) = opp (mul (x1, x0))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (55)
  (try
   (let x3 = opp (mul ((var ("26")), (var ("17")))) in
    let x1 = var ("68") in
    let x0 = opp (var ("28")) in
    mul ((add (x3, x1)), x0) = add ((mul (x3, x0)), (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (56)
  (try
   (let x3 = opp (opp (var ("20"))) in
    let x1 = var ("57") in
    let x0 = var ("57") in
    mul ((add (x3, x1)), x0) = add ((mul (x3, x0)), (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (57)
  (try
   (let x3 = opp (var ("28")) in
    let x1 = var ("56") in
    let x0 = zero in
    mul ((add (x3, x1)), x0) = add ((mul (x3, x0)), (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (58)
  (try
   (let x3 = add ((mul ((var ("67")), zero)), (opp (var ("41")))) in
    let x1 = add ((mul ((var ("63")), (var ("9")))), (opp (var ("41")))) in
    let x0 = opp (mul ((var ("14")), (var ("17")))) in
    mul ((add (x3, x1)), x0) = add ((mul (x3, x0)), (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (59)
  (try
   (let x3 = add ((var ("62")), (mul (one, (var ("72"))))) in
    let x1 = var ("33") in
    let x0 = add ((var ("62")), (mul ((var ("10")), (var ("72"))))) in
    mul ((add (x3, x1)), x0) = add ((mul (x3, x0)), (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (60)
  (try
   (let x0 = opp (mul ((var ("11")), (var ("16")))) in mul (zero, x0) = zero)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (61)
  (try
   (let x0 = mul ((var ("4")), (opp (var ("17")))) in mul (zero, x0) = zero)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (62)
  (try
   (let x0 =
      add ((add ((var ("2")), (var ("8")))), (add ((var ("6")), zero))) in
    mul (zero, x0) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (63)
  (try (let x0 = var ("7") in mul (zero, x0) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (64)
  (try (let x0 = zero in mul (zero, x0) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (65)
  (try
   (let x1 = var ("14") in
    let x0 = add ((var ("3")), (var ("27"))) in
    mul ((opp x1), x0) = opp (mul (x1, x0))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (66)
  (try
   (let x1 = mul ((mul ((var ("29")), (var ("15")))), (opp zero)) in
    let x0 = add ((add ((var ("40")), (var ("7")))), (var ("43"))) in
    mul ((opp x1), x0) = opp (mul (x1, x0))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (67)
  (try
   (let x1 = mul ((mul ((var ("29")), (var ("15")))), (var ("49"))) in
    let x0 = add ((var ("20")), (add ((var ("37")), (var ("27"))))) in
    mul ((opp x1), x0) = opp (mul (x1, x0))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (68)
  (try
   (let x1 =
      mul ((mul ((var ("29")), (var ("15")))), (add (one, (var ("34"))))) in
    let x0 = mul ((mul ((var ("29")), (var ("15")))), (var ("49"))) in
    mul ((opp x1), x0) = opp (mul (x1, x0))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (69)
  (try
   (let x1 = opp (var ("30")) in
    let x0 =
      mul ((mul ((var ("11")), (var ("15")))), (add ((var ("28")), one))) in
    mul ((opp x1), x0) = opp (mul (x1, x0))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (70)
  (try
   (let x2 = mul ((var ("20")), (add ((var ("70")), (var ("39"))))) in
    let x1 = mul ((add ((var ("6")), (var ("15")))), (opp zero)) in
    let x0 = opp (var ("8")) in
    mul ((mul (x2, x1)), x0) = mul (x2, (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (71)
  (try
   (let x2 = mul ((var ("20")), (var ("27"))) in
    let x1 = var ("49") in
    let x0 = var ("49") in
    mul ((mul (x2, x1)), x0) = mul (x2, (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (72)
  (try
   (let x2 = opp (mul ((var ("25")), (var ("44")))) in
    let x1 = opp (add (one, (var ("50")))) in
    let x0 =
      add
        ((mul ((var ("2")), (var ("7")))), (mul ((var ("50")), (var ("48"))))) in
    mul ((mul (x2, x1)), x0) = mul (x2, (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (73)
  (try
   (let x2 = mul ((mul ((var ("28")), (var ("64")))), (opp zero)) in
    let x1 =
      add
        ((mul ((var ("2")), (var ("7")))), (mul ((var ("50")), (var ("48"))))) in
    let x0 = mul ((add ((var ("6")), (var ("15")))), (opp zero)) in
    mul ((mul (x2, x1)), x0) = mul (x2, (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (74)
  (try
   (let x2 =
      mul ((mul ((var ("26")), (var ("53")))), (mul (one, (var ("67"))))) in
    let x1 = add ((mul ((var ("2")), (var ("7")))), (var ("66"))) in
    let x0 = mul ((mul ((var ("26")), (var ("53")))), (opp zero)) in
    mul ((mul (x2, x1)), x0) = mul (x2, (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (75)
  (try (let x0 = mul ((mul (one, zero)), (opp one)) in mul (one, x0) = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (76)
  (try (let x0 = opp (add ((var ("17")), (var ("9")))) in mul (one, x0) = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (77)
  (try (let x0 = opp (opp (var ("22"))) in mul (one, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (78)
  (try (let x0 = var ("5") in mul (one, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (79)
  (try
   (let x0 = mul ((mul (one, (var ("10")))), (opp one)) in mul (one, x0) = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

