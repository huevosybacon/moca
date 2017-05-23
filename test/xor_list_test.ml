open Xor_list
;;

open Gentest
;;

testing ("Xor_list (automatic) - seed: 480140516")
;;

testi
  (0)
  (try
   (let x0 = bimply ((bvar ("6")), btrue) in bnot x0 = bxor [ x0; btrue ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (1)
  (try
   (let x0 = bimply ((bvar ("15")), (bvar ("4"))) in
    bnot x0 = bxor [ x0; btrue ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (2)
  (try (let x0 = bvar ("5") in bnot x0 = bxor [ x0; btrue ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (3)
  (try
   (let x0 = bor [ (bvar ("20")); (bvar ("7")); (bvar ("5")) ] in
    bnot x0 = bxor [ x0; btrue ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (4)
  (try
   (let x0 = bequiv ((bvar ("2")), (bvar ("22"))) in
    bnot x0 = bxor [ x0; btrue ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (5)
  (try
   (let x1 = band [ (bvar ("22")); (bvar ("14")); (bvar ("11")) ] in
    let x0 = bimply ((bvar ("37")), btrue) in
    bimply (x1, x0) = bor [ (bnot x1); x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (6)
  (try
   (let x1 = bxor [ (bvar ("27")); btrue; (bvar ("6")) ] in
    let x0 = bor [ (bvar ("5")); (bvar ("0")); bfalse ] in
    bimply (x1, x0) = bor [ (bnot x1); x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (7)
  (try
   (let x1 = bequiv ((bvar ("4")), (bvar ("20"))) in
    let x0 = bnot (bvar ("13")) in bimply (x1, x0) = bor [ (bnot x1); x0 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (8)
  (try
   (let x1 = bequiv ((bvar ("20")), (bvar ("20"))) in
    let x0 = band [ (bvar ("22")); (bvar ("14")); (bvar ("11")) ] in
    bimply (x1, x0) = bor [ (bnot x1); x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (9)
  (try
   (let x1 = bxor [ (bvar ("29")); (bvar ("28")); (bvar ("6")) ] in
    let x0 = bvar ("43") in bimply (x1, x0) = bor [ (bnot x1); x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (10)
  (try
   (let x0 = bor [ (bvar ("43")); bfalse; (bvar ("3")) ] in
    let x1 = bor [ (bvar ("43")); (bvar ("30")); (bvar ("36")) ] in
    bequiv (x0, x1) = band [ (bimply (x0, x1)); (bimply (x1, x0)) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (11)
  (try
   (let x0 = bxor [ (bvar ("38")); (bvar ("41")); (bvar ("15")) ] in
    let x1 = bvar ("14") in
    bequiv (x0, x1) = band [ (bimply (x0, x1)); (bimply (x1, x0)) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (12)
  (try
   (let x0 = bxor [ (bvar ("38")); (bvar ("41")); (bvar ("15")) ] in
    let x1 = band [ (bvar ("7")); (bvar ("46")); (bvar ("17")) ] in
    bequiv (x0, x1) = band [ (bimply (x0, x1)); (bimply (x1, x0)) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (13)
  (try
   (let x0 = bimply ((bvar ("38")), (bvar ("21"))) in
    let x1 = bor [ (bvar ("7")); bfalse; (bvar ("3")) ] in
    bequiv (x0, x1) = band [ (bimply (x0, x1)); (bimply (x1, x0)) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (14)
  (try
   (let x0 = bnot (bvar ("9")) in
    let x1 = bimply ((bvar ("38")), (bvar ("18"))) in
    bequiv (x0, x1) = band [ (bimply (x0, x1)); (bimply (x1, x0)) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (15)
  (try
   (let x0 = bxor [ (bvar ("56")); (bvar ("35")); (bvar ("50")) ] in
    let x1 = bvar ("18") in
    let x2 = bxor [ (bvar ("56")); (bvar ("25")); (bvar ("63")) ] in
    band [ (band [ x0; x1 ]); x2 ] = band [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (16)
  (try
   (let x0 = band [ (bvar ("54")); (bvar ("47")); (bvar ("32")) ] in
    let x1 = bvar ("48") in
    let x2 = bor [ (bvar ("63")); (bvar ("28")); (bvar ("35")) ] in
    band [ (band [ x0; x1 ]); x2 ] = band [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (17)
  (try
   (let x0 = bequiv ((bvar ("26")), (bvar ("39"))) in
    let x1 = bimply ((bvar ("17")), (bvar ("3"))) in
    let x2 = bimply ((bvar ("57")), (bvar ("39"))) in
    band [ (band [ x0; x1 ]); x2 ] = band [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (18)
  (try
   (let x0 = band [ (bvar ("54")); (bvar ("47")); (bvar ("32")) ] in
    let x1 = bnot (bvar ("8")) in
    let x2 = band [ (bvar ("15")); (bvar ("14")); (bvar ("32")) ] in
    band [ (band [ x0; x1 ]); x2 ] = band [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (19)
  (try
   (let x0 = bor [ (bvar ("63")); (bvar ("25")); (bvar ("57")) ] in
    let x1 = bimply ((bvar ("57")), (bvar ("39"))) in
    let x2 = bnot (bvar ("4")) in
    band [ (band [ x0; x1 ]); x2 ] = band [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (20)
  (try
   (let x0 = bxor [ bfalse; (bvar ("37")); (bvar ("50")) ] in
    let x1 = bvar ("65") in
    let x2 = band [ (bvar ("81")); (bvar ("59")); (bvar ("31")) ] in
    let x3 = bimply ((bvar ("89")), btrue) in
    let x4 = bimply ((bvar ("114")), (bvar ("110"))) in
    band [ x0; (band [ x1; x2 ]); (band [ x3; x4 ]) ] =
    band [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (21)
  (try
   (let x0 = bimply ((bvar ("89")), (bvar ("25"))) in
    let x1 = bnot (bvar ("11")) in
    let x2 = bxor [ btrue; (bvar ("98")); (bvar ("65")) ] in
    let x3 = bimply ((bvar ("60")), (bvar ("110"))) in
    let x4 = bor [ (bvar ("28")); (bvar ("96")); (bvar ("66")) ] in
    band [ x0; (band [ x1; x2 ]); (band [ x3; x4 ]) ] =
    band [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (22)
  (try
   (let x0 = bvar ("66") in
    let x1 = bimply ((bvar ("114")), (bvar ("110"))) in
    let x2 = bimply ((bvar ("102")), (bvar ("110"))) in
    let x3 = bxor [ bfalse; (bvar ("37")); (bvar ("50")) ] in
    let x4 = bnot (bvar ("95")) in
    band [ x0; (band [ x1; x2 ]); (band [ x3; x4 ]) ] =
    band [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (23)
  (try
   (let x0 = btrue in
    let x1 = bequiv ((bvar ("39")), (bvar ("96"))) in
    let x2 = bxor [ (bvar ("41")); (bvar ("87")); (bvar ("17")) ] in
    let x3 = bvar ("105") in
    let x4 = band [ (bvar ("81")); (bvar ("59")); (bvar ("86")) ] in
    band [ x0; (band [ x1; x2 ]); (band [ x3; x4 ]) ] =
    band [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (24)
  (try
   (let x0 = bequiv ((bvar ("40")), (bvar ("23"))) in
    let x1 = band [ (bvar ("80")); (bvar ("35")); (bvar ("31")) ] in
    let x2 = bimply ((bvar ("114")), (bvar ("114"))) in
    let x3 = bor [ (bvar ("114")); (bvar ("84")); (bvar ("33")) ] in
    let x4 = bor [ (bvar ("28")); (bvar ("96")); (bvar ("66")) ] in
    band [ x0; (band [ x1; x2 ]); (band [ x3; x4 ]) ] =
    band [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (25)
  (try
   (let x0 = bvar ("65") in
    let x1 = bor [ bfalse; (bvar ("72")); (bvar ("51")) ] in
    let x2 = bimply ((bvar ("38")), (bvar ("89"))) in
    let x3 = band [ (bvar ("92")); (bvar ("8")); (bvar ("74")) ] in
    band [ (band [ x0; x1; x2 ]); x3 ] = band [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (26)
  (try
   (let x0 = bnot (bvar ("60")) in
    let x1 = bor [ (bvar ("91")); (bvar ("17")); (bvar ("77")) ] in
    let x2 = bxor [ (bvar ("50")); (bvar ("27")); (bvar ("93")) ] in
    let x3 = bvar ("30") in
    band [ (band [ x0; x1; x2 ]); x3 ] = band [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (27)
  (try
   (let x0 = bequiv (btrue, (bvar ("69"))) in
    let x1 = bequiv ((bvar ("69")), (bvar ("11"))) in
    let x2 = bnot (bvar ("69")) in
    let x3 = bxor [ (bvar ("59")); (bvar ("30")); (bvar ("93")) ] in
    band [ (band [ x0; x1; x2 ]); x3 ] = band [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (28)
  (try
   (let x0 = band [ (bvar ("92")); (bvar ("8")); (bvar ("29")) ] in
    let x1 = bxor [ (bvar ("50")); (bvar ("10")); (bvar ("3")) ] in
    let x2 = bequiv ((bvar ("69")), (bvar ("50"))) in
    let x3 = band [ (bvar ("92")); (bvar ("8")); (bvar ("18")) ] in
    band [ (band [ x0; x1; x2 ]); x3 ] = band [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (29)
  (try
   (let x0 = bimply ((bvar ("95")), bfalse) in
    let x1 = bequiv (btrue, (bvar ("69"))) in
    let x2 = bequiv ((bvar ("75")), (bvar ("70"))) in
    let x3 = bxor [ (bvar ("50")); (bvar ("27")); (bvar ("93")) ] in
    band [ (band [ x0; x1; x2 ]); x3 ] = band [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (30)
  (try
   (let x0 = bequiv ((bvar ("81")), (bvar ("64"))) in
    let x1 = bor [ (bvar ("88")); (bvar ("63")); (bvar ("48")) ] in
    let x2 = bxor [ (bvar ("4")); bfalse; (bvar ("66")) ] in
    let x3 = bor [ (bvar ("88")); (bvar ("63")); (bvar ("69")) ] in
    band [ x0; x1; x2; x3 ] = band [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (31)
  (try
   (let x0 = band [ (bvar ("36")); (bvar ("31")); (bvar ("69")) ] in
    let x1 = band [ (bvar ("92")); (bvar ("56")); (bvar ("97")) ] in
    let x2 = bvar ("35") in
    let x3 = bvar ("35") in band [ x0; x1; x2; x3 ] = band [ x1; x0; x3; x2 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (32)
  (try
   (let x0 = band [ (bvar ("64")); (bvar ("56")); (bvar ("69")) ] in
    let x1 = bequiv ((bvar ("81")), (bvar ("64"))) in
    let x2 = bvar ("35") in
    let x3 = bnot (bvar ("36")) in
    band [ x0; x1; x2; x3 ] = band [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (33)
  (try
   (let x0 = bor [ (bvar ("6")); (bvar ("54")); (bvar ("22")) ] in
    let x1 = bimply ((bvar ("87")), (bvar ("80"))) in
    let x2 = bxor [ bfalse; (bvar ("85")); (bvar ("38")) ] in
    let x3 = bxor [ (bvar ("4")); (bvar ("2")); (bvar ("37")) ] in
    band [ x0; x1; x2; x3 ] = band [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (34)
  (try
   (let x0 = band [ (bvar ("36")); (bvar ("31")); (bvar ("69")) ] in
    let x1 = bor [ (bvar ("7")); (bvar ("31")); (bvar ("73")) ] in
    let x2 = bnot (bvar ("71")) in
    let x3 = bxor [ btrue; (bvar ("86")); (bvar ("98")) ] in
    band [ x0; x1; x2; x3 ] = band [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (35)
  (try
   (let x0 = band [ (bvar ("74")); (bvar ("71")); (bvar ("92")) ] in
    let x1 = band [ (bvar ("40")); (bvar ("23")); (bvar ("56")) ] in
    let x2 = bequiv ((bvar ("28")), (bvar ("83"))) in
    let x3 = bequiv ((bvar ("14")), (bvar ("15"))) in
    band [ x0; x1; x2; x3 ] = band [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (36)
  (try
   (let x0 = bvar ("42") in
    let x1 = bimply ((bvar ("88")), (bvar ("57"))) in
    let x2 = bimply ((bvar ("70")), (bvar ("57"))) in
    let x3 = bequiv ((bvar ("54")), (bvar ("69"))) in
    band [ x0; x1; x2; x3 ] = band [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (37)
  (try
   (let x0 = bxor [ (bvar ("8")); (bvar ("8")); (bvar ("21")) ] in
    let x1 = bor [ (bvar ("78")); btrue; (bvar ("67")) ] in
    let x2 = bvar ("65") in
    let x3 = bxor [ (bvar ("60")); (bvar ("57")); btrue ] in
    band [ x0; x1; x2; x3 ] = band [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (38)
  (try
   (let x0 = bxor [ (bvar ("58")); (bvar ("57")); (bvar ("32")) ] in
    let x1 = bvar ("20") in
    let x2 = bequiv ((bvar ("29")), (bvar ("69"))) in
    let x3 = bimply ((bvar ("70")), (bvar ("78"))) in
    band [ x0; x1; x2; x3 ] = band [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (39)
  (try
   (let x0 = bnot (bvar ("3")) in
    let x1 = bequiv ((bvar ("54")), (bvar ("84"))) in
    let x2 = band [ (bvar ("40")); (bvar ("44")); (bvar ("47")) ] in
    let x3 = bnot (bvar ("89")) in
    band [ x0; x1; x2; x3 ] = band [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (40)
  (try
   (let x0 = bequiv ((bvar ("92")), (bvar ("16"))) in
    let x1 = band [ (bvar ("62")); (bvar ("17")); (bvar ("53")) ] in
    let x2 = bvar ("52") in
    let x3 = bor [ (bvar ("58")); (bvar ("53")); (bvar ("8")) ] in
    band [ x0; x1; x2; x3 ] = band [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (41)
  (try
   (let x0 = bor [ (bvar ("53")); (bvar ("53")); bfalse ] in
    let x1 = bimply ((bvar ("0")), (bvar ("52"))) in
    let x2 = bvar ("46") in
    let x3 = bimply ((bvar ("98")), (bvar ("44"))) in
    band [ x0; x1; x2; x3 ] = band [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (42)
  (try
   (let x0 = bnot (bvar ("40")) in
    let x1 = bxor [ (bvar ("45")); (bvar ("65")); (bvar ("31")) ] in
    let x2 = bnot (bvar ("13")) in
    let x3 = band [ (bvar ("4")); btrue; (bvar ("4")) ] in
    band [ x0; x1; x2; x3 ] = band [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (43)
  (try
   (let x0 = band [ (bvar ("1")); (bvar ("68")); (bvar ("54")) ] in
    let x1 = band [ (bvar ("62")); (bvar ("17")); (bvar ("53")) ] in
    let x2 = bvar ("75") in
    let x3 = band [ (bvar ("26")); (bvar ("68")); (bvar ("4")) ] in
    band [ x0; x1; x2; x3 ] = band [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (44)
  (try
   (let x0 = bequiv ((bvar ("61")), (bvar ("16"))) in
    let x1 = bimply ((bvar ("96")), (bvar ("22"))) in
    let x2 = bnot (bvar ("21")) in
    let x3 = bnot (bvar ("1")) in
    band [ x0; x1; x2; x3 ] = band [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (45)
  (try
   (let x0 = bvar ("11") in
    let x1 = band [ (bvar ("43")); (bvar ("34")); (bvar ("9")) ] in
    let x2 = bequiv ((bvar ("47")), (bvar ("24"))) in
    let x3 = bequiv ((bvar ("91")), (bvar ("82"))) in
    band [ x0; x1; x2; x3 ] = band [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (46)
  (try
   (let x0 = bxor [ (bvar ("74")); (bvar ("42")); (bvar ("57")) ] in
    let x1 = bvar ("60") in
    let x2 = band [ (bvar ("16")); (bvar ("29")); (bvar ("25")) ] in
    let x3 = bvar ("99") in band [ x0; x1; x2; x3 ] = band [ x2; x1; x0; x3 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (47)
  (try
   (let x0 = bxor [ (bvar ("43")); (bvar ("44")); (bvar ("92")) ] in
    let x1 = bor [ (bvar ("48")); (bvar ("58")); (bvar ("68")) ] in
    let x2 = bequiv ((bvar ("85")), (bvar ("88"))) in
    let x3 = bor [ (bvar ("32")); (bvar ("85")); (bvar ("87")) ] in
    band [ x0; x1; x2; x3 ] = band [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (48)
  (try
   (let x0 = bor [ (bvar ("23")); (bvar ("66")); (bvar ("48")) ] in
    let x1 = bnot (bvar ("2")) in
    let x2 = band [ (bvar ("16")); (bvar ("28")); (bvar ("36")) ] in
    let x3 = bvar ("11") in band [ x0; x1; x2; x3 ] = band [ x2; x1; x0; x3 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (49)
  (try
   (let x0 = bnot (bvar ("10")) in
    let x1 = bnot bfalse in
    let x2 = band [ (bvar ("80")); (bvar ("34")); (bvar ("9")) ] in
    let x3 = band [ (bvar ("43")); (bvar ("14")); (bvar ("36")) ] in
    band [ x0; x1; x2; x3 ] = band [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (50)
  (try (let x0 = bnot (bvar ("17")) in band [ x0; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (51)
  (try
   (let x0 = bimply ((bvar ("21")), (bvar ("3"))) in band [ x0; x0 ] = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (52)
  (try
   (let x0 = bor [ btrue; (bvar ("5")); (bvar ("1")) ] in
    band [ x0; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (53)
  (try
   (let x0 = bxor [ (bvar ("3")); bfalse; (bvar ("10")) ] in
    band [ x0; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (54)
  (try (let x0 = bnot (bvar ("0")) in band [ x0; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (55)
  (try
   (let x0 = band [ (bvar ("14")); (bvar ("33")); (bvar ("21")) ] in
    let x1 = bor [ (bvar ("8")); (bvar ("5")); (bvar ("58")) ] in
    let x2 = band [ bfalse; (bvar ("33")); (bvar ("38")) ] in
    band [ x0; x1; x1; x2 ] = band [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (56)
  (try
   (let x0 = bor [ (bvar ("47")); (bvar ("40")); (bvar ("72")) ] in
    let x1 = band [ (bvar ("22")); (bvar ("39")); (bvar ("70")) ] in
    let x2 = bxor [ bfalse; btrue; (bvar ("19")) ] in
    band [ x0; x1; x1; x2 ] = band [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (57)
  (try
   (let x0 = bor [ (bvar ("24")); bfalse; (bvar ("62")) ] in
    let x1 = bvar ("72") in
    let x2 = bnot (bvar ("69")) in
    band [ x0; x1; x1; x2 ] = band [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (58)
  (try
   (let x0 = bvar ("9") in
    let x1 = bimply ((bvar ("41")), (bvar ("64"))) in
    let x2 = bvar ("9") in band [ x0; x1; x1; x2 ] = band [ x0; x1; x2 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (59)
  (try
   (let x0 = bimply ((bvar ("74")), (bvar ("54"))) in
    let x1 = bnot (bvar ("69")) in
    let x2 = bimply ((bvar ("74")), (bvar ("54"))) in
    band [ x0; x1; x1; x2 ] = band [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (60)
  (try
   (let x0 = btrue in
    let x1 = bvar ("34") in band [ x0; btrue; x1 ] = band [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (61)
  (try
   (let x0 = bequiv ((bvar ("2")), (bvar ("31"))) in
    let x1 = bxor [ (bvar ("10")); (bvar ("44")); (bvar ("48")) ] in
    band [ x0; btrue; x1 ] = band [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (62)
  (try
   (let x0 = bor [ (bvar ("47")); (bvar ("10")); (bvar ("7")) ] in
    let x1 = bor [ (bvar ("8")); (bvar ("2")); (bvar ("7")) ] in
    band [ x0; btrue; x1 ] = band [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (63)
  (try
   (let x0 = bor [ (bvar ("8")); (bvar ("2")); (bvar ("7")) ] in
    let x1 = bimply ((bvar ("27")), (bvar ("40"))) in
    band [ x0; btrue; x1 ] = band [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (64)
  (try
   (let x0 = bnot (bvar ("33")) in
    let x1 = btrue in band [ x0; btrue; x1 ] = band [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (65)
  (try (let x0 = band [ btrue; btrue; bfalse ] in band [ btrue; x0 ] = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (66)
  (try (let x0 = bnot (bvar ("16")) in band [ btrue; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (67)
  (try (let x0 = bvar ("8") in band [ btrue; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (68)
  (try (let x0 = bequiv (bfalse, (bvar ("18"))) in band [ btrue; x0 ] = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (69)
  (try (let x0 = bequiv (btrue, (bvar ("18"))) in band [ btrue; x0 ] = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (70)
  (try
   (let x0 = bor [ (bvar ("5")); (bvar ("22")); (bvar ("23")) ] in
    band [ x0; btrue; btrue ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (71)
  (try
   (let x0 = bimply ((bvar ("8")), (bvar ("9"))) in
    band [ x0; btrue; btrue ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (72)
  (try (let x0 = bvar ("16") in band [ x0; btrue; btrue ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (73)
  (try (let x0 = bnot (bvar ("7")) in band [ x0; btrue; btrue ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (74)
  (try
   (let x0 = bor [ (bvar ("3")); (bvar ("22")); (bvar ("23")) ] in
    band [ x0; btrue; btrue ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (75)
  (try
   (let x0 = bvar ("57") in
    let x1 = bvar ("14") in
    let x2 = bxor [ (bvar ("50")); (bvar ("67")); (bvar ("63")) ] in
    band [ x0; x1; (bxor [ x0; x1; x2 ]); x2 ] =
    bxor
      [ (band [ x0; x1; x0; x2 ]); (band [ x0; x1; x1; x2 ]);
        (band [ x0; x1; x2; x2 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (76)
  (try
   (let x0 = bimply ((bvar ("65")), (bvar ("47"))) in
    let x1 = bor [ (bvar ("56")); (bvar ("25")); (bvar ("61")) ] in
    let x2 = band [ (bvar ("45")); (bvar ("16")); (bvar ("62")) ] in
    band [ x0; x1; (bxor [ x0; x1; x2 ]); x2 ] =
    bxor
      [ (band [ x0; x1; x0; x2 ]); (band [ x0; x1; x1; x2 ]);
        (band [ x0; x1; x2; x2 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (77)
  (try
   (let x0 = bor [ bfalse; (bvar ("42")); (bvar ("49")) ] in
    let x1 = btrue in
    let x2 = bimply ((bvar ("29")), (bvar ("39"))) in
    band [ x0; x1; (bxor [ x0; x1; x2 ]); x2 ] =
    bxor
      [ (band [ x0; x1; x0; x2 ]); (band [ x0; x1; x1; x2 ]);
        (band [ x0; x1; x2; x2 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (78)
  (try
   (let x0 = bnot (bvar ("66")) in
    let x1 = bxor [ (bvar ("14")); (bvar ("21")); (bvar ("2")) ] in
    let x2 = bvar ("14") in
    band [ x0; x1; (bxor [ x0; x1; x2 ]); x2 ] =
    bxor
      [ (band [ x0; x1; x0; x2 ]); (band [ x0; x1; x1; x2 ]);
        (band [ x0; x1; x2; x2 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (79)
  (try
   (let x0 = band [ (bvar ("54")); (bvar ("71")); (bvar ("17")) ] in
    let x1 = bequiv ((bvar ("52")), (bvar ("66"))) in
    let x2 = bnot (bvar ("3")) in
    band [ x0; x1; (bxor [ x0; x1; x2 ]); x2 ] =
    bxor
      [ (band [ x0; x1; x0; x2 ]); (band [ x0; x1; x1; x2 ]);
        (band [ x0; x1; x2; x2 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (80)
  (try
   (let x0 = bimply ((bvar ("45")), (bvar ("73"))) in
    let x1 = bor [ (bvar ("41")); (bvar ("71")); (bvar ("15")) ] in
    let x2 = btrue in
    band [ (bxor [ x0; x1; x2 ]); x0 ] =
    bxor [ (band [ x0; x0 ]); (band [ x1; x0 ]); (band [ x2; x0 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (81)
  (try
   (let x0 = bimply ((bvar ("10")), (bvar ("63"))) in
    let x1 = bnot (bvar ("40")) in
    let x2 = bimply ((bvar ("30")), (bvar ("11"))) in
    band [ (bxor [ x0; x1; x2 ]); x0 ] =
    bxor [ (band [ x0; x0 ]); (band [ x1; x0 ]); (band [ x2; x0 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (82)
  (try
   (let x0 = bxor [ (bvar ("34")); (bvar ("10")); (bvar ("35")) ] in
    let x1 = band [ (bvar ("55")); (bvar ("37")); (bvar ("10")) ] in
    let x2 = bor [ (bvar ("36")); (bvar ("44")); (bvar ("67")) ] in
    band [ (bxor [ x0; x1; x2 ]); x0 ] =
    bxor [ (band [ x0; x0 ]); (band [ x1; x0 ]); (band [ x2; x0 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (83)
  (try
   (let x0 = bnot (bvar ("26")) in
    let x1 = band [ (bvar ("30")); (bvar ("37")); bfalse ] in
    let x2 = bequiv ((bvar ("33")), (bvar ("7"))) in
    band [ (bxor [ x0; x1; x2 ]); x0 ] =
    bxor [ (band [ x0; x0 ]); (band [ x1; x0 ]); (band [ x2; x0 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (84)
  (try
   (let x0 = band [ (bvar ("26")); (bvar ("74")); btrue ] in
    let x1 = bimply ((bvar ("10")), (bvar ("63"))) in
    let x2 = band [ (bvar ("26")); (bvar ("15")); (bvar ("32")) ] in
    band [ (bxor [ x0; x1; x2 ]); x0 ] =
    bxor [ (band [ x0; x0 ]); (band [ x1; x0 ]); (band [ x2; x0 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (85)
  (try
   (let x0 = bequiv ((bvar ("15")), (bvar ("58"))) in
    let x1 = bnot (bvar ("37")) in
    let x2 = bxor [ (bvar ("20")); (bvar ("74")); btrue ] in
    bxor [ (bxor [ x0; x1 ]); x2 ] = bxor [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (86)
  (try
   (let x0 = band [ (bvar ("46")); (bvar ("36")); (bvar ("66")) ] in
    let x1 = band [ (bvar ("63")); btrue; (bvar ("65")) ] in
    let x2 = bor [ (bvar ("63")); (bvar ("14")); (bvar ("61")) ] in
    bxor [ (bxor [ x0; x1 ]); x2 ] = bxor [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (87)
  (try
   (let x0 = bor [ (bvar ("63")); (bvar ("14")); (bvar ("61")) ] in
    let x1 = bvar ("73") in
    let x2 = bor [ (bvar ("58")); (bvar ("42")); (bvar ("46")) ] in
    bxor [ (bxor [ x0; x1 ]); x2 ] = bxor [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (88)
  (try
   (let x0 = bor [ (bvar ("63")); (bvar ("14")); (bvar ("61")) ] in
    let x1 = bequiv ((bvar ("37")), (bvar ("68"))) in
    let x2 = band [ (bvar ("46")); (bvar ("36")); (bvar ("66")) ] in
    bxor [ (bxor [ x0; x1 ]); x2 ] = bxor [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (89)
  (try
   (let x0 = bvar ("71") in
    let x1 = band [ (bvar ("46")); (bvar ("66")); bfalse ] in
    let x2 = bor [ (bvar ("63")); (bvar ("19")); (bvar ("11")) ] in
    bxor [ (bxor [ x0; x1 ]); x2 ] = bxor [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (90)
  (try
   (let x0 = band [ (bvar ("42")); btrue; btrue ] in
    let x1 = bequiv ((bvar ("26")), bfalse) in
    let x2 = bnot (bvar ("12")) in
    let x3 = band [ (bvar ("10")); (bvar ("116")); (bvar ("88")) ] in
    let x4 = bequiv ((bvar ("29")), (bvar ("107"))) in
    bxor [ x0; (bxor [ x1; x2 ]); (bxor [ x3; x4 ]) ] =
    bxor [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (91)
  (try
   (let x0 = btrue in
    let x1 = bxor [ (bvar ("52")); (bvar ("121")); (bvar ("23")) ] in
    let x2 = bimply ((bvar ("85")), (bvar ("1"))) in
    let x3 = bimply ((bvar ("42")), (bvar ("52"))) in
    let x4 = bvar ("92") in
    bxor [ x0; (bxor [ x1; x2 ]); (bxor [ x3; x4 ]) ] =
    bxor [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (92)
  (try
   (let x0 = bor [ (bvar ("38")); (bvar ("95")); (bvar ("98")) ] in
    let x1 = bor [ (bvar ("7")); (bvar ("61")); (bvar ("89")) ] in
    let x2 = bequiv ((bvar ("26")), (bvar ("98"))) in
    let x3 = bvar ("103") in
    let x4 = bequiv ((bvar ("29")), (bvar ("107"))) in
    bxor [ x0; (bxor [ x1; x2 ]); (bxor [ x3; x4 ]) ] =
    bxor [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (93)
  (try
   (let x0 = band [ (bvar ("85")); (bvar ("98")); (bvar ("111")) ] in
    let x1 = bequiv ((bvar ("81")), (bvar ("91"))) in
    let x2 = bor [ (bvar ("7")); (bvar ("61")); (bvar ("89")) ] in
    let x3 = band [ bfalse; (bvar ("43")); (bvar ("124")) ] in
    let x4 = bnot (bvar ("121")) in
    bxor [ x0; (bxor [ x1; x2 ]); (bxor [ x3; x4 ]) ] =
    bxor [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (94)
  (try
   (let x0 = bvar ("84") in
    let x1 = bequiv ((bvar ("29")), (bvar ("50"))) in
    let x2 = bimply ((bvar ("85")), (bvar ("52"))) in
    let x3 = bor [ (bvar ("94")); (bvar ("2")); (bvar ("0")) ] in
    let x4 = bnot (bvar ("121")) in
    bxor [ x0; (bxor [ x1; x2 ]); (bxor [ x3; x4 ]) ] =
    bxor [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (95)
  (try
   (let x0 = bxor [ (bvar ("70")); (bvar ("44")); (bvar ("52")) ] in
    let x1 = bequiv (btrue, (bvar ("5"))) in
    let x2 = bnot (bvar ("39")) in
    let x3 = bimply ((bvar ("89")), (bvar ("54"))) in
    bxor [ (bxor [ x0; x1; x2 ]); x3 ] = bxor [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (96)
  (try
   (let x0 = bimply ((bvar ("45")), (bvar ("54"))) in
    let x1 = bimply ((bvar ("89")), (bvar ("66"))) in
    let x2 = band [ (bvar ("95")); (bvar ("73")); (bvar ("31")) ] in
    let x3 = band [ (bvar ("83")); btrue; (bvar ("93")) ] in
    bxor [ (bxor [ x0; x1; x2 ]); x3 ] = bxor [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (97)
  (try
   (let x0 = band [ (bvar ("83")); btrue; (bvar ("93")) ] in
    let x1 = bequiv (btrue, (bvar ("44"))) in
    let x2 = band [ (bvar ("95")); (bvar ("73")); (bvar ("31")) ] in
    let x3 = bvar ("12") in
    bxor [ (bxor [ x0; x1; x2 ]); x3 ] = bxor [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (98)
  (try
   (let x0 = bimply ((bvar ("39")), (bvar ("54"))) in
    let x1 = bxor [ (bvar ("10")); (bvar ("78")); (bvar ("97")) ] in
    let x2 = bequiv (btrue, (bvar ("5"))) in
    let x3 = bequiv ((bvar ("4")), (bvar ("5"))) in
    bxor [ (bxor [ x0; x1; x2 ]); x3 ] = bxor [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (99)
  (try
   (let x0 = bequiv ((bvar ("4")), (bvar ("5"))) in
    let x1 = bxor [ (bvar ("10")); (bvar ("44")); (bvar ("52")) ] in
    let x2 = band [ (bvar ("83")); btrue; (bvar ("93")) ] in
    let x3 = bor [ (bvar ("94")); (bvar ("16")); (bvar ("59")) ] in
    bxor [ (bxor [ x0; x1; x2 ]); x3 ] = bxor [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (100)
  (try
   (let x0 = bequiv ((bvar ("66")), btrue) in
    let x1 = bor [ (bvar ("59")); (bvar ("43")); (bvar ("40")) ] in
    let x2 = bimply ((bvar ("75")), (bvar ("94"))) in
    let x3 = bequiv ((bvar ("3")), (bvar ("32"))) in
    bxor [ x0; x1; x2; x3 ] = bxor [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (101)
  (try
   (let x0 = bnot (bvar ("50")) in
    let x1 = bimply ((bvar ("37")), (bvar ("53"))) in
    let x2 = band [ (bvar ("24")); (bvar ("22")); (bvar ("76")) ] in
    let x3 = bor [ (bvar ("24")); (bvar ("21")); (bvar ("48")) ] in
    bxor [ x0; x1; x2; x3 ] = bxor [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (102)
  (try
   (let x0 = bimply ((bvar ("51")), btrue) in
    let x1 = bor [ (bvar ("24")); (bvar ("21")); (bvar ("48")) ] in
    let x2 = bor [ (bvar ("51")); (bvar ("43")); (bvar ("48")) ] in
    let x3 = bnot (bvar ("3")) in
    bxor [ x0; x1; x2; x3 ] = bxor [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (103)
  (try
   (let x0 = bor [ (bvar ("20")); (bvar ("84")); (bvar ("58")) ] in
    let x1 = bimply ((bvar ("88")), (bvar ("94"))) in
    let x2 = bor [ (bvar ("18")); (bvar ("4")); (bvar ("8")) ] in
    let x3 = bimply ((bvar ("92")), (bvar ("53"))) in
    bxor [ x0; x1; x2; x3 ] = bxor [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (104)
  (try
   (let x0 = bimply ((bvar ("5")), (bvar ("25"))) in
    let x1 = bxor [ (bvar ("89")); (bvar ("74")); (bvar ("46")) ] in
    let x2 = bimply ((bvar ("5")), (bvar ("25"))) in
    let x3 = bequiv ((bvar ("87")), (bvar ("66"))) in
    bxor [ x0; x1; x2; x3 ] = bxor [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (105)
  (try
   (let x0 = bnot btrue in
    let x1 = band [ (bvar ("67")); (bvar ("82")); (bvar ("2")) ] in
    let x2 = bor [ (bvar ("12")); (bvar ("50")); bfalse ] in
    let x3 = bvar ("51") in bxor [ x0; x1; x2; x3 ] = bxor [ x3; x1; x2; x0 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (106)
  (try
   (let x0 = bvar ("41") in
    let x1 = bimply ((bvar ("25")), (bvar ("76"))) in
    let x2 = band [ (bvar ("4")); bfalse; bfalse ] in
    let x3 = bxor [ (bvar ("38")); (bvar ("94")); (bvar ("15")) ] in
    bxor [ x0; x1; x2; x3 ] = bxor [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (107)
  (try
   (let x0 = bimply ((bvar ("6")), (bvar ("31"))) in
    let x1 = bequiv ((bvar ("64")), (bvar ("67"))) in
    let x2 = bvar ("63") in
    let x3 = bnot (bvar ("78")) in
    bxor [ x0; x1; x2; x3 ] = bxor [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (108)
  (try
   (let x0 = bnot btrue in
    let x1 = bor [ (bvar ("12")); (bvar ("33")); (bvar ("37")) ] in
    let x2 = band [ (bvar ("67")); (bvar ("82")); (bvar ("45")) ] in
    let x3 = bor [ (bvar ("98")); (bvar ("50")); (bvar ("66")) ] in
    bxor [ x0; x1; x2; x3 ] = bxor [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (109)
  (try
   (let x0 = bnot (bvar ("7")) in
    let x1 = bnot (bvar ("68")) in
    let x2 = bvar ("5") in
    let x3 = bequiv ((bvar ("80")), bfalse) in
    bxor [ x0; x1; x2; x3 ] = bxor [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (110)
  (try
   (let x0 = bimply ((bvar ("39")), (bvar ("0"))) in
    let x1 = bxor [ (bvar ("4")); (bvar ("13")); (bvar ("44")) ] in
    let x2 = band [ (bvar ("90")); (bvar ("88")); (bvar ("82")) ] in
    let x3 = bxor [ (bvar ("79")); (bvar ("13")); (bvar ("44")) ] in
    bxor [ x0; x1; x2; x3 ] = bxor [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (111)
  (try
   (let x0 = bxor [ (bvar ("79")); (bvar ("13")); (bvar ("44")) ] in
    let x1 = bxor [ (bvar ("98")); (bvar ("75")); (bvar ("89")) ] in
    let x2 = bimply (bfalse, (bvar ("39"))) in
    let x3 = btrue in bxor [ x0; x1; x2; x3 ] = bxor [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (112)
  (try
   (let x0 = bequiv ((bvar ("98")), (bvar ("17"))) in
    let x1 = bxor [ (bvar ("4")); (bvar ("13")); (bvar ("44")) ] in
    let x2 = bnot (bvar ("94")) in
    let x3 = bnot (bvar ("42")) in
    bxor [ x0; x1; x2; x3 ] = bxor [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (113)
  (try
   (let x0 = bor [ (bvar ("24")); (bvar ("25")); (bvar ("35")) ] in
    let x1 = bxor [ (bvar ("98")); (bvar ("75")); (bvar ("89")) ] in
    let x2 = bimply (btrue, (bvar ("98"))) in
    let x3 = bvar ("34") in bxor [ x0; x1; x2; x3 ] = bxor [ x3; x2; x1; x0 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (114)
  (try
   (let x0 = bor [ (bvar ("11")); (bvar ("7")); btrue ] in
    let x1 = bor [ bfalse; (bvar ("12")); btrue ] in
    let x2 = bnot (bvar ("42")) in
    let x3 = bvar ("19") in bxor [ x0; x1; x2; x3 ] = bxor [ x3; x2; x1; x0 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (115)
  (try
   (let x0 = bnot (bvar ("5")) in
    let x1 = bequiv ((bvar ("70")), (bvar ("63"))) in
    let x2 = bor [ (bvar ("64")); (bvar ("14")); (bvar ("73")) ] in
    let x3 = bor [ (bvar ("95")); (bvar ("76")); (bvar ("84")) ] in
    bxor [ x0; x1; x2; x3 ] = bxor [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (116)
  (try
   (let x0 = bnot (bvar ("8")) in
    let x1 = bvar ("79") in
    let x2 = bequiv ((bvar ("72")), (bvar ("15"))) in
    let x3 = bequiv ((bvar ("72")), (bvar ("91"))) in
    bxor [ x0; x1; x2; x3 ] = bxor [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (117)
  (try
   (let x0 = bxor [ (bvar ("0")); btrue; (bvar ("14")) ] in
    let x1 = bvar ("95") in
    let x2 = band [ (bvar ("81")); (bvar ("37")); (bvar ("37")) ] in
    let x3 = bor [ (bvar ("29")); (bvar ("75")); (bvar ("32")) ] in
    bxor [ x0; x1; x2; x3 ] = bxor [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (118)
  (try
   (let x0 = bor [ (bvar ("95")); (bvar ("76")); (bvar ("84")) ] in
    let x1 = band [ (bvar ("69")); (bvar ("37")); (bvar ("84")) ] in
    let x2 = band [ (bvar ("17")); (bvar ("21")); (bvar ("52")) ] in
    let x3 = bor [ (bvar ("95")); (bvar ("76")); (bvar ("84")) ] in
    bxor [ x0; x1; x2; x3 ] = bxor [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (119)
  (try
   (let x0 = bnot (bvar ("65")) in
    let x1 = bvar ("81") in
    let x2 = band [ (bvar ("81")); (bvar ("21")); (bvar ("37")) ] in
    let x3 = bequiv ((bvar ("87")), (bvar ("7"))) in
    bxor [ x0; x1; x2; x3 ] = bxor [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (120)
  (try
   (let x0 = bxor [ btrue; (bvar ("22")); bfalse ] in
    let x1 = bimply ((bvar ("25")), btrue) in
    bxor [ x0; bfalse; x1 ] = bxor [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (121)
  (try
   (let x0 = band [ (bvar ("47")); (bvar ("22")); (bvar ("44")) ] in
    let x1 = bimply (btrue, btrue) in
    bxor [ x0; bfalse; x1 ] = bxor [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (122)
  (try
   (let x0 = bequiv (bfalse, (bvar ("17"))) in
    let x1 = band [ (bvar ("24")); (bvar ("37")); (bvar ("11")) ] in
    bxor [ x0; bfalse; x1 ] = bxor [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (123)
  (try
   (let x0 = bimply ((bvar ("25")), btrue) in
    let x1 = bxor [ (bvar ("9")); (bvar ("38")); (bvar ("36")) ] in
    bxor [ x0; bfalse; x1 ] = bxor [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (124)
  (try
   (let x0 = bimply (btrue, (bvar ("26"))) in
    let x1 = bxor [ (bvar ("9")); (bvar ("38")); (bvar ("36")) ] in
    bxor [ x0; bfalse; x1 ] = bxor [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (125)
  (try
   (let x0 = bimply ((bvar ("3")), (bvar ("7"))) in bxor [ bfalse; x0 ] = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (126)
  (try
   (let x0 = bxor [ (bvar ("12")); (bvar ("3")); bfalse ] in
    bxor [ bfalse; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (127)
  (try
   (let x0 = bimply ((bvar ("11")), (bvar ("8"))) in bxor [ bfalse; x0 ] = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (128)
  (try (let x0 = bvar ("2") in bxor [ bfalse; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (129)
  (try
   (let x0 = band [ (bvar ("0")); (bvar ("10")); btrue ] in
    bxor [ bfalse; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (130)
  (try
   (let x0 = bor [ (bvar ("18")); btrue; (bvar ("18")) ] in
    bxor [ x0; bfalse; bfalse ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (131)
  (try (let x0 = bvar ("4") in bxor [ x0; bfalse; bfalse ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (132)
  (try
   (let x0 = bor [ (bvar ("18")); btrue; (bvar ("18")) ] in
    bxor [ x0; bfalse; bfalse ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (133)
  (try
   (let x0 = bequiv (bfalse, (bvar ("23"))) in
    bxor [ x0; bfalse; bfalse ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (134)
  (try
   (let x0 = band [ (bvar ("23")); (bvar ("17")); (bvar ("16")) ] in
    bxor [ x0; bfalse; bfalse ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (135)
  (try (let x0 = bvar ("5") in bxor [ x0; x0 ] = bfalse) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (136)
  (try (let x0 = bnot (bvar ("20")) in bxor [ x0; x0 ] = bfalse) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (137)
  (try (let x0 = bfalse in bxor [ x0; x0 ] = bfalse) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (138)
  (try (let x0 = bimply (btrue, bfalse) in bxor [ x0; x0 ] = bfalse) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (139)
  (try
   (let x0 = bor [ (bvar ("23")); (bvar ("6")); (bvar ("10")) ] in
    bxor [ x0; x0 ] = bfalse) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (140)
  (try
   (let x0 = bvar ("37") in
    let x1 = bimply ((bvar ("2")), (bvar ("46"))) in
    let x2 = bvar ("0") in bxor [ x0; x1; x1; x2 ] = bxor [ x0; bfalse; x2 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (141)
  (try
   (let x0 = bfalse in
    let x1 = bimply ((bvar ("16")), (bvar ("19"))) in
    let x2 = bvar ("14") in bxor [ x0; x1; x1; x2 ] = bxor [ x0; bfalse; x2 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (142)
  (try
   (let x0 = bxor [ (bvar ("11")); (bvar ("47")); (bvar ("34")) ] in
    let x1 = bor [ (bvar ("61")); (bvar ("48")); (bvar ("9")) ] in
    let x2 = bnot (bvar ("74")) in
    bxor [ x0; x1; x1; x2 ] = bxor [ x0; bfalse; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (143)
  (try
   (let x0 = bequiv ((bvar ("49")), (bvar ("53"))) in
    let x1 = bvar ("37") in
    let x2 = band [ (bvar ("71")); (bvar ("17")); (bvar ("8")) ] in
    bxor [ x0; x1; x1; x2 ] = bxor [ x0; bfalse; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (144)
  (try
   (let x0 = bor [ (bvar ("27")); (bvar ("48")); (bvar ("53")) ] in
    let x1 = bimply ((bvar ("2")), (bvar ("46"))) in
    let x2 = band [ (bvar ("4")); (bvar ("17")); (bvar ("71")) ] in
    bxor [ x0; x1; x1; x2 ] = bxor [ x0; bfalse; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (145)
  (try
   (let x1 = bequiv ((bvar ("45")), (bvar ("37"))) in
    let x2 = bor [ (bvar ("23")); bfalse; (bvar ("14")) ] in
    let x3 =
      [ bequiv ((bvar ("13")), (bvar ("5"))); bequiv (btrue, bfalse);
        bor [ (bvar ("17")); btrue; bfalse ] ] in
    bor (x1 :: (x2 :: x3)) =
    bor (bxor [ (bxor [ x1; x2 ]); (band [ x1; x2 ]) ] :: x3)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (146)
  (try
   (let x1 = bimply ((bvar ("9")), (bvar ("18"))) in
    let x2 = band [ (bvar ("40")); btrue; (bvar ("0")) ] in
    let x3 =
      [ bimply ((bvar ("15")), bfalse); bvar ("23");
        bequiv ((bvar ("17")), (bvar ("11"))) ] in
    bor (x1 :: (x2 :: x3)) =
    bor (bxor [ (bxor [ x1; x2 ]); (band [ x1; x2 ]) ] :: x3)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (147)
  (try
   (let x1 = bequiv ((bvar ("28")), (bvar ("37"))) in
    let x2 = bvar ("30") in
    let x3 =
      [ bequiv ((bvar ("13")), (bvar ("5")));
        bor [ (bvar ("3")); (bvar ("13")); (bvar ("17")) ];
        bequiv ((bvar ("17")), (bvar ("11"))) ] in
    bor (x1 :: (x2 :: x3)) =
    bor (bxor [ (bxor [ x1; x2 ]); (band [ x1; x2 ]) ] :: x3)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (148)
  (try
   (let x1 = bequiv ((bvar ("45")), (bvar ("37"))) in
    let x2 = bequiv ((bvar ("49")), bfalse) in
    let x3 =
      [ bor [ bfalse; (bvar ("23")); (bvar ("17")) ];
        bequiv ((bvar ("2")), bfalse);
        bxor [ btrue; (bvar ("15")); (bvar ("23")) ] ] in
    bor (x1 :: (x2 :: x3)) =
    bor (bxor [ (bxor [ x1; x2 ]); (band [ x1; x2 ]) ] :: x3)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (149)
  (try
   (let x1 = bimply ((bvar ("9")), (bvar ("31"))) in
    let x2 = band [ (bvar ("40")); (bvar ("10")); (bvar ("7")) ] in
    let x3 =
      [ bor [ bfalse; (bvar ("23")); (bvar ("17")) ];
        bequiv ((bvar ("2")), bfalse);
        bxor [ btrue; (bvar ("15")); (bvar ("23")) ] ] in
    bor (x1 :: (x2 :: x3)) =
    bor (bxor [ (bxor [ x1; x2 ]); (band [ x1; x2 ]) ] :: x3)) with
   | Failure "Division by Absorbent" -> true)
;;

