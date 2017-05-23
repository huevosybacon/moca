open Ring_var_list
;;

open Gentest
;;

testing ("Ring_var_list (automatic) - seed: 528048416")
;;

testi
  (0)
  (try
   (let x0 = var ("59") in
    let x1 =
      add
        [ zero; (mul [ (var ("13")); (var ("8")); (var ("11")) ]);
          (var ("22")) ] in
    let x2 = opp (var ("25")) in
    add [ (add [ x0; x1 ]); x2 ] = add [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (1)
  (try
   (let x0 = opp (var ("4")) in
    let x1 = opp (var ("25")) in
    let x2 =
      mul
        [ (mul [ (var ("2")); zero; (var ("11")) ]); (opp one);
          (opp (var ("60"))) ] in
    add [ (add [ x0; x1 ]); x2 ] = add [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (2)
  (try
   (let x0 = opp (var ("4")) in
    let x1 = var ("67") in
    let x2 = var ("48") in add [ (add [ x0; x1 ]); x2 ] = add [ x0; x1; x2 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (3)
  (try
   (let x0 =
      mul
        [ (add [ (var ("19")); (var ("70")); (var ("54")) ]);
          (mul [ (var ("36")); (var ("26")); (var ("23")) ]); zero ] in
    let x1 =
      add
        [ (opp (var ("22")));
          (mul [ (var ("51")); (var ("26")); (var ("42")) ]);
          (add [ (var ("3")); (var ("10")); (var ("21")) ]) ] in
    let x2 = var ("67") in add [ (add [ x0; x1 ]); x2 ] = add [ x0; x1; x2 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (4)
  (try
   (let x0 =
      add
        [ zero; (mul [ (var ("13")); (var ("8")); (var ("11")) ]);
          (var ("22")) ] in
    let x1 =
      mul
        [ (add [ (var ("74")); (var ("70")); (var ("20")) ]); (opp one);
          (var ("27")) ] in
    let x2 = opp (var ("25")) in
    add [ (add [ x0; x1 ]); x2 ] = add [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (5)
  (try
   (let x0 =
      mul
        [ (var ("91")); (add [ (var ("91")); (var ("12")); (var ("86")) ]);
          (opp (var ("76"))) ] in
    let x1 = add [ (var ("20")); (var ("53")); (var ("48")) ] in
    let x2 =
      add
        [ (add [ (var ("59")); (var ("98")); (var ("90")) ]); (var ("80"));
          (mul [ zero; (var ("56")); (var ("74")) ]) ] in
    let x3 = opp (mul [ zero; (var ("49")); (var ("72")) ]) in
    let x4 = opp (mul [ zero; (var ("49")); (var ("72")) ]) in
    add [ x0; (add [ x1; x2 ]); (add [ x3; x4 ]) ] =
    add [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (6)
  (try
   (let x0 = var ("14") in
    let x1 =
      add
        [ (add [ (var ("59")); (var ("98")); (var ("90")) ]); (var ("80"));
          (mul [ zero; (var ("56")); (var ("74")) ]) ] in
    let x2 = var ("51") in
    let x3 = var ("23") in
    let x4 =
      add
        [ (add [ (var ("95")); (var ("30")); (var ("64")) ]);
          (opp (var ("107"))); (opp (var ("14"))) ] in
    add [ x0; (add [ x1; x2 ]); (add [ x3; x4 ]) ] =
    add [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (7)
  (try
   (let x0 =
      mul
        [ (var ("26")); (add [ (var ("79")); (var ("10")); (var ("69")) ]);
          (mul [ (var ("75")); (var ("53")); (var ("77")) ]) ] in
    let x1 =
      add
        [ (add [ (var ("59")); (var ("98")); (var ("90")) ]); (var ("80"));
          (mul [ zero; (var ("56")); (var ("74")) ]) ] in
    let x2 =
      mul
        [ (var ("26")); (add [ (var ("79")); (var ("10")); (var ("69")) ]);
          (mul [ (var ("75")); (var ("53")); (var ("77")) ]) ] in
    let x3 = opp (opp (var ("104"))) in
    let x4 = opp (mul [ (var ("113")); (var ("37")); (var ("5")) ]) in
    add [ x0; (add [ x1; x2 ]); (add [ x3; x4 ]) ] =
    add [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (8)
  (try
   (let x0 =
      add
        [ (add [ (var ("59")); (var ("98")); (var ("90")) ]); (var ("80"));
          (mul [ zero; (var ("56")); (var ("74")) ]) ] in
    let x1 = opp (add [ (var ("71")); zero; (var ("14")) ]) in
    let x2 = var ("23") in
    let x3 = opp (var ("116")) in
    let x4 = var ("14") in
    add [ x0; (add [ x1; x2 ]); (add [ x3; x4 ]) ] =
    add [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (9)
  (try
   (let x0 =
      mul
        [ (var ("91")); (add [ (var ("91")); (var ("12")); (var ("86")) ]);
          (opp (var ("76"))) ] in
    let x1 = var ("100") in
    let x2 = opp (mul [ zero; (var ("49")); (var ("72")) ]) in
    let x3 =
      mul
        [ (mul [ (var ("5")); (var ("59")); (var ("11")) ]);
          (add [ (var ("79")); (var ("10")); (var ("69")) ]); (var ("34")) ] in
    let x4 = opp (mul [ zero; (var ("49")); (var ("72")) ]) in
    add [ x0; (add [ x1; x2 ]); (add [ x3; x4 ]) ] =
    add [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (10)
  (try
   (let x0 = opp (opp (var ("38"))) in
    let x1 = opp (mul [ (var ("74")); (var ("84")); (var ("31")) ]) in
    let x2 = var ("3") in
    let x3 =
      mul
        [ (mul [ (var ("93")); (var ("29")); (var ("82")) ]); (var ("98"));
          (var ("95")) ] in
    add [ (add [ x0; x1; x2 ]); x3 ] = add [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (11)
  (try
   (let x0 = opp (var ("26")) in
    let x1 = var ("57") in
    let x2 = var ("97") in
    let x3 =
      add
        [ (var ("95")); (mul [ (var ("65")); (var ("61")); (var ("67")) ]);
          (mul [ (var ("75")); (var ("81")); one ]) ] in
    add [ (add [ x0; x1; x2 ]); x3 ] = add [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (12)
  (try
   (let x0 =
      mul
        [ (add [ (var ("77")); one; (var ("15")) ]); (var ("89"));
          (var ("66")) ] in
    let x1 = var ("57") in
    let x2 = var ("70") in
    let x3 = opp (opp (var ("38"))) in
    add [ (add [ x0; x1; x2 ]); x3 ] = add [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (13)
  (try
   (let x0 = add [ (var ("23")); (opp one); one ] in
    let x1 = var ("97") in
    let x2 =
      mul
        [ (mul [ (var ("93")); (var ("29")); (var ("82")) ]); (var ("98"));
          (var ("95")) ] in
    let x3 =
      mul
        [ (opp (var ("96")));
          (add [ (var ("70")); (var ("67")); (var ("93")) ]); (var ("11")) ] in
    add [ (add [ x0; x1; x2 ]); x3 ] = add [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (14)
  (try
   (let x0 = mul [ (var ("26")); (var ("89")); (opp (var ("44"))) ] in
    let x1 = one in
    let x2 = zero in
    let x3 = opp (opp (var ("38"))) in
    add [ (add [ x0; x1; x2 ]); x3 ] = add [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (15)
  (try
   (let x0 =
      add
        [ (add [ (var ("17")); (var ("85")); (var ("82")) ]); (var ("38"));
          (add [ (var ("67")); (var ("69")); (var ("25")) ]) ] in
    let x1 =
      mul
        [ (add [ (var ("36")); (var ("17")); (var ("51")) ]); (var ("40"));
          (opp (var ("22"))) ] in
    let x2 =
      mul
        [ (mul [ one; (var ("37")); (var ("72")) ]); (var ("40"));
          (add [ one; (var ("81")); (var ("83")) ]) ] in
    let x3 =
      add
        [ (mul [ (var ("53")); (var ("1")); (var ("49")) ]); (var ("38"));
          (add [ (var ("22")); (var ("5")); (var ("39")) ]) ] in
    add [ x0; x1; x2; x3 ] = add [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (16)
  (try
   (let x0 =
      mul
        [ (var ("48")); (add [ (var ("15")); one; (var ("49")) ]);
          (add [ (var ("10")); (var ("81")); (var ("52")) ]) ] in
    let x1 =
      add
        [ (mul [ (var ("53")); (var ("1")); zero ]); (opp one);
          (mul [ (var ("49")); (var ("23")); (var ("2")) ]) ] in
    let x2 = var ("97") in
    let x3 = opp (mul [ (var ("29")); (var ("18")); (var ("20")) ]) in
    add [ x0; x1; x2; x3 ] = add [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (17)
  (try
   (let x0 = mul [ (var ("64")); (opp (var ("32"))); (var ("10")) ] in
    let x1 =
      add
        [ (opp (var ("89"))); (opp (var ("42")));
          (mul [ (var ("49")); (var ("23")); (var ("2")) ]) ] in
    let x2 = opp (opp zero) in
    let x3 = opp (mul [ (var ("29")); (var ("18")); (var ("20")) ]) in
    add [ x0; x1; x2; x3 ] = add [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (18)
  (try
   (let x0 =
      mul
        [ (mul [ one; (var ("37")); (var ("72")) ]); (var ("40"));
          (add [ one; (var ("81")); (var ("83")) ]) ] in
    let x1 =
      add
        [ (opp (var ("31"))); (opp (var ("42")));
          (mul [ (var ("49")); (var ("23")); (var ("2")) ]) ] in
    let x2 = opp (opp (var ("28"))) in
    let x3 = add [ (var ("73")); (opp (var ("83"))); (opp (var ("13"))) ] in
    add [ x0; x1; x2; x3 ] = add [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (19)
  (try
   (let x0 =
      mul
        [ (var ("48")); (add [ (var ("15")); one; (var ("49")) ]);
          (add [ (var ("10")); (var ("81")); (var ("52")) ]) ] in
    let x1 = opp (mul [ (var ("45")); (var ("10")); (var ("83")) ]) in
    let x2 =
      mul
        [ (mul [ (var ("53")); (var ("26")); (var ("72")) ]);
          (add [ (var ("15")); (var ("14")); (var ("25")) ]);
          (mul [ (var ("11")); (var ("42")); (var ("71")) ]) ] in
    let x3 =
      add
        [ (opp (var ("31"))); (opp (var ("42")));
          (mul [ (var ("49")); (var ("23")); (var ("2")) ]) ] in
    add [ x0; x1; x2; x3 ] = add [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (20)
  (try
   (let x0 = add [ (var ("93")); (opp (var ("40"))); (opp (var ("73"))) ] in
    let x1 = opp (mul [ (var ("98")); (var ("11")); (var ("21")) ]) in
    let x2 = var ("38") in
    let x3 = opp (add [ (var ("29")); (var ("10")); one ]) in
    add [ x0; x1; x2; x3 ] = add [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (21)
  (try
   (let x0 =
      add
        [ (add [ (var ("58")); (var ("60")); (var ("44")) ]);
          (add [ (var ("82")); (var ("73")); (var ("93")) ]);
          (mul [ (var ("8")); (var ("16")); (var ("46")) ]) ] in
    let x1 = opp (add [ (var ("52")); (var ("13")); (var ("37")) ]) in
    let x2 =
      add
        [ (add [ (var ("62")); zero; (var ("44")) ]);
          (add [ (var ("66")); (var ("30")); (var ("93")) ]);
          (opp (var ("28"))) ] in
    let x3 = opp (var ("72")) in
    add [ x0; x1; x2; x3 ] = add [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (22)
  (try
   (let x0 = var ("14") in
    let x1 =
      add
        [ (add [ (var ("62")); zero; (var ("44")) ]);
          (add [ (var ("66")); (var ("30")); (var ("93")) ]);
          (opp (var ("28"))) ] in
    let x2 = opp (add [ (var ("33")); (var ("13")); (var ("69")) ]) in
    let x3 = opp (add [ (var ("52")); (var ("13")); (var ("37")) ]) in
    add [ x0; x1; x2; x3 ] = add [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (23)
  (try
   (let x0 = add [ (var ("95")); (var ("36")); (opp (var ("0"))) ] in
    let x1 = add [ (var ("93")); (opp (var ("40"))); (opp (var ("73"))) ] in
    let x2 = var ("80") in
    let x3 = add [ (var ("95")); (var ("36")); (opp (var ("0"))) ] in
    add [ x0; x1; x2; x3 ] = add [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (24)
  (try
   (let x0 = var ("4") in
    let x1 = var ("4") in
    let x2 = var ("80") in
    let x3 = opp (var ("69")) in
    add [ x0; x1; x2; x3 ] = add [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (25)
  (try
   (let x0 =
      mul
        [ (mul [ (var ("83")); (var ("56")); (var ("39")) ]); zero;
          (add [ (var ("54")); (var ("5")); (var ("34")) ]) ] in
    let x1 = var ("42") in
    let x2 = var ("49") in
    let x3 =
      mul
        [ (mul [ (var ("70")); (var ("18")); (var ("45")) ]); (var ("13"));
          (var ("56")) ] in
    add [ x0; x1; x2; x3 ] = add [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (26)
  (try
   (let x0 = opp (mul [ (var ("67")); (var ("28")); (var ("62")) ]) in
    let x1 = opp (opp (var ("90"))) in
    let x2 = opp (add [ (var ("80")); (var ("78")); (var ("10")) ]) in
    let x3 = one in add [ x0; x1; x2; x3 ] = add [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (27)
  (try
   (let x0 = var ("30") in
    let x1 = var ("53") in
    let x2 = opp (var ("80")) in
    let x3 = mul [ (var ("5")); (var ("97")); (opp (var ("74"))) ] in
    add [ x0; x1; x2; x3 ] = add [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (28)
  (try
   (let x0 = var ("14") in
    let x1 = var ("44") in
    let x2 =
      mul
        [ (mul [ (var ("70")); (var ("18")); (var ("45")) ]); (var ("13"));
          (var ("56")) ] in
    let x3 = opp (add [ (var ("26")); (var ("44")); (var ("16")) ]) in
    add [ x0; x1; x2; x3 ] = add [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (29)
  (try
   (let x0 = opp (mul [ (var ("12")); (var ("54")); (var ("13")) ]) in
    let x1 =
      mul
        [ (mul [ (var ("83")); (var ("56")); (var ("39")) ]); zero;
          (add [ (var ("54")); (var ("5")); (var ("34")) ]) ] in
    let x2 =
      add
        [ (mul [ (var ("78")); (var ("26")); (var ("75")) ]);
          (opp (var ("88")));
          (add [ (var ("47")); (var ("24")); (var ("43")) ]) ] in
    let x3 = zero in add [ x0; x1; x2; x3 ] = add [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (30)
  (try
   (let x0 = opp (opp (var ("90"))) in
    let x1 = opp (add [ (var ("7")); (var ("99")); (var ("82")) ]) in
    let x2 = var ("19") in
    let x3 = opp (mul [ (var ("86")); (var ("20")); (var ("15")) ]) in
    add [ x0; x1; x2; x3 ] = add [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (31)
  (try
   (let x0 = var ("90") in
    let x1 = one in
    let x2 = add [ (opp (var ("33"))); (opp (var ("10"))); (opp zero) ] in
    let x3 =
      mul
        [ (mul [ (var ("52")); (var ("33")); (var ("81")) ]);
          (opp (var ("88"))); (var ("78")) ] in
    add [ x0; x1; x2; x3 ] = add [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (32)
  (try
   (let x0 = one in
    let x1 =
      add
        [ (opp (var ("69"))); (var ("85"));
          (add [ (var ("53")); (var ("92")); (var ("41")) ]) ] in
    let x2 = var ("60") in
    let x3 = add [ (var ("13")); (var ("93")); (var ("90")) ] in
    add [ x0; x1; x2; x3 ] = add [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (33)
  (try
   (let x0 = one in
    let x1 = opp (mul [ (var ("27")); zero; (var ("33")) ]) in
    let x2 = var ("13") in
    let x3 =
      mul
        [ (opp (var ("84")));
          (mul [ (var ("2")); (var ("38")); (var ("49")) ]);
          (opp (var ("49"))) ] in
    add [ x0; x1; x2; x3 ] = add [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (34)
  (try
   (let x0 = add [ (opp (var ("33"))); (opp (var ("10"))); (opp zero) ] in
    let x1 =
      add
        [ (mul [ (var ("12")); (var ("65")); (var ("9")) ]); (var ("93"));
          (add [ (var ("53")); (var ("92")); (var ("41")) ]) ] in
    let x2 = var ("86") in
    let x3 = var ("19") in add [ x0; x1; x2; x3 ] = add [ x2; x1; x0; x3 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (35)
  (try
   (let x0 = var ("17") in
    let x1 = var ("17") in add [ x0; zero; x1 ] = add [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (36)
  (try
   (let x0 =
      mul
        [ (add [ (var ("27")); (var ("17")); (var ("48")) ]);
          (add [ (var ("28")); (var ("8")); (var ("6")) ]);
          (opp (var ("14"))) ] in
    let x1 = var ("0") in add [ x0; zero; x1 ] = add [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (37)
  (try
   (let x0 = add [ (opp zero); (opp zero); (var ("30")) ] in
    let x1 = var ("0") in add [ x0; zero; x1 ] = add [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (38)
  (try
   (let x0 =
      add
        [ (add [ one; (var ("19")); (var ("29")) ]); one; (opp (var ("15"))) ] in
    let x1 =
      mul
        [ (add [ (var ("27")); (var ("17")); (var ("48")) ]);
          (add [ (var ("28")); (var ("8")); (var ("6")) ]);
          (opp (var ("14"))) ] in
    add [ x0; zero; x1 ] = add [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (39)
  (try
   (let x0 = add [ (opp zero); (opp zero); (var ("30")) ] in
    let x1 =
      add
        [ (add [ one; (var ("19")); (var ("29")) ]); (opp (var ("45")));
          (opp (var ("15"))) ] in
    add [ x0; zero; x1 ] = add [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (40)
  (try (let x0 = one in add [ zero; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (41)
  (try
   (let x0 =
      mul
        [ (opp (var ("14")));
          (mul [ (var ("3")); (var ("5")); (var ("18")) ]);
          (mul [ (var ("6")); (var ("12")); zero ]) ] in
    add [ zero; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (42)
  (try
   (let x0 = add [ (opp (var ("24"))); (var ("14")); (opp zero) ] in
    add [ zero; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (43)
  (try
   (let x0 = add [ (opp (var ("24"))); (var ("14")); (opp zero) ] in
    add [ zero; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (44)
  (try
   (let x0 =
      mul
        [ (opp (var ("5"))); (var ("22")); (add [ zero; zero; (var ("8")) ]) ] in
    add [ zero; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (45)
  (try
   (let x0 = mul [ one; (opp (var ("24"))); (var ("2")) ] in
    add [ x0; zero; zero ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (46)
  (try (let x0 = opp (opp zero) in add [ x0; zero; zero ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (47)
  (try
   (let x0 =
      add
        [ (add [ (var ("4")); (var ("11")); zero ]); (opp (var ("4")));
          (add [ one; (var ("6")); (var ("20")) ]) ] in
    add [ x0; zero; zero ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (48)
  (try (let x0 = one in add [ x0; zero; zero ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (49)
  (try
   (let x0 = mul [ one; (opp (var ("24"))); (var ("2")) ] in
    add [ x0; zero; zero ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (50)
  (try
   (let x0 =
      add
        [ (add [ (var ("26")); (var ("6")); (var ("16")) ]); (var ("15"));
          (opp (var ("34"))) ] in
    let x1 =
      mul
        [ (add [ (var ("69")); (var ("53")); (var ("22")) ]);
          (add [ (var ("51")); (var ("68")); (var ("5")) ]); (var ("14")) ] in
    let x2 = add [ (opp zero); (var ("2")); (opp (var ("72"))) ] in
    mul [ (mul [ x0; x1 ]); x2 ] = mul [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (51)
  (try
   (let x0 = add [ (opp zero); (var ("2")); (opp (var ("72"))) ] in
    let x1 =
      mul
        [ (add [ (var ("69")); (var ("53")); (var ("22")) ]);
          (opp (var ("6"))); (var ("57")) ] in
    let x2 =
      mul
        [ (var ("41")); (add [ (var ("38")); (var ("27")); (var ("5")) ]);
          (opp (var ("60"))) ] in
    mul [ (mul [ x0; x1 ]); x2 ] = mul [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (52)
  (try
   (let x0 = var ("66") in
    let x1 = var ("52") in
    let x2 = opp (opp (var ("25"))) in
    mul [ (mul [ x0; x1 ]); x2 ] = mul [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (53)
  (try
   (let x0 = mul [ one; zero; (opp (var ("60"))) ] in
    let x1 =
      mul
        [ (add [ (var ("69")); (var ("53")); (var ("22")) ]);
          (opp (var ("6"))); (var ("57")) ] in
    let x2 = opp (add [ (var ("41")); (var ("47")); (var ("72")) ]) in
    mul [ (mul [ x0; x1 ]); x2 ] = mul [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (54)
  (try
   (let x0 =
      mul
        [ (var ("24")); (add [ (var ("38")); (var ("27")); (var ("5")) ]);
          (add [ (var ("5")); zero; (var ("26")) ]) ] in
    let x1 =
      mul
        [ (add [ (var ("69")); (var ("53")); (var ("22")) ]);
          (add [ (var ("51")); (var ("68")); (var ("5")) ]); (var ("14")) ] in
    let x2 = var ("66") in mul [ (mul [ x0; x1 ]); x2 ] = mul [ x0; x1; x2 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (55)
  (try
   (let x0 = opp (add [ one; (var ("8")); (var ("106")) ]) in
    let x1 =
      add
        [ (opp (var ("29"))); (var ("113"));
          (add [ (var ("3")); (var ("101")); (var ("107")) ]) ] in
    let x2 =
      mul [ (mul [ (var ("56")); (var ("41")); one ]); one; (var ("118")) ] in
    let x3 = opp (var ("89")) in
    let x4 =
      add
        [ (mul [ (var ("76")); one; (var ("42")) ]); (var ("7"));
          (opp (var ("67"))) ] in
    mul [ x0; (mul [ x1; x2 ]); (mul [ x3; x4 ]) ] =
    mul [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (56)
  (try
   (let x0 =
      add
        [ (add [ (var ("84")); (var ("28")); (var ("57")) ]);
          (add [ one; (var ("52")); (var ("73")) ]); (opp (var ("67"))) ] in
    let x1 = var ("9") in
    let x2 = var ("9") in
    let x3 = var ("66") in
    let x4 = opp (add [ one; (var ("25")); (var ("98")) ]) in
    mul [ x0; (mul [ x1; x2 ]); (mul [ x3; x4 ]) ] =
    mul [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (57)
  (try
   (let x0 = var ("87") in
    let x1 =
      mul
        [ (opp (var ("106")));
          (mul [ (var ("91")); (var ("94")); (var ("65")) ]);
          (opp (var ("33"))) ] in
    let x2 = var ("65") in
    let x3 = opp (mul [ (var ("72")); (var ("20")); (var ("48")) ]) in
    let x4 =
      add
        [ (add [ (var ("84")); (var ("28")); (var ("57")) ]);
          (add [ one; (var ("52")); (var ("73")) ]); (opp (var ("67"))) ] in
    mul [ x0; (mul [ x1; x2 ]); (mul [ x3; x4 ]) ] =
    mul [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (58)
  (try
   (let x0 =
      add
        [ (mul [ (var ("76")); one; (var ("33")) ]); (opp (var ("43")));
          (add [ (var ("3")); (var ("101")); (var ("107")) ]) ] in
    let x1 = opp (var ("89")) in
    let x2 =
      mul
        [ (mul [ (var ("56")); (var ("41")); one ]);
          (mul [ (var ("75")); (var ("23")); (var ("39")) ]);
          (opp (var ("1"))) ] in
    let x3 = var ("9") in
    let x4 = var ("61") in
    mul [ x0; (mul [ x1; x2 ]); (mul [ x3; x4 ]) ] =
    mul [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (59)
  (try
   (let x0 = var ("76") in
    let x1 =
      add
        [ (mul [ (var ("76")); one; (var ("42")) ]); (var ("96"));
          (opp (var ("67"))) ] in
    let x2 =
      mul
        [ (opp (var ("106"))); (mul [ one; (var ("94")); (var ("79")) ]);
          (var ("99")) ] in
    let x3 = opp (opp (var ("122"))) in
    let x4 = one in
    mul [ x0; (mul [ x1; x2 ]); (mul [ x3; x4 ]) ] =
    mul [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (60)
  (try
   (let x0 =
      mul
        [ (mul [ (var ("37")); (var ("8")); (var ("68")) ]);
          (add [ (var ("44")); (var ("89")); (var ("10")) ]); (var ("4")) ] in
    let x1 = opp (mul [ (var ("7")); (var ("69")); (var ("23")) ]) in
    let x2 = var ("50") in
    let x3 = var ("57") in
    mul [ (mul [ x0; x1; x2 ]); x3 ] = mul [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (61)
  (try
   (let x0 = opp (mul [ (var ("38")); (var ("23")); (var ("4")) ]) in
    let x1 = opp (opp (var ("80"))) in
    let x2 =
      mul
        [ (opp (var ("6")));
          (add [ (var ("11")); (var ("6")); (var ("89")) ]); (var ("66")) ] in
    let x3 = var ("28") in
    mul [ (mul [ x0; x1; x2 ]); x3 ] = mul [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (62)
  (try
   (let x0 =
      mul [ (opp (var ("36"))); (opp (var ("12"))); (opp (var ("73"))) ] in
    let x1 = var ("67") in
    let x2 =
      mul
        [ (add [ (var ("69")); zero; (var ("5")) ]);
          (add [ (var ("11")); (var ("6")); (var ("89")) ]); one ] in
    let x3 = var ("91") in
    mul [ (mul [ x0; x1; x2 ]); x3 ] = mul [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (63)
  (try
   (let x0 =
      mul
        [ (add [ (var ("69")); zero; (var ("5")) ]);
          (mul [ (var ("50")); (var ("71")); (var ("72")) ]);
          (add [ (var ("79")); (var ("10")); zero ]) ] in
    let x1 = var ("85") in
    let x2 = zero in
    let x3 =
      mul [ (opp (var ("36"))); (opp (var ("12"))); (opp (var ("73"))) ] in
    mul [ (mul [ x0; x1; x2 ]); x3 ] = mul [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (64)
  (try
   (let x0 = var ("72") in
    let x1 =
      add
        [ (opp (var ("28"))); (var ("29"));
          (mul [ (var ("3")); (var ("49")); one ]) ] in
    let x2 = var ("22") in
    let x3 = opp (var ("37")) in
    mul [ (mul [ x0; x1; x2 ]); x3 ] = mul [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (65)
  (try
   (let x0 =
      add
        [ (add [ (var ("61")); (var ("50")); (var ("49")) ]);
          (mul [ (var ("45")); (var ("62")); (var ("32")) ]); (opp zero) ] in
    let x1 =
      add
        [ (add [ (var ("68")); (var ("76")); (var ("84")) ]); (var ("7"));
          (var ("57")) ] in
    let x2 = one in
    let x3 = mul [ (var ("41")); (opp (var ("33"))); (var ("98")) ] in
    mul [ x0; x1; x2; x3 ] = mul [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (66)
  (try
   (let x0 = opp (opp (var ("54"))) in
    let x1 =
      mul
        [ (opp (var ("14"))); zero;
          (add [ (var ("88")); (var ("55")); (var ("97")) ]) ] in
    let x2 = var ("41") in
    let x3 = var ("70") in mul [ x0; x1; x2; x3 ] = mul [ x1; x0; x3; x2 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (67)
  (try
   (let x0 = add [ (var ("64")); (var ("91")); (opp zero) ] in
    let x1 =
      mul
        [ (opp (var ("14"))); zero;
          (add [ (var ("88")); (var ("55")); (var ("97")) ]) ] in
    let x2 =
      mul
        [ (var ("73")); (opp (var ("20")));
          (add [ (var ("51")); (var ("8")); (var ("14")) ]) ] in
    let x3 =
      add
        [ (add [ (var ("68")); (var ("76")); (var ("84")) ]); (var ("7"));
          (var ("57")) ] in
    mul [ x0; x1; x2; x3 ] = mul [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (68)
  (try
   (let x0 = opp (opp (var ("54"))) in
    let x1 = var ("17") in
    let x2 = var ("62") in
    let x3 = add [ (var ("64")); (var ("91")); (opp zero) ] in
    mul [ x0; x1; x2; x3 ] = mul [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (69)
  (try
   (let x0 =
      mul
        [ (opp one); (mul [ (var ("58")); (var ("55")); one ]);
          (add [ (var ("9")); (var ("37")); (var ("97")) ]) ] in
    let x1 = add [ (var ("64")); (var ("91")); (opp zero) ] in
    let x2 = opp (mul [ (var ("75")); (var ("60")); (var ("85")) ]) in
    let x3 = opp (opp (var ("54"))) in
    mul [ x0; x1; x2; x3 ] = mul [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (70)
  (try
   (let x0 =
      add
        [ (mul [ (var ("10")); (var ("31")); (var ("89")) ]);
          (add [ (var ("32")); (var ("62")); (var ("23")) ]); (var ("35")) ] in
    let x1 =
      mul
        [ (var ("36")); (add [ (var ("93")); (var ("4")); (var ("97")) ]);
          (add [ (var ("65")); (var ("36")); (var ("18")) ]) ] in
    let x2 = mul [ (opp (var ("3"))); (var ("38")); (var ("28")) ] in
    let x3 =
      mul
        [ (mul [ (var ("57")); (var ("56")); (var ("34")) ]);
          (add [ (var ("93")); (var ("21")); (var ("87")) ]);
          (mul [ (var ("10")); (var ("52")); (var ("69")) ]) ] in
    mul [ x0; x1; x2; x3 ] = mul [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (71)
  (try
   (let x0 = opp (var ("45")) in
    let x1 = var ("48") in
    let x2 = opp (opp (var ("59"))) in
    let x3 = var ("79") in mul [ x0; x1; x2; x3 ] = mul [ x3; x1; x2; x0 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (72)
  (try
   (let x0 = opp (opp (var ("59"))) in
    let x1 = var ("57") in
    let x2 =
      add
        [ (add [ (var ("44")); (var ("41")); (var ("59")) ]); (var ("49"));
          (mul [ (var ("76")); zero; zero ]) ] in
    let x3 =
      add
        [ (mul [ (var ("10")); (var ("97")); (var ("83")) ]); (var ("24"));
          (opp (var ("60"))) ] in
    mul [ x0; x1; x2; x3 ] = mul [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (73)
  (try
   (let x0 =
      add
        [ (mul [ zero; (var ("97")); (var ("71")) ]); (opp (var ("95")));
          (var ("35")) ] in
    let x1 = opp (opp (var ("59"))) in
    let x2 = opp (mul [ (var ("26")); (var ("43")); (var ("61")) ]) in
    let x3 = var ("73") in mul [ x0; x1; x2; x3 ] = mul [ x3; x1; x2; x0 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (74)
  (try
   (let x0 =
      add
        [ (mul [ (var ("12")); (var ("31")); (var ("43")) ]);
          (add [ (var ("32")); (var ("62")); (var ("23")) ]); (var ("15")) ] in
    let x1 =
      add
        [ (mul [ (var ("10")); (var ("97")); (var ("83")) ]); (var ("24"));
          (opp (var ("60"))) ] in
    let x2 = opp (var ("45")) in
    let x3 = opp (opp (var ("90"))) in
    mul [ x0; x1; x2; x3 ] = mul [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (75)
  (try
   (let x0 =
      add
        [ (opp (var ("65")));
          (mul [ (var ("86")); (var ("16")); (var ("73")) ]);
          (opp (var ("84"))) ] in
    let x1 = opp (add [ (var ("61")); (var ("77")); (var ("12")) ]) in
    let x2 =
      mul
        [ (var ("68")); (opp (var ("59")));
          (mul [ (var ("34")); (var ("86")); one ]) ] in
    let x3 = var ("97") in mul [ x0; x1; x2; x3 ] = mul [ x3; x2; x1; x0 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (76)
  (try
   (let x0 = mul [ one; one; (opp (var ("28"))) ] in
    let x1 = var ("75") in
    let x2 = mul [ (var ("68")); (opp (var ("61"))); (var ("19")) ] in
    let x3 = opp (opp (var ("98"))) in
    mul [ x0; x1; x2; x3 ] = mul [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (77)
  (try
   (let x0 = mul [ (var ("68")); (opp (var ("61"))); (var ("19")) ] in
    let x1 = var ("4") in
    let x2 =
      add
        [ (mul [ (var ("85")); (var ("32")); (var ("75")) ]);
          (opp (var ("60"))); (opp (var ("94"))) ] in
    let x3 = var ("63") in mul [ x0; x1; x2; x3 ] = mul [ x3; x2; x1; x0 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (78)
  (try
   (let x0 = var ("59") in
    let x1 = opp (add [ (var ("58")); (var ("62")); (var ("3")) ]) in
    let x2 = var ("4") in
    let x3 =
      add
        [ (mul [ (var ("93")); (var ("57")); (var ("75")) ]); (var ("85"));
          (opp one) ] in
    mul [ x0; x1; x2; x3 ] = mul [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (79)
  (try
   (let x0 = opp (var ("4")) in
    let x1 = mul [ one; one; (opp (var ("28"))) ] in
    let x2 = var ("66") in
    let x3 =
      mul
        [ (add [ (var ("83")); (var ("56")); (var ("5")) ]);
          (opp (var ("23"))); (mul [ (var ("27")); zero; (var ("85")) ]) ] in
    mul [ x0; x1; x2; x3 ] = mul [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (80)
  (try
   (let x0 = var ("75") in
    let x1 =
      add
        [ (mul [ (var ("43")); (var ("55")); (var ("28")) ]);
          (add [ (var ("41")); (var ("10")); (var ("14")) ]); (var ("91")) ] in
    let x2 =
      mul
        [ (mul [ (var ("45")); (var ("62")); (var ("48")) ]);
          (add [ (var ("91")); (var ("15")); (var ("75")) ]);
          (add [ (var ("35")); (var ("83")); (var ("19")) ]) ] in
    let x3 = add [ (var ("35")); (var ("14")); (var ("34")) ] in
    mul [ x0; x1; x2; x3 ] = mul [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (81)
  (try
   (let x0 =
      add
        [ (add [ (var ("90")); (var ("63")); (var ("78")) ]);
          (add [ (var ("37")); zero; (var ("11")) ]);
          (add [ (var ("16")); (var ("95")); (var ("7")) ]) ] in
    let x1 = var ("9") in
    let x2 = opp (mul [ (var ("18")); one; (var ("75")) ]) in
    let x3 = opp (opp (var ("62"))) in
    mul [ x0; x1; x2; x3 ] = mul [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (82)
  (try
   (let x0 =
      mul
        [ (mul [ (var ("45")); (var ("62")); (var ("48")) ]);
          (add [ (var ("91")); (var ("15")); (var ("75")) ]);
          (add [ (var ("35")); (var ("83")); (var ("19")) ]) ] in
    let x1 =
      add
        [ (add [ (var ("90")); (var ("63")); (var ("78")) ]);
          (add [ (var ("37")); zero; (var ("11")) ]);
          (add [ (var ("16")); (var ("95")); (var ("7")) ]) ] in
    let x2 =
      mul
        [ (add [ (var ("77")); (var ("49")); one ]); (opp (var ("4")));
          (opp (var ("42"))) ] in
    let x3 = one in mul [ x0; x1; x2; x3 ] = mul [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (83)
  (try
   (let x0 = var ("9") in
    let x1 = one in
    let x2 =
      mul
        [ (add [ (var ("83")); (var ("45")); one ]);
          (add [ (var ("75")); (var ("81")); (var ("2")) ]); (var ("31")) ] in
    let x3 =
      mul
        [ (var ("87")); (opp (var ("4")));
          (mul [ (var ("94")); (var ("49")); (var ("53")) ]) ] in
    mul [ x0; x1; x2; x3 ] = mul [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (84)
  (try
   (let x0 =
      mul
        [ (mul [ (var ("45")); (var ("44")); (var ("54")) ]);
          (add [ (var ("91")); (var ("15")); (var ("75")) ]);
          (add [ zero; (var ("30")); one ]) ] in
    let x1 = var ("96") in
    let x2 = add [ zero; (var ("66")); (var ("47")) ] in
    let x3 =
      mul [ (opp (var ("24"))); (opp (var ("4"))); (opp (var ("76"))) ] in
    mul [ x0; x1; x2; x3 ] = mul [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (85)
  (try
   (let x0 = one in
    let x1 =
      mul
        [ (mul [ (var ("3")); (var ("18")); (var ("13")) ]);
          (add [ (var ("48")); one; (var ("5")) ]);
          (add [ (var ("31")); zero; (var ("13")) ]) ] in
    mul [ x0; one; x1 ] = mul [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (86)
  (try
   (let x0 = var ("41") in
    let x1 = var ("41") in mul [ x0; one; x1 ] = mul [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (87)
  (try
   (let x0 =
      add
        [ (add [ (var ("45")); (var ("0")); (var ("24")) ]); (var ("19"));
          (mul [ (var ("43")); one; (var ("3")) ]) ] in
    let x1 =
      add
        [ (var ("17")); (mul [ (var ("30")); (var ("1")); (var ("34")) ]);
          (mul [ (var ("25")); (var ("31")); (var ("18")) ]) ] in
    mul [ x0; one; x1 ] = mul [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (88)
  (try
   (let x0 = zero in
    let x1 =
      mul
        [ (mul [ (var ("3")); (var ("18")); (var ("13")) ]);
          (add [ (var ("48")); one; (var ("5")) ]);
          (add [ (var ("31")); zero; (var ("13")) ]) ] in
    mul [ x0; one; x1 ] = mul [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (89)
  (try
   (let x0 = var ("27") in
    let x1 = var ("4") in mul [ x0; one; x1 ] = mul [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (90)
  (try (let x0 = zero in mul [ one; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (91)
  (try
   (let x0 =
      add
        [ (var ("14")); (opp one); (add [ (var ("19")); zero; (var ("16")) ]) ] in
    mul [ one; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (92)
  (try
   (let x0 =
      mul
        [ (mul [ (var ("14")); (var ("14")); (var ("17")) ]);
          (add [ zero; zero; (var ("22")) ]);
          (add [ zero; (var ("19")); (var ("24")) ]) ] in
    mul [ one; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (93)
  (try (let x0 = one in mul [ one; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (94)
  (try (let x0 = var ("11") in mul [ one; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (95)
  (try
   (let x0 = opp (add [ zero; (var ("23")); one ]) in
    mul [ x0; one; one ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (96)
  (try (let x0 = var ("23") in mul [ x0; one; one ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (97)
  (try (let x0 = var ("6") in mul [ x0; one; one ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (98)
  (try
   (let x0 = opp (add [ zero; (var ("23")); one ]) in
    mul [ x0; one; one ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (99)
  (try (let x0 = var ("6") in mul [ x0; one; one ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (100)
  (try
   (let x0 = var ("65") in
    let x1 =
      mul
        [ (opp (var ("26"))); (var ("10")); (add [ one; (var ("65")); one ]) ] in
    let x2 = var ("38") in
    mul [ x0; x1; (add [ x0; x1; x2 ]); x2 ] =
    add
      [ (mul [ x0; x1; x0; x2 ]); (mul [ x0; x1; x1; x2 ]);
        (mul [ x0; x1; x2; x2 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (101)
  (try
   (let x0 =
      add
        [ (var ("34")); (add [ (var ("57")); (var ("5")); (var ("24")) ]);
          (mul [ (var ("38")); (var ("24")); (var ("10")) ]) ] in
    let x1 = opp (var ("70")) in
    let x2 =
      mul
        [ (var ("48")); (add [ zero; (var ("51")); (var ("50")) ]);
          (var ("44")) ] in
    mul [ x0; x1; (add [ x0; x1; x2 ]); x2 ] =
    add
      [ (mul [ x0; x1; x0; x2 ]); (mul [ x0; x1; x1; x2 ]);
        (mul [ x0; x1; x2; x2 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (102)
  (try
   (let x0 =
      add
        [ (var ("34")); (add [ (var ("57")); (var ("5")); (var ("24")) ]);
          (mul [ (var ("38")); (var ("24")); (var ("10")) ]) ] in
    let x1 = var ("54") in
    let x2 =
      mul
        [ (var ("48")); (add [ zero; (var ("51")); (var ("50")) ]);
          (var ("44")) ] in
    mul [ x0; x1; (add [ x0; x1; x2 ]); x2 ] =
    add
      [ (mul [ x0; x1; x0; x2 ]); (mul [ x0; x1; x1; x2 ]);
        (mul [ x0; x1; x2; x2 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (103)
  (try
   (let x0 =
      add [ (mul [ (var ("18")); one; (var ("2")) ]); zero; (var ("31")) ] in
    let x1 =
      mul
        [ (mul [ (var ("13")); (var ("43")); one ]);
          (mul [ one; (var ("56")); (var ("49")) ]); (var ("3")) ] in
    let x2 = one in
    mul [ x0; x1; (add [ x0; x1; x2 ]); x2 ] =
    add
      [ (mul [ x0; x1; x0; x2 ]); (mul [ x0; x1; x1; x2 ]);
        (mul [ x0; x1; x2; x2 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (104)
  (try
   (let x0 = opp (add [ (var ("5")); (var ("30")); (var ("55")) ]) in
    let x1 = opp (var ("59")) in
    let x2 = var ("54") in
    mul [ x0; x1; (add [ x0; x1; x2 ]); x2 ] =
    add
      [ (mul [ x0; x1; x0; x2 ]); (mul [ x0; x1; x1; x2 ]);
        (mul [ x0; x1; x2; x2 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (105)
  (try
   (let x0 =
      add
        [ (add [ zero; (var ("16")); (var ("73")) ]);
          (mul [ (var ("48")); (var ("70")); (var ("37")) ]);
          (add [ (var ("26")); (var ("40")); (var ("23")) ]) ] in
    let x1 = var ("68") in
    let x2 = opp (mul [ (var ("34")); (var ("8")); (var ("33")) ]) in
    mul [ (add [ x0; x1; x2 ]); x0 ] =
    add [ (mul [ x0; x0 ]); (mul [ x1; x0 ]); (mul [ x2; x0 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (106)
  (try
   (let x0 = opp (opp (var ("50"))) in
    let x1 =
      mul
        [ (add [ (var ("38")); (var ("11")); (var ("72")) ]); (var ("55"));
          (add [ (var ("27")); zero; (var ("43")) ]) ] in
    let x2 =
      add
        [ (mul [ (var ("10")); (var ("71")); (var ("18")) ]);
          (mul [ (var ("48")); zero; (var ("45")) ]); (opp (var ("65"))) ] in
    mul [ (add [ x0; x1; x2 ]); x0 ] =
    add [ (mul [ x0; x0 ]); (mul [ x1; x0 ]); (mul [ x2; x0 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (107)
  (try
   (let x0 = var ("1") in
    let x1 = opp (opp (var ("36"))) in
    let x2 = opp (mul [ (var ("34")); (var ("8")); (var ("33")) ]) in
    mul [ (add [ x0; x1; x2 ]); x0 ] =
    add [ (mul [ x0; x0 ]); (mul [ x1; x0 ]); (mul [ x2; x0 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (108)
  (try
   (let x0 =
      add
        [ (mul [ (var ("10")); (var ("71")); (var ("18")) ]);
          (mul [ (var ("48")); zero; (var ("45")) ]); (opp (var ("65"))) ] in
    let x1 =
      mul
        [ (add [ (var ("57")); zero; (var ("52")) ]); (var ("23"));
          (mul [ (var ("12")); (var ("0")); (var ("58")) ]) ] in
    let x2 = opp (var ("2")) in
    mul [ (add [ x0; x1; x2 ]); x0 ] =
    add [ (mul [ x0; x0 ]); (mul [ x1; x0 ]); (mul [ x2; x0 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (109)
  (try
   (let x0 =
      add
        [ (mul [ (var ("10")); (var ("71")); (var ("18")) ]);
          (mul [ (var ("48")); zero; (var ("45")) ]); (opp (var ("65"))) ] in
    let x1 = opp (var ("73")) in
    let x2 =
      add
        [ (mul [ (var ("10")); (var ("71")); (var ("18")) ]);
          (mul [ (var ("48")); zero; (var ("45")) ]); (opp (var ("65"))) ] in
    mul [ (add [ x0; x1; x2 ]); x0 ] =
    add [ (mul [ x0; x0 ]); (mul [ x1; x0 ]); (mul [ x2; x0 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (110)
  (try
   (let x0 = mul [ (var ("64")); (var ("11")); (opp (var ("54"))) ] in
    let x1 =
      mul
        [ (add [ (var ("30")); (var ("47")); zero ]); (var ("27"));
          (var ("61")) ] in
    let x2 = opp (var ("40")) in
    mul [ x0; x1; (opp x0); x2 ] = opp (mul [ x0; x1; x0; x2 ])) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (111)
  (try
   (let x0 = opp (var ("47")) in
    let x1 = opp (var ("40")) in
    let x2 = var ("57") in
    mul [ x0; x1; (opp x0); x2 ] = opp (mul [ x0; x1; x0; x2 ])) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (112)
  (try
   (let x0 =
      mul
        [ (add [ (var ("63")); (var ("10")); (var ("28")) ]); (var ("71"));
          (var ("30")) ] in
    let x1 = var ("7") in
    let x2 =
      add
        [ (opp (var ("30")));
          (mul [ (var ("49")); (var ("26")); (var ("20")) ]); (var ("68")) ] in
    mul [ x0; x1; (opp x0); x2 ] = opp (mul [ x0; x1; x0; x2 ])) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (113)
  (try
   (let x0 = opp (mul [ (var ("56")); (var ("29")); (var ("43")) ]) in
    let x1 = mul [ (var ("64")); (var ("11")); (var ("23")) ] in
    let x2 =
      mul
        [ (add [ (var ("63")); (var ("10")); (var ("28")) ]);
          (opp (var ("22"))); (var ("59")) ] in
    mul [ x0; x1; (opp x0); x2 ] = opp (mul [ x0; x1; x0; x2 ])) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (114)
  (try
   (let x0 =
      mul
        [ (add [ (var ("63")); (var ("10")); (var ("28")) ]);
          (opp (var ("22"))); (var ("59")) ] in
    let x1 = add [ (var ("49")); (opp (var ("14"))); (var ("18")) ] in
    let x2 =
      add
        [ (mul [ zero; (var ("8")); (var ("61")) ]); (var ("24"));
          (add [ (var ("2")); (var ("2")); (var ("65")) ]) ] in
    mul [ x0; x1; (opp x0); x2 ] = opp (mul [ x0; x1; x0; x2 ])) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (115)
  (try
   (let x0 =
      add
        [ (mul [ (var ("7")); one; (var ("2")) ]); (opp (var ("20")));
          (var ("15")) ] in
    mul [ (opp x0); x0 ] = opp (mul [ x0; x0 ])) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (116)
  (try (let x0 = var ("2") in mul [ (opp x0); x0 ] = opp (mul [ x0; x0 ]))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (117)
  (try
   (let x0 = opp (mul [ (var ("21")); (var ("0")); zero ]) in
    mul [ (opp x0); x0 ] = opp (mul [ x0; x0 ])) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (118)
  (try
   (let x0 =
      mul
        [ (opp one); (add [ (var ("22")); (var ("20")); (var ("19")) ]);
          (var ("5")) ] in
    mul [ (opp x0); x0 ] = opp (mul [ x0; x0 ])) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (119)
  (try (let x0 = var ("2") in mul [ (opp x0); x0 ] = opp (mul [ x0; x0 ]))
   with
   | Failure "Division by Absorbent" -> true)
;;

