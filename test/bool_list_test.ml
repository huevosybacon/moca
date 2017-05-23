open Bool_list
;;

open Gentest
;;

testing ("Bool_list (automatic) - seed: 373931517")
;;

testi
  (0)
  (try
   (let x0 =
      band
        [ (bvar ("31")); (bvar ("42"));
          (band [ (bvar ("19")); btrue; (bvar ("56")) ]) ] in
    let x1 = bvar ("46") in
    let x2 = bnot (band [ (bvar ("52")); (bvar ("4")); (bvar ("26")) ]) in
    band [ (band [ x0; x1 ]); x2 ] = band [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (1)
  (try
   (let x0 =
      bor
        [ (bor [ (bvar ("25")); (bvar ("73")); (bvar ("53")) ]);
          (bnot (bvar ("7"))); (bor [ (bvar ("6")); (bvar ("18")); btrue ]) ] in
    let x1 =
      band
        [ (bnot (bvar ("69"))); (bnot (bvar ("49")));
          (band [ (bvar ("45")); (bvar ("7")); (bvar ("56")) ]) ] in
    let x2 = bor [ (bvar ("10")); (bnot (bvar ("7"))); (bnot (bvar ("4"))) ] in
    band [ (band [ x0; x1 ]); x2 ] = band [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (2)
  (try
   (let x0 = bnot (band [ (bvar ("35")); (bvar ("38")); (bvar ("26")) ]) in
    let x1 = bvar ("13") in
    let x2 =
      band
        [ (bor [ (bvar ("55")); (bvar ("68")); (bvar ("29")) ]);
          (bor [ (bvar ("64")); (bvar ("5")); (bvar ("14")) ]);
          (bor [ (bvar ("54")); (bvar ("43")); (bvar ("20")) ]) ] in
    band [ (band [ x0; x1 ]); x2 ] = band [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (3)
  (try
   (let x0 =
      band [ (bvar ("35")); (bnot (bvar ("49"))); (bnot (bvar ("67"))) ] in
    let x1 = bfalse in
    let x2 =
      band
        [ (bvar ("35")); (bor [ (bvar ("11")); (bvar ("5")); (bvar ("9")) ]);
          (bvar ("51")) ] in
    band [ (band [ x0; x1 ]); x2 ] = band [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (4)
  (try
   (let x0 = bvar ("24") in
    let x1 =
      band
        [ (bor [ (bvar ("55")); (bvar ("68")); (bvar ("29")) ]);
          (bnot (bvar ("49"))); bfalse ] in
    let x2 =
      bor
        [ (bnot (bvar ("71")));
          (band [ (bvar ("25")); (bvar ("8")); (bvar ("19")) ]);
          (bor [ (bvar ("6")); (bvar ("18")); btrue ]) ] in
    band [ (band [ x0; x1 ]); x2 ] = band [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (5)
  (try
   (let x0 = bvar ("20") in
    let x1 = bor [ (bvar ("61")); (bvar ("32")); (bvar ("109")) ] in
    let x2 =
      bor
        [ (bvar ("12")); (bnot (bvar ("72")));
          (band [ (bvar ("114")); (bvar ("49")); (bvar ("110")) ]) ] in
    let x3 = bnot (bnot (bvar ("22"))) in
    let x4 = bnot (bor [ (bvar ("76")); (bvar ("107")); (bvar ("14")) ]) in
    band [ x0; (band [ x1; x2 ]); (band [ x3; x4 ]) ] =
    band [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (6)
  (try
   (let x0 = bvar ("45") in
    let x1 = bnot (bvar ("31")) in
    let x2 =
      band
        [ (band [ (bvar ("41")); (bvar ("39")); (bvar ("64")) ]);
          (bnot (bvar ("62")));
          (bor [ (bvar ("57")); (bvar ("115")); (bvar ("74")) ]) ] in
    let x3 =
      band
        [ (bvar ("103"));
          (band [ (bvar ("90")); (bvar ("2")); (bvar ("64")) ]);
          (bnot (bvar ("75"))) ] in
    let x4 = bnot (bvar ("63")) in
    band [ x0; (band [ x1; x2 ]); (band [ x3; x4 ]) ] =
    band [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (7)
  (try
   (let x0 =
      band
        [ (band [ (bvar ("28")); (bvar ("59")); (bvar ("14")) ]);
          (band [ (bvar ("75")); (bvar ("47")); (bvar ("104")) ]);
          (bnot (bvar ("78"))) ] in
    let x1 = bnot (bnot (bvar ("23"))) in
    let x2 =
      bor
        [ (band [ (bvar ("75")); (bvar ("9")); (bvar ("98")) ]);
          (band [ (bvar ("2")); (bvar ("3")); (bvar ("63")) ]);
          (bor [ btrue; (bvar ("23")); (bvar ("101")) ]) ] in
    let x3 =
      band
        [ (band [ (bvar ("28")); (bvar ("59")); (bvar ("14")) ]);
          (band [ (bvar ("75")); (bvar ("47")); (bvar ("104")) ]);
          (bnot (bvar ("78"))) ] in
    let x4 =
      bor
        [ (band [ (bvar ("75")); (bvar ("9")); (bvar ("98")) ]);
          (band [ (bvar ("2")); (bvar ("3")); (bvar ("63")) ]);
          (bor [ btrue; (bvar ("23")); (bvar ("101")) ]) ] in
    band [ x0; (band [ x1; x2 ]); (band [ x3; x4 ]) ] =
    band [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (8)
  (try
   (let x0 =
      band
        [ (bor [ (bvar ("18")); (bvar ("100")); (bvar ("102")) ]);
          (bvar ("39"));
          (band [ (bvar ("58")); (bvar ("22")); (bvar ("82")) ]) ] in
    let x1 = bnot (bvar ("3")) in
    let x2 =
      band
        [ (band [ (bvar ("123")); (bvar ("124")); (bvar ("14")) ]);
          (bvar ("116")); (bnot (bvar ("78"))) ] in
    let x3 = bvar ("114") in
    let x4 = bnot (bvar ("81")) in
    band [ x0; (band [ x1; x2 ]); (band [ x3; x4 ]) ] =
    band [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (9)
  (try
   (let x0 =
      band
        [ (band [ (bvar ("41")); (bvar ("39")); (bvar ("64")) ]);
          (bor [ bfalse; (bvar ("40")); (bvar ("118")) ]);
          (bor [ (bvar ("3")); (bvar ("33")); (bvar ("44")) ]) ] in
    let x1 = bnot (band [ (bvar ("24")); (bvar ("8")); (bvar ("36")) ]) in
    let x2 = bnot (bvar ("31")) in
    let x3 = bnot (bnot (bvar ("92"))) in
    let x4 = bnot (bnot (bvar ("92"))) in
    band [ x0; (band [ x1; x2 ]); (band [ x3; x4 ]) ] =
    band [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (10)
  (try
   (let x0 = bfalse in
    let x1 = bvar ("36") in
    let x2 = bnot (bnot (bvar ("36"))) in
    let x3 = btrue in
    band [ (band [ x0; x1; x2 ]); x3 ] = band [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (11)
  (try
   (let x0 =
      bor
        [ (bnot (bvar ("27"))); (bvar ("89"));
          (bor [ (bvar ("27")); (bvar ("32")); (bvar ("83")) ]) ] in
    let x1 = bvar ("76") in
    let x2 =
      bor
        [ (band [ (bvar ("68")); (bvar ("76")); (bvar ("12")) ]);
          (bvar ("64"));
          (band [ (bvar ("60")); (bvar ("21")); (bvar ("67")) ]) ] in
    let x3 =
      band
        [ (bvar ("78"));
          (bor [ (bvar ("78")); (bvar ("48")); (bvar ("54")) ]);
          (bnot bfalse) ] in
    band [ (band [ x0; x1; x2 ]); x3 ] = band [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (12)
  (try
   (let x0 = band [ (bvar ("22")); (bnot (bvar ("65"))); (bnot bfalse) ] in
    let x1 = bvar ("78") in
    let x2 = bvar ("76") in
    let x3 =
      band
        [ (bnot (bvar ("21")));
          (bor [ (bvar ("78")); (bvar ("48")); (bvar ("54")) ]);
          (bvar ("55")) ] in
    band [ (band [ x0; x1; x2 ]); x3 ] = band [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (13)
  (try
   (let x0 = bvar ("76") in
    let x1 = bnot (bvar ("39")) in
    let x2 = bnot (bor [ (bvar ("89")); (bvar ("39")); (bvar ("53")) ]) in
    let x3 = bnot (bvar ("70")) in
    band [ (band [ x0; x1; x2 ]); x3 ] = band [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (14)
  (try
   (let x0 = bnot (bvar ("70")) in
    let x1 =
      band [ (bvar ("22")); (bnot (bvar ("83"))); (bnot (bvar ("72"))) ] in
    let x2 = bvar ("25") in
    let x3 = bvar ("25") in
    band [ (band [ x0; x1; x2 ]); x3 ] = band [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (15)
  (try
   (let x0 =
      band
        [ (bnot (bvar ("62"))); bfalse;
          (band [ (bvar ("49")); (bvar ("88")); btrue ]) ] in
    let x1 = bvar ("90") in
    let x2 = bfalse in
    let x3 = bvar ("37") in band [ x0; x1; x2; x3 ] = band [ x1; x0; x3; x2 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (16)
  (try
   (let x0 = bnot (band [ (bvar ("62")); (bvar ("42")); (bvar ("92")) ]) in
    let x1 = bvar ("37") in
    let x2 = bvar ("81") in
    let x3 =
      band
        [ (bnot (bvar ("62"))); bfalse;
          (band [ (bvar ("49")); (bvar ("88")); btrue ]) ] in
    band [ x0; x1; x2; x3 ] = band [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (17)
  (try
   (let x0 =
      band
        [ (bor [ (bvar ("52")); (bvar ("46")); (bvar ("98")) ]);
          (bvar ("22")); (bnot (bvar ("62"))) ] in
    let x1 = bvar ("58") in
    let x2 = bvar ("90") in
    let x3 = bnot (bor [ (bvar ("35")); (bvar ("76")); (bvar ("89")) ]) in
    band [ x0; x1; x2; x3 ] = band [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (18)
  (try
   (let x0 =
      band
        [ (bvar ("64")); bfalse; (bor [ (bvar ("82")); (bvar ("0")); btrue ]) ] in
    let x1 = bnot (bvar ("81")) in
    let x2 = bnot (band [ (bvar ("62")); (bvar ("42")); (bvar ("92")) ]) in
    let x3 = bvar ("34") in band [ x0; x1; x2; x3 ] = band [ x1; x0; x3; x2 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (19)
  (try
   (let x0 =
      band
        [ (bnot (bvar ("62"))); bfalse;
          (band [ (bvar ("49")); (bvar ("88")); btrue ]) ] in
    let x1 =
      bor
        [ (bvar ("89"));
          (band [ (bvar ("71")); (bvar ("68")); (bvar ("9")) ]);
          (bor [ (bvar ("22")); (bvar ("64")); (bvar ("82")) ]) ] in
    let x2 = bvar ("71") in
    let x3 =
      bor
        [ (bvar ("89"));
          (band [ (bvar ("71")); (bvar ("68")); (bvar ("9")) ]);
          (bor [ (bvar ("22")); (bvar ("64")); (bvar ("82")) ]) ] in
    band [ x0; x1; x2; x3 ] = band [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (20)
  (try
   (let x0 = bvar ("74") in
    let x1 =
      band
        [ (bor [ (bvar ("54")); (bvar ("29")); (bvar ("84")) ]);
          (bnot (bvar ("51")));
          (bor [ (bvar ("70")); (bvar ("38")); (bvar ("98")) ]) ] in
    let x2 = bnot (bnot (bvar ("40"))) in
    let x3 = bnot (bnot (bvar ("40"))) in
    band [ x0; x1; x2; x3 ] = band [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (21)
  (try
   (let x0 =
      bor
        [ (band [ (bvar ("66")); btrue; (bvar ("31")) ]);
          (bnot (bvar ("17"))); (bnot (bvar ("37"))) ] in
    let x1 = bvar ("35") in
    let x2 =
      bor
        [ (bor [ (bvar ("20")); (bvar ("72")); (bvar ("93")) ]);
          (bvar ("35")); (bnot (bvar ("19"))) ] in
    let x3 = bvar ("74") in band [ x0; x1; x2; x3 ] = band [ x3; x1; x2; x0 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (22)
  (try
   (let x0 =
      band
        [ (band [ (bvar ("7")); (bvar ("64")); (bvar ("4")) ]);
          (band [ (bvar ("57")); (bvar ("88")); (bvar ("19")) ]);
          (bor [ (bvar ("61")); (bvar ("31")); btrue ]) ] in
    let x1 =
      band
        [ (bnot btrue);
          (band [ (bvar ("42")); (bvar ("88")); (bvar ("57")) ]);
          (bvar ("7")) ] in
    let x2 = bvar ("5") in
    let x3 = bnot (bor [ (bvar ("62")); (bvar ("99")); (bvar ("81")) ]) in
    band [ x0; x1; x2; x3 ] = band [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (23)
  (try
   (let x0 =
      band
        [ (bvar ("65"));
          (band [ (bvar ("57")); (bvar ("88")); (bvar ("19")) ]);
          (bnot (bvar ("74"))) ] in
    let x1 =
      band
        [ (band [ (bvar ("7")); (bvar ("11")); (bvar ("80")) ]);
          (bvar ("50")); (bvar ("49")) ] in
    let x2 = bvar ("5") in
    let x3 = bnot (bvar ("44")) in
    band [ x0; x1; x2; x3 ] = band [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (24)
  (try
   (let x0 =
      bor
        [ (bor [ (bvar ("50")); (bvar ("64")); (bvar ("98")) ]);
          (bor [ (bvar ("47")); (bvar ("30")); (bvar ("74")) ]);
          (bnot (bvar ("69"))) ] in
    let x1 = bvar ("5") in
    let x2 = btrue in
    let x3 =
      bor
        [ (band [ btrue; (bvar ("93")); (bvar ("31")) ]);
          (band [ (bvar ("26")); (bvar ("55")); (bvar ("98")) ]);
          (bvar ("84")) ] in
    band [ x0; x1; x2; x3 ] = band [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (25)
  (try
   (let x0 =
      bor
        [ (bnot (bvar ("88"))); (bnot (bvar ("39")));
          (band [ btrue; (bvar ("75")); (bvar ("24")) ]) ] in
    let x1 =
      bor
        [ (bvar ("87"));
          (band [ (bvar ("79")); (bvar ("88")); (bvar ("22")) ]);
          (band [ (bvar ("1")); (bvar ("76")); (bvar ("37")) ]) ] in
    let x2 = bor [ (bnot (bvar ("88"))); (bvar ("1")); (bvar ("45")) ] in
    let x3 =
      bor
        [ (bvar ("87"));
          (band [ (bvar ("79")); (bvar ("88")); (bvar ("22")) ]);
          (band [ (bvar ("1")); (bvar ("76")); (bvar ("37")) ]) ] in
    band [ x0; x1; x2; x3 ] = band [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (26)
  (try
   (let x0 =
      bor
        [ (bor [ (bvar ("78")); (bvar ("35")); (bvar ("95")) ]);
          (band [ (bvar ("59")); (bvar ("9")); (bvar ("84")) ]);
          (band [ (bvar ("40")); (bvar ("31")); (bvar ("37")) ]) ] in
    let x1 = bvar ("25") in
    let x2 = bnot (bnot (bvar ("2"))) in
    let x3 = bnot (bnot (bvar ("66"))) in
    band [ x0; x1; x2; x3 ] = band [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (27)
  (try
   (let x0 = bnot (band [ bfalse; (bvar ("35")); (bvar ("31")) ]) in
    let x1 = bnot (bor [ (bvar ("53")); (bvar ("76")); (bvar ("20")) ]) in
    let x2 =
      band
        [ (band [ (bvar ("59")); (bvar ("22")); (bvar ("32")) ]);
          (bor [ (bvar ("85")); (bvar ("33")); (bvar ("6")) ]); (bvar ("2")) ] in
    let x3 = bnot (bor [ (bvar ("53")); (bvar ("81")); (bvar ("56")) ]) in
    band [ x0; x1; x2; x3 ] = band [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (28)
  (try
   (let x0 =
      bor
        [ (bvar ("66")); (bnot (bvar ("1")));
          (band [ btrue; (bvar ("75")); (bvar ("24")) ]) ] in
    let x1 =
      bor
        [ (bor [ (bvar ("78")); (bvar ("19")); (bvar ("84")) ]);
          (bvar ("49")); (bvar ("85")) ] in
    let x2 = bnot (band [ (bvar ("15")); (bvar ("62")); (bvar ("78")) ]) in
    let x3 =
      band
        [ (bor [ (bvar ("63")); (bvar ("27")); (bvar ("43")) ]);
          (band [ (bvar ("97")); bfalse; (bvar ("8")) ]); (bvar ("6")) ] in
    band [ x0; x1; x2; x3 ] = band [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (29)
  (try
   (let x0 = bnot (band [ (bvar ("32")); (bvar ("60")); (bvar ("95")) ]) in
    let x1 = bvar ("80") in
    let x2 =
      bor
        [ (band [ (bvar ("78")); (bvar ("29")); (bvar ("51")) ]);
          (bnot (bvar ("1")));
          (band [ (bvar ("1")); (bvar ("76")); (bvar ("37")) ]) ] in
    let x3 = bnot (bor [ (bvar ("53")); (bvar ("81")); (bvar ("56")) ]) in
    band [ x0; x1; x2; x3 ] = band [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (30)
  (try
   (let x0 =
      bor
        [ (bnot btrue); (bvar ("42"));
          (band [ (bvar ("15")); (bvar ("28")); (bvar ("33")) ]) ] in
    let x1 =
      bor
        [ (bor [ (bvar ("58")); (bvar ("67")); (bvar ("94")) ]);
          (bor [ (bvar ("78")); (bvar ("34")); (bvar ("68")) ]);
          (band [ (bvar ("81")); (bvar ("99")); (bvar ("33")) ]) ] in
    let x2 =
      bor
        [ (bor [ (bvar ("75")); btrue; (bvar ("46")) ]);
          (band [ (bvar ("20")); (bvar ("56")); (bvar ("99")) ]);
          (bnot (bvar ("10"))) ] in
    let x3 = bnot (bvar ("67")) in
    band [ x0; x1; x2; x3 ] = band [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (31)
  (try
   (let x0 = bnot (bnot (bvar ("62"))) in
    let x1 = bvar ("33") in
    let x2 =
      bor
        [ (bor [ (bvar ("75")); btrue; (bvar ("46")) ]);
          (band [ (bvar ("20")); (bvar ("56")); (bvar ("99")) ]);
          (bnot (bvar ("10"))) ] in
    let x3 =
      bor
        [ (band [ (bvar ("34")); (bvar ("74")); (bvar ("96")) ]);
          (bor [ (bvar ("82")); (bvar ("34")); (bvar ("2")) ]);
          (bor [ (bvar ("47")); (bvar ("16")); (bvar ("31")) ]) ] in
    band [ x0; x1; x2; x3 ] = band [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (32)
  (try
   (let x0 = band [ (bvar ("72")); (bvar ("0")); btrue ] in
    let x1 = btrue in
    let x2 =
      bor
        [ (bvar ("6"));
          (bor [ (bvar ("78")); (bvar ("34")); (bvar ("68")) ]);
          (bvar ("63")) ] in
    let x3 = bvar ("24") in band [ x0; x1; x2; x3 ] = band [ x2; x1; x0; x3 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (33)
  (try
   (let x0 =
      bor
        [ (bor [ (bvar ("58")); (bvar ("67")); (bvar ("94")) ]);
          (bor [ (bvar ("78")); (bvar ("34")); (bvar ("68")) ]);
          (band [ (bvar ("81")); (bvar ("99")); (bvar ("33")) ]) ] in
    let x1 = bvar ("86") in
    let x2 =
      bor
        [ (bor [ (bvar ("75")); btrue; (bvar ("46")) ]);
          (band [ (bvar ("20")); (bvar ("56")); (bvar ("99")) ]);
          (bnot (bvar ("10"))) ] in
    let x3 = bnot (bvar ("27")) in
    band [ x0; x1; x2; x3 ] = band [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (34)
  (try
   (let x0 = bvar ("58") in
    let x1 = bvar ("71") in
    let x2 = bvar ("13") in
    let x3 = bnot (bor [ (bvar ("11")); (bvar ("58")); (bvar ("26")) ]) in
    band [ x0; x1; x2; x3 ] = band [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (35)
  (try (let x0 = bvar ("8") in band [ x0; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (36)
  (try (let x0 = bvar ("11") in band [ x0; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (37)
  (try
   (let x0 = bor [ (bnot (bvar ("19"))); btrue; (bnot btrue) ] in
    band [ x0; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (38)
  (try
   (let x0 =
      bor
        [ (band [ (bvar ("8")); (bvar ("24")); (bvar ("20")) ]);
          (bnot bfalse); (band [ (bvar ("0")); bfalse; (bvar ("0")) ]) ] in
    band [ x0; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (39)
  (try (let x0 = btrue in band [ x0; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (40)
  (try
   (let x0 =
      bor
        [ (band [ (bvar ("47")); (bvar ("8")); (bvar ("52")) ]);
          (bvar ("60"));
          (band [ (bvar ("53")); (bvar ("12")); (bvar ("25")) ]) ] in
    let x1 = bnot (bvar ("52")) in
    let x2 = bvar ("25") in band [ x0; x1; x1; x2 ] = band [ x0; x1; x2 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (41)
  (try
   (let x0 =
      bor
        [ (bor [ (bvar ("33")); (bvar ("67")); (bvar ("37")) ]);
          (band [ btrue; (bvar ("42")); (bvar ("55")) ]); (bvar ("70")) ] in
    let x1 = bnot (bnot (bvar ("4"))) in
    let x2 =
      bor
        [ (band [ (bvar ("47")); (bvar ("8")); (bvar ("52")) ]);
          (bvar ("60"));
          (band [ (bvar ("53")); (bvar ("12")); (bvar ("25")) ]) ] in
    band [ x0; x1; x1; x2 ] = band [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (42)
  (try
   (let x0 =
      band
        [ (bor [ (bvar ("40")); (bvar ("23")); (bvar ("72")) ]);
          (bnot (bvar ("30")));
          (band [ (bvar ("18")); (bvar ("55")); (bvar ("36")) ]) ] in
    let x1 =
      bor
        [ (band [ (bvar ("47")); (bvar ("8")); (bvar ("52")) ]);
          (bnot (bvar ("52")));
          (band [ (bvar ("53")); (bvar ("12")); (bvar ("25")) ]) ] in
    let x2 = bnot (bor [ (bvar ("70")); (bvar ("10")); btrue ]) in
    band [ x0; x1; x1; x2 ] = band [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (43)
  (try
   (let x0 = bnot (bvar ("52")) in
    let x1 =
      band
        [ (bnot (bvar ("65")));
          (bor [ (bvar ("9")); (bvar ("57")); (bvar ("33")) ]); (bvar ("49")) ] in
    let x2 = bnot (bnot (bvar ("36"))) in
    band [ x0; x1; x1; x2 ] = band [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (44)
  (try
   (let x0 =
      band
        [ (bor [ (bvar ("9")); (bvar ("60")); (bvar ("72")) ]);
          (bnot (bvar ("30"))); (bnot (bvar ("49"))) ] in
    let x1 =
      band
        [ (band [ (bvar ("31")); (bvar ("42")); (bvar ("71")) ]);
          (band [ (bvar ("53")); (bvar ("48")); (bvar ("6")) ]);
          (bnot (bvar ("62"))) ] in
    let x2 = bnot (bnot (bvar ("36"))) in
    band [ x0; x1; x1; x2 ] = band [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (45)
  (try
   (let x0 = bor [ (bnot (bvar ("7"))); (bvar ("48")); (bnot (bvar ("45"))) ] in
    let x1 = bor [ (bnot (bvar ("7"))); (bnot (bvar ("11"))); (bvar ("38")) ] in
    band [ x0; btrue; x1 ] = band [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (46)
  (try
   (let x0 = bvar ("47") in
    let x1 = bvar ("0") in band [ x0; btrue; x1 ] = band [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (47)
  (try
   (let x0 =
      band
        [ (bor [ (bvar ("21")); (bvar ("11")); (bvar ("4")) ]); btrue;
          (bor [ (bvar ("10")); (bvar ("34")); (bvar ("0")) ]) ] in
    let x1 = bnot (bvar ("14")) in band [ x0; btrue; x1 ] = band [ x0; x1 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (48)
  (try
   (let x0 =
      band
        [ (bvar ("15")); btrue;
          (bor [ (bvar ("10")); (bvar ("34")); (bvar ("0")) ]) ] in
    let x1 = bnot (bvar ("38")) in band [ x0; btrue; x1 ] = band [ x0; x1 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (49)
  (try
   (let x0 = bnot (bvar ("14")) in
    let x1 = bnot (bvar ("14")) in band [ x0; btrue; x1 ] = band [ x0; x1 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (50)
  (try (let x0 = bvar ("24") in band [ btrue; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (51)
  (try
   (let x0 = band [ (bnot (bvar ("16"))); (bvar ("11")); (bnot btrue) ] in
    band [ btrue; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (52)
  (try
   (let x0 =
      band
        [ (bnot btrue);
          (band [ (bvar ("13")); (bvar ("22")); (bvar ("23")) ]);
          (bnot (bvar ("5"))) ] in
    band [ btrue; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (53)
  (try (let x0 = btrue in band [ btrue; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (54)
  (try
   (let x0 =
      band
        [ (bnot btrue);
          (band [ (bvar ("13")); (bvar ("22")); (bvar ("23")) ]);
          (bnot (bvar ("5"))) ] in
    band [ btrue; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (55)
  (try (let x0 = bvar ("3") in band [ x0; btrue; btrue ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (56)
  (try (let x0 = bfalse in band [ x0; btrue; btrue ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (57)
  (try
   (let x0 =
      band
        [ (bnot (bvar ("0"))); (bor [ bfalse; btrue; (bvar ("1")) ]);
          (band [ (bvar ("8")); (bvar ("5")); btrue ]) ] in
    band [ x0; btrue; btrue ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (58)
  (try (let x0 = bvar ("11") in band [ x0; btrue; btrue ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (59)
  (try (let x0 = bvar ("3") in band [ x0; btrue; btrue ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (60)
  (try
   (let x0 = btrue in
    let x1 = bnot (band [ (bvar ("44")); bfalse; (bvar ("13")) ]) in
    let x2 =
      band
        [ (bnot (bvar ("20"))); (bor [ (bvar ("44")); bfalse; bfalse ]);
          (bor [ (bvar ("62")); (bvar ("2")); (bvar ("29")) ]) ] in
    bor [ (bor [ x0; x1 ]); x2 ] = bor [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (61)
  (try
   (let x0 =
      band
        [ (bnot (bvar ("20"))); (bor [ (bvar ("44")); bfalse; bfalse ]);
          (bor [ (bvar ("62")); (bvar ("2")); (bvar ("29")) ]) ] in
    let x1 =
      band
        [ (bnot (bvar ("2"))); (bvar ("61"));
          (band [ (bvar ("60")); (bvar ("47")); (bvar ("67")) ]) ] in
    let x2 = bvar ("30") in bor [ (bor [ x0; x1 ]); x2 ] = bor [ x0; x1; x2 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (62)
  (try
   (let x0 =
      bor
        [ (bvar ("11")); (bor [ (bvar ("4")); bfalse; (bvar ("74")) ]);
          (bor [ (bvar ("52")); bfalse; (bvar ("63")) ]) ] in
    let x1 = bvar ("2") in
    let x2 = bvar ("12") in bor [ (bor [ x0; x1 ]); x2 ] = bor [ x0; x1; x2 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (63)
  (try
   (let x0 =
      bor
        [ (band [ (bvar ("65")); (bvar ("63")); (bvar ("7")) ]);
          (bnot (bvar ("56"))); (bnot (bvar ("0"))) ] in
    let x1 =
      bor
        [ (bvar ("56")); (bvar ("12"));
          (band [ btrue; (bvar ("4")); (bvar ("61")) ]) ] in
    let x2 =
      band
        [ (bnot (bvar ("67"))); (bor [ btrue; bfalse; (bvar ("25")) ]);
          (bvar ("2")) ] in
    bor [ (bor [ x0; x1 ]); x2 ] = bor [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (64)
  (try
   (let x0 =
      band
        [ (bnot (bvar ("3"))); (bor [ (bvar ("44")); bfalse; bfalse ]);
          (bnot (bvar ("54"))) ] in
    let x1 = bor [ (bvar ("70")); (bvar ("56")); (bvar ("32")) ] in
    let x2 =
      bor
        [ (bvar ("70")); (bvar ("42"));
          (band [ btrue; (bvar ("4")); (bvar ("61")) ]) ] in
    bor [ (bor [ x0; x1 ]); x2 ] = bor [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (65)
  (try
   (let x0 =
      bor
        [ (bvar ("21"));
          (bor [ (bvar ("124")); (bvar ("71")); (bvar ("82")) ]);
          (bnot (bvar ("58"))) ] in
    let x1 = bvar ("13") in
    let x2 =
      band
        [ (bvar ("77")); (bvar ("33"));
          (bor [ (bvar ("104")); (bvar ("58")); bfalse ]) ] in
    let x3 = bnot (bnot (bvar ("14"))) in
    let x4 =
      band
        [ (bnot (bvar ("34")));
          (bor [ (bvar ("122")); (bvar ("105")); (bvar ("61")) ]);
          (bvar ("116")) ] in
    bor [ x0; (bor [ x1; x2 ]); (bor [ x3; x4 ]) ] =
    bor [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (66)
  (try
   (let x0 = bnot (bor [ btrue; (bvar ("2")); (bvar ("6")) ]) in
    let x1 = bnot (bnot (bvar ("14"))) in
    let x2 = bvar ("27") in
    let x3 = bnot (bnot (bvar ("14"))) in
    let x4 = bnot (bnot bfalse) in
    bor [ x0; (bor [ x1; x2 ]); (bor [ x3; x4 ]) ] =
    bor [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (67)
  (try
   (let x0 = bvar ("116") in
    let x1 =
      bor
        [ (bor [ (bvar ("31")); (bvar ("38")); btrue ]);
          (bnot (bvar ("36"))); (bnot (bvar ("18"))) ] in
    let x2 = bvar ("86") in
    let x3 = bnot (bvar ("25")) in
    let x4 = bvar ("76") in
    bor [ x0; (bor [ x1; x2 ]); (bor [ x3; x4 ]) ] =
    bor [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (68)
  (try
   (let x0 = bor [ (bvar ("94")); (bvar ("124")); (bvar ("61")) ] in
    let x1 = bvar ("116") in
    let x2 = bvar ("86") in
    let x3 = bnot (bvar ("66")) in
    let x4 = bvar ("21") in
    bor [ x0; (bor [ x1; x2 ]); (bor [ x3; x4 ]) ] =
    bor [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (69)
  (try
   (let x0 = bvar ("18") in
    let x1 = bvar ("95") in
    let x2 = bnot (bor [ (bvar ("52")); (bvar ("2")); (bvar ("41")) ]) in
    let x3 =
      band
        [ (band [ (bvar ("107")); (bvar ("9")); (bvar ("121")) ]); btrue;
          (bnot (bvar ("38"))) ] in
    let x4 = bnot (bor [ (bvar ("52")); (bvar ("2")); (bvar ("41")) ]) in
    bor [ x0; (bor [ x1; x2 ]); (bor [ x3; x4 ]) ] =
    bor [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (70)
  (try
   (let x0 = bnot (bvar ("72")) in
    let x1 = bvar ("25") in
    let x2 =
      bor
        [ (bvar ("15"));
          (bor [ (bvar ("61")); (bvar ("63")); (bvar ("52")) ]);
          (bor [ (bvar ("13")); bfalse; (bvar ("82")) ]) ] in
    let x3 =
      bor
        [ (bor [ (bvar ("88")); (bvar ("12")); (bvar ("38")) ]);
          (band [ (bvar ("48")); (bvar ("21")); bfalse ]); btrue ] in
    bor [ (bor [ x0; x1; x2 ]); x3 ] = bor [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (71)
  (try
   (let x0 = bvar ("68") in
    let x1 =
      band
        [ (band [ btrue; (bvar ("2")); (bvar ("1")) ]);
          (bor [ (bvar ("31")); (bvar ("66")); (bvar ("52")) ]);
          (band [ bfalse; (bvar ("0")); (bvar ("78")) ]) ] in
    let x2 =
      bor
        [ (bor [ (bvar ("88")); (bvar ("12")); (bvar ("38")) ]);
          (band [ (bvar ("48")); (bvar ("21")); bfalse ]); btrue ] in
    let x3 =
      band
        [ (band [ btrue; (bvar ("2")); (bvar ("1")) ]);
          (bor [ (bvar ("31")); (bvar ("66")); (bvar ("52")) ]);
          (band [ bfalse; (bvar ("0")); (bvar ("78")) ]) ] in
    bor [ (bor [ x0; x1; x2 ]); x3 ] = bor [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (72)
  (try
   (let x0 =
      band
        [ (band [ (bvar ("64")); (bvar ("11")); (bvar ("1")) ]);
          (bvar ("85")); (band [ bfalse; (bvar ("0")); (bvar ("78")) ]) ] in
    let x1 =
      bor
        [ (bvar ("15"));
          (band [ (bvar ("49")); (bvar ("76")); (bvar ("26")) ]);
          (bor [ (bvar ("7")); (bvar ("84")); (bvar ("54")) ]) ] in
    let x2 = bnot (bnot btrue) in
    let x3 = bnot (bor [ (bvar ("3")); (bvar ("25")); (bvar ("0")) ]) in
    bor [ (bor [ x0; x1; x2 ]); x3 ] = bor [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (73)
  (try
   (let x0 =
      bor
        [ (bor [ (bvar ("8")); (bvar ("37")); (bvar ("27")) ]);
          (bor [ (bvar ("37")); (bvar ("26")); (bvar ("52")) ]);
          (bor [ (bvar ("7")); (bvar ("84")); (bvar ("54")) ]) ] in
    let x1 =
      band
        [ (band [ (bvar ("34")); (bvar ("12")); (bvar ("1")) ]);
          (bor [ (bvar ("31")); (bvar ("66")); (bvar ("52")) ]);
          (bvar ("48")) ] in
    let x2 =
      bor
        [ (bvar ("92")); (band [ (bvar ("48")); (bvar ("21")); bfalse ]);
          (bnot bfalse) ] in
    let x3 = bvar ("27") in
    bor [ (bor [ x0; x1; x2 ]); x3 ] = bor [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (74)
  (try
   (let x0 =
      bor
        [ (bvar ("15"));
          (band [ (bvar ("49")); (bvar ("76")); (bvar ("26")) ]);
          (bor [ (bvar ("7")); (bvar ("84")); (bvar ("54")) ]) ] in
    let x1 =
      band
        [ (band [ (bvar ("34")); (bvar ("12")); (bvar ("1")) ]);
          (bor [ (bvar ("31")); (bvar ("66")); (bvar ("52")) ]);
          (bvar ("48")) ] in
    let x2 =
      band
        [ (band [ btrue; (bvar ("2")); (bvar ("1")) ]);
          (bor [ (bvar ("31")); (bvar ("66")); (bvar ("52")) ]);
          (band [ bfalse; (bvar ("0")); (bvar ("78")) ]) ] in
    let x3 =
      bor
        [ (bvar ("92")); (band [ (bvar ("48")); (bvar ("21")); bfalse ]);
          (bnot bfalse) ] in
    bor [ (bor [ x0; x1; x2 ]); x3 ] = bor [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (75)
  (try
   (let x0 =
      band
        [ (bor [ btrue; (bvar ("33")); (bvar ("6")) ]); (bnot (bvar ("59")));
          (bvar ("92")) ] in
    let x1 = bnot (band [ (bvar ("74")); (bvar ("14")); (bvar ("46")) ]) in
    let x2 = bvar ("99") in
    let x3 =
      band
        [ (bor [ btrue; (bvar ("33")); (bvar ("6")) ]); (bnot (bvar ("59")));
          (bvar ("92")) ] in
    bor [ x0; x1; x2; x3 ] = bor [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (76)
  (try
   (let x0 = bvar ("99") in
    let x1 = bnot (bnot (bvar ("83"))) in
    let x2 =
      bor
        [ (bor [ (bvar ("16")); (bvar ("62")); (bvar ("99")) ]);
          (bor [ (bvar ("91")); (bvar ("79")); (bvar ("2")) ]);
          (bor [ (bvar ("4")); (bvar ("92")); btrue ]) ] in
    let x3 =
      band
        [ (bvar ("5")); (band [ (bvar ("0")); (bvar ("7")); (bvar ("68")) ]);
          (band [ (bvar ("37")); (bvar ("39")); btrue ]) ] in
    bor [ x0; x1; x2; x3 ] = bor [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (77)
  (try
   (let x0 =
      band
        [ (band [ (bvar ("66")); (bvar ("32")); (bvar ("93")) ]);
          (band [ (bvar ("19")); (bvar ("34")); (bvar ("28")) ]);
          (bnot (bvar ("99"))) ] in
    let x1 = bnot (bnot (bvar ("83"))) in
    let x2 = bor [ (bnot (bvar ("92"))); btrue; (bvar ("49")) ] in
    let x3 = bvar ("19") in bor [ x0; x1; x2; x3 ] = bor [ x1; x0; x3; x2 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (78)
  (try
   (let x0 =
      band
        [ (bvar ("5")); (band [ (bvar ("0")); (bvar ("7")); (bvar ("68")) ]);
          (band [ (bvar ("37")); (bvar ("39")); btrue ]) ] in
    let x1 = bvar ("19") in
    let x2 = bvar ("83") in
    let x3 = bvar ("27") in bor [ x0; x1; x2; x3 ] = bor [ x1; x0; x3; x2 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (79)
  (try
   (let x0 =
      bor
        [ (bor [ (bvar ("16")); (bvar ("62")); (bvar ("99")) ]);
          (band [ (bvar ("86")); btrue; (bvar ("99")) ]); (bvar ("49")) ] in
    let x1 = bnot (band [ (bvar ("74")); (bvar ("14")); (bvar ("46")) ]) in
    let x2 = bvar ("96") in
    let x3 = bor [ (bvar ("15")); btrue; (bvar ("62")) ] in
    bor [ x0; x1; x2; x3 ] = bor [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (80)
  (try
   (let x0 = bnot (band [ (bvar ("38")); (bvar ("11")); (bvar ("4")) ]) in
    let x1 = bnot (band [ (bvar ("38")); (bvar ("11")); (bvar ("4")) ]) in
    let x2 =
      band
        [ (band [ (bvar ("52")); (bvar ("12")); (bvar ("70")) ]);
          (bvar ("81")); (bnot (bvar ("55"))) ] in
    let x3 = bvar ("57") in bor [ x0; x1; x2; x3 ] = bor [ x3; x1; x2; x0 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (81)
  (try
   (let x0 =
      band
        [ (band [ (bvar ("52")); (bvar ("12")); (bvar ("70")) ]);
          (bvar ("26")); (bvar ("45")) ] in
    let x1 =
      bor
        [ (band [ (bvar ("37")); (bvar ("53")); (bvar ("35")) ]); btrue;
          (bvar ("36")) ] in
    let x2 =
      band
        [ (bor [ (bvar ("11")); (bvar ("25")); (bvar ("27")) ]); btrue;
          (bvar ("45")) ] in
    let x3 = bvar ("0") in bor [ x0; x1; x2; x3 ] = bor [ x3; x1; x2; x0 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (82)
  (try
   (let x0 = bnot (bor [ (bvar ("95")); (bvar ("11")); (bvar ("43")) ]) in
    let x1 =
      band
        [ (band [ (bvar ("52")); (bvar ("12")); (bvar ("70")) ]);
          (bvar ("81")); (bnot (bvar ("55"))) ] in
    let x2 =
      band
        [ (band [ (bvar ("4")); (bvar ("82")); (bvar ("70")) ]);
          (bvar ("81")); (bnot (bvar ("11"))) ] in
    let x3 =
      bor
        [ (bnot (bvar ("83")));
          (bor [ (bvar ("97")); (bvar ("70")); bfalse ]);
          (bor [ (bvar ("41")); (bvar ("91")); (bvar ("81")) ]) ] in
    bor [ x0; x1; x2; x3 ] = bor [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (83)
  (try
   (let x0 = bnot (bnot btrue) in
    let x1 =
      bor
        [ (bvar ("19")); (bvar ("34"));
          (band [ (bvar ("10")); (bvar ("30")); (bvar ("70")) ]) ] in
    let x2 = bvar ("42") in
    let x3 =
      band
        [ (band [ (bvar ("52")); (bvar ("12")); (bvar ("70")) ]);
          (bvar ("26")); (bvar ("45")) ] in
    bor [ x0; x1; x2; x3 ] = bor [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (84)
  (try
   (let x0 =
      band
        [ (band [ (bvar ("52")); (bvar ("12")); (bvar ("70")) ]);
          (bvar ("81")); (bnot (bvar ("55"))) ] in
    let x1 =
      bor
        [ (bnot btrue);
          (bor [ (bvar ("53")); (bvar ("99")); (bvar ("72")) ]);
          (bor [ (bvar ("41")); (bvar ("91")); (bvar ("81")) ]) ] in
    let x2 =
      bor
        [ (band [ (bvar ("37")); (bvar ("53")); (bvar ("35")) ]);
          (bnot (bvar ("56")));
          (band [ (bvar ("78")); (bvar ("4")); (bvar ("34")) ]) ] in
    let x3 = bvar ("70") in bor [ x0; x1; x2; x3 ] = bor [ x3; x1; x2; x0 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (85)
  (try
   (let x0 = bnot (bor [ (bvar ("63")); bfalse; (bvar ("19")) ]) in
    let x1 =
      band
        [ (band [ (bvar ("10")); (bvar ("5")); (bvar ("54")) ]);
          (band [ (bvar ("8")); bfalse; (bvar ("72")) ]); (bvar ("0")) ] in
    let x2 = bnot (band [ btrue; (bvar ("11")); (bvar ("38")) ]) in
    let x3 = bvar ("69") in bor [ x0; x1; x2; x3 ] = bor [ x3; x2; x1; x0 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (86)
  (try
   (let x0 = band [ (bnot bfalse); (bvar ("23")); (bnot (bvar ("95"))) ] in
    let x1 =
      bor
        [ (band [ bfalse; (bvar ("49")); bfalse ]); (bnot (bvar ("76")));
          (bvar ("77")) ] in
    let x2 = bvar ("53") in
    let x3 = bvar ("50") in bor [ x0; x1; x2; x3 ] = bor [ x3; x2; x1; x0 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (87)
  (try
   (let x0 = bvar ("55") in
    let x1 =
      bor
        [ (band [ bfalse; (bvar ("49")); bfalse ]); (bnot (bvar ("76")));
          (bvar ("77")) ] in
    let x2 = bvar ("69") in
    let x3 =
      bor
        [ (bvar ("53"));
          (band [ (bvar ("87")); (bvar ("32")); (bvar ("63")) ]);
          (bor [ (bvar ("7")); (bvar ("4")); (bvar ("55")) ]) ] in
    bor [ x0; x1; x2; x3 ] = bor [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (88)
  (try
   (let x0 = bnot (band [ (bvar ("70")); (bvar ("60")); (bvar ("38")) ]) in
    let x1 = bnot (bor [ (bvar ("63")); bfalse; (bvar ("19")) ]) in
    let x2 =
      band
        [ (band [ (bvar ("10")); (bvar ("5")); (bvar ("54")) ]);
          (band [ (bvar ("8")); bfalse; (bvar ("72")) ]); (bvar ("0")) ] in
    let x3 =
      band
        [ (bvar ("65")); (bnot (bvar ("54")));
          (band [ (bvar ("94")); bfalse; (bvar ("5")) ]) ] in
    bor [ x0; x1; x2; x3 ] = bor [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (89)
  (try
   (let x0 = bnot (bvar ("24")) in
    let x1 =
      band
        [ (band [ (bvar ("29")); (bvar ("5")); (bvar ("98")) ]);
          (bnot (bvar ("9"))); (bnot (bvar ("95"))) ] in
    let x2 =
      bor
        [ (bvar ("53"));
          (band [ (bvar ("87")); (bvar ("32")); (bvar ("63")) ]);
          (bor [ (bvar ("7")); (bvar ("4")); (bvar ("55")) ]) ] in
    let x3 = band [ (bnot bfalse); (bvar ("23")); (bnot (bvar ("95"))) ] in
    bor [ x0; x1; x2; x3 ] = bor [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (90)
  (try
   (let x0 =
      bor
        [ btrue; (bnot (bvar ("0")));
          (band [ (bvar ("5")); (bvar ("37")); btrue ]) ] in
    let x1 =
      bor [ (bnot (bvar ("45"))); (bnot (bvar ("51"))); (bvar ("58")) ] in
    let x2 =
      bor
        [ (bor [ (bvar ("94")); btrue; (bvar ("70")) ]);
          (bnot (bvar ("51")));
          (bor [ (bvar ("4")); (bvar ("11")); (bvar ("12")) ]) ] in
    let x3 = bnot (bor [ bfalse; (bvar ("56")); (bvar ("2")) ]) in
    bor [ x0; x1; x2; x3 ] = bor [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (91)
  (try
   (let x0 = bnot (bvar ("14")) in
    let x1 =
      bor [ (bnot (bvar ("45"))); (bnot (bvar ("51"))); (bvar ("58")) ] in
    let x2 = bvar ("85") in
    let x3 = bvar ("17") in bor [ x0; x1; x2; x3 ] = bor [ x2; x1; x0; x3 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (92)
  (try
   (let x0 = bvar ("81") in
    let x1 = bnot (band [ (bvar ("79")); (bvar ("53")); (bvar ("74")) ]) in
    let x2 =
      band
        [ (band [ (bvar ("65")); (bvar ("14")); (bvar ("92")) ]);
          (bnot (bvar ("23")));
          (band [ (bvar ("23")); (bvar ("25")); (bvar ("51")) ]) ] in
    let x3 = bnot (bnot (bvar ("65"))) in
    bor [ x0; x1; x2; x3 ] = bor [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (93)
  (try
   (let x0 = bvar ("85") in
    let x1 =
      bor
        [ btrue; (bor [ (bvar ("14")); (bvar ("84")); (bvar ("50")) ]);
          (bvar ("58")) ] in
    let x2 =
      bor
        [ (band [ (bvar ("27")); (bvar ("49")); (bvar ("89")) ]);
          (band [ (bvar ("12")); (bvar ("57")); (bvar ("20")) ]);
          (band [ (bvar ("5")); (bvar ("55")); (bvar ("22")) ]) ] in
    let x3 = bnot (bor [ bfalse; (bvar ("56")); (bvar ("2")) ]) in
    bor [ x0; x1; x2; x3 ] = bor [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (94)
  (try
   (let x0 = bvar ("81") in
    let x1 = bor [ (bvar ("94")); (bvar ("66")); (bnot (bvar ("10"))) ] in
    let x2 =
      bor
        [ btrue; (bor [ (bvar ("14")); (bvar ("84")); (bvar ("50")) ]);
          (bvar ("58")) ] in
    let x3 =
      bor
        [ (bvar ("19"));
          (bor [ (bvar ("14")); (bvar ("84")); (bvar ("50")) ]);
          (bor [ (bvar ("4")); (bvar ("11")); (bvar ("12")) ]) ] in
    bor [ x0; x1; x2; x3 ] = bor [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (95)
  (try (let x0 = bfalse in bor [ x0; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (96)
  (try (let x0 = bnot (bnot btrue) in bor [ x0; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (97)
  (try (let x0 = bvar ("2") in bor [ x0; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (98)
  (try (let x0 = bvar ("16") in bor [ x0; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (99)
  (try
   (let x0 =
      band
        [ (bnot bfalse);
          (bor [ (bvar ("14")); (bvar ("11")); (bvar ("7")) ]); (bvar ("23")) ] in
    bor [ x0; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (100)
  (try
   (let x0 =
      band
        [ (band [ (bvar ("69")); (bvar ("32")); btrue ]);
          (bnot (bvar ("51")));
          (bor [ (bvar ("38")); (bvar ("14")); (bvar ("74")) ]) ] in
    let x1 = bnot (bvar ("43")) in
    let x2 =
      band
        [ (bvar ("30")); (bor [ (bvar ("60")); (bvar ("61")); bfalse ]);
          (bvar ("62")) ] in
    bor [ x0; x1; x1; x2 ] = bor [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (101)
  (try
   (let x0 =
      bor
        [ (band [ (bvar ("34")); (bvar ("20")); (bvar ("29")) ]);
          (band [ (bvar ("45")); bfalse; (bvar ("45")) ]);
          (band [ (bvar ("60")); (bvar ("21")); (bvar ("61")) ]) ] in
    let x1 = bvar ("12") in
    let x2 =
      bor
        [ (band [ (bvar ("31")); (bvar ("14")); (bvar ("23")) ]);
          (bor [ (bvar ("42")); (bvar ("29")); (bvar ("68")) ]);
          (bvar ("13")) ] in
    bor [ x0; x1; x1; x2 ] = bor [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (102)
  (try
   (let x0 =
      bor
        [ (band [ (bvar ("34")); (bvar ("20")); (bvar ("29")) ]);
          (band [ (bvar ("20")); bfalse; (bvar ("29")) ]);
          (bor [ (bvar ("59")); (bvar ("56")); (bvar ("56")) ]) ] in
    let x1 =
      bor
        [ (band [ (bvar ("34")); (bvar ("20")); (bvar ("29")) ]);
          (band [ (bvar ("45")); bfalse; (bvar ("45")) ]);
          (band [ (bvar ("60")); (bvar ("21")); (bvar ("61")) ]) ] in
    let x2 =
      bor
        [ (band [ (bvar ("31")); (bvar ("14")); (bvar ("29")) ]);
          (bnot (bvar ("45")));
          (bor [ (bvar ("16")); (bvar ("28")); (bvar ("56")) ]) ] in
    bor [ x0; x1; x1; x2 ] = bor [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (103)
  (try
   (let x0 =
      band
        [ (band [ (bvar ("69")); (bvar ("32")); (bvar ("47")) ]);
          (bnot (bvar ("47"))); (bvar ("62")) ] in
    let x1 = bnot bfalse in
    let x2 =
      band
        [ (bvar ("30")); (bnot (bvar ("47")));
          (bor [ (bvar ("47")); (bvar ("42")); (bvar ("59")) ]) ] in
    bor [ x0; x1; x1; x2 ] = bor [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (104)
  (try
   (let x0 = bvar ("57") in
    let x1 = bvar ("1") in
    let x2 =
      band
        [ (band [ (bvar ("53")); (bvar ("33")); (bvar ("47")) ]);
          (band [ (bvar ("53")); (bvar ("57")); (bvar ("4")) ]);
          (bor [ (bvar ("34")); (bvar ("36")); bfalse ]) ] in
    bor [ x0; x1; x1; x2 ] = bor [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (105)
  (try
   (let x0 =
      bor
        [ (band [ (bvar ("9")); (bvar ("14")); (bvar ("25")) ]);
          (bvar ("44"));
          (bor [ (bvar ("42")); (bvar ("35")); (bvar ("13")) ]) ] in
    let x1 =
      bor
        [ (band [ (bvar ("9")); (bvar ("14")); (bvar ("25")) ]);
          (bor [ (bvar ("5")); (bvar ("23")); bfalse ]);
          (band [ (bvar ("41")); (bvar ("26")); btrue ]) ] in
    bor [ x0; bfalse; x1 ] = bor [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (106)
  (try
   (let x0 = btrue in
    let x1 =
      bor
        [ (bor [ bfalse; (bvar ("34")); (bvar ("20")) ]); (bnot bfalse);
          (band [ (bvar ("36")); (bvar ("22")); btrue ]) ] in
    bor [ x0; bfalse; x1 ] = bor [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (107)
  (try
   (let x0 =
      bor
        [ (bvar ("15"));
          (bor [ (bvar ("42")); (bvar ("2")); (bvar ("42")) ]); (bvar ("17")) ] in
    let x1 =
      bor
        [ (bvar ("15"));
          (bor [ (bvar ("42")); (bvar ("2")); (bvar ("42")) ]); (bvar ("17")) ] in
    bor [ x0; bfalse; x1 ] = bor [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (108)
  (try
   (let x0 =
      bor
        [ (band [ (bvar ("9")); (bvar ("14")); (bvar ("25")) ]);
          (bvar ("44"));
          (bor [ (bvar ("42")); (bvar ("35")); (bvar ("13")) ]) ] in
    let x1 = bvar ("39") in bor [ x0; bfalse; x1 ] = bor [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (109)
  (try
   (let x0 =
      bor
        [ (bor [ bfalse; (bvar ("34")); (bvar ("20")) ]); (bnot bfalse);
          (band [ (bvar ("36")); (bvar ("22")); btrue ]) ] in
    let x1 =
      bor
        [ (band [ (bvar ("9")); (bvar ("14")); (bvar ("25")) ]);
          (bvar ("44"));
          (bor [ (bvar ("42")); (bvar ("35")); (bvar ("13")) ]) ] in
    bor [ x0; bfalse; x1 ] = bor [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (110)
  (try (let x0 = bvar ("5") in bor [ bfalse; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (111)
  (try (let x0 = bvar ("11") in bor [ bfalse; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (112)
  (try (let x0 = bvar ("11") in bor [ bfalse; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (113)
  (try
   (let x0 =
      bor
        [ (bvar ("7")); (bvar ("17"));
          (bor [ (bvar ("9")); (bvar ("14")); (bvar ("1")) ]) ] in
    bor [ bfalse; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (114)
  (try
   (let x0 =
      band
        [ (bnot (bvar ("0"))); (bvar ("19"));
          (bor [ (bvar ("16")); btrue; (bvar ("14")) ]) ] in
    bor [ bfalse; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (115)
  (try
   (let x0 =
      bor
        [ (bvar ("10")); (band [ (bvar ("8")); (bvar ("13")); bfalse ]);
          (bnot btrue) ] in
    bor [ x0; bfalse; bfalse ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (116)
  (try
   (let x0 =
      band
        [ (band [ (bvar ("7")); btrue; bfalse ]);
          (band [ (bvar ("2")); btrue; (bvar ("7")) ]); (bvar ("1")) ] in
    bor [ x0; bfalse; bfalse ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (117)
  (try (let x0 = bvar ("8") in bor [ x0; bfalse; bfalse ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (118)
  (try (let x0 = bfalse in bor [ x0; bfalse; bfalse ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (119)
  (try (let x0 = bvar ("19") in bor [ x0; bfalse; bfalse ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

