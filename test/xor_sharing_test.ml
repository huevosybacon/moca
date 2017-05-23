open Xor_sharing
;;

open Gentest
;;

testing ("Xor_sharing (automatic) - seed: 837576295")
;;

testi
  (0)
  (try
   (let x0 = bxor ((bnot (bvar ("24"))), (bvar ("12"))) in
    bnot x0 = bxor (x0, btrue)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (1)
  (try
   (let x0 =
      bimply ((band ((bvar ("20")), (bvar ("23")))), (bnot (bvar ("9")))) in
    bnot x0 = bxor (x0, btrue)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (2)
  (try (let x0 = bnot (bvar ("10")) in bnot x0 = bxor (x0, btrue)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (3)
  (try
   (let x0 = band ((bnot (bvar ("1"))), (band (btrue, (bvar ("2"))))) in
    bnot x0 = bxor (x0, btrue)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (4)
  (try (let x0 = bnot (bvar ("10")) in bnot x0 = bxor (x0, btrue)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (5)
  (try
   (let x0 = bimply ((bor ((bvar ("46")), (bvar ("46")))), (bnot btrue)) in
    let x1 = band ((bor ((bvar ("6")), (bvar ("2")))), bfalse) in
    band (x0, x1) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (6)
  (try
   (let x0 = bvar ("11") in
    let x1 = bnot (bnot btrue) in band (x0, x1) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (7)
  (try
   (let x0 = bxor ((bvar ("1")), (bnot (bvar ("11")))) in
    let x1 = bxor ((bnot (bvar ("46"))), (bimply (btrue, (bvar ("9"))))) in
    band (x0, x1) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (8)
  (try
   (let x0 = bnot btrue in
    let x1 = bequiv ((bimply ((bvar ("49")), bfalse)), (bvar ("45"))) in
    band (x0, x1) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (9)
  (try
   (let x0 =
      bimply
        ((bor ((bvar ("46")), (bvar ("46")))),
         (band ((bvar ("0")), (bvar ("7"))))) in
    let x1 = bnot btrue in band (x0, x1) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (10)
  (try
   (let x0 =
      band
        ((bimply ((bvar ("1")), (bvar ("1")))),
         (bimply ((bvar ("15")), (bvar ("21"))))) in
    band (x0, btrue) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (11)
  (try (let x0 = band ((bnot (bvar ("0"))), btrue) in band (x0, btrue) = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (12)
  (try (let x0 = bxor ((bvar ("8")), (bvar ("2"))) in band (x0, btrue) = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (13)
  (try (let x0 = bnot (bnot (bvar ("3"))) in band (x0, btrue) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (14)
  (try
   (let x0 = bxor ((bimply ((bvar ("22")), (bvar ("10")))), (bvar ("2"))) in
    band (x0, btrue) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (15)
  (try (let x0 = bfalse in band (x0, bfalse) = bfalse) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (16)
  (try
   (let x0 =
      bequiv
        ((band ((bvar ("24")), (bvar ("7")))),
         (bimply (bfalse, (bvar ("18"))))) in
    band (x0, bfalse) = bfalse) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (17)
  (try
   (let x0 = bnot (bxor ((bvar ("10")), btrue)) in band (x0, bfalse) = bfalse)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (18)
  (try
   (let x0 = bnot (bxor ((bvar ("10")), btrue)) in band (x0, bfalse) = bfalse)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (19)
  (try
   (let x0 =
      bequiv
        ((band ((bvar ("24")), (bvar ("7")))),
         (bimply (bfalse, (bvar ("18"))))) in
    band (x0, bfalse) = bfalse) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (20)
  (try
   (let x1 = band ((bnot bfalse), (bor ((bvar ("23")), (bvar ("65"))))) in
    let x2 =
      bimply
        ((bimply ((bvar ("65")), (bvar ("39")))),
         (bxor ((bvar ("49")), (bvar ("58"))))) in
    let x0 =
      band
        ((bor ((bvar ("66")), (bvar ("74")))), (bxor (bfalse, (bvar ("13"))))) in
    band (x1, (bxor (x2, x0))) = bxor ((band (x1, x2)), (band (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (21)
  (try
   (let x1 =
      bequiv
        ((bimply ((bvar ("2")), (bvar ("0")))), (bor (btrue, (bvar ("50"))))) in
    let x2 = bfalse in
    let x0 =
      bxor
        ((bequiv ((bvar ("2")), btrue)), (band ((bvar ("4")), (bvar ("46"))))) in
    band (x1, (bxor (x2, x0))) = bxor ((band (x1, x2)), (band (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (22)
  (try
   (let x1 = bnot (band ((bvar ("54")), (bvar ("42")))) in
    let x2 = bor ((bnot (bvar ("66"))), (bxor ((bvar ("55")), btrue))) in
    let x0 = bor ((bnot (bvar ("66"))), (bnot (bvar ("53")))) in
    band (x1, (bxor (x2, x0))) = bxor ((band (x1, x2)), (band (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (23)
  (try
   (let x1 =
      bor
        ((bor ((bvar ("37")), (bvar ("31")))),
         (band ((bvar ("13")), (bvar ("25"))))) in
    let x2 = bnot (bor ((bvar ("56")), (bvar ("42")))) in
    let x0 =
      bequiv
        ((bimply ((bvar ("2")), (bvar ("0")))), (bor (btrue, (bvar ("50"))))) in
    band (x1, (bxor (x2, x0))) = bxor ((band (x1, x2)), (band (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (24)
  (try
   (let x1 =
      bimply ((bnot (bvar ("0"))), (band ((bvar ("32")), (bvar ("13"))))) in
    let x2 =
      bequiv
        ((bxor ((bvar ("14")), (bvar ("47")))), (bor (btrue, (bvar ("50"))))) in
    let x0 = bnot (bequiv ((bvar ("17")), (bvar ("9")))) in
    band (x1, (bxor (x2, x0))) = bxor ((band (x1, x2)), (band (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (25)
  (try
   (let x1 =
      bxor ((bequiv ((bvar ("39")), (bvar ("23")))), (bnot (bvar ("32")))) in
    let x0 = bimply ((bnot bfalse), (band (bfalse, (bvar ("25"))))) in
    band (x1, (band (x1, x0))) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (26)
  (try
   (let x1 = btrue in
    let x0 = bnot (band ((bvar ("15")), (bvar ("0")))) in
    band (x1, (band (x1, x0))) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (27)
  (try
   (let x1 = bnot (band ((bvar ("15")), (bvar ("0")))) in
    let x0 =
      band
        ((bimply ((bvar ("15")), (bvar ("46")))),
         (bxor ((bvar ("28")), (bvar ("39"))))) in
    band (x1, (band (x1, x0))) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (28)
  (try
   (let x1 = bimply ((bxor (btrue, (bvar ("24")))), (bnot (bvar ("16")))) in
    let x0 = bxor ((bimply (btrue, (bvar ("28")))), (bnot (bvar ("32")))) in
    band (x1, (band (x1, x0))) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (29)
  (try
   (let x1 = bnot (bequiv ((bvar ("20")), bfalse)) in
    let x0 = bor ((bnot (bvar ("41"))), (bor ((bvar ("2")), btrue))) in
    band (x1, (band (x1, x0))) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (30)
  (try
   (let x0 = bimply ((bor (bfalse, (bvar ("20")))), (bnot bfalse)) in
    band (btrue, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (31)
  (try (let x0 = bfalse in band (btrue, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (32)
  (try
   (let x0 = bimply ((bor (bfalse, (bvar ("20")))), (bnot bfalse)) in
    band (btrue, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (33)
  (try
   (let x0 =
      bequiv
        ((bimply ((bvar ("17")), (bvar ("22")))),
         (bor ((bvar ("11")), (bvar ("23"))))) in
    band (btrue, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (34)
  (try
   (let x0 = bimply ((bor ((bvar ("19")), (bvar ("20")))), (bnot bfalse)) in
    band (btrue, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (35)
  (try
   (let x3 =
      band
        ((bimply ((bvar ("41")), (bvar ("39")))),
         (bxor (bfalse, (bvar ("22"))))) in
    let x1 =
      bxor ((bnot (bvar ("18"))), (bequiv ((bvar ("5")), (bvar ("39"))))) in
    let x0 = bvar ("36") in
    band ((bxor (x3, x1)), x0) = bxor ((band (x3, x0)), (band (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (36)
  (try
   (let x3 =
      bor
        ((band ((bvar ("67")), (bvar ("34")))),
         (bimply ((bvar ("18")), (bvar ("55"))))) in
    let x1 = bequiv ((bor ((bvar ("39")), (bvar ("28")))), (bvar ("28"))) in
    let x0 = bvar ("6") in
    band ((bxor (x3, x1)), x0) = bxor ((band (x3, x0)), (band (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (37)
  (try
   (let x3 =
      bxor ((bor (bfalse, bfalse)), (bor ((bvar ("23")), (bvar ("0"))))) in
    let x1 = bnot (band (bfalse, (bvar ("57")))) in
    let x0 = bxor ((bnot (bvar ("18"))), (bor ((bvar ("23")), (bvar ("0"))))) in
    band ((bxor (x3, x1)), x0) = bxor ((band (x3, x0)), (band (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (38)
  (try
   (let x3 = bvar ("48") in
    let x1 = bnot (bor ((bvar ("49")), (bvar ("33")))) in
    let x0 =
      bimply ((bnot (bvar ("35"))), (band ((bvar ("42")), (bvar ("27"))))) in
    band ((bxor (x3, x1)), x0) = bxor ((band (x3, x0)), (band (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (39)
  (try
   (let x3 =
      bxor ((bor (bfalse, bfalse)), (bor ((bvar ("23")), (bvar ("0"))))) in
    let x1 =
      bequiv
        ((bequiv ((bvar ("19")), (bvar ("31")))),
         (bimply (bfalse, (bvar ("63"))))) in
    let x0 =
      bxor
        ((band ((bvar ("13")), bfalse)),
         (bxor ((bvar ("20")), (bvar ("56"))))) in
    band ((bxor (x3, x1)), x0) = bxor ((band (x3, x0)), (band (x1, x0))))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (40)
  (try
   (let x1 = bimply ((bxor (bfalse, (bvar ("40")))), (bvar ("44"))) in
    let x0 =
      band
        ((band ((bvar ("41")), (bvar ("45")))),
         (bimply (bfalse, (bvar ("21"))))) in
    band ((band (x1, x0)), x0) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (41)
  (try
   (let x1 = bfalse in
    let x0 = bvar ("30") in band ((band (x1, x0)), x0) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (42)
  (try
   (let x1 =
      bxor ((bequiv ((bvar ("39")), btrue)), (bxor ((bvar ("13")), btrue))) in
    let x0 =
      band
        ((bimply ((bvar ("4")), (bvar ("31")))),
         (bimply ((bvar ("43")), bfalse))) in
    band ((band (x1, x0)), x0) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (43)
  (try
   (let x1 = bvar ("16") in
    let x0 = band ((bvar ("36")), (bimply ((bvar ("43")), bfalse))) in
    band ((band (x1, x0)), x0) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (44)
  (try
   (let x1 =
      bxor
        ((bequiv ((bvar ("47")), btrue)),
         (bxor ((bvar ("13")), (bvar ("0"))))) in
    let x0 =
      band
        ((bequiv ((bvar ("7")), btrue)), (bor ((bvar ("32")), (bvar ("23"))))) in
    band ((band (x1, x0)), x0) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (45)
  (try
   (let x2 = band ((bnot (bvar ("16"))), (bvar ("23"))) in
    let x1 =
      bxor
        ((bxor (bfalse, (bvar ("11")))),
         (bequiv ((bvar ("7")), (bvar ("52"))))) in
    let x0 =
      bxor
        ((bequiv ((bvar ("54")), (bvar ("37")))),
         (bequiv (bfalse, (bvar ("32"))))) in
    band ((band (x2, x1)), x0) = band (x2, (band (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (46)
  (try
   (let x2 = bvar ("64") in
    let x1 = bnot (band ((bvar ("11")), (bvar ("69")))) in
    let x0 =
      bxor
        ((bequiv ((bvar ("54")), (bvar ("37")))),
         (bimply (btrue, (bvar ("67"))))) in
    band ((band (x2, x1)), x0) = band (x2, (band (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (47)
  (try
   (let x2 = btrue in
    let x1 = bvar ("53") in
    let x0 =
      band
        ((bxor (bfalse, (bvar ("29")))),
         (bequiv ((bvar ("9")), (bvar ("69"))))) in
    band ((band (x2, x1)), x0) = band (x2, (band (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (48)
  (try
   (let x2 =
      bequiv ((bimply ((bvar ("13")), (bvar ("57")))), (bnot (bvar ("16")))) in
    let x1 =
      bxor ((band ((bvar ("64")), (bvar ("74")))), (bnot (bvar ("15")))) in
    let x0 =
      bequiv
        ((band ((bvar ("6")), (bvar ("63")))),
         (bimply ((bvar ("31")), (bvar ("53"))))) in
    band ((band (x2, x1)), x0) = band (x2, (band (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (49)
  (try
   (let x2 =
      bimply
        ((bxor (bfalse, (bvar ("13")))),
         (band ((bvar ("72")), (bvar ("51"))))) in
    let x1 = bnot (bnot (bvar ("33"))) in
    let x0 =
      band
        ((bxor (btrue, (bvar ("51")))), (band ((bvar ("54")), (bvar ("47"))))) in
    band ((band (x2, x1)), x0) = band (x2, (band (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (50)
  (try
   (let x0 = bxor ((bvar ("5")), (bimply ((bvar ("5")), (bvar ("1"))))) in
    band (bfalse, x0) = bfalse) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (51)
  (try (let x0 = bvar ("17") in band (bfalse, x0) = bfalse) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (52)
  (try
   (let x0 = bimply ((bxor ((bvar ("5")), (bvar ("4")))), (bvar ("3"))) in
    band (bfalse, x0) = bfalse) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (53)
  (try
   (let x0 = bequiv ((band ((bvar ("22")), (bvar ("5")))), (bvar ("16"))) in
    band (bfalse, x0) = bfalse) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (54)
  (try
   (let x0 = bxor ((bvar ("5")), (bimply ((bvar ("5")), (bvar ("1"))))) in
    band (bfalse, x0) = bfalse) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (55)
  (try
   (let x0 =
      bequiv
        ((bimply ((bvar ("30")), (bvar ("33")))),
         (bimply ((bvar ("46")), (bvar ("18"))))) in
    let x1 = bvar ("7") in bxor (x0, x1) = bxor (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (56)
  (try
   (let x0 =
      band
        ((band ((bvar ("32")), (bvar ("33")))),
         (band ((bvar ("15")), (bvar ("44"))))) in
    let x1 =
      bxor
        ((band ((bvar ("31")), (bvar ("38")))),
         (band ((bvar ("43")), (bvar ("28"))))) in
    bxor (x0, x1) = bxor (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (57)
  (try
   (let x0 =
      bor
        ((bequiv ((bvar ("34")), (bvar ("0")))),
         (bimply ((bvar ("18")), bfalse))) in
    let x1 = bnot (bnot (bvar ("48"))) in bxor (x0, x1) = bxor (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (58)
  (try
   (let x0 =
      bor
        ((band ((bvar ("12")), (bvar ("47")))),
         (bequiv ((bvar ("17")), (bvar ("7"))))) in
    let x1 = bvar ("38") in bxor (x0, x1) = bxor (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (59)
  (try
   (let x0 = bequiv ((bvar ("9")), (bequiv ((bvar ("30")), (bvar ("33"))))) in
    let x1 = band ((bvar ("34")), (band ((bvar ("15")), (bvar ("44"))))) in
    bxor (x0, x1) = bxor (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (60)
  (try
   (let x0 =
      bxor
        ((band ((bvar ("8")), bfalse)), (band ((bvar ("10")), (bvar ("17"))))) in
    bxor (x0, bfalse) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (61)
  (try
   (let x0 =
      bxor ((band ((bvar ("8")), bfalse)), (bxor (bfalse, (bvar ("14"))))) in
    bxor (x0, bfalse) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (62)
  (try
   (let x0 = bor (bfalse, (bxor ((bvar ("1")), (bvar ("11"))))) in
    bxor (x0, bfalse) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (63)
  (try
   (let x0 =
      band
        ((bimply (bfalse, (bvar ("0")))), (band ((bvar ("6")), (bvar ("9"))))) in
    bxor (x0, bfalse) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (64)
  (try
   (let x0 = bequiv ((bvar ("20")), (bnot (bvar ("20")))) in
    bxor (x0, bfalse) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (65)
  (try
   (let x2 =
      band
        ((band (bfalse, (bvar ("22")))),
         (bxor ((bvar ("40")), (bvar ("10"))))) in
    let x0 =
      bor
        ((bequiv (bfalse, (bvar ("31")))),
         (band ((bvar ("36")), (bvar ("49"))))) in
    bxor (x2, (bxor (x2, x0))) = bxor (bfalse, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (66)
  (try
   (let x2 =
      band
        ((bxor ((bvar ("19")), (bvar ("9")))),
         (bxor ((bvar ("40")), (bvar ("10"))))) in
    let x0 = bxor ((bimply ((bvar ("28")), (bvar ("17")))), (bvar ("22"))) in
    bxor (x2, (bxor (x2, x0))) = bxor (bfalse, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (67)
  (try
   (let x2 = band ((bxor ((bvar ("19")), (bvar ("7")))), (bvar ("1"))) in
    let x0 = band ((bxor ((bvar ("19")), (bvar ("7")))), (bvar ("1"))) in
    bxor (x2, (bxor (x2, x0))) = bxor (bfalse, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (68)
  (try
   (let x2 = bnot (bvar ("7")) in
    let x0 = bimply (bfalse, (bnot (bvar ("48")))) in
    bxor (x2, (bxor (x2, x0))) = bxor (bfalse, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (69)
  (try
   (let x2 =
      bxor
        ((bimply ((bvar ("16")), bfalse)),
         (bxor ((bvar ("46")), (bvar ("11"))))) in
    let x0 =
      bequiv
        ((bimply ((bvar ("42")), (bvar ("12")))),
         (bimply ((bvar ("31")), (bvar ("0"))))) in
    bxor (x2, (bxor (x2, x0))) = bxor (bfalse, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (70)
  (try
   (let x0 = bvar ("23") in
    let x1 =
      bimply ((bor (btrue, (bvar ("46")))), (bimply (btrue, (bvar ("35"))))) in
    bxor ((bxor (x0, x1)), x1) = bxor (x0, bfalse)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (71)
  (try
   (let x0 =
      bequiv
        ((band ((bvar ("4")), (bvar ("18")))),
         (bequiv ((bvar ("27")), (bvar ("15"))))) in
    let x1 =
      bequiv ((bnot (bvar ("16"))), (bor ((bvar ("16")), (bvar ("6"))))) in
    bxor ((bxor (x0, x1)), x1) = bxor (x0, bfalse)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (72)
  (try
   (let x0 = bnot (bor ((bvar ("31")), (bvar ("12")))) in
    let x1 = bvar ("9") in bxor ((bxor (x0, x1)), x1) = bxor (x0, bfalse))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (73)
  (try
   (let x0 = bor ((bnot (bvar ("20"))), (band ((bvar ("5")), (bvar ("16"))))) in
    let x1 = bor ((bnot (bvar ("20"))), (band ((bvar ("5")), (bvar ("16"))))) in
    bxor ((bxor (x0, x1)), x1) = bxor (x0, bfalse)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (74)
  (try
   (let x0 = bnot (bequiv ((bvar ("24")), (bvar ("19")))) in
    let x1 =
      bor
        ((bxor ((bvar ("41")), (bvar ("19")))),
         (bor ((bvar ("19")), (bvar ("8"))))) in
    bxor ((bxor (x0, x1)), x1) = bxor (x0, bfalse)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (75)
  (try
   (let x2 =
      bimply
        ((bxor ((bvar ("38")), bfalse)),
         (bimply ((bvar ("20")), (bvar ("8"))))) in
    let x1 =
      bequiv
        ((bimply ((bvar ("40")), (bvar ("28")))),
         (bxor ((bvar ("40")), btrue))) in
    let x0 =
      bxor
        ((band ((bvar ("43")), (bvar ("0")))),
         (bequiv ((bvar ("18")), (bvar ("13"))))) in
    bxor ((bxor (x2, x1)), x0) = bxor (x2, (bxor (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (76)
  (try
   (let x2 =
      bor ((bimply ((bvar ("10")), (bvar ("49")))), (bnot (bvar ("56")))) in
    let x1 =
      bor
        ((bimply ((bvar ("10")), (bvar ("49")))),
         (bor ((bvar ("42")), bfalse))) in
    let x0 = bvar ("9") in
    bxor ((bxor (x2, x1)), x0) = bxor (x2, (bxor (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (77)
  (try
   (let x2 = bnot (bxor ((bvar ("16")), btrue)) in
    let x1 =
      bxor
        ((band ((bvar ("43")), (bvar ("36")))),
         (bimply ((bvar ("70")), (bvar ("7"))))) in
    let x0 =
      bxor ((bnot (bvar ("11"))), (bxor ((bvar ("61")), (bvar ("16"))))) in
    bxor ((bxor (x2, x1)), x0) = bxor (x2, (bxor (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (78)
  (try
   (let x2 =
      bimply
        ((band ((bvar ("55")), (bvar ("2")))),
         (bequiv ((bvar ("22")), (bvar ("6"))))) in
    let x1 = band ((bnot (bvar ("20"))), (bvar ("25"))) in
    let x0 = bnot (bvar ("49")) in
    bxor ((bxor (x2, x1)), x0) = bxor (x2, (bxor (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (79)
  (try
   (let x2 =
      bequiv
        ((bimply ((bvar ("5")), (bvar ("61")))),
         (band ((bvar ("45")), (bvar ("63"))))) in
    let x1 =
      bor
        ((bequiv ((bvar ("26")), (bvar ("69")))),
         (bequiv (btrue, (bvar ("65"))))) in
    let x0 =
      bxor
        ((band ((bvar ("43")), (bvar ("0")))),
         (bequiv ((bvar ("18")), (bvar ("13"))))) in
    bxor ((bxor (x2, x1)), x0) = bxor (x2, (bxor (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (80)
  (try
   (let x0 =
      bxor
        ((bequiv ((bvar ("22")), (bvar ("21")))),
         (bor ((bvar ("23")), (bvar ("10"))))) in
    bxor (bfalse, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (81)
  (try (let x0 = bnot btrue in bxor (bfalse, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (82)
  (try (let x0 = bvar ("2") in bxor (bfalse, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (83)
  (try (let x0 = bnot btrue in bxor (bfalse, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (84)
  (try
   (let x0 =
      bimply
        ((bequiv ((bvar ("9")), (bvar ("3")))),
         (bimply ((bvar ("13")), btrue))) in
    bxor (bfalse, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (85)
  (try
   (let x1 = bor ((bvar ("25")), (bimply (bfalse, bfalse))) in
    let x0 =
      band
        ((bor ((bvar ("44")), (bvar ("35")))),
         (bor ((bvar ("18")), (bvar ("42"))))) in
    bor (x1, x0) = bxor ((bxor (x1, x0)), (band (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (86)
  (try
   (let x1 = bnot (bimply ((bvar ("5")), (bvar ("46")))) in
    let x0 = bxor ((bor ((bvar ("13")), (bvar ("28")))), (bnot (bvar ("5")))) in
    bor (x1, x0) = bxor ((bxor (x1, x0)), (band (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (87)
  (try
   (let x1 = bnot (bimply ((bvar ("5")), (bvar ("46")))) in
    let x0 = bvar ("43") in
    bor (x1, x0) = bxor ((bxor (x1, x0)), (band (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (88)
  (try
   (let x1 = bnot (bimply ((bvar ("5")), (bvar ("46")))) in
    let x0 =
      bor
        ((bimply ((bvar ("12")), (bvar ("16")))),
         (bxor (bfalse, (bvar ("35"))))) in
    bor (x1, x0) = bxor ((bxor (x1, x0)), (band (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (89)
  (try
   (let x1 =
      bimply
        ((bequiv ((bvar ("16")), (bvar ("20")))),
         (bor ((bvar ("48")), (bvar ("48"))))) in
    let x0 = bvar ("43") in
    bor (x1, x0) = bxor ((bxor (x1, x0)), (band (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (90)
  (try
   (let x1 = bnot (bvar ("11")) in
    let x0 =
      bequiv
        ((bequiv ((bvar ("3")), (bvar ("10")))),
         (band ((bvar ("4")), bfalse))) in
    bimply (x1, x0) = bor ((bnot x1), x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (91)
  (try
   (let x1 = bxor ((bequiv ((bvar ("47")), (bvar ("26")))), btrue) in
    let x0 = bequiv ((bvar ("1")), (bnot (bvar ("1")))) in
    bimply (x1, x0) = bor ((bnot x1), x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (92)
  (try
   (let x1 =
      bequiv ((bimply ((bvar ("41")), (bvar ("15")))), (bnot (bvar ("1")))) in
    let x0 =
      band
        ((bequiv ((bvar ("11")), btrue)),
         (bor ((bvar ("14")), (bvar ("32"))))) in
    bimply (x1, x0) = bor ((bnot x1), x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (93)
  (try
   (let x1 =
      bimply
        ((bor ((bvar ("41")), (bvar ("24")))),
         (bxor ((bvar ("38")), (bvar ("17"))))) in
    let x0 = bvar ("26") in bimply (x1, x0) = bor ((bnot x1), x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (94)
  (try
   (let x1 = bnot (bvar ("11")) in
    let x0 = bvar ("8") in bimply (x1, x0) = bor ((bnot x1), x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (95)
  (try
   (let x0 = bnot (bvar ("35")) in
    let x1 = bvar ("41") in
    bequiv (x0, x1) = band ((bimply (x0, x1)), (bimply (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (96)
  (try
   (let x0 = bor (bfalse, (bnot btrue)) in
    let x1 =
      band
        ((bequiv ((bvar ("32")), (bvar ("21")))),
         (band ((bvar ("48")), (bvar ("49"))))) in
    bequiv (x0, x1) = band ((bimply (x0, x1)), (bimply (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (97)
  (try
   (let x0 =
      band
        ((bor ((bvar ("1")), (bvar ("39")))),
         (bimply ((bvar ("38")), (bvar ("35"))))) in
    let x1 =
      bor
        ((bequiv ((bvar ("38")), (bvar ("49")))),
         (bor ((bvar ("12")), btrue))) in
    bequiv (x0, x1) = band ((bimply (x0, x1)), (bimply (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (98)
  (try
   (let x0 =
      bequiv ((band ((bvar ("0")), (bvar ("17")))), (bnot (bvar ("3")))) in
    let x1 = bnot (bor ((bvar ("30")), (bvar ("8")))) in
    bequiv (x0, x1) = band ((bimply (x0, x1)), (bimply (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (99)
  (try
   (let x0 = bimply ((bequiv ((bvar ("5")), (bvar ("28")))), (bvar ("38"))) in
    let x1 = bvar ("10") in
    bequiv (x0, x1) = band ((bimply (x0, x1)), (bimply (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

