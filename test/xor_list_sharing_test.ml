open Xor_list_sharing
;;

open Gentest
;;

testing ("Xor_list_sharing (automatic) - seed: 8039089")
;;

testi
  (0)
  (try (let x0 = bequiv (bfalse, btrue) in bnot x0 = bxor [ x0; btrue ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (1)
  (try
   (let x0 = bequiv ((bvar ("0")), (bvar ("17"))) in
    bnot x0 = bxor [ x0; btrue ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (2)
  (try
   (let x0 = bxor [ (bvar ("5")); (bvar ("4")); (bvar ("4")) ] in
    bnot x0 = bxor [ x0; btrue ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (3)
  (try
   (let x0 = bequiv ((bvar ("0")), btrue) in bnot x0 = bxor [ x0; btrue ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (4)
  (try
   (let x0 = bxor [ (bvar ("4")); bfalse; (bvar ("24")) ] in
    bnot x0 = bxor [ x0; btrue ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (5)
  (try
   (let x1 = bimply ((bvar ("31")), (bvar ("33"))) in
    let x0 = bxor [ (bvar ("41")); (bvar ("34")); (bvar ("20")) ] in
    bimply (x1, x0) = bor [ (bnot x1); x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (6)
  (try
   (let x1 = bxor [ btrue; (bvar ("49")); (bvar ("20")) ] in
    let x0 = bxor [ (bvar ("41")); (bvar ("34")); (bvar ("20")) ] in
    bimply (x1, x0) = bor [ (bnot x1); x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (7)
  (try
   (let x1 = band [ (bvar ("15")); (bvar ("48")); (bvar ("16")) ] in
    let x0 = bequiv ((bvar ("12")), (bvar ("0"))) in
    bimply (x1, x0) = bor [ (bnot x1); x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (8)
  (try
   (let x1 = bor [ (bvar ("25")); (bvar ("35")); (bvar ("46")) ] in
    let x0 = bequiv (bfalse, (bvar ("28"))) in
    bimply (x1, x0) = bor [ (bnot x1); x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (9)
  (try
   (let x1 = bxor [ (bvar ("41")); (bvar ("34")); (bvar ("20")) ] in
    let x0 = band [ (bvar ("15")); btrue; (bvar ("24")) ] in
    bimply (x1, x0) = bor [ (bnot x1); x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (10)
  (try
   (let x0 = band [ (bvar ("27")); (bvar ("13")); (bvar ("26")) ] in
    let x1 = band [ (bvar ("44")); (bvar ("41")); bfalse ] in
    bequiv (x0, x1) = band [ (bimply (x0, x1)); (bimply (x1, x0)) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (11)
  (try
   (let x0 = bvar ("11") in
    let x1 = bor [ (bvar ("31")); (bvar ("42")); (bvar ("1")) ] in
    bequiv (x0, x1) = band [ (bimply (x0, x1)); (bimply (x1, x0)) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (12)
  (try
   (let x0 = bor [ (bvar ("31")); (bvar ("42")); (bvar ("1")) ] in
    let x1 = bxor [ (bvar ("0")); (bvar ("0")); (bvar ("22")) ] in
    bequiv (x0, x1) = band [ (bimply (x0, x1)); (bimply (x1, x0)) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (13)
  (try
   (let x0 = band [ (bvar ("34")); (bvar ("13")); bfalse ] in
    let x1 = bnot btrue in
    bequiv (x0, x1) = band [ (bimply (x0, x1)); (bimply (x1, x0)) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (14)
  (try
   (let x0 = bvar ("11") in
    let x1 = band [ (bvar ("27")); (bvar ("13")); (bvar ("26")) ] in
    bequiv (x0, x1) = band [ (bimply (x0, x1)); (bimply (x1, x0)) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (15)
  (try
   (let x0 = bimply ((bvar ("58")), (bvar ("24"))) in
    let x1 = bequiv ((bvar ("31")), (bvar ("46"))) in
    let x2 = bor [ (bvar ("60")); (bvar ("49")); (bvar ("53")) ] in
    band [ (band [ x0; x1 ]); x2 ] = band [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (16)
  (try
   (let x0 = bequiv ((bvar ("31")), (bvar ("62"))) in
    let x1 = bequiv ((bvar ("7")), (bvar ("29"))) in
    let x2 = bnot bfalse in
    band [ (band [ x0; x1 ]); x2 ] = band [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (17)
  (try
   (let x0 = bnot (bvar ("26")) in
    let x1 = bnot btrue in
    let x2 = bvar ("41") in
    band [ (band [ x0; x1 ]); x2 ] = band [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (18)
  (try
   (let x0 = bimply ((bvar ("58")), (bvar ("24"))) in
    let x1 = bor [ (bvar ("60")); (bvar ("49")); (bvar ("1")) ] in
    let x2 = bor [ bfalse; btrue; (bvar ("0")) ] in
    band [ (band [ x0; x1 ]); x2 ] = band [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (19)
  (try
   (let x0 = bor [ (bvar ("51")); (bvar ("49")); (bvar ("4")) ] in
    let x1 = bxor [ (bvar ("37")); (bvar ("35")); (bvar ("47")) ] in
    let x2 = bxor [ (bvar ("34")); (bvar ("45")); (bvar ("66")) ] in
    band [ (band [ x0; x1 ]); x2 ] = band [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (20)
  (try
   (let x0 = bequiv ((bvar ("34")), (bvar ("2"))) in
    let x1 = bxor [ (bvar ("80")); (bvar ("104")); (bvar ("15")) ] in
    let x2 = bxor [ (bvar ("19")); bfalse; (bvar ("51")) ] in
    let x3 = bxor [ (bvar ("12")); (bvar ("104")); (bvar ("65")) ] in
    let x4 = bequiv ((bvar ("35")), (bvar ("102"))) in
    band [ x0; (band [ x1; x2 ]); (band [ x3; x4 ]) ] =
    band [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (21)
  (try
   (let x0 = bvar ("4") in
    let x1 = bnot bfalse in
    let x2 = bnot (bvar ("10")) in
    let x3 = bnot (bvar ("87")) in
    let x4 = bvar ("82") in
    band [ x0; (band [ x1; x2 ]); (band [ x3; x4 ]) ] =
    band [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (22)
  (try
   (let x0 = band [ (bvar ("47")); (bvar ("107")); (bvar ("84")) ] in
    let x1 = bxor [ (bvar ("80")); btrue; (bvar ("89")) ] in
    let x2 = bxor [ (bvar ("80")); (bvar ("20")); (bvar ("15")) ] in
    let x3 = bnot (bvar ("17")) in
    let x4 = bxor [ (bvar ("12")); (bvar ("104")); (bvar ("65")) ] in
    band [ x0; (band [ x1; x2 ]); (band [ x3; x4 ]) ] =
    band [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (23)
  (try
   (let x0 = bnot (bvar ("50")) in
    let x1 = bequiv ((bvar ("97")), (bvar ("119"))) in
    let x2 = bequiv ((bvar ("44")), (bvar ("36"))) in
    let x3 = band [ bfalse; (bvar ("11")); (bvar ("68")) ] in
    let x4 = bequiv ((bvar ("10")), (bvar ("2"))) in
    band [ x0; (band [ x1; x2 ]); (band [ x3; x4 ]) ] =
    band [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (24)
  (try
   (let x0 = bxor [ (bvar ("113")); (bvar ("20")); (bvar ("15")) ] in
    let x1 = bor [ (bvar ("35")); (bvar ("22")); (bvar ("111")) ] in
    let x2 = bvar ("3") in
    let x3 = bnot bfalse in
    let x4 = bvar ("57") in
    band [ x0; (band [ x1; x2 ]); (band [ x3; x4 ]) ] =
    band [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (25)
  (try
   (let x0 = bor [ (bvar ("89")); (bvar ("40")); (bvar ("23")) ] in
    let x1 = bnot (bvar ("10")) in
    let x2 = bor [ bfalse; (bvar ("40")); (bvar ("94")) ] in
    let x3 = bimply ((bvar ("12")), (bvar ("26"))) in
    band [ (band [ x0; x1; x2 ]); x3 ] = band [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (26)
  (try
   (let x0 = band [ (bvar ("25")); (bvar ("49")); (bvar ("36")) ] in
    let x1 = bor [ (bvar ("53")); (bvar ("69")); (bvar ("66")) ] in
    let x2 = bxor [ (bvar ("58")); bfalse; btrue ] in
    let x3 = bvar ("95") in
    band [ (band [ x0; x1; x2 ]); x3 ] = band [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (27)
  (try
   (let x0 = band [ (bvar ("95")); bfalse; (bvar ("36")) ] in
    let x1 = bvar ("68") in
    let x2 = bnot (bvar ("65")) in
    let x3 = bnot (bvar ("19")) in
    band [ (band [ x0; x1; x2 ]); x3 ] = band [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (28)
  (try
   (let x0 = bimply ((bvar ("29")), (bvar ("44"))) in
    let x1 = bxor [ (bvar ("93")); (bvar ("80")); (bvar ("80")) ] in
    let x2 = bnot (bvar ("35")) in
    let x3 = bimply ((bvar ("12")), (bvar ("26"))) in
    band [ (band [ x0; x1; x2 ]); x3 ] = band [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (29)
  (try
   (let x0 = bnot (bvar ("35")) in
    let x1 = bor [ (bvar ("53")); (bvar ("69")); (bvar ("66")) ] in
    let x2 = bequiv ((bvar ("22")), (bvar ("82"))) in
    let x3 = bimply ((bvar ("74")), (bvar ("32"))) in
    band [ (band [ x0; x1; x2 ]); x3 ] = band [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (30)
  (try
   (let x0 = bimply ((bvar ("9")), bfalse) in
    let x1 = band [ (bvar ("22")); (bvar ("54")); (bvar ("25")) ] in
    let x2 = bimply ((bvar ("97")), bfalse) in
    let x3 = bimply (bfalse, bfalse) in
    band [ x0; x1; x2; x3 ] = band [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (31)
  (try
   (let x0 = band [ (bvar ("45")); (bvar ("32")); (bvar ("32")) ] in
    let x1 = bimply (bfalse, bfalse) in
    let x2 = bimply ((bvar ("91")), bfalse) in
    let x3 = bvar ("35") in band [ x0; x1; x2; x3 ] = band [ x1; x0; x3; x2 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (32)
  (try
   (let x0 = bvar ("5") in
    let x1 = bnot (bvar ("17")) in
    let x2 = bequiv (btrue, (bvar ("25"))) in
    let x3 = bnot (bvar ("94")) in
    band [ x0; x1; x2; x3 ] = band [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (33)
  (try
   (let x0 = bxor [ (bvar ("83")); (bvar ("46")); (bvar ("60")) ] in
    let x1 = bvar ("57") in
    let x2 = bor [ (bvar ("76")); (bvar ("5")); (bvar ("99")) ] in
    let x3 = bxor [ (bvar ("40")); (bvar ("79")); (bvar ("65")) ] in
    band [ x0; x1; x2; x3 ] = band [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (34)
  (try
   (let x0 = bequiv ((bvar ("17")), (bvar ("90"))) in
    let x1 = bxor [ bfalse; (bvar ("0")); (bvar ("67")) ] in
    let x2 = bequiv ((bvar ("17")), (bvar ("25"))) in
    let x3 = bxor [ (bvar ("40")); (bvar ("0")); (bvar ("44")) ] in
    band [ x0; x1; x2; x3 ] = band [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (35)
  (try
   (let x0 = bor [ (bvar ("40")); (bvar ("16")); (bvar ("73")) ] in
    let x1 = bequiv (bfalse, (bvar ("63"))) in
    let x2 = bor [ (bvar ("40")); (bvar ("16")); (bvar ("73")) ] in
    let x3 = bfalse in band [ x0; x1; x2; x3 ] = band [ x3; x1; x2; x0 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (36)
  (try
   (let x0 = bvar ("99") in
    let x1 = bimply ((bvar ("62")), (bvar ("58"))) in
    let x2 = bvar ("24") in
    let x3 = bxor [ (bvar ("12")); (bvar ("5")); (bvar ("89")) ] in
    band [ x0; x1; x2; x3 ] = band [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (37)
  (try
   (let x0 = bnot (bvar ("87")) in
    let x1 = band [ (bvar ("31")); (bvar ("27")); (bvar ("99")) ] in
    let x2 = bxor [ (bvar ("12")); (bvar ("45")); (bvar ("49")) ] in
    let x3 = bor [ (bvar ("72")); (bvar ("30")); (bvar ("75")) ] in
    band [ x0; x1; x2; x3 ] = band [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (38)
  (try
   (let x0 = bvar ("48") in
    let x1 = bvar ("66") in
    let x2 = bvar ("23") in
    let x3 = bimply ((bvar ("33")), (bvar ("36"))) in
    band [ x0; x1; x2; x3 ] = band [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (39)
  (try
   (let x0 = bvar ("1") in
    let x1 = bor [ (bvar ("62")); (bvar ("13")); (bvar ("46")) ] in
    let x2 = bnot (bvar ("62")) in
    let x3 = bvar ("13") in band [ x0; x1; x2; x3 ] = band [ x3; x1; x2; x0 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (40)
  (try
   (let x0 = bor [ (bvar ("15")); (bvar ("98")); (bvar ("19")) ] in
    let x1 = bvar ("77") in
    let x2 = band [ (bvar ("59")); (bvar ("52")); (bvar ("96")) ] in
    let x3 = bor [ (bvar ("15")); (bvar ("79")); (bvar ("99")) ] in
    band [ x0; x1; x2; x3 ] = band [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (41)
  (try
   (let x0 = band [ (bvar ("13")); (bvar ("24")); (bvar ("73")) ] in
    let x1 = bimply ((bvar ("49")), (bvar ("71"))) in
    let x2 = bxor [ (bvar ("89")); (bvar ("98")); (bvar ("45")) ] in
    let x3 = bimply ((bvar ("39")), (bvar ("95"))) in
    band [ x0; x1; x2; x3 ] = band [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (42)
  (try
   (let x0 = bnot (bvar ("91")) in
    let x1 = bxor [ (bvar ("21")); btrue; (bvar ("45")) ] in
    let x2 = bnot (bvar ("2")) in
    let x3 = bvar ("64") in band [ x0; x1; x2; x3 ] = band [ x3; x2; x1; x0 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (43)
  (try
   (let x0 = bequiv ((bvar ("74")), (bvar ("98"))) in
    let x1 = bnot (bvar ("23")) in
    let x2 = bequiv ((bvar ("57")), bfalse) in
    let x3 = band [ (bvar ("59")); (bvar ("52")); (bvar ("96")) ] in
    band [ x0; x1; x2; x3 ] = band [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (44)
  (try
   (let x0 = bequiv ((bvar ("57")), (bvar ("15"))) in
    let x1 = band [ (bvar ("59")); (bvar ("93")); (bvar ("45")) ] in
    let x2 = bnot (bvar ("2")) in
    let x3 = bnot (bvar ("2")) in
    band [ x0; x1; x2; x3 ] = band [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (45)
  (try
   (let x0 = bvar ("55") in
    let x1 = bxor [ (bvar ("74")); (bvar ("74")); bfalse ] in
    let x2 = bimply ((bvar ("17")), bfalse) in
    let x3 = bequiv ((bvar ("90")), (bvar ("76"))) in
    band [ x0; x1; x2; x3 ] = band [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (46)
  (try
   (let x0 = bvar ("91") in
    let x1 = bimply ((bvar ("60")), (bvar ("4"))) in
    let x2 = bequiv ((bvar ("26")), bfalse) in
    let x3 = btrue in band [ x0; x1; x2; x3 ] = band [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (47)
  (try
   (let x0 = bimply ((bvar ("60")), (bvar ("52"))) in
    let x1 = band [ (bvar ("81")); (bvar ("39")); (bvar ("79")) ] in
    let x2 = bxor [ (bvar ("23")); (bvar ("87")); (bvar ("85")) ] in
    let x3 = band [ bfalse; (bvar ("9")); (bvar ("79")) ] in
    band [ x0; x1; x2; x3 ] = band [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (48)
  (try
   (let x0 = bequiv (btrue, (bvar ("96"))) in
    let x1 = bnot (bvar ("65")) in
    let x2 = bequiv ((bvar ("26")), (bvar ("96"))) in
    let x3 = bnot (bvar ("56")) in
    band [ x0; x1; x2; x3 ] = band [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (49)
  (try
   (let x0 = bor [ (bvar ("83")); (bvar ("3")); (bvar ("31")) ] in
    let x1 = bnot (bvar ("65")) in
    let x2 = bor [ (bvar ("35")); (bvar ("3")); (bvar ("5")) ] in
    let x3 = bimply ((bvar ("21")), (bvar ("43"))) in
    band [ x0; x1; x2; x3 ] = band [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (50)
  (try
   (let x0 = bor [ (bvar ("11")); bfalse; (bvar ("8")) ] in
    band [ x0; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (51)
  (try (let x0 = bimply (btrue, btrue) in band [ x0; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (52)
  (try
   (let x0 = band [ (bvar ("18")); bfalse; (bvar ("14")) ] in
    band [ x0; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (53)
  (try (let x0 = bnot bfalse in band [ x0; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (54)
  (try (let x0 = bimply (btrue, btrue) in band [ x0; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (55)
  (try
   (let x0 = band [ (bvar ("41")); (bvar ("51")); (bvar ("21")) ] in
    let x1 = bnot (bvar ("30")) in
    let x2 = bor [ (bvar ("45")); (bvar ("19")); (bvar ("38")) ] in
    band [ x0; x1; x1; x2 ] = band [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (56)
  (try
   (let x0 = bequiv ((bvar ("62")), (bvar ("9"))) in
    let x1 = band [ (bvar ("23")); (bvar ("41")); (bvar ("71")) ] in
    let x2 = bor [ (bvar ("48")); (bvar ("67")); (bvar ("38")) ] in
    band [ x0; x1; x1; x2 ] = band [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (57)
  (try
   (let x0 = bnot (bvar ("30")) in
    let x1 = bxor [ (bvar ("36")); (bvar ("44")); (bvar ("53")) ] in
    let x2 = bvar ("24") in band [ x0; x1; x1; x2 ] = band [ x0; x1; x2 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (58)
  (try
   (let x0 = bxor [ (bvar ("57")); (bvar ("52")); (bvar ("63")) ] in
    let x1 = bvar ("63") in
    let x2 = band [ (bvar ("39")); (bvar ("45")); btrue ] in
    band [ x0; x1; x1; x2 ] = band [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (59)
  (try
   (let x0 = bxor [ (bvar ("57")); (bvar ("0")); (bvar ("5")) ] in
    let x1 = bnot (bvar ("65")) in
    let x2 = bimply ((bvar ("33")), (bvar ("65"))) in
    band [ x0; x1; x1; x2 ] = band [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (60)
  (try
   (let x0 = bor [ btrue; (bvar ("46")); (bvar ("24")) ] in
    let x1 = bxor [ (bvar ("9")); (bvar ("49")); btrue ] in
    band [ x0; btrue; x1 ] = band [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (61)
  (try
   (let x0 = bnot (bvar ("32")) in
    let x1 = bequiv (btrue, (bvar ("21"))) in
    band [ x0; btrue; x1 ] = band [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (62)
  (try
   (let x0 = band [ (bvar ("43")); (bvar ("46")); (bvar ("48")) ] in
    let x1 = bimply ((bvar ("31")), (bvar ("14"))) in
    band [ x0; btrue; x1 ] = band [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (63)
  (try
   (let x0 = bnot (bvar ("32")) in
    let x1 = band [ (bvar ("43")); (bvar ("13")); (bvar ("15")) ] in
    band [ x0; btrue; x1 ] = band [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (64)
  (try
   (let x0 = bnot (bvar ("38")) in
    let x1 = bvar ("8") in band [ x0; btrue; x1 ] = band [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (65)
  (try (let x0 = bnot (bvar ("2")) in band [ btrue; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (66)
  (try
   (let x0 = bimply ((bvar ("22")), (bvar ("12"))) in band [ btrue; x0 ] = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (67)
  (try (let x0 = bfalse in band [ btrue; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (68)
  (try (let x0 = bnot (bvar ("2")) in band [ btrue; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (69)
  (try
   (let x0 = bxor [ (bvar ("20")); (bvar ("22")); (bvar ("2")) ] in
    band [ btrue; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (70)
  (try
   (let x0 = bxor [ (bvar ("22")); (bvar ("11")); (bvar ("10")) ] in
    band [ x0; btrue; btrue ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (71)
  (try (let x0 = bvar ("6") in band [ x0; btrue; btrue ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (72)
  (try (let x0 = bvar ("6") in band [ x0; btrue; btrue ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (73)
  (try (let x0 = bvar ("6") in band [ x0; btrue; btrue ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (74)
  (try
   (let x0 = bxor [ (bvar ("3")); (bvar ("11")); (bvar ("10")) ] in
    band [ x0; btrue; btrue ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (75)
  (try
   (let x0 = bnot (bvar ("61")) in
    let x1 = bequiv ((bvar ("26")), btrue) in
    let x2 = band [ (bvar ("63")); (bvar ("64")); (bvar ("45")) ] in
    band [ x0; x1; (bxor [ x0; x1; x2 ]); x2 ] =
    bxor
      [ (band [ x0; x1; x0; x2 ]); (band [ x0; x1; x1; x2 ]);
        (band [ x0; x1; x2; x2 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (76)
  (try
   (let x0 = bimply ((bvar ("2")), (bvar ("13"))) in
    let x1 = bequiv ((bvar ("64")), (bvar ("60"))) in
    let x2 = bxor [ btrue; (bvar ("42")); (bvar ("32")) ] in
    band [ x0; x1; (bxor [ x0; x1; x2 ]); x2 ] =
    bxor
      [ (band [ x0; x1; x0; x2 ]); (band [ x0; x1; x1; x2 ]);
        (band [ x0; x1; x2; x2 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (77)
  (try
   (let x0 = bor [ (bvar ("59")); (bvar ("2")); (bvar ("51")) ] in
    let x1 = bnot (bvar ("11")) in
    let x2 = bequiv ((bvar ("5")), (bvar ("43"))) in
    band [ x0; x1; (bxor [ x0; x1; x2 ]); x2 ] =
    bxor
      [ (band [ x0; x1; x0; x2 ]); (band [ x0; x1; x1; x2 ]);
        (band [ x0; x1; x2; x2 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (78)
  (try
   (let x0 = bor [ (bvar ("23")); (bvar ("4")); (bvar ("17")) ] in
    let x1 = bequiv ((bvar ("5")), (bvar ("60"))) in
    let x2 = bxor [ (bvar ("44")); (bvar ("42")); (bvar ("31")) ] in
    band [ x0; x1; (bxor [ x0; x1; x2 ]); x2 ] =
    bxor
      [ (band [ x0; x1; x0; x2 ]); (band [ x0; x1; x1; x2 ]);
        (band [ x0; x1; x2; x2 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (79)
  (try
   (let x0 = bvar ("3") in
    let x1 = band [ (bvar ("73")); (bvar ("18")); btrue ] in
    let x2 = bxor [ (bvar ("65")); (bvar ("60")); (bvar ("18")) ] in
    band [ x0; x1; (bxor [ x0; x1; x2 ]); x2 ] =
    bxor
      [ (band [ x0; x1; x0; x2 ]); (band [ x0; x1; x1; x2 ]);
        (band [ x0; x1; x2; x2 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (80)
  (try
   (let x0 = bvar ("59") in
    let x1 = bor [ (bvar ("38")); (bvar ("60")); (bvar ("37")) ] in
    let x2 = bvar ("25") in
    band [ (bxor [ x0; x1; x2 ]); x0 ] =
    bxor [ (band [ x0; x0 ]); (band [ x1; x0 ]); (band [ x2; x0 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (81)
  (try
   (let x0 = bequiv ((bvar ("10")), (bvar ("73"))) in
    let x1 = bimply ((bvar ("43")), (bvar ("31"))) in
    let x2 = band [ (bvar ("50")); (bvar ("49")); bfalse ] in
    band [ (bxor [ x0; x1; x2 ]); x0 ] =
    bxor [ (band [ x0; x0 ]); (band [ x1; x0 ]); (band [ x2; x0 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (82)
  (try
   (let x0 = bimply ((bvar ("6")), (bvar ("31"))) in
    let x1 = band [ (bvar ("1")); (bvar ("49")); (bvar ("74")) ] in
    let x2 = bvar ("68") in
    band [ (bxor [ x0; x1; x2 ]); x0 ] =
    bxor [ (band [ x0; x0 ]); (band [ x1; x0 ]); (band [ x2; x0 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (83)
  (try
   (let x0 = bequiv ((bvar ("52")), (bvar ("73"))) in
    let x1 = bxor [ (bvar ("18")); (bvar ("27")); (bvar ("54")) ] in
    let x2 = bimply ((bvar ("6")), (bvar ("31"))) in
    band [ (bxor [ x0; x1; x2 ]); x0 ] =
    bxor [ (band [ x0; x0 ]); (band [ x1; x0 ]); (band [ x2; x0 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (84)
  (try
   (let x0 = bequiv ((bvar ("10")), (bvar ("14"))) in
    let x1 = bor [ (bvar ("38")); (bvar ("50")); (bvar ("3")) ] in
    let x2 = bnot (bvar ("5")) in
    band [ (bxor [ x0; x1; x2 ]); x0 ] =
    bxor [ (band [ x0; x0 ]); (band [ x1; x0 ]); (band [ x2; x0 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (85)
  (try
   (let x0 = bequiv ((bvar ("44")), (bvar ("30"))) in
    let x1 = bimply ((bvar ("35")), (bvar ("28"))) in
    let x2 = band [ (bvar ("57")); (bvar ("61")); (bvar ("9")) ] in
    bxor [ (bxor [ x0; x1 ]); x2 ] = bxor [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (86)
  (try
   (let x0 = band [ (bvar ("57")); (bvar ("61")); (bvar ("9")) ] in
    let x1 = bimply ((bvar ("70")), (bvar ("67"))) in
    let x2 = bnot (bvar ("11")) in
    bxor [ (bxor [ x0; x1 ]); x2 ] = bxor [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (87)
  (try
   (let x0 = bnot bfalse in
    let x1 = bxor [ (bvar ("1")); (bvar ("21")); (bvar ("66")) ] in
    let x2 = bequiv ((bvar ("21")), (bvar ("30"))) in
    bxor [ (bxor [ x0; x1 ]); x2 ] = bxor [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (88)
  (try
   (let x0 = bxor [ (bvar ("58")); (bvar ("4")); (bvar ("17")) ] in
    let x1 = bvar ("7") in
    let x2 = bxor [ (bvar ("58")); (bvar ("54")); (bvar ("28")) ] in
    bxor [ (bxor [ x0; x1 ]); x2 ] = bxor [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (89)
  (try
   (let x0 = bor [ (bvar ("42")); (bvar ("20")); (bvar ("14")) ] in
    let x1 = bnot (bvar ("57")) in
    let x2 = bnot (bvar ("29")) in
    bxor [ (bxor [ x0; x1 ]); x2 ] = bxor [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (90)
  (try
   (let x0 = bxor [ (bvar ("17")); btrue; (bvar ("30")) ] in
    let x1 = bvar ("51") in
    let x2 = bnot (bvar ("93")) in
    let x3 = bxor [ (bvar ("12")); (bvar ("7")); (bvar ("67")) ] in
    let x4 = bequiv (btrue, (bvar ("111"))) in
    bxor [ x0; (bxor [ x1; x2 ]); (bxor [ x3; x4 ]) ] =
    bxor [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (91)
  (try
   (let x0 = bxor [ (bvar ("17")); (bvar ("58")); (bvar ("30")) ] in
    let x1 = bequiv ((bvar ("25")), (bvar ("24"))) in
    let x2 = bor [ bfalse; (bvar ("31")); (bvar ("76")) ] in
    let x3 = bvar ("16") in
    let x4 = bequiv ((bvar ("25")), (bvar ("24"))) in
    bxor [ x0; (bxor [ x1; x2 ]); (bxor [ x3; x4 ]) ] =
    bxor [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (92)
  (try
   (let x0 = bequiv ((bvar ("108")), (bvar ("104"))) in
    let x1 = bor [ (bvar ("6")); (bvar ("76")); (bvar ("6")) ] in
    let x2 = bnot (bvar ("47")) in
    let x3 = bnot (bvar ("46")) in
    let x4 = bfalse in
    bxor [ x0; (bxor [ x1; x2 ]); (bxor [ x3; x4 ]) ] =
    bxor [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (93)
  (try
   (let x0 = bxor [ (bvar ("17")); (bvar ("23")); (bvar ("57")) ] in
    let x1 = bimply ((bvar ("50")), (bvar ("9"))) in
    let x2 = bnot (bvar ("47")) in
    let x3 = bimply ((bvar ("63")), (bvar ("9"))) in
    let x4 = bxor [ (bvar ("77")); (bvar ("101")); (bvar ("65")) ] in
    bxor [ x0; (bxor [ x1; x2 ]); (bxor [ x3; x4 ]) ] =
    bxor [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (94)
  (try
   (let x0 = bxor [ (bvar ("5")); (bvar ("74")); (bvar ("25")) ] in
    let x1 = bequiv (btrue, (bvar ("111"))) in
    let x2 = bor [ (bvar ("123")); (bvar ("102")); (bvar ("34")) ] in
    let x3 = bor [ (bvar ("55")); (bvar ("103")); (bvar ("123")) ] in
    let x4 = bxor [ (bvar ("17")); (bvar ("23")); (bvar ("57")) ] in
    bxor [ x0; (bxor [ x1; x2 ]); (bxor [ x3; x4 ]) ] =
    bxor [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (95)
  (try
   (let x0 = bequiv ((bvar ("29")), (bvar ("77"))) in
    let x1 = bxor [ (bvar ("57")); (bvar ("95")); (bvar ("1")) ] in
    let x2 = bvar ("69") in
    let x3 = bimply ((bvar ("59")), (bvar ("84"))) in
    bxor [ (bxor [ x0; x1; x2 ]); x3 ] = bxor [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (96)
  (try
   (let x0 = bxor [ btrue; (bvar ("33")); (bvar ("6")) ] in
    let x1 = btrue in
    let x2 = bnot (bvar ("66")) in
    let x3 = band [ (bvar ("13")); (bvar ("65")); (bvar ("94")) ] in
    bxor [ (bxor [ x0; x1; x2 ]); x3 ] = bxor [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (97)
  (try
   (let x0 = bimply ((bvar ("24")), (bvar ("30"))) in
    let x1 = bvar ("94") in
    let x2 = bimply ((bvar ("24")), (bvar ("11"))) in
    let x3 = bnot (bvar ("33")) in
    bxor [ (bxor [ x0; x1; x2 ]); x3 ] = bxor [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (98)
  (try
   (let x0 = bvar ("51") in
    let x1 = bimply ((bvar ("4")), (bvar ("53"))) in
    let x2 = band [ (bvar ("41")); (bvar ("84")); (bvar ("17")) ] in
    let x3 = bnot (bvar ("33")) in
    bxor [ (bxor [ x0; x1; x2 ]); x3 ] = bxor [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (99)
  (try
   (let x0 = bequiv ((bvar ("64")), (bvar ("55"))) in
    let x1 = bimply ((bvar ("24")), (bvar ("96"))) in
    let x2 = bequiv ((bvar ("29")), (bvar ("35"))) in
    let x3 = bvar ("60") in
    bxor [ (bxor [ x0; x1; x2 ]); x3 ] = bxor [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (100)
  (try
   (let x0 = band [ (bvar ("40")); (bvar ("77")); (bvar ("77")) ] in
    let x1 = bimply ((bvar ("88")), (bvar ("55"))) in
    let x2 = band [ (bvar ("4")); (bvar ("89")); (bvar ("80")) ] in
    let x3 = bvar ("59") in bxor [ x0; x1; x2; x3 ] = bxor [ x1; x0; x3; x2 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (101)
  (try
   (let x0 = bnot (bvar ("40")) in
    let x1 = bvar ("33") in
    let x2 = bxor [ btrue; (bvar ("55")); (bvar ("87")) ] in
    let x3 = bnot (bvar ("38")) in
    bxor [ x0; x1; x2; x3 ] = bxor [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (102)
  (try
   (let x0 = bnot (bvar ("10")) in
    let x1 = bvar ("60") in
    let x2 = band [ (bvar ("4")); (bvar ("89")); (bvar ("80")) ] in
    let x3 = bequiv ((bvar ("21")), btrue) in
    bxor [ x0; x1; x2; x3 ] = bxor [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (103)
  (try
   (let x0 = bnot (bvar ("40")) in
    let x1 = bvar ("85") in
    let x2 = bequiv ((bvar ("21")), (bvar ("2"))) in
    let x3 = bor [ (bvar ("53")); (bvar ("8")); (bvar ("99")) ] in
    bxor [ x0; x1; x2; x3 ] = bxor [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (104)
  (try
   (let x0 = bnot bfalse in
    let x1 = bor [ (bvar ("53")); (bvar ("21")); btrue ] in
    let x2 = band [ (bvar ("82")); (bvar ("78")); (bvar ("77")) ] in
    let x3 = bvar ("59") in bxor [ x0; x1; x2; x3 ] = bxor [ x1; x0; x3; x2 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (105)
  (try
   (let x0 = bnot (bvar ("52")) in
    let x1 = bxor [ (bvar ("95")); (bvar ("4")); (bvar ("0")) ] in
    let x2 = bnot (bvar ("44")) in
    let x3 = bxor [ bfalse; (bvar ("84")); (bvar ("0")) ] in
    bxor [ x0; x1; x2; x3 ] = bxor [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (106)
  (try
   (let x0 = bor [ btrue; (bvar ("42")); (bvar ("40")) ] in
    let x1 = bor [ (bvar ("20")); (bvar ("17")); bfalse ] in
    let x2 = bimply ((bvar ("45")), (bvar ("44"))) in
    let x3 = bxor [ (bvar ("95")); (bvar ("37")); (bvar ("98")) ] in
    bxor [ x0; x1; x2; x3 ] = bxor [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (107)
  (try
   (let x0 = bnot (bvar ("44")) in
    let x1 = bvar ("35") in
    let x2 = bor [ (bvar ("20")); (bvar ("42")); (bvar ("97")) ] in
    let x3 = bor [ btrue; bfalse; (bvar ("96")) ] in
    bxor [ x0; x1; x2; x3 ] = bxor [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (108)
  (try
   (let x0 = bimply ((bvar ("48")), (bvar ("7"))) in
    let x1 = bor [ (bvar ("26")); (bvar ("17")); (bvar ("15")) ] in
    let x2 = bnot (bvar ("52")) in
    let x3 = bor [ btrue; bfalse; (bvar ("96")) ] in
    bxor [ x0; x1; x2; x3 ] = bxor [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (109)
  (try
   (let x0 = bvar ("0") in
    let x1 = bvar ("33") in
    let x2 = band [ (bvar ("20")); btrue; (bvar ("65")) ] in
    let x3 = bxor [ (bvar ("22")); btrue; (bvar ("54")) ] in
    bxor [ x0; x1; x2; x3 ] = bxor [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (110)
  (try
   (let x0 = bxor [ (bvar ("39")); (bvar ("60")); (bvar ("71")) ] in
    let x1 = band [ (bvar ("89")); (bvar ("65")); (bvar ("1")) ] in
    let x2 = bnot (bvar ("69")) in
    let x3 = bequiv ((bvar ("58")), (bvar ("30"))) in
    bxor [ x0; x1; x2; x3 ] = bxor [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (111)
  (try
   (let x0 = bor [ (bvar ("82")); (bvar ("44")); (bvar ("99")) ] in
    let x1 = bvar ("82") in
    let x2 = bvar ("82") in
    let x3 = bxor [ (bvar ("6")); (bvar ("11")); (bvar ("56")) ] in
    bxor [ x0; x1; x2; x3 ] = bxor [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (112)
  (try
   (let x0 = bnot (bvar ("58")) in
    let x1 = bnot (bvar ("4")) in
    let x2 = bvar ("7") in
    let x3 = bimply ((bvar ("10")), (bvar ("60"))) in
    bxor [ x0; x1; x2; x3 ] = bxor [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (113)
  (try
   (let x0 = bequiv ((bvar ("81")), (bvar ("6"))) in
    let x1 = bxor [ (bvar ("6")); (bvar ("11")); (bvar ("56")) ] in
    let x2 = bvar ("2") in
    let x3 = bxor [ (bvar ("59")); (bvar ("60")); (bvar ("97")) ] in
    bxor [ x0; x1; x2; x3 ] = bxor [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (114)
  (try
   (let x0 = bequiv ((bvar ("81")), (bvar ("30"))) in
    let x1 = bor [ (bvar ("96")); (bvar ("44")); (bvar ("84")) ] in
    let x2 = bor [ (bvar ("14")); (bvar ("82")); (bvar ("35")) ] in
    let x3 = bequiv ((bvar ("73")), (bvar ("29"))) in
    bxor [ x0; x1; x2; x3 ] = bxor [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (115)
  (try
   (let x0 = band [ (bvar ("15")); (bvar ("60")); (bvar ("57")) ] in
    let x1 = bxor [ (bvar ("58")); (bvar ("99")); (bvar ("97")) ] in
    let x2 = bequiv ((bvar ("44")), (bvar ("98"))) in
    let x3 = bequiv ((bvar ("51")), (bvar ("6"))) in
    bxor [ x0; x1; x2; x3 ] = bxor [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (116)
  (try
   (let x0 = bvar ("70") in
    let x1 = bequiv ((bvar ("85")), (bvar ("23"))) in
    let x2 = band [ (bvar ("3")); (bvar ("42")); (bvar ("0")) ] in
    let x3 = bimply ((bvar ("54")), (bvar ("63"))) in
    bxor [ x0; x1; x2; x3 ] = bxor [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (117)
  (try
   (let x0 = bequiv ((bvar ("51")), (bvar ("56"))) in
    let x1 = bequiv ((bvar ("51")), (bvar ("41"))) in
    let x2 = bnot (bvar ("87")) in
    let x3 = bequiv ((bvar ("51")), (bvar ("6"))) in
    bxor [ x0; x1; x2; x3 ] = bxor [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (118)
  (try
   (let x0 = btrue in
    let x1 = bxor [ (bvar ("63")); (bvar ("33")); (bvar ("42")) ] in
    let x2 = bor [ (bvar ("50")); (bvar ("55")); (bvar ("70")) ] in
    let x3 = band [ (bvar ("83")); (bvar ("93")); (bvar ("7")) ] in
    bxor [ x0; x1; x2; x3 ] = bxor [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (119)
  (try
   (let x0 = bxor [ (bvar ("43")); (bvar ("46")); (bvar ("37")) ] in
    let x1 = btrue in
    let x2 = bimply ((bvar ("60")), (bvar ("63"))) in
    let x3 = bequiv (bfalse, (bvar ("28"))) in
    bxor [ x0; x1; x2; x3 ] = bxor [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (120)
  (try
   (let x0 = bnot (bvar ("4")) in
    let x1 = bequiv ((bvar ("0")), (bvar ("3"))) in
    bxor [ x0; bfalse; x1 ] = bxor [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (121)
  (try
   (let x0 = bequiv ((bvar ("0")), bfalse) in
    let x1 = bxor [ (bvar ("6")); (bvar ("1")); (bvar ("27")) ] in
    bxor [ x0; bfalse; x1 ] = bxor [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (122)
  (try
   (let x0 = band [ (bvar ("23")); btrue; (bvar ("11")) ] in
    let x1 = bvar ("35") in bxor [ x0; bfalse; x1 ] = bxor [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (123)
  (try
   (let x0 = bnot (bvar ("43")) in
    let x1 = bequiv ((bvar ("25")), (bvar ("40"))) in
    bxor [ x0; bfalse; x1 ] = bxor [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (124)
  (try
   (let x0 = bfalse in
    let x1 = bor [ (bvar ("39")); (bvar ("1")); (bvar ("16")) ] in
    bxor [ x0; bfalse; x1 ] = bxor [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (125)
  (try (let x0 = bnot btrue in bxor [ bfalse; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (126)
  (try
   (let x0 = bequiv ((bvar ("22")), (bvar ("10"))) in
    bxor [ bfalse; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (127)
  (try
   (let x0 = bxor [ btrue; (bvar ("8")); (bvar ("9")) ] in
    bxor [ bfalse; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (128)
  (try
   (let x0 = bor [ (bvar ("4")); (bvar ("2")); (bvar ("7")) ] in
    bxor [ bfalse; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (129)
  (try (let x0 = bnot (bvar ("12")) in bxor [ bfalse; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (130)
  (try (let x0 = bvar ("23") in bxor [ x0; bfalse; bfalse ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (131)
  (try
   (let x0 = bequiv ((bvar ("21")), (bvar ("5"))) in
    bxor [ x0; bfalse; bfalse ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (132)
  (try
   (let x0 = bimply ((bvar ("17")), (bvar ("5"))) in
    bxor [ x0; bfalse; bfalse ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (133)
  (try (let x0 = bvar ("23") in bxor [ x0; bfalse; bfalse ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (134)
  (try
   (let x0 = bor [ (bvar ("8")); (bvar ("17")); (bvar ("4")) ] in
    bxor [ x0; bfalse; bfalse ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (135)
  (try (let x0 = bnot (bvar ("17")) in bxor [ x0; x0 ] = bfalse) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (136)
  (try
   (let x0 = bequiv ((bvar ("1")), (bvar ("1"))) in bxor [ x0; x0 ] = bfalse)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (137)
  (try
   (let x0 = bxor [ (bvar ("0")); (bvar ("5")); (bvar ("12")) ] in
    bxor [ x0; x0 ] = bfalse) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (138)
  (try (let x0 = bequiv ((bvar ("1")), btrue) in bxor [ x0; x0 ] = bfalse)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (139)
  (try (let x0 = bfalse in bxor [ x0; x0 ] = bfalse) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (140)
  (try
   (let x0 = bxor [ (bvar ("13")); (bvar ("50")); (bvar ("46")) ] in
    let x1 = bequiv ((bvar ("33")), (bvar ("27"))) in
    let x2 = bequiv ((bvar ("48")), (bvar ("27"))) in
    bxor [ x0; x1; x1; x2 ] = bxor [ x0; bfalse; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (141)
  (try
   (let x0 = bor [ (bvar ("69")); (bvar ("31")); (bvar ("71")) ] in
    let x1 = bor [ (bvar ("24")); (bvar ("23")); (bvar ("71")) ] in
    let x2 = bnot (bvar ("16")) in
    bxor [ x0; x1; x1; x2 ] = bxor [ x0; bfalse; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (142)
  (try
   (let x0 = bxor [ (bvar ("35")); (bvar ("50")); (bvar ("26")) ] in
    let x1 = bnot (bvar ("67")) in
    let x2 = band [ btrue; btrue; bfalse ] in
    bxor [ x0; x1; x1; x2 ] = bxor [ x0; bfalse; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (143)
  (try
   (let x0 = bvar ("62") in
    let x1 = band [ (bvar ("0")); (bvar ("24")); (bvar ("56")) ] in
    let x2 = bvar ("6") in bxor [ x0; x1; x1; x2 ] = bxor [ x0; bfalse; x2 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (144)
  (try
   (let x0 = bvar ("10") in
    let x1 = band [ (bvar ("63")); (bvar ("16")); (bvar ("64")) ] in
    let x2 = bor [ (bvar ("1")); (bvar ("57")); (bvar ("13")) ] in
    bxor [ x0; x1; x1; x2 ] = bxor [ x0; bfalse; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (145)
  (try
   (let x1 = bxor [ (bvar ("42")); (bvar ("43")); (bvar ("14")) ] in
    let x2 = bxor [ (bvar ("33")); (bvar ("17")); (bvar ("23")) ] in
    let x3 =
      [ bxor [ (bvar ("15")); bfalse; (bvar ("14")) ];
        bimply (btrue, (bvar ("13")));
        bor [ (bvar ("23")); (bvar ("10")); (bvar ("4")) ] ] in
    bor (x1 :: (x2 :: x3)) =
    bor (bxor [ (bxor [ x1; x2 ]); (band [ x1; x2 ]) ] :: x3)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (146)
  (try
   (let x1 = bimply ((bvar ("2")), btrue) in
    let x2 = bimply ((bvar ("2")), btrue) in
    let x3 =
      [ bimply ((bvar ("13")), (bvar ("15"))); bvar ("9");
        bxor [ bfalse; (bvar ("3")); (bvar ("7")) ] ] in
    bor (x1 :: (x2 :: x3)) =
    bor (bxor [ (bxor [ x1; x2 ]); (band [ x1; x2 ]) ] :: x3)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (147)
  (try
   (let x1 = bxor [ btrue; (bvar ("32")); (bvar ("23")) ] in
    let x2 = bor [ (bvar ("20")); (bvar ("19")); (bvar ("48")) ] in
    let x3 =
      [ bnot bfalse; bor [ (bvar ("6")); (bvar ("4")); (bvar ("14")) ];
        band [ (bvar ("11")); (bvar ("10")); (bvar ("13")) ] ] in
    bor (x1 :: (x2 :: x3)) =
    bor (bxor [ (bxor [ x1; x2 ]); (band [ x1; x2 ]) ] :: x3)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (148)
  (try
   (let x1 = bequiv ((bvar ("35")), (bvar ("23"))) in
    let x2 = bnot (bvar ("17")) in
    let x3 =
      [ band [ bfalse; (bvar ("8")); (bvar ("3")) ];
        bimply (btrue, (bvar ("13"))); bimply ((bvar ("24")), (bvar ("23"))) ] in
    bor (x1 :: (x2 :: x3)) =
    bor (bxor [ (bxor [ x1; x2 ]); (band [ x1; x2 ]) ] :: x3)) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (149)
  (try
   (let x1 = bvar ("24") in
    let x2 = bimply ((bvar ("2")), btrue) in
    let x3 =
      [ bxor [ (bvar ("15")); bfalse; (bvar ("14")) ];
        bequiv ((bvar ("8")), (bvar ("9")));
        bimply ((bvar ("24")), (bvar ("23"))) ] in
    bor (x1 :: (x2 :: x3)) =
    bor (bxor [ (bxor [ x1; x2 ]); (band [ x1; x2 ]) ] :: x3)) with
   | Failure "Division by Absorbent" -> true)
;;

