open Ring_var
;;

open Gentest
;;

testing ("Ring_var (automatic) - seed: 138285632")
;;

testi
  (0)
  (try
   (let x0 =
      mul
        ((mul ((var ("17")), (var ("42")))),
         (add ((var ("28")), (var ("8"))))) in
    let x1 = opp (opp (var ("21"))) in add (x0, x1) = add (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (1)
  (try
   (let x0 = opp (opp (var ("18"))) in
    let x1 = mul ((var ("48")), (opp (var ("31")))) in
    add (x0, x1) = add (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (2)
  (try
   (let x0 = add ((var ("42")), (var ("40"))) in
    let x1 = var ("0") in add (x0, x1) = add (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (3)
  (try
   (let x0 = var ("24") in
    let x1 =
      mul
        ((mul ((var ("12")), (var ("12")))),
         (mul ((var ("17")), (var ("17"))))) in
    add (x0, x1) = add (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (4)
  (try
   (let x0 = add ((mul ((var ("33")), (var ("29")))), (opp (var ("25")))) in
    let x1 = one in add (x0, x1) = add (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (5)
  (try
   (let x0 =
      add
        ((add ((var ("1")), (var ("2")))), (add ((var ("6")), (var ("21"))))) in
    add (x0, zero) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (6)
  (try
   (let x0 = opp (add ((var ("22")), (var ("5")))) in add (x0, zero) = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (7)
  (try
   (let x0 =
      add
        ((add ((var ("1")), (var ("2")))), (add ((var ("6")), (var ("21"))))) in
    add (x0, zero) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (8)
  (try (let x0 = one in add (x0, zero) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (9)
  (try
   (let x0 = add ((add ((var ("1")), (var ("2")))), (opp (var ("18")))) in
    add (x0, zero) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (10)
  (try
   (let x0 = add ((add ((var ("14")), (var ("9")))), (add (one, zero))) in
    add (x0, (opp x0)) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (11)
  (try
   (let x0 =
      add ((add ((var ("14")), (var ("9")))), (mul ((var ("16")), one))) in
    add (x0, (opp x0)) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (12)
  (try (let x0 = var ("5") in add (x0, (opp x0)) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (13)
  (try
   (let x0 = opp (add ((var ("9")), (var ("0")))) in
    add (x0, (opp x0)) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (14)
  (try (let x0 = opp one in add (x0, (opp x0)) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (15)
  (try
   (let x2 = mul ((var ("1")), (add ((var ("15")), (var ("41"))))) in
    let x1 = add ((opp (var ("1"))), (add ((var ("4")), (var ("7"))))) in
    let x0 =
      mul
        ((add ((var ("24")), (var ("65")))),
         (mul ((var ("23")), (var ("13"))))) in
    add ((add (x2, x1)), x0) = add (x2, (add (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (16)
  (try
   (let x2 =
      add ((add ((var ("25")), (var ("34")))), (mul ((var ("30")), one))) in
    let x1 = opp (add (one, (var ("59")))) in
    let x0 = mul ((mul ((var ("52")), (var ("38")))), (opp (var ("34")))) in
    add ((add (x2, x1)), x0) = add (x2, (add (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (17)
  (try
   (let x2 = mul ((var ("34")), (mul ((var ("23")), (var ("13"))))) in
    let x1 = opp (var ("38")) in
    let x0 =
      add ((mul ((var ("1")), (var ("23")))), (mul ((var ("30")), one))) in
    add ((add (x2, x1)), x0) = add (x2, (add (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (18)
  (try
   (let x2 = var ("70") in
    let x1 = var ("37") in
    let x0 =
      mul
        ((add ((var ("19")), (var ("53")))),
         (add ((var ("20")), (var ("39"))))) in
    add ((add (x2, x1)), x0) = add (x2, (add (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (19)
  (try
   (let x2 = mul ((var ("34")), (opp (var ("34")))) in
    let x1 = mul ((var ("1")), (add ((var ("15")), (var ("41"))))) in
    let x0 = opp (mul ((var ("13")), (var ("18")))) in
    add ((add (x2, x1)), x0) = add (x2, (add (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (20)
  (try
   (let x0 = add ((add ((var ("24")), zero)), (mul ((var ("20")), zero))) in
    add (zero, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (21)
  (try (let x0 = var ("9") in add (zero, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (22)
  (try
   (let x0 = mul ((mul ((var ("6")), zero)), (add (one, (var ("4"))))) in
    add (zero, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (23)
  (try (let x0 = opp (opp zero) in add (zero, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (24)
  (try (let x0 = one in add (zero, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (25)
  (try
   (let x0 = mul ((var ("4")), (add ((var ("5")), zero))) in
    add ((opp x0), x0) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (26)
  (try (let x0 = var ("4") in add ((opp x0), x0) = zero) with
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
   (let x0 = mul ((mul ((var ("14")), one)), (opp (var ("22")))) in
    add ((opp x0), x0) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (30)
  (try
   (let x0 = var ("49") in
    let x1 = opp (opp (var ("28"))) in mul (x0, x1) = mul (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (31)
  (try
   (let x0 = opp (var ("10")) in
    let x1 = add ((var ("15")), (opp (var ("30")))) in
    mul (x0, x1) = mul (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (32)
  (try
   (let x0 = opp (var ("2")) in
    let x1 =
      add
        ((mul ((var ("48")), (var ("17")))),
         (mul ((var ("11")), (var ("14"))))) in
    mul (x0, x1) = mul (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (33)
  (try
   (let x0 = var ("9") in
    let x1 =
      add
        ((add ((var ("22")), (var ("43")))),
         (mul ((var ("11")), (var ("14"))))) in
    mul (x0, x1) = mul (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (34)
  (try
   (let x0 =
      mul ((mul ((var ("24")), (var ("8")))), (mul (zero, (var ("3"))))) in
    let x1 =
      mul ((mul ((var ("24")), (var ("8")))), (mul (zero, (var ("3"))))) in
    mul (x0, x1) = mul (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (35)
  (try (let x0 = mul (zero, (opp (var ("1")))) in mul (x0, zero) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (36)
  (try (let x0 = add (one, (opp (var ("3")))) in mul (x0, zero) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (37)
  (try (let x0 = var ("14") in mul (x0, zero) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (38)
  (try (let x0 = one in mul (x0, zero) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (39)
  (try
   (let x0 = opp (add ((var ("21")), (var ("0")))) in mul (x0, zero) = zero)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (40)
  (try (let x0 = opp (var ("9")) in mul (x0, one) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (41)
  (try
   (let x0 = add ((add ((var ("20")), (var ("7")))), (var ("11"))) in
    mul (x0, one) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (42)
  (try (let x0 = opp (add ((var ("5")), (var ("10")))) in mul (x0, one) = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (43)
  (try
   (let x0 = add ((add ((var ("20")), (var ("7")))), (var ("11"))) in
    mul (x0, one) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (44)
  (try (let x0 = zero in mul (x0, one) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (45)
  (try
   (let x1 = var ("68") in
    let x2 = add ((mul ((var ("32")), one)), (opp (var ("59")))) in
    let x0 = opp (add (one, (var ("38")))) in
    mul (x1, (add (x2, x0))) = add ((mul (x1, x2)), (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (46)
  (try
   (let x1 = add ((var ("35")), (mul ((var ("52")), zero))) in
    let x2 =
      add
        ((add ((var ("47")), (var ("57")))),
         (mul ((var ("51")), (var ("30"))))) in
    let x0 = var ("13") in
    mul (x1, (add (x2, x0))) = add ((mul (x1, x2)), (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (47)
  (try
   (let x1 = opp (mul ((var ("26")), (var ("4")))) in
    let x2 = var ("13") in
    let x0 = opp (opp zero) in
    mul (x1, (add (x2, x0))) = add ((mul (x1, x2)), (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (48)
  (try
   (let x1 = var ("17") in
    let x2 = var ("17") in
    let x0 = mul ((add ((var ("12")), (var ("19")))), (var ("50"))) in
    mul (x1, (add (x2, x0))) = add ((mul (x1, x2)), (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (49)
  (try
   (let x1 = add ((var ("35")), (mul ((var ("52")), zero))) in
    let x2 =
      mul ((mul ((var ("69")), (var ("9")))), (add (zero, (var ("73"))))) in
    let x0 = mul ((opp zero), (opp one)) in
    mul (x1, (add (x2, x0))) = add ((mul (x1, x2)), (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (50)
  (try
   (let x1 = opp (add ((var ("38")), (var ("37")))) in
    let x0 = mul ((var ("18")), (add ((var ("20")), zero))) in
    mul (x1, (opp x0)) = opp (mul (x1, x0))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (51)
  (try
   (let x1 = var ("20") in
    let x0 = var ("9") in mul (x1, (opp x0)) = opp (mul (x1, x0))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (52)
  (try
   (let x1 = var ("19") in
    let x0 =
      add
        ((add ((var ("35")), (var ("33")))),
         (add ((var ("3")), (var ("10"))))) in
    mul (x1, (opp x0)) = opp (mul (x1, x0))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (53)
  (try
   (let x1 = mul ((add ((var ("28")), zero)), (var ("1"))) in
    let x0 =
      mul
        ((add ((var ("3")), (var ("39")))),
         (mul ((var ("19")), (var ("12"))))) in
    mul (x1, (opp x0)) = opp (mul (x1, x0))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (54)
  (try
   (let x1 =
      mul
        ((add ((var ("3")), (var ("39")))),
         (mul ((var ("19")), (var ("12"))))) in
    let x0 = add ((opp (var ("21"))), (add ((var ("3")), zero))) in
    mul (x1, (opp x0)) = opp (mul (x1, x0))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (55)
  (try
   (let x3 = var ("54") in
    let x1 = add ((var ("32")), (mul ((var ("46")), (var ("20"))))) in
    let x0 = mul ((mul (one, (var ("59")))), (var ("1"))) in
    mul ((add (x3, x1)), x0) = add ((mul (x3, x0)), (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (56)
  (try
   (let x3 = var ("4") in
    let x1 = opp (add ((var ("42")), (var ("66")))) in
    let x0 = add ((var ("32")), (add ((var ("23")), (var ("34"))))) in
    mul ((add (x3, x1)), x0) = add ((mul (x3, x0)), (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (57)
  (try
   (let x3 = opp (var ("19")) in
    let x1 = mul ((opp (var ("3"))), (opp (var ("73")))) in
    let x0 = opp (opp (var ("48"))) in
    mul ((add (x3, x1)), x0) = add ((mul (x3, x0)), (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (58)
  (try
   (let x3 = var ("74") in
    let x1 = var ("50") in
    let x0 =
      add ((mul (one, (var ("1")))), (add ((var ("68")), (var ("52"))))) in
    mul ((add (x3, x1)), x0) = add ((mul (x3, x0)), (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (59)
  (try
   (let x3 =
      add ((add ((var ("56")), one)), (add ((var ("37")), (var ("34"))))) in
    let x1 = mul ((add ((var ("6")), zero)), (var ("64"))) in
    let x0 = add ((var ("14")), (var ("25"))) in
    mul ((add (x3, x1)), x0) = add ((mul (x3, x0)), (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (60)
  (try (let x0 = var ("6") in mul (zero, x0) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (61)
  (try (let x0 = var ("6") in mul (zero, x0) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (62)
  (try
   (let x0 = add ((opp (var ("1"))), (opp (var ("10")))) in
    mul (zero, x0) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (63)
  (try (let x0 = zero in mul (zero, x0) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (64)
  (try
   (let x0 = add ((opp (var ("1"))), (opp (var ("10")))) in
    mul (zero, x0) = zero) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (65)
  (try
   (let x1 = add ((mul ((var ("34")), one)), (opp (var ("28")))) in
    let x0 = opp (opp (var ("30"))) in
    mul ((opp x1), x0) = opp (mul (x1, x0))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (66)
  (try
   (let x1 =
      add ((mul ((var ("7")), one)), (mul ((var ("43")), (var ("33"))))) in
    let x0 = opp (var ("49")) in mul ((opp x1), x0) = opp (mul (x1, x0)))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (67)
  (try
   (let x1 = opp (var ("25")) in
    let x0 = add ((mul ((var ("34")), one)), (add (zero, (var ("0"))))) in
    mul ((opp x1), x0) = opp (mul (x1, x0))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (68)
  (try
   (let x1 = add ((mul ((var ("34")), one)), (opp (var ("28")))) in
    let x0 = one in mul ((opp x1), x0) = opp (mul (x1, x0))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (69)
  (try
   (let x1 = opp (var ("25")) in
    let x0 = add ((var ("35")), (var ("18"))) in
    mul ((opp x1), x0) = opp (mul (x1, x0))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (70)
  (try
   (let x2 = one in
    let x1 = opp (opp one) in
    let x0 = add ((var ("29")), (mul ((var ("50")), (var ("71"))))) in
    mul ((mul (x2, x1)), x0) = mul (x2, (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (71)
  (try
   (let x2 = opp (opp one) in
    let x1 = var ("22") in
    let x0 = opp (var ("22")) in
    mul ((mul (x2, x1)), x0) = mul (x2, (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (72)
  (try
   (let x2 = opp (opp (var ("40"))) in
    let x1 = add ((var ("45")), (mul ((var ("54")), (var ("62"))))) in
    let x0 = add ((mul ((var ("48")), (var ("72")))), (opp (var ("49")))) in
    mul ((mul (x2, x1)), x0) = mul (x2, (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (73)
  (try
   (let x2 = opp (add ((var ("22")), (var ("59")))) in
    let x1 = add ((opp zero), (add ((var ("5")), (var ("56"))))) in
    let x0 = mul ((add ((var ("35")), (var ("13")))), (var ("2"))) in
    mul ((mul (x2, x1)), x0) = mul (x2, (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (74)
  (try
   (let x2 = var ("8") in
    let x1 = add ((opp zero), (add ((var ("5")), (var ("56"))))) in
    let x0 =
      add
        ((mul ((var ("21")), (var ("19")))),
         (add ((var ("5")), (var ("56"))))) in
    mul ((mul (x2, x1)), x0) = mul (x2, (mul (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (75)
  (try (let x0 = var ("9") in mul (one, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (76)
  (try
   (let x0 = mul ((opp (var ("7"))), (opp (var ("3")))) in mul (one, x0) = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (77)
  (try
   (let x0 = add ((add ((var ("7")), (var ("16")))), (var ("21"))) in
    mul (one, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (78)
  (try (let x0 = opp (opp (var ("12"))) in mul (one, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (79)
  (try (let x0 = opp (mul (one, (var ("12")))) in mul (one, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

