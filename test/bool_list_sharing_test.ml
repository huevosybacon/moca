open Bool_list_sharing
;;

open Gentest
;;

testing ("Bool_list_sharing (automatic) - seed: 579456657")
;;

testi
  (0)
  (try
   (let x0 = bvar ("6") in
    let x1 = bvar ("6") in
    let x2 = bnot (band [ btrue; (bvar ("24")); (bvar ("42")) ]) in
    band [ (band [ x0; x1 ]); x2 ] = band [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (1)
  (try
   (let x0 = bnot (band [ btrue; (bvar ("6")); (bvar ("69")) ]) in
    let x1 =
      band
        [ (band [ (bvar ("60")); (bvar ("26")); (bvar ("58")) ]);
          (band [ (bvar ("18")); (bvar ("65")); (bvar ("1")) ]);
          (bor [ (bvar ("1")); (bvar ("20")); (bvar ("14")) ]) ] in
    let x2 =
      band
        [ (band [ (bvar ("60")); (bvar ("26")); (bvar ("58")) ]);
          (band [ (bvar ("18")); (bvar ("65")); (bvar ("1")) ]);
          (bor [ (bvar ("1")); (bvar ("20")); (bvar ("14")) ]) ] in
    band [ (band [ x0; x1 ]); x2 ] = band [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (2)
  (try
   (let x0 =
      band
        [ (bnot (bvar ("60"))); (bvar ("40"));
          (bor [ (bvar ("18")); (bvar ("14")); (bvar ("63")) ]) ] in
    let x1 = bnot (band [ btrue; (bvar ("6")); (bvar ("69")) ]) in
    let x2 = bnot bfalse in
    band [ (band [ x0; x1 ]); x2 ] = band [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (3)
  (try
   (let x0 = bvar ("5") in
    let x1 =
      band
        [ (bnot (bvar ("60")));
          (band [ (bvar ("18")); (bvar ("20")); (bvar ("67")) ]);
          (band [ (bvar ("40")); (bvar ("18")); (bvar ("52")) ]) ] in
    let x2 =
      bor
        [ (bvar ("41"));
          (band [ (bvar ("28")); (bvar ("67")); (bvar ("56")) ]);
          (band [ (bvar ("30")); (bvar ("28")); (bvar ("18")) ]) ] in
    band [ (band [ x0; x1 ]); x2 ] = band [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (4)
  (try
   (let x0 = bvar ("9") in
    let x1 =
      band
        [ (bnot (bvar ("74")));
          (bor [ (bvar ("2")); (bvar ("59")); (bvar ("19")) ]);
          (bnot (bvar ("19"))) ] in
    let x2 = bnot (bvar ("8")) in
    band [ (band [ x0; x1 ]); x2 ] = band [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (5)
  (try
   (let x0 = bvar ("117") in
    let x1 =
      band
        [ (bor [ (bvar ("82")); (bvar ("72")); (bvar ("36")) ]);
          (bnot (bvar ("50")));
          (band [ (bvar ("55")); (bvar ("3")); (bvar ("38")) ]) ] in
    let x2 =
      band
        [ (bnot (bvar ("85")));
          (bor [ btrue; (bvar ("69")); (bvar ("96")) ]);
          (bor [ (bvar ("57")); (bvar ("67")); (bvar ("68")) ]) ] in
    let x3 = bnot (bvar ("44")) in
    let x4 = bnot (bvar ("44")) in
    band [ x0; (band [ x1; x2 ]); (band [ x3; x4 ]) ] =
    band [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (6)
  (try
   (let x0 = bnot (bvar ("105")) in
    let x1 =
      band
        [ (bnot (bvar ("85")));
          (bor [ btrue; (bvar ("69")); (bvar ("96")) ]);
          (bor [ (bvar ("57")); (bvar ("67")); (bvar ("68")) ]) ] in
    let x2 =
      bor
        [ (bor [ (bvar ("29")); (bvar ("23")); (bvar ("88")) ]);
          (band [ (bvar ("36")); (bvar ("56")); (bvar ("52")) ]);
          (bvar ("100")) ] in
    let x3 =
      bor
        [ (bor [ (bvar ("81")); btrue; (bvar ("4")) ]);
          (band [ (bvar ("20")); (bvar ("5")); (bvar ("71")) ]);
          (band [ (bvar ("113")); (bvar ("38")); (bvar ("66")) ]) ] in
    let x4 = bvar ("69") in
    band [ x0; (band [ x1; x2 ]); (band [ x3; x4 ]) ] =
    band [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (7)
  (try
   (let x0 = bnot (bvar ("105")) in
    let x1 = bvar ("97") in
    let x2 = bvar ("42") in
    let x3 = bvar ("67") in
    let x4 = bvar ("36") in
    band [ x0; (band [ x1; x2 ]); (band [ x3; x4 ]) ] =
    band [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (8)
  (try
   (let x0 =
      band
        [ (bnot (bvar ("121")));
          (band [ (bvar ("96")); btrue; (bvar ("47")) ]);
          (bor [ (bvar ("121")); (bvar ("123")); (bvar ("88")) ]) ] in
    let x1 =
      band
        [ (band [ (bvar ("76")); (bvar ("71")); bfalse ]);
          (bor [ btrue; (bvar ("69")); (bvar ("96")) ]); (bnot (bvar ("57"))) ] in
    let x2 = bvar ("117") in
    let x3 =
      band
        [ (bor [ (bvar ("82")); (bvar ("72")); (bvar ("36")) ]);
          (bnot (bvar ("50")));
          (band [ (bvar ("55")); (bvar ("3")); (bvar ("38")) ]) ] in
    let x4 = bvar ("42") in
    band [ x0; (band [ x1; x2 ]); (band [ x3; x4 ]) ] =
    band [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (9)
  (try
   (let x0 = bnot (bvar ("116")) in
    let x1 =
      band
        [ (bor [ btrue; (bvar ("62")); btrue ]);
          (bor [ (bvar ("80")); btrue; (bvar ("90")) ]); (bnot (bvar ("57"))) ] in
    let x2 =
      bor
        [ (bor [ (bvar ("29")); (bvar ("5")); (bvar ("119")) ]);
          (band [ (bvar ("32")); (bvar ("5")); (bvar ("52")) ]);
          (bvar ("67")) ] in
    let x3 = bnot (bor [ (bvar ("15")); (bvar ("2")); (bvar ("15")) ]) in
    let x4 =
      bor
        [ (bvar ("112"));
          (band [ (bvar ("32")); (bvar ("5")); (bvar ("52")) ]);
          (bnot (bvar ("9"))) ] in
    band [ x0; (band [ x1; x2 ]); (band [ x3; x4 ]) ] =
    band [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (10)
  (try
   (let x0 =
      band
        [ (band [ (bvar ("82")); (bvar ("43")); (bvar ("51")) ]);
          (bvar ("60")); (bvar ("23")) ] in
    let x1 = bnot (bor [ (bvar ("44")); (bvar ("1")); (bvar ("0")) ]) in
    let x2 = bvar ("84") in
    let x3 =
      bor [ (bvar ("40")); (bnot (bvar ("98"))); (bnot (bvar ("91"))) ] in
    band [ (band [ x0; x1; x2 ]); x3 ] = band [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (11)
  (try
   (let x0 =
      bor
        [ (bnot (bvar ("7"))); btrue;
          (bor [ (bvar ("7")); (bvar ("98")); (bvar ("93")) ]) ] in
    let x1 =
      band
        [ (band [ (bvar ("18")); (bvar ("95")); (bvar ("0")) ]);
          (bvar ("60")); (bvar ("54")) ] in
    let x2 = bnot (bvar ("35")) in
    let x3 = bvar ("84") in
    band [ (band [ x0; x1; x2 ]); x3 ] = band [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (12)
  (try
   (let x0 = bnot (band [ bfalse; (bvar ("12")); (bvar ("84")) ]) in
    let x1 =
      band
        [ (band [ (bvar ("82")); (bvar ("43")); (bvar ("51")) ]);
          (band [ (bvar ("94")); (bvar ("54")); (bvar ("79")) ]);
          (band [ (bvar ("78")); (bvar ("33")); bfalse ]) ] in
    let x2 =
      bor
        [ (bvar ("92")); (bvar ("12"));
          (band [ (bvar ("26")); (bvar ("64")); (bvar ("38")) ]) ] in
    let x3 =
      band
        [ (bor [ (bvar ("7")); (bvar ("25")); (bvar ("21")) ]);
          (bvar ("60")); (band [ bfalse; (bvar ("69")); (bvar ("74")) ]) ] in
    band [ (band [ x0; x1; x2 ]); x3 ] = band [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (13)
  (try
   (let x0 =
      bor
        [ (band [ btrue; (bvar ("97")); (bvar ("79")) ]);
          (band [ (bvar ("53")); (bvar ("78")); (bvar ("42")) ]);
          (bor [ (bvar ("7")); (bvar ("98")); (bvar ("93")) ]) ] in
    let x1 = bnot (bor [ (bvar ("60")); (bvar ("11")); (bvar ("38")) ]) in
    let x2 =
      bor
        [ (bvar ("40")); btrue;
          (bor [ (bvar ("7")); (bvar ("98")); (bvar ("93")) ]) ] in
    let x3 = bfalse in
    band [ (band [ x0; x1; x2 ]); x3 ] = band [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (14)
  (try
   (let x0 = bnot (bvar ("35")) in
    let x1 = bvar ("69") in
    let x2 = bvar ("69") in
    let x3 =
      band
        [ (band [ (bvar ("82")); (bvar ("43")); (bvar ("51")) ]);
          (band [ (bvar ("94")); (bvar ("54")); (bvar ("79")) ]);
          (band [ (bvar ("78")); (bvar ("33")); bfalse ]) ] in
    band [ (band [ x0; x1; x2 ]); x3 ] = band [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (15)
  (try
   (let x0 = bvar ("23") in
    let x1 = bvar ("20") in
    let x2 =
      bor
        [ (bvar ("98"));
          (band [ (bvar ("74")); (bvar ("32")); (bvar ("63")) ]);
          (bvar ("62")) ] in
    let x3 = bfalse in band [ x0; x1; x2; x3 ] = band [ x1; x0; x3; x2 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (16)
  (try
   (let x0 = bnot (bnot (bvar ("25"))) in
    let x1 = bnot (bor [ (bvar ("94")); (bvar ("38")); (bvar ("21")) ]) in
    let x2 = bnot (bor [ (bvar ("6")); (bvar ("76")); btrue ]) in
    let x3 =
      band
        [ (bor [ bfalse; (bvar ("4")); (bvar ("45")) ]); (bvar ("72"));
          (bnot (bvar ("45"))) ] in
    band [ x0; x1; x2; x3 ] = band [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (17)
  (try
   (let x0 =
      bor
        [ (bor [ (bvar ("77")); (bvar ("36")); btrue ]);
          (band [ (bvar ("74")); (bvar ("32")); (bvar ("63")) ]);
          (bvar ("65")) ] in
    let x1 =
      bor
        [ (bvar ("62"));
          (bor [ (bvar ("37")); (bvar ("59")); (bvar ("49")) ]);
          (bor [ (bvar ("60")); (bvar ("52")); (bvar ("81")) ]) ] in
    let x2 =
      bor
        [ (band [ (bvar ("64")); (bvar ("72")); (bvar ("6")) ]);
          (band [ (bvar ("74")); (bvar ("32")); (bvar ("63")) ]);
          (bvar ("26")) ] in
    let x3 = bnot (bnot (bvar ("38"))) in
    band [ x0; x1; x2; x3 ] = band [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (18)
  (try
   (let x0 = bnot (bnot (bvar ("55"))) in
    let x1 = bnot (bor [ (bvar ("94")); (bvar ("38")); (bvar ("21")) ]) in
    let x2 =
      bor
        [ (bvar ("62"));
          (bor [ (bvar ("37")); (bvar ("59")); (bvar ("49")) ]);
          (bor [ (bvar ("60")); (bvar ("52")); (bvar ("81")) ]) ] in
    let x3 = bvar ("8") in band [ x0; x1; x2; x3 ] = band [ x1; x0; x3; x2 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (19)
  (try
   (let x0 =
      bor
        [ (band [ (bvar ("64")); (bvar ("72")); (bvar ("6")) ]);
          (band [ (bvar ("74")); (bvar ("32")); (bvar ("63")) ]);
          (bvar ("26")) ] in
    let x1 = bnot (bnot (bvar ("55"))) in
    let x2 = bnot (bor [ (bvar ("94")); (bvar ("38")); (bvar ("21")) ]) in
    let x3 =
      bor
        [ (bnot (bvar ("54")));
          (band [ (bvar ("25")); (bvar ("93")); (bvar ("84")) ]);
          (band [ btrue; (bvar ("62")); (bvar ("57")) ]) ] in
    band [ x0; x1; x2; x3 ] = band [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (20)
  (try
   (let x0 =
      band
        [ (bnot (bvar ("56")));
          (bor [ (bvar ("43")); (bvar ("40")); (bvar ("30")) ]);
          (band [ (bvar ("82")); bfalse; (bvar ("42")) ]) ] in
    let x1 =
      bor
        [ (bnot (bvar ("41")));
          (bor [ (bvar ("31")); (bvar ("95")); (bvar ("16")) ]);
          (band [ (bvar ("54")); (bvar ("79")); (bvar ("27")) ]) ] in
    let x2 =
      bor
        [ (bvar ("3")); (bvar ("88"));
          (bor [ (bvar ("57")); (bvar ("88")); (bvar ("65")) ]) ] in
    let x3 =
      bor
        [ (bnot bfalse);
          (bor [ (bvar ("31")); (bvar ("11")); (bvar ("95")) ]);
          (bvar ("51")) ] in
    band [ x0; x1; x2; x3 ] = band [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (21)
  (try
   (let x0 = bvar ("99") in
    let x1 =
      bor
        [ (bnot (bvar ("41")));
          (bor [ (bvar ("31")); (bvar ("95")); (bvar ("16")) ]);
          (band [ (bvar ("54")); (bvar ("79")); (bvar ("27")) ]) ] in
    let x2 = bvar ("28") in
    let x3 = bvar ("2") in band [ x0; x1; x2; x3 ] = band [ x3; x1; x2; x0 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (22)
  (try
   (let x0 = bvar ("29") in
    let x1 = bvar ("5") in
    let x2 =
      band
        [ (band [ (bvar ("78")); (bvar ("31")); (bvar ("64")) ]);
          (band [ (bvar ("88")); (bvar ("96")); (bvar ("33")) ]);
          (bnot btrue) ] in
    let x3 = bvar ("28") in band [ x0; x1; x2; x3 ] = band [ x3; x1; x2; x0 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (23)
  (try
   (let x0 =
      band
        [ (band [ (bvar ("78")); (bvar ("31")); (bvar ("64")) ]);
          (bnot (bvar ("52"))); (bvar ("86")) ] in
    let x1 =
      band
        [ (bvar ("53")); (bnot btrue);
          (bor [ (bvar ("82")); (bvar ("80")); (bvar ("84")) ]) ] in
    let x2 =
      bor
        [ (bvar ("3")); (bvar ("88"));
          (bor [ (bvar ("57")); (bvar ("88")); (bvar ("65")) ]) ] in
    let x3 =
      bor
        [ (bnot (bvar ("41"))); (bvar ("55"));
          (band [ (bvar ("54")); (bvar ("79")); (bvar ("27")) ]) ] in
    band [ x0; x1; x2; x3 ] = band [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (24)
  (try
   (let x0 = bnot (bnot (bvar ("1"))) in
    let x1 = bvar ("28") in
    let x2 = bvar ("38") in
    let x3 = bvar ("5") in band [ x0; x1; x2; x3 ] = band [ x3; x1; x2; x0 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (25)
  (try
   (let x0 = bvar ("44") in
    let x1 = bvar ("96") in
    let x2 =
      band
        [ (bvar ("66"));
          (bor [ (bvar ("34")); (bvar ("11")); (bvar ("0")) ]);
          (band [ (bvar ("16")); (bvar ("18")); (bvar ("37")) ]) ] in
    let x3 = bvar ("76") in band [ x0; x1; x2; x3 ] = band [ x3; x2; x1; x0 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (26)
  (try
   (let x0 =
      bor
        [ bfalse; (bnot (bvar ("88")));
          (band [ (bvar ("69")); (bvar ("4")); (bvar ("71")) ]) ] in
    let x1 =
      band
        [ (bor [ (bvar ("87")); (bvar ("56")); (bvar ("27")) ]);
          (band [ (bvar ("56")); (bvar ("20")); (bvar ("58")) ]);
          (bor [ (bvar ("1")); (bvar ("47")); (bvar ("24")) ]) ] in
    let x2 =
      bor
        [ (bvar ("30")); (bnot (bvar ("31")));
          (band [ (bvar ("84")); (bvar ("52")); (bvar ("47")) ]) ] in
    let x3 =
      band
        [ (bvar ("83"));
          (bor [ (bvar ("34")); (bvar ("83")); (bvar ("99")) ]);
          (bor [ bfalse; (bvar ("98")); (bvar ("34")) ]) ] in
    band [ x0; x1; x2; x3 ] = band [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (27)
  (try
   (let x0 = bvar ("85") in
    let x1 = bnot (bor [ (bvar ("48")); (bvar ("18")); (bvar ("14")) ]) in
    let x2 =
      bor
        [ bfalse; (bnot (bvar ("88")));
          (band [ (bvar ("69")); (bvar ("4")); (bvar ("71")) ]) ] in
    let x3 =
      bor
        [ (bvar ("2")); (bnot (bvar ("68")));
          (bor [ (bvar ("93")); (bvar ("22")); (bvar ("98")) ]) ] in
    band [ x0; x1; x2; x3 ] = band [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (28)
  (try
   (let x0 =
      bor
        [ (band [ (bvar ("29")); (bvar ("9")); (bvar ("32")) ]);
          (bnot bfalse); (bvar ("88")) ] in
    let x1 =
      band
        [ (bor [ (bvar ("87")); (bvar ("56")); (bvar ("27")) ]);
          (bnot (bvar ("44"))); (bvar ("16")) ] in
    let x2 =
      band
        [ (bor [ (bvar ("87")); (bvar ("56")); (bvar ("27")) ]);
          (bnot (bvar ("44"))); (bvar ("16")) ] in
    let x3 = bnot (bor [ (bvar ("48")); (bvar ("18")); (bvar ("14")) ]) in
    band [ x0; x1; x2; x3 ] = band [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (29)
  (try
   (let x0 = band [ (bvar ("83")); (bvar ("57")); (bnot (bvar ("68"))) ] in
    let x1 = bor [ (bvar ("2")); (bnot bfalse); (bnot (bvar ("16"))) ] in
    let x2 = bnot (bor [ (bvar ("6")); (bvar ("19")); (bvar ("45")) ]) in
    let x3 = bnot (bvar ("85")) in
    band [ x0; x1; x2; x3 ] = band [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (30)
  (try
   (let x0 =
      bor
        [ (bnot bfalse);
          (band [ (bvar ("71")); (bvar ("99")); (bvar ("72")) ]);
          (band [ (bvar ("72")); (bvar ("25")); btrue ]) ] in
    let x1 =
      band
        [ (bnot (bvar ("87"))); (bnot (bvar ("70")));
          (bor [ (bvar ("5")); (bvar ("29")); (bvar ("32")) ]) ] in
    let x2 = bnot (bnot (bvar ("67"))) in
    let x3 = bvar ("29") in band [ x0; x1; x2; x3 ] = band [ x2; x1; x0; x3 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (31)
  (try
   (let x0 =
      band
        [ (bor [ (bvar ("47")); (bvar ("84")); (bvar ("69")) ]);
          (bvar ("23")); (bvar ("51")) ] in
    let x1 =
      bor
        [ (bvar ("74")); (bnot (bvar ("82")));
          (band [ (bvar ("72")); (bvar ("25")); btrue ]) ] in
    let x2 =
      band
        [ (bnot (bvar ("87"))); (bnot (bvar ("70")));
          (bor [ (bvar ("5")); (bvar ("29")); (bvar ("32")) ]) ] in
    let x3 = bnot (bvar ("28")) in
    band [ x0; x1; x2; x3 ] = band [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (32)
  (try
   (let x0 = bnot (bnot (bvar ("49"))) in
    let x1 = bvar ("29") in
    let x2 =
      band
        [ (bnot (bvar ("25"))); (bnot (bvar ("58")));
          (bor [ (bvar ("11")); (bvar ("29")); (bvar ("19")) ]) ] in
    let x3 = bnot (bnot (bvar ("67"))) in
    band [ x0; x1; x2; x3 ] = band [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (33)
  (try
   (let x0 =
      band
        [ (bnot (bvar ("87"))); (bnot (bvar ("70")));
          (bor [ (bvar ("5")); (bvar ("29")); (bvar ("32")) ]) ] in
    let x1 = bvar ("89") in
    let x2 =
      band
        [ (bnot (bvar ("25"))); (bnot (bvar ("58")));
          (bor [ (bvar ("11")); (bvar ("29")); (bvar ("19")) ]) ] in
    let x3 =
      band
        [ (bor [ (bvar ("47")); (bvar ("84")); (bvar ("69")) ]);
          (bnot (bvar ("86"))); (bvar ("35")) ] in
    band [ x0; x1; x2; x3 ] = band [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (34)
  (try
   (let x0 =
      band
        [ (bor [ (bvar ("81")); (bvar ("84")); (bvar ("20")) ]);
          (bnot (bvar ("86")));
          (band [ (bvar ("29")); (bvar ("10")); (bvar ("8")) ]) ] in
    let x1 =
      bor
        [ (bnot (bvar ("97")));
          (band [ bfalse; (bvar ("37")); (bvar ("35")) ]);
          (bor [ (bvar ("40")); (bvar ("59")); bfalse ]) ] in
    let x2 = bnot (bor [ (bvar ("28")); (bvar ("71")); (bvar ("57")) ]) in
    let x3 = bvar ("88") in band [ x0; x1; x2; x3 ] = band [ x2; x1; x0; x3 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (35)
  (try
   (let x0 =
      band
        [ (bvar ("22"));
          (band [ (bvar ("24")); (bvar ("12")); (bvar ("16")) ]);
          (band [ bfalse; bfalse; (bvar ("5")) ]) ] in
    band [ x0; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (36)
  (try
   (let x0 =
      band
        [ (bvar ("22"));
          (band [ (bvar ("24")); (bvar ("12")); (bvar ("16")) ]);
          (band [ bfalse; bfalse; (bvar ("5")) ]) ] in
    band [ x0; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (37)
  (try (let x0 = bvar ("7") in band [ x0; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (38)
  (try
   (let x0 = bnot (band [ (bvar ("22")); (bvar ("11")); (bvar ("15")) ]) in
    band [ x0; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (39)
  (try (let x0 = bvar ("16") in band [ x0; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (40)
  (try
   (let x0 =
      band
        [ (bvar ("44")); (bor [ (bvar ("36")); bfalse; (bvar ("28")) ]);
          (band [ (bvar ("20")); (bvar ("68")); (bvar ("34")) ]) ] in
    let x1 =
      band
        [ btrue; (bvar ("21"));
          (bor [ (bvar ("18")); (bvar ("47")); bfalse ]) ] in
    let x2 =
      bor
        [ (band [ (bvar ("62")); (bvar ("74")); (bvar ("28")) ]);
          (band [ (bvar ("7")); (bvar ("62")); (bvar ("33")) ]);
          (bnot (bvar ("11"))) ] in
    band [ x0; x1; x1; x2 ] = band [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (41)
  (try
   (let x0 = bvar ("58") in
    let x1 =
      bor
        [ (band [ (bvar ("62")); btrue; (bvar ("28")) ]);
          (bor [ (bvar ("41")); (bvar ("21")); (bvar ("0")) ]); (bvar ("4")) ] in
    let x2 = bvar ("62") in band [ x0; x1; x1; x2 ] = band [ x0; x1; x2 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (42)
  (try
   (let x0 =
      band
        [ (band [ (bvar ("60")); (bvar ("20")); (bvar ("65")) ]);
          (bor [ (bvar ("28")); (bvar ("26")); (bvar ("48")) ]);
          (bor [ (bvar ("18")); (bvar ("47")); bfalse ]) ] in
    let x1 = bnot (band [ bfalse; (bvar ("74")); (bvar ("18")) ]) in
    let x2 = bnot bfalse in band [ x0; x1; x1; x2 ] = band [ x0; x1; x2 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (43)
  (try
   (let x0 =
      band
        [ (bor [ (bvar ("14")); (bvar ("68")); (bvar ("7")) ]);
          (bvar ("42")); (bnot (bvar ("64"))) ] in
    let x1 = bnot (band [ bfalse; (bvar ("74")); (bvar ("18")) ]) in
    let x2 = btrue in band [ x0; x1; x1; x2 ] = band [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (44)
  (try
   (let x0 =
      band
        [ (band [ (bvar ("60")); (bvar ("20")); (bvar ("65")) ]);
          (bor [ (bvar ("28")); (bvar ("26")); (bvar ("48")) ]);
          (bor [ (bvar ("18")); (bvar ("47")); bfalse ]) ] in
    let x1 = bnot (band [ bfalse; (bvar ("74")); (bvar ("62")) ]) in
    let x2 =
      bor
        [ (band [ (bvar ("62")); (bvar ("74")); (bvar ("28")) ]);
          (band [ (bvar ("7")); (bvar ("62")); (bvar ("33")) ]);
          (bnot (bvar ("11"))) ] in
    band [ x0; x1; x1; x2 ] = band [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (45)
  (try
   (let x0 =
      bor
        [ btrue; (bor [ (bvar ("40")); (bvar ("40")); (bvar ("39")) ]);
          (band [ (bvar ("29")); (bvar ("8")); (bvar ("4")) ]) ] in
    let x1 = bnot (band [ bfalse; btrue; bfalse ]) in
    band [ x0; btrue; x1 ] = band [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (46)
  (try
   (let x0 = bnot (band [ (bvar ("41")); (bvar ("13")); (bvar ("26")) ]) in
    let x1 = bnot (band [ (bvar ("41")); (bvar ("13")); (bvar ("26")) ]) in
    band [ x0; btrue; x1 ] = band [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (47)
  (try
   (let x0 =
      band
        [ (band [ (bvar ("38")); (bvar ("28")); (bvar ("22")) ]);
          (bnot (bvar ("22"))); (bnot (bvar ("24"))) ] in
    let x1 =
      bor
        [ btrue; (bor [ (bvar ("40")); (bvar ("40")); (bvar ("39")) ]);
          (band [ (bvar ("29")); (bvar ("8")); (bvar ("4")) ]) ] in
    band [ x0; btrue; x1 ] = band [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (48)
  (try
   (let x0 =
      bor
        [ btrue; (band [ (bvar ("34")); (bvar ("21")); (bvar ("18")) ]);
          (bnot (bvar ("43"))) ] in
    let x1 = bvar ("18") in band [ x0; btrue; x1 ] = band [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (49)
  (try
   (let x0 =
      bor
        [ btrue; (band [ (bvar ("34")); (bvar ("21")); (bvar ("18")) ]);
          (bnot (bvar ("43"))) ] in
    let x1 =
      band
        [ (bvar ("43"));
          (bor [ (bvar ("29")); (bvar ("6")); (bvar ("12")) ]);
          (band [ (bvar ("12")); (bvar ("26")); (bvar ("13")) ]) ] in
    band [ x0; btrue; x1 ] = band [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (50)
  (try (let x0 = bvar ("19") in band [ btrue; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (51)
  (try
   (let x0 =
      band
        [ (bnot (bvar ("0")));
          (band [ (bvar ("17")); bfalse; (bvar ("14")) ]); btrue ] in
    band [ btrue; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (52)
  (try
   (let x0 =
      band
        [ (bor [ btrue; (bvar ("2")); btrue ]); (bnot (bvar ("24"))); btrue ] in
    band [ btrue; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (53)
  (try
   (let x0 =
      band
        [ (bor [ btrue; (bvar ("2")); btrue ]); (bnot (bvar ("24"))); btrue ] in
    band [ btrue; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (54)
  (try
   (let x0 =
      band
        [ (bor [ btrue; (bvar ("2")); btrue ]); (bnot (bvar ("24"))); btrue ] in
    band [ btrue; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (55)
  (try
   (let x0 = bnot (bor [ (bvar ("3")); (bvar ("2")); (bvar ("16")) ]) in
    band [ x0; btrue; btrue ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (56)
  (try
   (let x0 =
      band
        [ (band [ (bvar ("2")); (bvar ("2")); (bvar ("24")) ]);
          (bvar ("19")); (bnot (bvar ("8"))) ] in
    band [ x0; btrue; btrue ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (57)
  (try
   (let x0 =
      bor
        [ (band [ (bvar ("23")); (bvar ("9")); (bvar ("24")) ]);
          (band [ (bvar ("13")); bfalse; (bvar ("10")) ]);
          (bnot (bvar ("23"))) ] in
    band [ x0; btrue; btrue ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (58)
  (try (let x0 = bnot (bnot (bvar ("22"))) in band [ x0; btrue; btrue ] = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (59)
  (try (let x0 = bvar ("20") in band [ x0; btrue; btrue ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (60)
  (try
   (let x0 = bnot (bvar ("39")) in
    let x1 = bvar ("64") in
    let x2 =
      band
        [ (bnot (bvar ("27")));
          (bor [ (bvar ("15")); (bvar ("58")); (bvar ("68")) ]);
          (band [ (bvar ("45")); (bvar ("0")); (bvar ("16")) ]) ] in
    bor [ (bor [ x0; x1 ]); x2 ] = bor [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (61)
  (try
   (let x0 =
      band
        [ (band [ (bvar ("57")); (bvar ("28")); (bvar ("30")) ]);
          (band [ (bvar ("31")); (bvar ("18")); (bvar ("20")) ]);
          (bor [ (bvar ("64")); (bvar ("14")); (bvar ("30")) ]) ] in
    let x1 =
      bor
        [ (bnot (bvar ("59")));
          (band [ (bvar ("47")); (bvar ("72")); (bvar ("14")) ]);
          (bnot (bvar ("69"))) ] in
    let x2 =
      band
        [ (bvar ("13")); (bvar ("23"));
          (bor [ (bvar ("64")); (bvar ("14")); (bvar ("30")) ]) ] in
    bor [ (bor [ x0; x1 ]); x2 ] = bor [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (62)
  (try
   (let x0 = bnot (bvar ("15")) in
    let x1 = bvar ("30") in
    let x2 =
      band
        [ (bvar ("13")); (bvar ("23"));
          (bor [ (bvar ("64")); (bvar ("14")); (bvar ("30")) ]) ] in
    bor [ (bor [ x0; x1 ]); x2 ] = bor [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (63)
  (try
   (let x0 = bnot (bor [ btrue; (bvar ("6")); (bvar ("68")) ]) in
    let x1 = bnot (bvar ("15")) in
    let x2 =
      band
        [ (band [ (bvar ("63")); (bvar ("19")); (bvar ("73")) ]);
          (bvar ("67"));
          (bor [ (bvar ("64")); (bvar ("14")); (bvar ("30")) ]) ] in
    bor [ (bor [ x0; x1 ]); x2 ] = bor [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (64)
  (try
   (let x0 = bvar ("47") in
    let x1 =
      band
        [ (band [ (bvar ("57")); (bvar ("28")); (bvar ("30")) ]);
          (band [ (bvar ("31")); (bvar ("18")); (bvar ("20")) ]);
          (bor [ (bvar ("64")); (bvar ("14")); (bvar ("30")) ]) ] in
    let x2 =
      band
        [ (bvar ("22")); (bnot (bvar ("27")));
          (band [ (bvar ("6")); (bvar ("0")); (bvar ("16")) ]) ] in
    bor [ (bor [ x0; x1 ]); x2 ] = bor [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (65)
  (try
   (let x0 = bnot (band [ (bvar ("34")); (bvar ("92")); (bvar ("121")) ]) in
    let x1 =
      band
        [ (band [ (bvar ("117")); (bvar ("53")); (bvar ("61")) ]);
          (bnot (bvar ("119")));
          (bor [ btrue; (bvar ("25")); (bvar ("21")) ]) ] in
    let x2 =
      band
        [ (bnot (bvar ("121")));
          (bor [ (bvar ("3")); (bvar ("98")); (bvar ("26")) ]);
          (bor [ (bvar ("63")); (bvar ("83")); (bvar ("124")) ]) ] in
    let x3 = bnot (bnot (bvar ("92"))) in
    let x4 =
      band
        [ (band [ btrue; (bvar ("51")); (bvar ("68")) ]);
          (bor [ (bvar ("3")); (bvar ("98")); (bvar ("26")) ]);
          (band [ btrue; (bvar ("32")); (bvar ("44")) ]) ] in
    bor [ x0; (bor [ x1; x2 ]); (bor [ x3; x4 ]) ] =
    bor [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (66)
  (try
   (let x0 =
      bor
        [ (bnot (bvar ("13"))); (bvar ("6"));
          (bor [ (bvar ("14")); (bvar ("89")); (bvar ("21")) ]) ] in
    let x1 = bvar ("41") in
    let x2 = bfalse in
    let x3 = bvar ("104") in
    let x4 =
      bor
        [ (bvar ("33"));
          (band [ (bvar ("114")); (bvar ("106")); (bvar ("120")) ]);
          (bnot (bvar ("119"))) ] in
    bor [ x0; (bor [ x1; x2 ]); (bor [ x3; x4 ]) ] =
    bor [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (67)
  (try
   (let x0 =
      bor
        [ (band [ (bvar ("7")); (bvar ("81")); (bvar ("97")) ]);
          (bvar ("122")); (bvar ("105")) ] in
    let x1 =
      band
        [ (band [ (bvar ("119")); (bvar ("9")); (bvar ("68")) ]);
          (bor [ (bvar ("2")); (bvar ("61")); (bvar ("114")) ]);
          (band [ (bvar ("65")); (bvar ("32")); (bvar ("8")) ]) ] in
    let x2 = bvar ("84") in
    let x3 = bnot (bnot (bvar ("69"))) in
    let x4 =
      band
        [ (bor [ (bvar ("23")); (bvar ("35")); (bvar ("90")) ]);
          (bor [ (bvar ("2")); (bvar ("61")); (bvar ("114")) ]);
          (band [ (bvar ("95")); (bvar ("32")); (bvar ("29")) ]) ] in
    bor [ x0; (bor [ x1; x2 ]); (bor [ x3; x4 ]) ] =
    bor [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (68)
  (try
   (let x0 =
      bor
        [ (bor [ (bvar ("122")); (bvar ("32")); (bvar ("92")) ]);
          (bvar ("6")); (band [ (bvar ("16")); (bvar ("59")); (bvar ("2")) ]) ] in
    let x1 = bvar ("35") in
    let x2 =
      band
        [ (band [ (bvar ("117")); (bvar ("53")); (bvar ("61")) ]);
          (bvar ("91")); (bnot (bvar ("63"))) ] in
    let x3 =
      band
        [ (bor [ (bvar ("29")); (bvar ("23")); (bvar ("6")) ]);
          (bvar ("91"));
          (band [ (bvar ("95")); (bvar ("32")); (bvar ("29")) ]) ] in
    let x4 =
      bor
        [ (bvar ("33")); (bvar ("49"));
          (bor [ btrue; (bvar ("79")); (bvar ("15")) ]) ] in
    bor [ x0; (bor [ x1; x2 ]); (bor [ x3; x4 ]) ] =
    bor [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (69)
  (try
   (let x0 = bnot (band [ (bvar ("34")); (bvar ("92")); (bvar ("121")) ]) in
    let x1 = bvar ("41") in
    let x2 = bfalse in
    let x3 =
      bor
        [ (bor [ (bvar ("88")); (bvar ("0")); (bvar ("105")) ]);
          (bnot (bvar ("74")));
          (bor [ (bvar ("14")); (bvar ("89")); (bvar ("21")) ]) ] in
    let x4 = bnot (bvar ("0")) in
    bor [ x0; (bor [ x1; x2 ]); (bor [ x3; x4 ]) ] =
    bor [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (70)
  (try
   (let x0 =
      band
        [ (bvar ("24"));
          (band [ (bvar ("17")); (bvar ("99")); (bvar ("89")) ]);
          (bnot (bvar ("54"))) ] in
    let x1 = bvar ("2") in
    let x2 = bor [ (bvar ("17")); (bnot (bvar ("56"))); (bnot (bvar ("3"))) ] in
    let x3 =
      band
        [ (bvar ("24"));
          (band [ (bvar ("88")); (bvar ("60")); (bvar ("54")) ]);
          (bvar ("44")) ] in
    bor [ (bor [ x0; x1; x2 ]); x3 ] = bor [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (71)
  (try
   (let x0 =
      bor
        [ (bor [ (bvar ("46")); (bvar ("4")); (bvar ("79")) ]);
          (bnot (bvar ("65"))); (bnot (bvar ("75"))) ] in
    let x1 =
      bor
        [ (bor [ (bvar ("46")); (bvar ("4")); (bvar ("79")) ]);
          (bnot (bvar ("65"))); (bnot (bvar ("75"))) ] in
    let x2 =
      bor
        [ (bnot (bvar ("19")));
          (bor [ (bvar ("53")); (bvar ("59")); (bvar ("53")) ]);
          (band [ (bvar ("39")); bfalse; (bvar ("18")) ]) ] in
    let x3 =
      band
        [ (bvar ("40"));
          (bor [ (bvar ("90")); (bvar ("86")); (bvar ("59")) ]);
          (bnot (bvar ("60"))) ] in
    bor [ (bor [ x0; x1; x2 ]); x3 ] = bor [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (72)
  (try
   (let x0 = bnot (band [ (bvar ("12")); (bvar ("97")); bfalse ]) in
    let x1 = bnot (bor [ (bvar ("29")); (bvar ("57")); (bvar ("95")) ]) in
    let x2 = bvar ("96") in
    let x3 =
      band
        [ (bvar ("24"));
          (band [ (bvar ("88")); (bvar ("60")); (bvar ("54")) ]);
          (bvar ("44")) ] in
    bor [ (bor [ x0; x1; x2 ]); x3 ] = bor [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (73)
  (try
   (let x0 = bnot (bor [ (bvar ("97")); (bvar ("50")); (bvar ("83")) ]) in
    let x1 = bvar ("96") in
    let x2 = bnot (bor [ (bvar ("97")); (bvar ("50")); (bvar ("83")) ]) in
    let x3 = bvar ("9") in
    bor [ (bor [ x0; x1; x2 ]); x3 ] = bor [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (74)
  (try
   (let x0 = bor [ (bvar ("17")); (bnot (bvar ("56"))); (bnot (bvar ("3"))) ] in
    let x1 = bnot (bor [ (bvar ("29")); (bvar ("57")); (bvar ("95")) ]) in
    let x2 = bnot (band [ bfalse; (bvar ("31")); (bvar ("37")) ]) in
    let x3 =
      bor
        [ (bor [ (bvar ("46")); (bvar ("4")); (bvar ("79")) ]);
          (bnot (bvar ("65"))); (bnot (bvar ("75"))) ] in
    bor [ (bor [ x0; x1; x2 ]); x3 ] = bor [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (75)
  (try
   (let x0 = bvar ("93") in
    let x1 =
      band
        [ (bvar ("13")); (band [ bfalse; (bvar ("62")); (bvar ("32")) ]);
          (band [ (bvar ("52")); (bvar ("83")); bfalse ]) ] in
    let x2 = bvar ("93") in
    let x3 =
      band
        [ (bvar ("81"));
          (bor [ (bvar ("80")); (bvar ("51")); (bvar ("44")) ]);
          (band [ (bvar ("52")); (bvar ("83")); bfalse ]) ] in
    bor [ x0; x1; x2; x3 ] = bor [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (76)
  (try
   (let x0 = bnot (bor [ (bvar ("81")); bfalse; (bvar ("29")) ]) in
    let x1 =
      band
        [ (bvar ("63")); (bor [ btrue; (bvar ("48")); btrue ]);
          (bnot (bvar ("2"))) ] in
    let x2 = bvar ("93") in
    let x3 =
      bor
        [ (bnot bfalse);
          (bor [ (bvar ("98")); (bvar ("25")); (bvar ("79")) ]);
          (bvar ("32")) ] in
    bor [ x0; x1; x2; x3 ] = bor [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (77)
  (try
   (let x0 = bvar ("33") in
    let x1 =
      band
        [ (bor [ bfalse; (bvar ("19")); (bvar ("82")) ]);
          (bor [ (bvar ("46")); (bvar ("34")); (bvar ("53")) ]);
          (bnot (bvar ("65"))) ] in
    let x2 = bvar ("6") in
    let x3 =
      band
        [ (bnot (bvar ("31"))); (bvar ("29"));
          (band [ (bvar ("82")); (bvar ("33")); (bvar ("60")) ]) ] in
    bor [ x0; x1; x2; x3 ] = bor [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (78)
  (try
   (let x0 =
      bor
        [ (bor [ (bvar ("12")); bfalse; (bvar ("81")) ]); (bvar ("54"));
          (bvar ("32")) ] in
    let x1 =
      bor
        [ (bor [ (bvar ("12")); bfalse; (bvar ("81")) ]);
          (bor [ (bvar ("98")); (bvar ("24")); (bvar ("90")) ]);
          (bnot (bvar ("59"))) ] in
    let x2 = btrue in
    let x3 = bfalse in bor [ x0; x1; x2; x3 ] = bor [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (79)
  (try
   (let x0 = bnot (bor [ (bvar ("4")); (bvar ("91")); (bvar ("83")) ]) in
    let x1 =
      bor
        [ (bor [ (bvar ("12")); bfalse; (bvar ("81")) ]);
          (bor [ (bvar ("98")); (bvar ("24")); (bvar ("90")) ]);
          (bnot (bvar ("59"))) ] in
    let x2 =
      bor
        [ (band [ (bvar ("3")); (bvar ("51")); (bvar ("28")) ]);
          (bvar ("54")); (bnot (bvar ("37"))) ] in
    let x3 =
      bor
        [ (bnot bfalse);
          (bor [ (bvar ("98")); (bvar ("25")); (bvar ("79")) ]);
          (bvar ("32")) ] in
    bor [ x0; x1; x2; x3 ] = bor [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (80)
  (try
   (let x0 = bnot (bvar ("80")) in
    let x1 = bvar ("55") in
    let x2 = bnot (bvar ("10")) in
    let x3 = bnot (bvar ("10")) in
    bor [ x0; x1; x2; x3 ] = bor [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (81)
  (try
   (let x0 = bvar ("2") in
    let x1 =
      band
        [ (bor [ (bvar ("12")); bfalse; (bvar ("76")) ]);
          (bnot (bvar ("83")));
          (band [ (bvar ("23")); (bvar ("16")); (bvar ("82")) ]) ] in
    let x2 =
      bor
        [ (bvar ("84")); (bvar ("10"));
          (band [ (bvar ("21")); (bvar ("79")); btrue ]) ] in
    let x3 = bnot (bvar ("10")) in
    bor [ x0; x1; x2; x3 ] = bor [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (82)
  (try
   (let x0 =
      bor
        [ (band [ (bvar ("32")); (bvar ("65")); bfalse ]);
          (bor [ (bvar ("48")); (bvar ("67")); (bvar ("66")) ]);
          (bnot (bvar ("35"))) ] in
    let x1 =
      bor
        [ (bnot (bvar ("25"))); (bnot (bvar ("21")));
          (band [ (bvar ("21")); (bvar ("26")); (bvar ("82")) ]) ] in
    let x2 = bvar ("57") in
    let x3 =
      band
        [ (bvar ("36"));
          (band [ (bvar ("0")); (bvar ("8")); (bvar ("38")) ]);
          (bnot (bvar ("72"))) ] in
    bor [ x0; x1; x2; x3 ] = bor [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (83)
  (try
   (let x0 = bnot (bnot (bvar ("9"))) in
    let x1 =
      band
        [ (bvar ("36"));
          (band [ (bvar ("0")); (bvar ("8")); (bvar ("38")) ]);
          (bnot (bvar ("72"))) ] in
    let x2 =
      band
        [ (bnot (bvar ("86")));
          (band [ (bvar ("0")); (bvar ("8")); (bvar ("38")) ]);
          (bor [ (bvar ("0")); btrue; (bvar ("27")) ]) ] in
    let x3 =
      bor
        [ (band [ (bvar ("46")); (bvar ("52")); (bvar ("96")) ]); bfalse;
          (band [ (bvar ("97")); (bvar ("17")); (bvar ("60")) ]) ] in
    bor [ x0; x1; x2; x3 ] = bor [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (84)
  (try
   (let x0 =
      bor [ (bnot (bvar ("96"))); (bvar ("15")); (bnot (bvar ("82"))) ] in
    let x1 =
      bor
        [ (band [ (bvar ("32")); (bvar ("65")); bfalse ]);
          (bnot (bvar ("21")));
          (bor [ (bvar ("11")); (bvar ("13")); (bvar ("49")) ]) ] in
    let x2 = bnot (bvar ("22")) in
    let x3 = bnot bfalse in bor [ x0; x1; x2; x3 ] = bor [ x3; x1; x2; x0 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (85)
  (try
   (let x0 =
      bor
        [ (bvar ("15")); (bvar ("55"));
          (band [ (bvar ("70")); (bvar ("17")); (bvar ("37")) ]) ] in
    let x1 = bnot (band [ btrue; (bvar ("89")); (bvar ("1")) ]) in
    let x2 = bvar ("34") in
    let x3 =
      bor
        [ (bvar ("15")); (bor [ (bvar ("72")); bfalse; btrue ]);
          (band [ (bvar ("19")); (bvar ("17")); (bvar ("95")) ]) ] in
    bor [ x0; x1; x2; x3 ] = bor [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (86)
  (try
   (let x0 = bnot (bvar ("20")) in
    let x1 = bnot (bor [ (bvar ("39")); (bvar ("98")); (bvar ("77")) ]) in
    let x2 = bnot btrue in
    let x3 = bvar ("42") in bor [ x0; x1; x2; x3 ] = bor [ x3; x2; x1; x0 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (87)
  (try
   (let x0 =
      band
        [ (bvar ("83")); (bor [ (bvar ("98")); (bvar ("30")); btrue ]);
          (bor [ (bvar ("98")); (bvar ("83")); (bvar ("55")) ]) ] in
    let x1 = bvar ("25") in
    let x2 =
      band
        [ (bor [ (bvar ("64")); (bvar ("27")); (bvar ("29")) ]);
          (bvar ("64")); (bvar ("37")) ] in
    let x3 =
      bor
        [ (bvar ("15")); (bor [ (bvar ("72")); bfalse; btrue ]);
          (band [ (bvar ("19")); (bvar ("17")); (bvar ("95")) ]) ] in
    bor [ x0; x1; x2; x3 ] = bor [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (88)
  (try
   (let x0 = bnot (band [ (bvar ("82")); bfalse; (bvar ("17")) ]) in
    let x1 =
      band
        [ (bor [ (bvar ("64")); (bvar ("27")); (bvar ("29")) ]);
          (bvar ("37"));
          (bor [ (bvar ("98")); (bvar ("40")); (bvar ("44")) ]) ] in
    let x2 =
      bor
        [ (bvar ("15")); (bvar ("55"));
          (band [ (bvar ("70")); (bvar ("17")); (bvar ("37")) ]) ] in
    let x3 = bnot (bnot (bvar ("12"))) in
    bor [ x0; x1; x2; x3 ] = bor [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (89)
  (try
   (let x0 =
      bor
        [ (bvar ("38")); (bnot (bvar ("33")));
          (band [ (bvar ("70")); (bvar ("17")); (bvar ("46")) ]) ] in
    let x1 = bvar ("8") in
    let x2 = bnot (bvar ("20")) in
    let x3 = bnot (band [ (bvar ("27")); (bvar ("89")); (bvar ("2")) ]) in
    bor [ x0; x1; x2; x3 ] = bor [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (90)
  (try
   (let x0 =
      band
        [ (bor [ (bvar ("85")); (bvar ("96")); bfalse ]);
          (band [ (bvar ("64")); (bvar ("64")); (bvar ("92")) ]);
          (bvar ("65")) ] in
    let x1 =
      band
        [ (bor [ (bvar ("10")); (bvar ("49")); (bvar ("52")) ]);
          (band [ (bvar ("16")); (bvar ("61")); btrue ]);
          (bnot (bvar ("40"))) ] in
    let x2 = bnot (band [ btrue; (bvar ("7")); (bvar ("88")) ]) in
    let x3 = bvar ("58") in bor [ x0; x1; x2; x3 ] = bor [ x2; x1; x0; x3 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (91)
  (try
   (let x0 = bvar ("66") in
    let x1 =
      band
        [ (bvar ("48"));
          (band [ (bvar ("16")); (bvar ("31")); (bvar ("46")) ]);
          (bor [ bfalse; bfalse; (bvar ("53")) ]) ] in
    let x2 = bnot (band [ btrue; (bvar ("7")); (bvar ("88")) ]) in
    let x3 = band [ (bnot (bvar ("58"))); (bvar ("64")); (bnot bfalse) ] in
    bor [ x0; x1; x2; x3 ] = bor [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (92)
  (try
   (let x0 =
      band
        [ (bor [ (bvar ("10")); (bvar ("49")); (bvar ("52")) ]);
          (band [ (bvar ("16")); (bvar ("61")); btrue ]);
          (bnot (bvar ("40"))) ] in
    let x1 =
      band
        [ (bor [ (bvar ("10")); (bvar ("49")); (bvar ("52")) ]);
          (bvar ("93")); (bor [ (bvar ("58")); (bvar ("58")); bfalse ]) ] in
    let x2 = bvar ("22") in
    let x3 =
      bor
        [ (bor [ (bvar ("80")); (bvar ("49")); (bvar ("99")) ]);
          (bor [ (bvar ("86")); (bvar ("17")); (bvar ("42")) ]);
          (band [ (bvar ("6")); (bvar ("84")); (bvar ("48")) ]) ] in
    bor [ x0; x1; x2; x3 ] = bor [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (93)
  (try
   (let x0 =
      band
        [ (bnot (bvar ("77")));
          (bor [ (bvar ("66")); (bvar ("50")); (bvar ("24")) ]); btrue ] in
    let x1 =
      band
        [ (bor [ (bvar ("10")); (bvar ("49")); (bvar ("52")) ]);
          (bvar ("93")); (bor [ (bvar ("58")); (bvar ("58")); bfalse ]) ] in
    let x2 = bnot (bnot (bvar ("79"))) in
    let x3 =
      bor
        [ (bor [ (bvar ("98")); btrue; (bvar ("29")) ]);
          (bor [ (bvar ("68")); (bvar ("24")); (bvar ("42")) ]);
          (bvar ("24")) ] in
    bor [ x0; x1; x2; x3 ] = bor [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (94)
  (try
   (let x0 = band [ (bvar ("18")); (bnot (bvar ("76"))); bfalse ] in
    let x1 = bnot (bnot (bvar ("74"))) in
    let x2 = bnot (band [ (bvar ("12")); (bvar ("47")); (bvar ("2")) ]) in
    let x3 =
      bor [ (bvar ("71")); (bnot (bvar ("66"))); (bnot (bvar ("36"))) ] in
    bor [ x0; x1; x2; x3 ] = bor [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (95)
  (try
   (let x0 =
      band
        [ btrue; (band [ (bvar ("6")); btrue; (bvar ("5")) ]); (bvar ("10")) ] in
    bor [ x0; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (96)
  (try (let x0 = bvar ("23") in bor [ x0; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (97)
  (try (let x0 = btrue in bor [ x0; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (98)
  (try
   (let x0 = bnot (bor [ (bvar ("8")); (bvar ("13")); btrue ]) in
    bor [ x0; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (99)
  (try
   (let x0 =
      bor
        [ (bvar ("19"));
          (band [ (bvar ("14")); (bvar ("18")); (bvar ("5")) ]);
          (bvar ("12")) ] in
    bor [ x0; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (100)
  (try
   (let x0 = bnot (bor [ (bvar ("60")); (bvar ("1")); (bvar ("67")) ]) in
    let x1 = bnot (bnot (bvar ("34"))) in
    let x2 =
      band
        [ (bor [ (bvar ("45")); (bvar ("14")); (bvar ("11")) ]);
          (bnot (bvar ("52")));
          (bor [ (bvar ("11")); (bvar ("36")); (bvar ("57")) ]) ] in
    bor [ x0; x1; x1; x2 ] = bor [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (101)
  (try
   (let x0 =
      bor
        [ (bnot (bvar ("5")));
          (bor [ (bvar ("60")); (bvar ("22")); (bvar ("10")) ]);
          (bvar ("48")) ] in
    let x1 =
      band
        [ (band [ (bvar ("43")); (bvar ("51")); (bvar ("30")) ]);
          (bor [ (bvar ("19")); (bvar ("7")); (bvar ("48")) ]);
          (band [ (bvar ("42")); (bvar ("22")); (bvar ("61")) ]) ] in
    let x2 = bor [ (bnot (bvar ("69"))); (bvar ("27")); (bvar ("48")) ] in
    bor [ x0; x1; x1; x2 ] = bor [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (102)
  (try
   (let x0 = bnot (bnot (bvar ("5"))) in
    let x1 =
      band
        [ (bor [ (bvar ("45")); (bvar ("14")); (bvar ("11")) ]);
          (bnot (bvar ("52")));
          (bor [ (bvar ("11")); (bvar ("36")); (bvar ("57")) ]) ] in
    let x2 = bnot btrue in bor [ x0; x1; x1; x2 ] = bor [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (103)
  (try
   (let x0 = bnot (bor [ (bvar ("60")); (bvar ("1")); (bvar ("67")) ]) in
    let x1 = bnot btrue in
    let x2 = bnot (band [ (bvar ("61")); (bvar ("52")); (bvar ("18")) ]) in
    bor [ x0; x1; x1; x2 ] = bor [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (104)
  (try
   (let x0 =
      bor
        [ (band [ bfalse; (bvar ("5")); btrue ]); (bnot (bvar ("21")));
          (bnot bfalse) ] in
    let x1 =
      band
        [ (bvar ("2")); (bvar ("42")); (bor [ btrue; (bvar ("37")); btrue ]) ] in
    let x2 = bnot (bvar ("34")) in
    bor [ x0; x1; x1; x2 ] = bor [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (105)
  (try
   (let x0 = bfalse in
    let x1 =
      band
        [ (band [ bfalse; bfalse; (bvar ("21")) ]);
          (band [ (bvar ("39")); (bvar ("4")); (bvar ("41")) ]);
          (band [ (bvar ("36")); (bvar ("2")); (bvar ("6")) ]) ] in
    bor [ x0; bfalse; x1 ] = bor [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (106)
  (try
   (let x0 =
      band
        [ (band [ (bvar ("34")); bfalse; btrue ]);
          (bor [ (bvar ("22")); btrue; (bvar ("17")) ]); (bvar ("2")) ] in
    let x1 =
      band
        [ (band [ bfalse; bfalse; (bvar ("21")) ]);
          (bor [ (bvar ("10")); (bvar ("10")); (bvar ("2")) ]); btrue ] in
    bor [ x0; bfalse; x1 ] = bor [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (107)
  (try
   (let x0 =
      band
        [ (band [ bfalse; bfalse; (bvar ("21")) ]);
          (band [ (bvar ("39")); (bvar ("4")); (bvar ("41")) ]);
          (band [ (bvar ("36")); (bvar ("2")); (bvar ("6")) ]) ] in
    let x1 = bnot (bor [ (bvar ("25")); (bvar ("39")); (bvar ("22")) ]) in
    bor [ x0; bfalse; x1 ] = bor [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (108)
  (try
   (let x0 = bnot (band [ (bvar ("35")); (bvar ("2")); (bvar ("9")) ]) in
    let x1 = btrue in bor [ x0; bfalse; x1 ] = bor [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (109)
  (try
   (let x0 = bvar ("25") in
    let x1 = bvar ("21") in bor [ x0; bfalse; x1 ] = bor [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (110)
  (try (let x0 = bnot (bnot (bvar ("2"))) in bor [ bfalse; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (111)
  (try (let x0 = bnot (bnot (bvar ("2"))) in bor [ bfalse; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (112)
  (try
   (let x0 =
      bor
        [ (bvar ("12")); (bor [ (bvar ("6")); bfalse; (bvar ("12")) ]);
          (bvar ("17")) ] in
    bor [ bfalse; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (113)
  (try (let x0 = bvar ("2") in bor [ bfalse; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (114)
  (try
   (let x0 =
      bor
        [ (bvar ("12")); (bor [ (bvar ("6")); bfalse; (bvar ("12")) ]);
          (bvar ("17")) ] in
    bor [ bfalse; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (115)
  (try
   (let x0 = band [ bfalse; (bnot (bvar ("24"))); (bvar ("8")) ] in
    bor [ x0; bfalse; bfalse ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (116)
  (try (let x0 = bnot (bnot (bvar ("5"))) in bor [ x0; bfalse; bfalse ] = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (117)
  (try
   (let x0 = bnot (bor [ (bvar ("22")); (bvar ("13")); (bvar ("20")) ]) in
    bor [ x0; bfalse; bfalse ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (118)
  (try (let x0 = bvar ("4") in bor [ x0; bfalse; bfalse ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (119)
  (try
   (let x0 =
      bor
        [ (bor [ (bvar ("23")); btrue; (bvar ("12")) ]); (bvar ("23"));
          (bor [ (bvar ("19")); (bvar ("16")); bfalse ]) ] in
    bor [ x0; bfalse; bfalse ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

