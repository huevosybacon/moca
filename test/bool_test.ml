open Bool
;;

open Gentest
;;

testing ("Bool (automatic) - seed: 837282242")
;;

testi
  (0)
  (try
   (let x0 =
      band ((bor ((bvar ("13")), (bvar ("43")))), (bnot (bvar ("20")))) in
    let x1 = bvar ("6") in band (x0, x1) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (1)
  (try
   (let x0 = btrue in
    let x1 = bor ((bnot (bvar ("14"))), (bor ((bvar ("27")), (bvar ("27"))))) in
    band (x0, x1) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (2)
  (try
   (let x0 = band ((bvar ("21")), (band ((bvar ("44")), (bvar ("37"))))) in
    let x1 =
      bor ((band ((bvar ("6")), btrue)), (band (btrue, (bvar ("15"))))) in
    band (x0, x1) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (3)
  (try
   (let x0 = bvar ("6") in
    let x1 =
      bor
        ((bor ((bvar ("9")), bfalse)), (band ((bvar ("12")), (bvar ("15"))))) in
    band (x0, x1) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (4)
  (try
   (let x0 =
      bor
        ((bor ((bvar ("9")), bfalse)), (bor ((bvar ("27")), (bvar ("27"))))) in
    let x1 = band ((bvar ("34")), btrue) in band (x0, x1) = band (x1, x0))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (5)
  (try (let x0 = bnot (bnot (bvar ("0"))) in band (x0, bfalse) = bfalse) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (6)
  (try
   (let x0 = band ((bvar ("20")), (bnot (bvar ("22")))) in
    band (x0, bfalse) = bfalse) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (7)
  (try
   (let x0 = bor ((band ((bvar ("0")), (bvar ("19")))), (bnot (bvar ("2")))) in
    band (x0, bfalse) = bfalse) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (8)
  (try
   (let x0 = band ((bvar ("20")), (band ((bvar ("20")), (bvar ("7"))))) in
    band (x0, bfalse) = bfalse) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (9)
  (try (let x0 = bnot (bvar ("17")) in band (x0, bfalse) = bfalse) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (10)
  (try
   (let x0 = bor ((bnot (bvar ("21"))), (bnot (bvar ("10")))) in
    band (x0, btrue) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (11)
  (try (let x0 = bnot (bnot (bvar ("17"))) in band (x0, btrue) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (12)
  (try
   (let x0 = band ((bor ((bvar ("18")), (bvar ("15")))), (bvar ("20"))) in
    band (x0, btrue) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (13)
  (try
   (let x0 = bor ((bnot (bvar ("21"))), (bnot (bvar ("10")))) in
    band (x0, btrue) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (14)
  (try (let x0 = bnot (bnot (bvar ("17"))) in band (x0, btrue) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (15)
  (try
   (let x1 = bor ((bvar ("17")), (band ((bvar ("19")), (bvar ("30"))))) in
    let x0 = bvar ("12") in band (x1, (band (x1, x0))) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (16)
  (try
   (let x1 = bvar ("2") in
    let x0 =
      bor
        ((bor (btrue, (bvar ("10")))), (band ((bvar ("19")), (bvar ("30"))))) in
    band (x1, (band (x1, x0))) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (17)
  (try
   (let x1 = bvar ("28") in
    let x0 = bor ((bnot (bvar ("40"))), (bnot (bvar ("34")))) in
    band (x1, (band (x1, x0))) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (18)
  (try
   (let x1 = bor ((bvar ("17")), (band ((bvar ("19")), (bvar ("30"))))) in
    let x0 =
      band
        ((band ((bvar ("25")), (bvar ("12")))),
         (band (bfalse, (bvar ("42"))))) in
    band (x1, (band (x1, x0))) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (19)
  (try
   (let x1 =
      band
        ((bor ((bvar ("35")), (bvar ("4")))),
         (bor ((bvar ("17")), (bvar ("0"))))) in
    let x0 = bor ((bnot (bvar ("40"))), (bvar ("19"))) in
    band (x1, (band (x1, x0))) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (20)
  (try
   (let x0 = bor ((band ((bvar ("14")), btrue)), (bnot (bvar ("15")))) in
    band (bfalse, x0) = bfalse) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (21)
  (try (let x0 = bvar ("9") in band (bfalse, x0) = bfalse) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (22)
  (try (let x0 = bvar ("9") in band (bfalse, x0) = bfalse) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (23)
  (try
   (let x0 = band ((bnot (bvar ("19"))), (band (btrue, btrue))) in
    band (bfalse, x0) = bfalse) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (24)
  (try
   (let x0 = bor ((bvar ("22")), (band ((bvar ("20")), (bvar ("15"))))) in
    band (bfalse, x0) = bfalse) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (25)
  (try
   (let x0 = band ((bor ((bvar ("10")), (bvar ("19")))), (bvar ("10"))) in
    band (btrue, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (26)
  (try (let x0 = btrue in band (btrue, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (27)
  (try (let x0 = bnot (bvar ("5")) in band (btrue, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (28)
  (try (let x0 = bor (btrue, (bvar ("23"))) in band (btrue, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (29)
  (try
   (let x0 = bor ((bor ((bvar ("6")), (bvar ("21")))), (bnot (bvar ("1")))) in
    band (btrue, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (30)
  (try
   (let x1 = band ((bor ((bvar ("9")), btrue)), (bnot (bvar ("22")))) in
    let x0 =
      bor
        ((band ((bvar ("41")), (bvar ("3")))), (bor (bfalse, (bvar ("43"))))) in
    band ((band (x1, x0)), x0) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (31)
  (try
   (let x1 = bvar ("6") in
    let x0 = bnot (band ((bvar ("3")), (bvar ("40")))) in
    band ((band (x1, x0)), x0) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (32)
  (try
   (let x1 = band ((bvar ("27")), (bor ((bvar ("48")), (bvar ("16"))))) in
    let x0 = band ((bvar ("10")), (band ((bvar ("21")), (bvar ("45"))))) in
    band ((band (x1, x0)), x0) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (33)
  (try
   (let x1 = band ((bvar ("27")), (bor ((bvar ("48")), (bvar ("16"))))) in
    let x0 = bvar ("26") in band ((band (x1, x0)), x0) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (34)
  (try
   (let x1 =
      bor
        ((band (bfalse, (bvar ("21")))), (band ((bvar ("26")), (bvar ("7"))))) in
    let x0 = band ((bnot (bvar ("38"))), (band ((bvar ("21")), bfalse))) in
    band ((band (x1, x0)), x0) = band (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (35)
  (try
   (let x2 = bor ((bvar ("25")), (bor ((bvar ("56")), (bvar ("62"))))) in
    let x1 = bor ((bvar ("29")), (bor ((bvar ("21")), (bvar ("62"))))) in
    let x0 = bnot (bvar ("20")) in
    band ((band (x2, x1)), x0) = band (x2, (band (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (36)
  (try
   (let x2 = band ((bvar ("25")), (band ((bvar ("24")), (bvar ("37"))))) in
    let x1 = bvar ("31") in
    let x0 = bvar ("4") in
    band ((band (x2, x1)), x0) = band (x2, (band (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (37)
  (try
   (let x2 = bvar ("45") in
    let x1 = bor ((bvar ("29")), (bvar ("47"))) in
    let x0 = bvar ("74") in
    band ((band (x2, x1)), x0) = band (x2, (band (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (38)
  (try
   (let x2 = band ((band ((bvar ("54")), (bvar ("64")))), (bvar ("24"))) in
    let x1 = bnot (bnot (bvar ("71"))) in
    let x0 = band ((bor ((bvar ("64")), (bvar ("51")))), (bnot (bvar ("5")))) in
    band ((band (x2, x1)), x0) = band (x2, (band (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (39)
  (try
   (let x2 = bnot (bnot (bvar ("71"))) in
    let x1 = band ((bor ((bvar ("64")), (bvar ("51")))), (bnot (bvar ("5")))) in
    let x0 = bvar ("19") in
    band ((band (x2, x1)), x0) = band (x2, (band (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (40)
  (try
   (let x0 = bor ((bvar ("28")), (band ((bvar ("1")), (bvar ("22"))))) in
    let x1 = bvar ("5") in bor (x0, x1) = bor (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (41)
  (try
   (let x0 = bnot (band ((bvar ("24")), (bvar ("42")))) in
    let x1 = bvar ("43") in bor (x0, x1) = bor (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (42)
  (try
   (let x0 = bvar ("28") in
    let x1 = bor (bfalse, (band ((bvar ("1")), (bvar ("22"))))) in
    bor (x0, x1) = bor (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (43)
  (try
   (let x0 = bvar ("28") in
    let x1 = bor ((bvar ("12")), (bvar ("45"))) in
    bor (x0, x1) = bor (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (44)
  (try
   (let x0 = bvar ("49") in
    let x1 = bvar ("49") in bor (x0, x1) = bor (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (45)
  (try
   (let x0 = band ((bnot (bvar ("24"))), (band (bfalse, btrue))) in
    bor (x0, bfalse) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (46)
  (try
   (let x0 = bnot (band (bfalse, (bvar ("22")))) in bor (x0, bfalse) = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (47)
  (try (let x0 = bnot (band ((bvar ("18")), btrue)) in bor (x0, bfalse) = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (48)
  (try (let x0 = bvar ("20") in bor (x0, bfalse) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (49)
  (try (let x0 = bvar ("4") in bor (x0, bfalse) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (50)
  (try (let x0 = bvar ("20") in bor (x0, btrue) = btrue) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (51)
  (try
   (let x0 = band ((bor ((bvar ("12")), (bvar ("3")))), (bvar ("6"))) in
    bor (x0, btrue) = btrue) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (52)
  (try
   (let x0 = band ((bvar ("4")), (bvar ("6"))) in bor (x0, btrue) = btrue)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (53)
  (try (let x0 = bnot (bnot (bvar ("4"))) in bor (x0, btrue) = btrue) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (54)
  (try
   (let x0 =
      band
        ((bor ((bvar ("12")), (bvar ("3")))),
         (band ((bvar ("5")), (bvar ("18"))))) in
    bor (x0, btrue) = btrue) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (55)
  (try
   (let x1 = bfalse in
    let x0 = bnot (bvar ("29")) in bor (x1, (bor (x1, x0))) = bor (x1, x0))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (56)
  (try
   (let x1 = bor ((bvar ("22")), (band (bfalse, btrue))) in
    let x0 = bnot (band ((bvar ("3")), (bvar ("26")))) in
    bor (x1, (bor (x1, x0))) = bor (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (57)
  (try
   (let x1 = bvar ("44") in
    let x0 = bvar ("44") in bor (x1, (bor (x1, x0))) = bor (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (58)
  (try
   (let x1 = bvar ("44") in
    let x0 = bvar ("9") in bor (x1, (bor (x1, x0))) = bor (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (59)
  (try
   (let x1 = bfalse in
    let x0 = band ((bvar ("11")), (band ((bvar ("40")), (bvar ("43"))))) in
    bor (x1, (bor (x1, x0))) = bor (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (60)
  (try (let x0 = btrue in bor (bfalse, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (61)
  (try (let x0 = bor (btrue, (bnot (bvar ("9")))) in bor (bfalse, x0) = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (62)
  (try
   (let x0 = band ((band ((bvar ("19")), btrue)), (bor (bfalse, bfalse))) in
    bor (bfalse, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (63)
  (try
   (let x0 = band ((bor ((bvar ("1")), bfalse)), (bnot btrue)) in
    bor (bfalse, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (64)
  (try (let x0 = bnot (bor (bfalse, bfalse)) in bor (bfalse, x0) = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (65)
  (try (let x0 = bnot (bnot (bvar ("19"))) in bor (btrue, x0) = btrue) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (66)
  (try
   (let x0 = bor ((bnot (bvar ("8"))), (band ((bvar ("7")), bfalse))) in
    bor (btrue, x0) = btrue) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (67)
  (try
   (let x0 = bor (bfalse, (bor ((bvar ("15")), (bvar ("19"))))) in
    bor (btrue, x0) = btrue) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (68)
  (try
   (let x0 = band ((bvar ("7")), (bor ((bvar ("18")), (bvar ("7"))))) in
    bor (btrue, x0) = btrue) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (69)
  (try (let x0 = btrue in bor (btrue, x0) = btrue) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (70)
  (try
   (let x1 = bvar ("38") in
    let x0 = bnot (band ((bvar ("15")), (bvar ("21")))) in
    bor ((bor (x1, x0)), x0) = bor (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (71)
  (try
   (let x1 = bnot (band ((bvar ("15")), (bvar ("21")))) in
    let x0 = bvar ("38") in bor ((bor (x1, x0)), x0) = bor (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (72)
  (try
   (let x1 =
      band ((bor (bfalse, (bvar ("48")))), (bor ((bvar ("4")), bfalse))) in
    let x0 = bnot (band ((bvar ("15")), (bvar ("21")))) in
    bor ((bor (x1, x0)), x0) = bor (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (73)
  (try
   (let x1 = bnot (bnot (bvar ("36"))) in
    let x0 = btrue in bor ((bor (x1, x0)), x0) = bor (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (74)
  (try
   (let x1 = bvar ("13") in
    let x0 = bvar ("40") in bor ((bor (x1, x0)), x0) = bor (x1, x0)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (75)
  (try
   (let x2 = band ((bnot (bvar ("26"))), (bor ((bvar ("61")), (bvar ("7"))))) in
    let x1 = band ((bvar ("50")), (bnot (bvar ("50")))) in
    let x0 = bnot (bvar ("70")) in
    bor ((bor (x2, x1)), x0) = bor (x2, (bor (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (76)
  (try
   (let x2 = bvar ("6") in
    let x1 = band ((bnot (bvar ("26"))), (bor ((bvar ("61")), (bvar ("7"))))) in
    let x0 = bnot (bor ((bvar ("70")), (bvar ("30")))) in
    bor ((bor (x2, x1)), x0) = bor (x2, (bor (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (77)
  (try
   (let x2 = bor ((bvar ("52")), (bor (btrue, (bvar ("13"))))) in
    let x1 = bvar ("45") in
    let x0 = band ((bnot (bvar ("26"))), (bor ((bvar ("0")), (bvar ("28"))))) in
    bor ((bor (x2, x1)), x0) = bor (x2, (bor (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (78)
  (try
   (let x2 = bor ((bvar ("52")), (bnot (bvar ("66")))) in
    let x1 = bor ((band ((bvar ("9")), (bvar ("14")))), (bnot (bvar ("3")))) in
    let x0 = bor ((bvar ("52")), (bnot (bvar ("66")))) in
    bor ((bor (x2, x1)), x0) = bor (x2, (bor (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (79)
  (try
   (let x2 = bnot (bvar ("70")) in
    let x1 = bnot (bvar ("34")) in
    let x0 = bvar ("30") in
    bor ((bor (x2, x1)), x0) = bor (x2, (bor (x1, x0)))) with
   | Failure "Division by Absorbent" -> true)
;;

