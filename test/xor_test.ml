open Xor
;;

open Gentest
;;

testing ("Xor (automatic) - seed: 499546545")
;;

testi
  (0)
  (try
   (let x0 =
      bequiv ((bxor ((bvar ("15")), (bvar ("8")))), (bnot (bvar ("6")))) in
    bnot x0 = bxor (x0, btrue)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (1)
  (try
   (let x0 = bxor ((bnot (bvar ("1"))), (bor ((bvar ("23")), btrue))) in
    bnot x0 = bxor (x0, btrue)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (2)
  (try (let x0 = bvar ("3") in bnot x0 = bxor (x0, btrue)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (3)
  (try (let x0 = bvar ("3") in bnot x0 = bxor (x0, btrue)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (4)
  (try
   (let x0 =
      bor
        ((bxor ((bvar ("6")), (bvar ("21")))),
         (bequiv ((bvar ("15")), (bvar ("11"))))) in
    bnot x0 = bxor (x0, btrue)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (5)
  (try
   (let x0 = bvar ("49") in
    let x1 = band ((bnot (bvar ("19"))), (bequiv ((bvar ("40")), bfalse))) in
    band (x0, x1) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (6)
  (try
   (let x0 =
      bequiv ((bequiv ((bvar ("38")), (bvar ("14")))), (bnot (bvar ("9")))) in
    let x1 = bnot (band ((bvar ("15")), (bvar ("0")))) in
    band (x0, x1) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (7)
  (try
   (let x0 = bnot (band ((bvar ("15")), (bvar ("0")))) in
    let x1 =
      bor
        ((bequiv ((bvar ("27")), (bvar ("22")))),
         (bxor ((bvar ("12")), (bvar ("22"))))) in
    band (x0, x1) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (8)
  (try
   (let x0 = bxor ((bequiv ((bvar ("35")), (bvar ("13")))), (bvar ("22"))) in
    let x1 = bvar ("2") in band (x0, x1) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (9)
  (try
   (let x0 = bnot (bequiv ((bvar ("18")), (bvar ("22")))) in
    let x1 =
      bequiv
        ((bequiv ((bvar ("38")), (bvar ("14")))),
         (bxor (btrue, (bvar ("3"))))) in
    band (x0, x1) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (10)
  (try (let x0 = bequiv ((bnot btrue), bfalse) in band (x0, btrue) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (11)
  (try (let x0 = bequiv ((bnot btrue), bfalse) in band (x0, btrue) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (12)
  (try
   (let x0 =
      bor ((bor ((bvar ("3")), (bvar ("7")))), (bxor (btrue, (bvar ("9"))))) in
    band (x0, btrue) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (13)
  (try (let x0 = bequiv ((bnot btrue), bfalse) in band (x0, btrue) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (14)
  (try
   (let x0 =
      bxor
        ((bxor ((bvar ("18")), (bvar ("10")))),
         (bor ((bvar ("7")), (bvar ("1"))))) in
    band (x0, btrue) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (15)
  (try
   (let x0 = bxor ((bnot btrue), (bvar ("16"))) in band (x0, bfalse) = bfalse)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (16)
  (try
   (let x0 =
      band
        ((bxor ((bvar ("15")), (bvar ("5")))), (bor ((bvar ("3")), bfalse))) in
    band (x0, bfalse) = bfalse) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (17)
  (try
   (let x0 = bor ((bnot (bvar ("23"))), (bxor (btrue, (bvar ("10"))))) in
    band (x0, bfalse) = bfalse) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (18)
  (try
   (let x0 =
      band ((bequiv ((bvar ("13")), (bvar ("23")))), (bnot (bvar ("10")))) in
    band (x0, bfalse) = bfalse) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (19)
  (try (let x0 = bnot (bvar ("1")) in band (x0, bfalse) = bfalse) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (20)
  (try
   (let x1 =
      bxor ((bxor ((bvar ("40")), (bvar ("21")))), (bnot (bvar ("6")))) in
    let x2 =
      bor
        ((bor ((bvar ("32")), (bvar ("59")))),
         (bor ((bvar ("46")), (bvar ("59"))))) in
    let x0 =
      bequiv ((bnot (bvar ("7"))), (bor ((bvar ("48")), (bvar ("13"))))) in
    band (x1, (bxor (x2, x0))) = bxor ((band (x1, x2)), (band (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (21)
  (try
   (let x1 = band ((bnot (bvar ("32"))), (bxor (bfalse, (bvar ("28"))))) in
    let x2 = bequiv ((bxor ((bvar ("56")), (bvar ("17")))), (bvar ("9"))) in
    let x0 =
      bor
        ((band ((bvar ("8")), (bvar ("51")))),
         (bor ((bvar ("46")), (bvar ("25"))))) in
    band (x1, (bxor (x2, x0))) = bxor ((band (x1, x2)), (band (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (22)
  (try
   (let x1 =
      bimply
        ((bimply ((bvar ("70")), (bvar ("16")))),
         (bequiv ((bvar ("63")), (bvar ("52"))))) in
    let x2 =
      band
        ((band ((bvar ("46")), (bvar ("46")))),
         (bequiv ((bvar ("60")), (bvar ("1"))))) in
    let x0 =
      band ((bnot (bvar ("32"))), (bor ((bvar ("57")), (bvar ("52"))))) in
    band (x1, (bxor (x2, x0))) = bxor ((band (x1, x2)), (band (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (23)
  (try
   (let x1 =
      bor
        ((band ((bvar ("8")), (bvar ("51")))),
         (bor ((bvar ("46")), (bvar ("25"))))) in
    let x2 = bvar ("6") in
    let x0 =
      bimply
        ((bor ((bvar ("13")), (bvar ("71")))),
         (bor ((bvar ("9")), (bvar ("58"))))) in
    band (x1, (bxor (x2, x0))) = bxor ((band (x1, x2)), (band (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (24)
  (try
   (let x1 =
      band
        ((bxor ((bvar ("37")), (bvar ("59")))),
         (bimply ((bvar ("41")), (bvar ("62"))))) in
    let x2 = bvar ("43") in
    let x0 =
      bor
        ((bor ((bvar ("7")), (bvar ("7")))),
         (bor ((bvar ("3")), (bvar ("25"))))) in
    band (x1, (bxor (x2, x0))) = bxor ((band (x1, x2)), (band (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (25)
  (try
   (let x1 =
      band
        ((bequiv ((bvar ("12")), (bvar ("46")))),
         (bimply ((bvar ("39")), bfalse))) in
    let x0 = bimply (btrue, (bequiv ((bvar ("7")), btrue))) in
    band (x1, (band (x1, x0))) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (26)
  (try
   (let x1 =
      bxor
        ((band ((bvar ("7")), (bvar ("25")))),
         (bor ((bvar ("26")), (bvar ("45"))))) in
    let x0 =
      bxor
        ((band ((bvar ("7")), (bvar ("25")))),
         (bor ((bvar ("26")), (bvar ("45"))))) in
    band (x1, (band (x1, x0))) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (27)
  (try
   (let x1 = bor ((bimply (bfalse, (bvar ("7")))), (bnot (bvar ("9")))) in
    let x0 =
      band
        ((bxor ((bvar ("35")), (bvar ("31")))),
         (bimply ((bvar ("39")), bfalse))) in
    band (x1, (band (x1, x0))) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (28)
  (try
   (let x1 = bnot (bimply ((bvar ("23")), (bvar ("39")))) in
    let x0 = bequiv ((bvar ("7")), (bxor (bfalse, (bvar ("38"))))) in
    band (x1, (band (x1, x0))) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (29)
  (try
   (let x1 = bnot (bequiv (btrue, (bvar ("44")))) in
    let x0 = bvar ("12") in band (x1, (band (x1, x0))) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (30)
  (try
   (let x0 = bnot (bequiv (btrue, (bvar ("17")))) in band (btrue, x0) = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (31)
  (try
   (let x0 = bequiv ((bvar ("16")), (bxor ((bvar ("17")), (bvar ("0"))))) in
    band (btrue, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (32)
  (try
   (let x0 = bequiv ((bvar ("16")), (bxor ((bvar ("17")), (bvar ("0"))))) in
    band (btrue, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (33)
  (try
   (let x0 = bequiv ((bvar ("16")), (bxor ((bvar ("18")), (bvar ("0"))))) in
    band (btrue, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (34)
  (try
   (let x0 =
      bor
        ((bimply (bfalse, (bvar ("24")))),
         (bimply ((bvar ("24")), (bvar ("13"))))) in
    band (btrue, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (35)
  (try
   (let x3 = bfalse in
    let x1 =
      bequiv
        ((bequiv ((bvar ("65")), (bvar ("68")))),
         (band ((bvar ("51")), (bvar ("72"))))) in
    let x0 =
      bxor
        ((bxor ((bvar ("13")), (bvar ("71")))), (band ((bvar ("49")), btrue))) in
    band ((bxor (x3, x1)), x0) = bxor ((band (x3, x0)), (band (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (36)
  (try
   (let x3 = bnot (bxor ((bvar ("40")), (bvar ("61")))) in
    let x1 =
      bequiv
        ((bimply ((bvar ("18")), (bvar ("1")))),
         (bimply (bfalse, (bvar ("43"))))) in
    let x0 = bvar ("69") in
    band ((bxor (x3, x1)), x0) = bxor ((band (x3, x0)), (band (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (37)
  (try
   (let x3 =
      band ((band ((bvar ("60")), bfalse)), (bor ((bvar ("51")), bfalse))) in
    let x1 =
      band
        ((band ((bvar ("60")), bfalse)), (bor ((bvar ("19")), (bvar ("50"))))) in
    let x0 = bequiv ((bor ((bvar ("15")), (bvar ("36")))), (bvar ("28"))) in
    band ((bxor (x3, x1)), x0) = bxor ((band (x3, x0)), (band (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (38)
  (try
   (let x3 = bor ((band ((bvar ("34")), btrue)), bfalse) in
    let x1 =
      bxor
        ((bxor ((bvar ("13")), (bvar ("71")))), (band ((bvar ("49")), btrue))) in
    let x0 =
      bimply
        ((bequiv ((bvar ("48")), (bvar ("28")))),
         (band ((bvar ("54")), bfalse))) in
    band ((bxor (x3, x1)), x0) = bxor ((band (x3, x0)), (band (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (39)
  (try
   (let x3 =
      band ((band ((bvar ("60")), bfalse)), (bor ((bvar ("51")), bfalse))) in
    let x1 =
      bimply
        ((bor ((bvar ("50")), (bvar ("16")))),
         (bimply ((bvar ("48")), (bvar ("54"))))) in
    let x0 = bxor ((bvar ("32")), (bimply ((bvar ("59")), (bvar ("29"))))) in
    band ((bxor (x3, x1)), x0) = bxor ((band (x3, x0)), (band (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (40)
  (try
   (let x1 =
      bxor
        ((bequiv ((bvar ("17")), (bvar ("22")))),
         (bor ((bvar ("32")), (bvar ("26"))))) in
    let x0 = bor ((bequiv ((bvar ("45")), btrue)), (bnot (bvar ("2")))) in
    band ((band (x1, x0)), x0) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (41)
  (try
   (let x1 =
      bimply
        ((bimply ((bvar ("3")), (bvar ("5")))), (band ((bvar ("2")), bfalse))) in
    let x0 = bvar ("1") in band ((band (x1, x0)), x0) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (42)
  (try
   (let x1 =
      bor
        ((bimply ((bvar ("45")), (bvar ("20")))),
         (bor ((bvar ("18")), (bvar ("26"))))) in
    let x0 = bnot (band (bfalse, (bvar ("18")))) in
    band ((band (x1, x0)), x0) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (43)
  (try
   (let x1 =
      bequiv
        ((bequiv ((bvar ("24")), (bvar ("31")))),
         (bequiv ((bvar ("4")), (bvar ("17"))))) in
    let x0 = band ((bxor (bfalse, (bvar ("10")))), (bvar ("28"))) in
    band ((band (x1, x0)), x0) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (44)
  (try
   (let x1 =
      bimply
        ((bimply ((bvar ("3")), (bvar ("5")))), (band ((bvar ("2")), bfalse))) in
    let x0 = bor ((bvar ("10")), (band ((bvar ("24")), (bvar ("0"))))) in
    band ((band (x1, x0)), x0) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (45)
  (try
   (let x2 =
      bimply ((bnot (bvar ("50"))), (bequiv ((bvar ("15")), (bvar ("58"))))) in
    let x1 = band ((bnot (bvar ("35"))), (bnot (bvar ("53")))) in
    let x0 = bnot (bimply ((bvar ("60")), (bvar ("18")))) in
    band ((band (x2, x1)), x0) = band (x2, (band (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (46)
  (try
   (let x2 = bvar ("68") in
    let x1 = bimply ((band ((bvar ("12")), (bvar ("30")))), (bvar ("1"))) in
    let x0 = bor ((band ((bvar ("60")), (bvar ("60")))), (bvar ("10"))) in
    band ((band (x2, x1)), x0) = band (x2, (band (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (47)
  (try
   (let x2 =
      band ((band ((bvar ("14")), (bvar ("1")))), (bnot (bvar ("73")))) in
    let x1 = bequiv ((bimply ((bvar ("61")), (bvar ("54")))), (bvar ("30"))) in
    let x0 =
      bxor
        ((bimply ((bvar ("21")), (bvar ("8")))),
         (bimply ((bvar ("64")), (bvar ("5"))))) in
    band ((band (x2, x1)), x0) = band (x2, (band (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (48)
  (try
   (let x2 = bxor ((bor ((bvar ("13")), (bvar ("74")))), (bvar ("69"))) in
    let x1 =
      bequiv
        ((bimply ((bvar ("0")), (bvar ("32")))),
         (bimply ((bvar ("62")), (bvar ("43"))))) in
    let x0 = band ((bvar ("35")), (bxor ((bvar ("57")), (bvar ("42"))))) in
    band ((band (x2, x1)), x0) = band (x2, (band (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (49)
  (try
   (let x2 =
      bxor
        ((bxor ((bvar ("48")), (bvar ("51")))),
         (bequiv ((bvar ("4")), (bvar ("17"))))) in
    let x1 = bnot (band ((bvar ("2")), (bvar ("70")))) in
    let x0 = band ((bvar ("35")), (bxor ((bvar ("57")), (bvar ("42"))))) in
    band ((band (x2, x1)), x0) = band (x2, (band (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (50)
  (try
   (let x0 =
      bor
        ((bor (bfalse, (bvar ("19")))),
         (bimply ((bvar ("23")), (bvar ("8"))))) in
    band (bfalse, x0) = bfalse) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (51)
  (try
   (let x0 =
      bxor
        ((bxor ((bvar ("24")), (bvar ("22")))), (bor (bfalse, (bvar ("1"))))) in
    band (bfalse, x0) = bfalse) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (52)
  (try
   (let x0 =
      bor
        ((bxor (btrue, (bvar ("21")))),
         (bimply ((bvar ("23")), (bvar ("8"))))) in
    band (bfalse, x0) = bfalse) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (53)
  (try
   (let x0 =
      band
        ((bor ((bvar ("18")), (bvar ("13")))),
         (bequiv ((bvar ("18")), btrue))) in
    band (bfalse, x0) = bfalse) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (54)
  (try (let x0 = bvar ("3") in band (bfalse, x0) = bfalse) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (55)
  (try
   (let x0 =
      bor
        ((bequiv ((bvar ("7")), btrue)),
         (bxor ((bvar ("13")), (bvar ("40"))))) in
    let x1 =
      bxor ((bxor ((bvar ("30")), (bvar ("46")))), (bequiv (bfalse, btrue))) in
    bxor (x0, x1) = bxor (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (56)
  (try
   (let x0 = bor ((bvar ("11")), bfalse) in
    let x1 = band ((bvar ("49")), (bnot (bvar ("16")))) in
    bxor (x0, x1) = bxor (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (57)
  (try
   (let x0 =
      bimply
        ((bxor ((bvar ("36")), (bvar ("45")))), (bimply (btrue, bfalse))) in
    let x1 = band ((bvar ("27")), (bimply ((bvar ("16")), (bvar ("29"))))) in
    bxor (x0, x1) = bxor (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (58)
  (try
   (let x0 =
      band ((bnot (bvar ("43"))), (bimply ((bvar ("16")), (bvar ("29"))))) in
    let x1 = bnot (bimply ((bvar ("24")), (bvar ("48")))) in
    bxor (x0, x1) = bxor (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (59)
  (try
   (let x0 = bimply ((bor (btrue, (bvar ("8")))), (bvar ("26"))) in
    let x1 = bimply ((bxor (bfalse, (bvar ("20")))), (bnot (bvar ("4")))) in
    bxor (x0, x1) = bxor (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (60)
  (try
   (let x0 = bnot (band ((bvar ("3")), (bvar ("11")))) in
    bxor (x0, bfalse) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (61)
  (try (let x0 = bvar ("17") in bxor (x0, bfalse) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (62)
  (try
   (let x0 = bor ((bor ((bvar ("12")), (bvar ("12")))), (bnot (bvar ("10")))) in
    bxor (x0, bfalse) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (63)
  (try
   (let x0 = bimply ((bvar ("15")), (bor (bfalse, (bvar ("1"))))) in
    bxor (x0, bfalse) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (64)
  (try
   (let x0 = bxor ((bvar ("5")), (bimply (btrue, (bvar ("7"))))) in
    bxor (x0, bfalse) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (65)
  (try
   (let x2 =
      bimply
        ((band ((bvar ("13")), (bvar ("17")))),
         (bimply ((bvar ("35")), btrue))) in
    let x0 =
      bor
        ((bor ((bvar ("47")), (bvar ("40")))),
         (bequiv ((bvar ("20")), (bvar ("7"))))) in
    bxor (x2, (bxor (x2, x0))) = bxor (bfalse, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (66)
  (try
   (let x2 = bnot (band ((bvar ("18")), bfalse)) in
    let x0 = bor ((bimply ((bvar ("42")), (bvar ("3")))), bfalse) in
    bxor (x2, (bxor (x2, x0))) = bxor (bfalse, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (67)
  (try
   (let x2 =
      bor
        ((bor ((bvar ("47")), (bvar ("40")))),
         (bequiv ((bvar ("20")), (bvar ("7"))))) in
    let x0 = bfalse in bxor (x2, (bxor (x2, x0))) = bxor (bfalse, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (68)
  (try
   (let x2 = bimply (bfalse, (band (btrue, (bvar ("7"))))) in
    let x0 = bvar ("5") in bxor (x2, (bxor (x2, x0))) = bxor (bfalse, x0))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (69)
  (try
   (let x2 =
      bimply ((bnot (bvar ("22"))), (bxor ((bvar ("15")), (bvar ("22"))))) in
    let x0 = bfalse in bxor (x2, (bxor (x2, x0))) = bxor (bfalse, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (70)
  (try
   (let x0 =
      bimply
        ((bequiv ((bvar ("13")), (bvar ("16")))),
         (bequiv ((bvar ("4")), (bvar ("21"))))) in
    let x1 = bxor ((bvar ("24")), (bequiv ((bvar ("10")), (bvar ("20"))))) in
    bxor ((bxor (x0, x1)), x1) = bxor (x0, bfalse)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (71)
  (try
   (let x0 =
      bxor
        ((bor (bfalse, (bvar ("3")))), (bimply ((bvar ("44")), (bvar ("9"))))) in
    let x1 = bnot (bvar ("20")) in
    bxor ((bxor (x0, x1)), x1) = bxor (x0, bfalse)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (72)
  (try
   (let x0 =
      bequiv
        ((bimply ((bvar ("43")), (bvar ("4")))),
         (bxor ((bvar ("13")), (bvar ("0"))))) in
    let x1 = bnot (band ((bvar ("27")), (bvar ("33")))) in
    bxor ((bxor (x0, x1)), x1) = bxor (x0, bfalse)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (73)
  (try
   (let x0 =
      bor
        ((bxor ((bvar ("34")), (bvar ("9")))), (bor ((bvar ("10")), btrue))) in
    let x1 =
      band ((bor (bfalse, bfalse)), (bxor ((bvar ("12")), (bvar ("3"))))) in
    bxor ((bxor (x0, x1)), x1) = bxor (x0, bfalse)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (74)
  (try
   (let x0 =
      band ((bor (btrue, bfalse)), (bor ((bvar ("24")), (bvar ("44"))))) in
    let x1 =
      bxor
        ((bxor ((bvar ("29")), (bvar ("43")))),
         (bequiv ((bvar ("10")), (bvar ("20"))))) in
    bxor ((bxor (x0, x1)), x1) = bxor (x0, bfalse)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (75)
  (try
   (let x2 =
      bor
        ((bequiv ((bvar ("33")), bfalse)),
         (bxor ((bvar ("48")), (bvar ("66"))))) in
    let x1 =
      bor
        ((bor ((bvar ("46")), (bvar ("9")))),
         (bimply ((bvar ("49")), (bvar ("36"))))) in
    let x0 = bnot (bxor (btrue, (bvar ("1")))) in
    bxor ((bxor (x2, x1)), x0) = bxor (x2, (bxor (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (76)
  (try
   (let x2 =
      band
        ((bxor ((bvar ("67")), (bvar ("40")))),
         (bxor ((bvar ("55")), (bvar ("8"))))) in
    let x1 = bvar ("59") in
    let x0 = bnot (bnot (bvar ("47"))) in
    bxor ((bxor (x2, x1)), x0) = bxor (x2, (bxor (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (77)
  (try
   (let x2 =
      bor
        ((bequiv ((bvar ("33")), bfalse)),
         (bxor ((bvar ("48")), (bvar ("66"))))) in
    let x1 =
      bxor
        ((band ((bvar ("11")), (bvar ("14")))),
         (bxor ((bvar ("49")), (bvar ("5"))))) in
    let x0 = bvar ("29") in
    bxor ((bxor (x2, x1)), x0) = bxor (x2, (bxor (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (78)
  (try
   (let x2 = bvar ("26") in
    let x1 =
      bor
        ((bxor ((bvar ("66")), (bvar ("55")))),
         (bequiv ((bvar ("63")), (bvar ("33"))))) in
    let x0 =
      bor ((bnot (bvar ("57"))), (bequiv ((bvar ("22")), (bvar ("36"))))) in
    bxor ((bxor (x2, x1)), x0) = bxor (x2, (bxor (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (79)
  (try
   (let x2 =
      bor
        ((band ((bvar ("15")), (bvar ("41")))),
         (bxor ((bvar ("48")), (bvar ("66"))))) in
    let x1 =
      bor ((bimply ((bvar ("22")), bfalse)), (band (btrue, (bvar ("33"))))) in
    let x0 =
      bequiv
        ((bxor ((bvar ("64")), bfalse)),
         (bxor ((bvar ("35")), (bvar ("54"))))) in
    bxor ((bxor (x2, x1)), x0) = bxor (x2, (bxor (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (80)
  (try
   (let x0 = bnot (band ((bvar ("4")), (bvar ("24")))) in
    bxor (bfalse, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (81)
  (try
   (let x0 =
      bor
        ((bequiv ((bvar ("13")), (bvar ("15")))),
         (band (bfalse, (bvar ("17"))))) in
    bxor (bfalse, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (82)
  (try (let x0 = btrue in bxor (bfalse, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (83)
  (try
   (let x0 = bor ((bequiv ((bvar ("13")), (bvar ("15")))), (bvar ("9"))) in
    bxor (bfalse, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (84)
  (try
   (let x0 =
      bimply ((bor ((bvar ("17")), btrue)), (bxor (bfalse, (bvar ("2"))))) in
    bxor (bfalse, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (85)
  (try
   (let x1 = bimply ((bimply ((bvar ("36")), (bvar ("7")))), (bvar ("31"))) in
    let x0 = bnot (bor ((bvar ("15")), (bvar ("33")))) in
    bor (x1, x0) = bxor ((bxor (x1, x0)), (band (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (86)
  (try
   (let x1 = bvar ("2") in
    let x0 = btrue in bor (x1, x0) = bxor ((bxor (x1, x0)), (band (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (87)
  (try
   (let x1 = band ((bvar ("31")), (bor ((bvar ("21")), (bvar ("44"))))) in
    let x0 = btrue in bor (x1, x0) = bxor ((bxor (x1, x0)), (band (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (88)
  (try
   (let x1 =
      bequiv
        ((bxor ((bvar ("4")), bfalse)), (bxor ((bvar ("4")), (bvar ("33"))))) in
    let x0 = bvar ("24") in
    bor (x1, x0) = bxor ((bxor (x1, x0)), (band (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (89)
  (try
   (let x1 = band ((bnot (bvar ("31"))), (bvar ("42"))) in
    let x0 = bimply ((band ((bvar ("49")), (bvar ("38")))), (bvar ("8"))) in
    bor (x1, x0) = bxor ((bxor (x1, x0)), (band (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (90)
  (try
   (let x1 =
      bimply
        ((band ((bvar ("37")), (bvar ("22")))),
         (bimply ((bvar ("20")), (bvar ("40"))))) in
    let x0 = bnot (band ((bvar ("5")), (bvar ("20")))) in
    bimply (x1, x0) = bor ((bnot x1), x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (91)
  (try
   (let x1 =
      bor
        ((bequiv ((bvar ("10")), (bvar ("28")))),
         (bxor ((bvar ("45")), (bvar ("34"))))) in
    let x0 = bxor ((bvar ("17")), (bequiv ((bvar ("47")), btrue))) in
    bimply (x1, x0) = bor ((bnot x1), x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (92)
  (try
   (let x1 =
      band
        ((bimply ((bvar ("30")), (bvar ("18")))),
         (band ((bvar ("27")), btrue))) in
    let x0 = bvar ("26") in bimply (x1, x0) = bor ((bnot x1), x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (93)
  (try
   (let x1 =
      bor
        ((band ((bvar ("38")), (bvar ("37")))),
         (bimply ((bvar ("22")), (bvar ("20"))))) in
    let x0 =
      band
        ((band ((bvar ("30")), (bvar ("23")))), (band ((bvar ("27")), btrue))) in
    bimply (x1, x0) = bor ((bnot x1), x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (94)
  (try
   (let x1 = bor (btrue, (bnot (bvar ("36")))) in
    let x0 = bvar ("21") in bimply (x1, x0) = bor ((bnot x1), x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (95)
  (try
   (let x0 = bvar ("42") in
    let x1 = bequiv ((bimply (btrue, (bvar ("46")))), (bvar ("27"))) in
    bequiv (x0, x1) = band ((bimply (x0, x1)), (bimply (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (96)
  (try
   (let x0 = bnot (bimply ((bvar ("5")), btrue)) in
    let x1 = bvar ("27") in
    bequiv (x0, x1) = band ((bimply (x0, x1)), (bimply (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (97)
  (try
   (let x0 = bnot (bnot (bvar ("28"))) in
    let x1 = bimply ((band ((bvar ("37")), (bvar ("17")))), (bvar ("22"))) in
    bequiv (x0, x1) = band ((bimply (x0, x1)), (bimply (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (98)
  (try
   (let x0 = bimply ((bor (bfalse, (bvar ("8")))), (bvar ("47"))) in
    let x1 = bnot (bxor (btrue, (bvar ("20")))) in
    bequiv (x0, x1) = band ((bimply (x0, x1)), (bimply (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (99)
  (try
   (let x0 =
      bor
        ((bxor ((bvar ("5")), (bvar ("11")))),
         (bimply ((bvar ("32")), (bvar ("30"))))) in
    let x1 =
      bimply
        ((bequiv ((bvar ("6")), (bvar ("49")))),
         (band ((bvar ("20")), (bvar ("10"))))) in
    bequiv (x0, x1) = band ((bimply (x0, x1)), (bimply (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

