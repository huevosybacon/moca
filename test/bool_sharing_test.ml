open Bool_sharing
;;

open Gentest
;;

testing ("Bool_sharing (automatic) - seed: 1002048765")
;;

testi
  (0)
  (try
   (let x0 =
      band ((bnot (bvar ("43"))), (bor ((bvar ("48")), (bvar ("35"))))) in
    let x1 = bnot (bnot (bvar ("33"))) in band (x0, x1) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (1)
  (try
   (let x0 = bvar ("22") in
    let x1 = band ((bvar ("28")), (bor ((bvar ("48")), (bvar ("35"))))) in
    band (x0, x1) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (2)
  (try
   (let x0 = btrue in
    let x1 =
      band ((bnot (bvar ("32"))), (bor ((bvar ("48")), (bvar ("35"))))) in
    band (x0, x1) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (3)
  (try
   (let x0 = bnot (bnot (bvar ("43"))) in
    let x1 =
      band
        ((bor (bfalse, (bvar ("28")))), (bor ((bvar ("48")), (bvar ("35"))))) in
    band (x0, x1) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (4)
  (try
   (let x0 = bvar ("22") in
    let x1 = bvar ("1") in band (x0, x1) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (5)
  (try
   (let x0 = bnot (bor ((bvar ("14")), btrue)) in band (x0, bfalse) = bfalse)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (6)
  (try
   (let x0 = band ((bor (btrue, (bvar ("4")))), (bnot (bvar ("6")))) in
    band (x0, bfalse) = bfalse) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (7)
  (try
   (let x0 = bnot (bor ((bvar ("14")), btrue)) in band (x0, bfalse) = bfalse)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (8)
  (try (let x0 = bnot (bnot (bvar ("13"))) in band (x0, bfalse) = bfalse)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (9)
  (try
   (let x0 =
      bor
        ((band ((bvar ("19")), (bvar ("1")))),
         (bor ((bvar ("23")), (bvar ("14"))))) in
    band (x0, bfalse) = bfalse) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (10)
  (try (let x0 = bvar ("9") in band (x0, btrue) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (11)
  (try
   (let x0 = bnot (bor ((bvar ("15")), (bvar ("6")))) in
    band (x0, btrue) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (12)
  (try (let x0 = btrue in band (x0, btrue) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (13)
  (try
   (let x0 = bor ((bvar ("24")), (bor ((bvar ("13")), (bvar ("1"))))) in
    band (x0, btrue) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (14)
  (try
   (let x0 =
      band
        ((band (bfalse, (bvar ("21")))), (band ((bvar ("7")), (bvar ("24"))))) in
    band (x0, btrue) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (15)
  (try
   (let x1 = bfalse in
    let x0 = bfalse in band (x1, (band (x1, x0))) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (16)
  (try
   (let x1 = bvar ("34") in
    let x0 = bnot (bnot btrue) in band (x1, (band (x1, x0))) = band (x1, x0))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (17)
  (try
   (let x1 = bnot (band ((bvar ("32")), (bvar ("29")))) in
    let x0 = bnot (bnot btrue) in band (x1, (band (x1, x0))) = band (x1, x0))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (18)
  (try
   (let x1 = bvar ("2") in
    let x0 =
      band
        ((bor ((bvar ("44")), (bvar ("22")))),
         (bor ((bvar ("11")), (bvar ("36"))))) in
    band (x1, (band (x1, x0))) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (19)
  (try
   (let x1 =
      bor
        ((bor ((bvar ("32")), (bvar ("46")))),
         (bor ((bvar ("22")), (bvar ("49"))))) in
    let x0 = bvar ("43") in band (x1, (band (x1, x0))) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (20)
  (try (let x0 = bor ((bvar ("13")), bfalse) in band (bfalse, x0) = bfalse)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (21)
  (try (let x0 = bvar ("22") in band (bfalse, x0) = bfalse) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (22)
  (try (let x0 = bvar ("22") in band (bfalse, x0) = bfalse) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (23)
  (try (let x0 = bvar ("23") in band (bfalse, x0) = bfalse) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (24)
  (try (let x0 = bfalse in band (bfalse, x0) = bfalse) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (25)
  (try
   (let x0 = band ((band (bfalse, (bvar ("15")))), (bvar ("21"))) in
    band (btrue, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (26)
  (try (let x0 = bnot (bvar ("2")) in band (btrue, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (27)
  (try (let x0 = band ((bvar ("11")), btrue) in band (btrue, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (28)
  (try
   (let x0 = band ((bnot (bvar ("22"))), (band (bfalse, (bvar ("18"))))) in
    band (btrue, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (29)
  (try
   (let x0 = bor ((band ((bvar ("3")), (bvar ("19")))), (bnot (bvar ("12")))) in
    band (btrue, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (30)
  (try
   (let x1 = bor ((bnot (bvar ("36"))), (band (bfalse, (bvar ("13"))))) in
    let x0 = bnot (band ((bvar ("38")), (bvar ("27")))) in
    band ((band (x1, x0)), x0) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (31)
  (try
   (let x1 = band ((bnot (bvar ("12"))), (bvar ("18"))) in
    let x0 = bnot (band ((bvar ("38")), (bvar ("27")))) in
    band ((band (x1, x0)), x0) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (32)
  (try
   (let x1 =
      band
        ((bor ((bvar ("1")), (bvar ("14")))),
         (band ((bvar ("45")), (bvar ("2"))))) in
    let x0 = bvar ("0") in band ((band (x1, x0)), x0) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (33)
  (try
   (let x1 = bvar ("1") in
    let x0 =
      band ((bnot (bvar ("30"))), (bor ((bvar ("23")), (bvar ("40"))))) in
    band ((band (x1, x0)), x0) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (34)
  (try
   (let x1 = bor ((bnot (bvar ("10"))), (bvar ("17"))) in
    let x0 =
      band ((bnot (bvar ("30"))), (bor ((bvar ("23")), (bvar ("40"))))) in
    band ((band (x1, x0)), x0) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (35)
  (try
   (let x2 =
      band
        ((bor ((bvar ("53")), (bvar ("59")))),
         (band ((bvar ("21")), (bvar ("6"))))) in
    let x1 = bvar ("21") in
    let x0 = bnot (bor ((bvar ("16")), (bvar ("44")))) in
    band ((band (x2, x1)), x0) = band (x2, (band (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (36)
  (try
   (let x2 = bnot (bvar ("51")) in
    let x1 =
      bor
        ((band ((bvar ("45")), (bvar ("74")))), (bor ((bvar ("7")), btrue))) in
    let x0 = bor ((bvar ("65")), (bor ((bvar ("7")), btrue))) in
    band ((band (x2, x1)), x0) = band (x2, (band (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (37)
  (try
   (let x2 = bvar ("5") in
    let x1 = bvar ("21") in
    let x0 = bor ((bor ((bvar ("18")), bfalse)), (bor (btrue, (bvar ("8"))))) in
    band ((band (x2, x1)), x0) = band (x2, (band (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (38)
  (try
   (let x2 = bnot (bnot bfalse) in
    let x1 =
      bor
        ((band ((bvar ("45")), (bvar ("74")))), (bor (btrue, (bvar ("74"))))) in
    let x0 = bnot (bor ((bvar ("16")), (bvar ("44")))) in
    band ((band (x2, x1)), x0) = band (x2, (band (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (39)
  (try
   (let x2 = bor ((band ((bvar ("38")), (bvar ("38")))), (bvar ("26"))) in
    let x1 = bor ((bnot (bvar ("70"))), (bnot (bvar ("58")))) in
    let x0 = bnot (bvar ("38")) in
    band ((band (x2, x1)), x0) = band (x2, (band (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (40)
  (try
   (let x0 = bnot (bvar ("40")) in
    let x1 = bor ((bvar ("11")), (bnot (bvar ("8")))) in
    bor (x0, x1) = bor (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (41)
  (try
   (let x0 = band ((bor ((bvar ("49")), (bvar ("7")))), (bvar ("40"))) in
    let x1 = bor ((bvar ("11")), (bnot (bvar ("8")))) in
    bor (x0, x1) = bor (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (42)
  (try
   (let x0 = bvar ("10") in
    let x1 = bor ((bvar ("2")), (bvar ("5"))) in bor (x0, x1) = bor (x1, x0))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (43)
  (try
   (let x0 = bvar ("12") in
    let x1 = band ((bor ((bvar ("49")), (bvar ("7")))), (bnot (bvar ("13")))) in
    bor (x0, x1) = bor (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (44)
  (try
   (let x0 = band ((bnot (bvar ("42"))), (bnot (bvar ("19")))) in
    let x1 = bnot (bvar ("40")) in bor (x0, x1) = bor (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (45)
  (try (let x0 = bnot (bor (bfalse, (bvar ("13")))) in bor (x0, bfalse) = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (46)
  (try
   (let x0 = bor ((bvar ("17")), (band ((bvar ("13")), (bvar ("24"))))) in
    bor (x0, bfalse) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (47)
  (try (let x0 = bvar ("4") in bor (x0, bfalse) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (48)
  (try (let x0 = bnot (bnot (bvar ("17"))) in bor (x0, bfalse) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (49)
  (try
   (let x0 = band ((bnot (bvar ("1"))), (bor (btrue, (bvar ("4"))))) in
    bor (x0, bfalse) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (50)
  (try
   (let x0 = band ((band ((bvar ("13")), (bvar ("21")))), (bvar ("11"))) in
    bor (x0, btrue) = btrue) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (51)
  (try (let x0 = bvar ("16") in bor (x0, btrue) = btrue) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (52)
  (try (let x0 = bvar ("16") in bor (x0, btrue) = btrue) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (53)
  (try
   (let x0 = bor ((band (btrue, (bvar ("13")))), (bnot (bvar ("15")))) in
    bor (x0, btrue) = btrue) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (54)
  (try (let x0 = bvar ("16") in bor (x0, btrue) = btrue) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (55)
  (try
   (let x1 = bvar ("21") in
    let x0 = bnot (bvar ("18")) in bor (x1, (bor (x1, x0))) = bor (x1, x0))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (56)
  (try
   (let x1 = btrue in
    let x0 = bor ((bor ((bvar ("19")), (bvar ("41")))), (bvar ("41"))) in
    bor (x1, (bor (x1, x0))) = bor (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (57)
  (try
   (let x1 = bor ((bnot (bvar ("28"))), (bvar ("8"))) in
    let x0 = bnot (bor ((bvar ("25")), (bvar ("3")))) in
    bor (x1, (bor (x1, x0))) = bor (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (58)
  (try
   (let x1 = bvar ("12") in
    let x0 = bvar ("34") in bor (x1, (bor (x1, x0))) = bor (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (59)
  (try
   (let x1 =
      band ((band ((bvar ("30")), (bvar ("31")))), (bnot (bvar ("4")))) in
    let x0 = bnot (bvar ("18")) in bor (x1, (bor (x1, x0))) = bor (x1, x0))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (60)
  (try
   (let x0 = bor ((bvar ("22")), (band (btrue, (bvar ("6"))))) in
    bor (bfalse, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (61)
  (try
   (let x0 = bnot (bor ((bvar ("17")), (bvar ("21")))) in
    bor (bfalse, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (62)
  (try (let x0 = bvar ("19") in bor (bfalse, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (63)
  (try
   (let x0 = bnot (bor ((bvar ("17")), (bvar ("23")))) in
    bor (bfalse, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (64)
  (try (let x0 = bvar ("19") in bor (bfalse, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (65)
  (try
   (let x0 = band ((bvar ("10")), (bor (btrue, (bvar ("0"))))) in
    bor (btrue, x0) = btrue) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (66)
  (try (let x0 = bvar ("16") in bor (btrue, x0) = btrue) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (67)
  (try (let x0 = bvar ("20") in bor (btrue, x0) = btrue) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (68)
  (try (let x0 = bnot (bvar ("12")) in bor (btrue, x0) = btrue) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (69)
  (try (let x0 = bnot (bvar ("22")) in bor (btrue, x0) = btrue) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (70)
  (try
   (let x1 = bnot (bnot btrue) in
    let x0 = bor ((bvar ("19")), (bnot (bvar ("11")))) in
    bor ((bor (x1, x0)), x0) = bor (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (71)
  (try
   (let x1 =
      band ((band ((bvar ("38")), (bvar ("28")))), (bnot (bvar ("32")))) in
    let x0 = band ((bvar ("27")), (band ((bvar ("1")), (bvar ("43"))))) in
    bor ((bor (x1, x0)), x0) = bor (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (72)
  (try
   (let x1 = bvar ("10") in
    let x0 = bvar ("0") in bor ((bor (x1, x0)), x0) = bor (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (73)
  (try
   (let x1 =
      band ((band ((bvar ("38")), (bvar ("28")))), (bnot (bvar ("32")))) in
    let x0 = bvar ("0") in bor ((bor (x1, x0)), x0) = bor (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (74)
  (try
   (let x1 = bor ((bor ((bvar ("46")), (bvar ("42")))), (bvar ("45"))) in
    let x0 =
      bor
        ((bor ((bvar ("21")), btrue)), (band ((bvar ("28")), (bvar ("48"))))) in
    bor ((bor (x1, x0)), x0) = bor (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (75)
  (try
   (let x2 =
      band
        ((bor ((bvar ("71")), (bvar ("11")))), (band (bfalse, (bvar ("2"))))) in
    let x1 = bor ((bvar ("56")), (bvar ("7"))) in
    let x0 = bvar ("52") in
    bor ((bor (x2, x1)), x0) = bor (x2, (bor (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (76)
  (try
   (let x2 = bvar ("52") in
    let x1 = bor (btrue, (band ((bvar ("66")), (bvar ("41"))))) in
    let x0 = bnot (bnot (bvar ("14"))) in
    bor ((bor (x2, x1)), x0) = bor (x2, (bor (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (77)
  (try
   (let x2 = band ((bor ((bvar ("49")), (bvar ("27")))), (bnot (bvar ("6")))) in
    let x1 = bor (btrue, (bnot btrue)) in
    let x0 = bvar ("41") in
    bor ((bor (x2, x1)), x0) = bor (x2, (bor (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (78)
  (try
   (let x2 = bor ((bvar ("63")), (bnot btrue)) in
    let x1 = btrue in
    let x0 = band ((bnot (bvar ("1"))), (band (bfalse, (bvar ("2"))))) in
    bor ((bor (x2, x1)), x0) = bor (x2, (bor (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (79)
  (try
   (let x2 =
      bor ((bnot (bvar ("41"))), (band ((bvar ("29")), (bvar ("67"))))) in
    let x1 = band ((bnot (bvar ("1"))), (bnot (bvar ("6")))) in
    let x0 = bor ((band (btrue, (bvar ("53")))), (bvar ("7"))) in
    bor ((bor (x2, x1)), x0) = bor (x2, (bor (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

