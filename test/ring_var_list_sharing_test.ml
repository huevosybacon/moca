open Ring_var_list_sharing
;;

open Gentest
;;

testing ("Ring_var_list_sharing (automatic) - seed: 1053819014")
;;

testi
  (0)
  (try
   (let x0 = mul [ one; (var ("31")); (var ("9")) ] in
    let x1 = var ("36") in
    let x2 = one in add [ (add [ x0; x1 ]); x2 ] = add [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (1)
  (try
   (let x0 = add [ (var ("62")); (var ("22")); (var ("4")) ] in
    let x1 = opp (var ("61")) in
    let x2 = mul [ (var ("14")); (var ("31")); zero ] in
    add [ (add [ x0; x1 ]); x2 ] = add [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (2)
  (try
   (let x0 = var ("40") in
    let x1 = var ("40") in
    let x2 = var ("40") in add [ (add [ x0; x1 ]); x2 ] = add [ x0; x1; x2 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (3)
  (try
   (let x0 = add [ (var ("35")); (var ("14")); one ] in
    let x1 = one in
    let x2 = opp (var ("13")) in
    add [ (add [ x0; x1 ]); x2 ] = add [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (4)
  (try
   (let x0 = mul [ (var ("49")); (var ("61")); (var ("9")) ] in
    let x1 = mul [ (var ("28")); (var ("18")); (var ("30")) ] in
    let x2 = mul [ one; (var ("18")); (var ("37")) ] in
    add [ (add [ x0; x1 ]); x2 ] = add [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (5)
  (try
   (let x0 = opp (var ("26")) in
    let x1 = add [ (var ("60")); (var ("77")); (var ("52")) ] in
    let x2 = opp (var ("7")) in
    let x3 = var ("113") in
    let x4 = add [ (var ("60")); (var ("77")); (var ("110")) ] in
    add [ x0; (add [ x1; x2 ]); (add [ x3; x4 ]) ] =
    add [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (6)
  (try
   (let x0 = opp (var ("7")) in
    let x1 = add [ (var ("31")); (var ("42")); (var ("45")) ] in
    let x2 = add [ (var ("21")); (var ("103")); (var ("45")) ] in
    let x3 = mul [ (var ("31")); (var ("90")); one ] in
    let x4 = add [ (var ("60")); (var ("77")); (var ("52")) ] in
    add [ x0; (add [ x1; x2 ]); (add [ x3; x4 ]) ] =
    add [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (7)
  (try
   (let x0 = opp (var ("32")) in
    let x1 = mul [ (var ("91")); (var ("89")); (var ("100")) ] in
    let x2 = mul [ (var ("59")); (var ("78")); (var ("93")) ] in
    let x3 = var ("86") in
    let x4 = var ("86") in
    add [ x0; (add [ x1; x2 ]); (add [ x3; x4 ]) ] =
    add [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (8)
  (try
   (let x0 = opp (var ("7")) in
    let x1 = add [ (var ("31")); (var ("42")); (var ("76")) ] in
    let x2 = opp (var ("26")) in
    let x3 = add [ (var ("95")); (var ("103")); (var ("52")) ] in
    let x4 = opp (var ("7")) in
    add [ x0; (add [ x1; x2 ]); (add [ x3; x4 ]) ] =
    add [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (9)
  (try
   (let x0 = mul [ (var ("31")); (var ("78")); (var ("100")) ] in
    let x1 = add [ (var ("89")); (var ("103")); (var ("52")) ] in
    let x2 = add [ (var ("114")); (var ("103")); (var ("110")) ] in
    let x3 = add [ (var ("114")); (var ("103")); (var ("110")) ] in
    let x4 = var ("83") in
    add [ x0; (add [ x1; x2 ]); (add [ x3; x4 ]) ] =
    add [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (10)
  (try
   (let x0 = mul [ (var ("54")); (var ("35")); (var ("84")) ] in
    let x1 = var ("94") in
    let x2 = add [ (var ("88")); (var ("44")); (var ("15")) ] in
    let x3 = opp (var ("90")) in
    add [ (add [ x0; x1; x2 ]); x3 ] = add [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (11)
  (try
   (let x0 = add [ (var ("88")); (var ("48")); (var ("15")) ] in
    let x1 = mul [ (var ("54")); (var ("7")); zero ] in
    let x2 = var ("7") in
    let x3 = var ("80") in
    add [ (add [ x0; x1; x2 ]); x3 ] = add [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (12)
  (try
   (let x0 = add [ (var ("19")); (var ("48")); (var ("88")) ] in
    let x1 = mul [ (var ("54")); (var ("35")); (var ("84")) ] in
    let x2 = var ("7") in
    let x3 = var ("58") in
    add [ (add [ x0; x1; x2 ]); x3 ] = add [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (13)
  (try
   (let x0 = opp (var ("0")) in
    let x1 = opp (var ("90")) in
    let x2 = mul [ (var ("39")); (var ("25")); zero ] in
    let x3 = opp (var ("0")) in
    add [ (add [ x0; x1; x2 ]); x3 ] = add [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (14)
  (try
   (let x0 = var ("94") in
    let x1 = add [ (var ("58")); (var ("24")); (var ("9")) ] in
    let x2 = opp (var ("93")) in
    let x3 = opp (var ("90")) in
    add [ (add [ x0; x1; x2 ]); x3 ] = add [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (15)
  (try
   (let x0 = mul [ (var ("94")); (var ("13")); (var ("69")) ] in
    let x1 = var ("63") in
    let x2 = mul [ (var ("94")); (var ("0")); (var ("64")) ] in
    let x3 = mul [ (var ("33")); (var ("30")); (var ("64")) ] in
    add [ x0; x1; x2; x3 ] = add [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (16)
  (try
   (let x0 = opp (var ("62")) in
    let x1 = add [ (var ("9")); (var ("77")); (var ("7")) ] in
    let x2 = add [ (var ("85")); zero; (var ("1")) ] in
    let x3 = opp (var ("59")) in
    add [ x0; x1; x2; x3 ] = add [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (17)
  (try
   (let x0 = add [ (var ("9")); (var ("77")); (var ("7")) ] in
    let x1 = mul [ (var ("33")); (var ("30")); (var ("64")) ] in
    let x2 = mul [ (var ("33")); (var ("30")); (var ("16")) ] in
    let x3 = opp (var ("89")) in
    add [ x0; x1; x2; x3 ] = add [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (18)
  (try
   (let x0 = opp (var ("60")) in
    let x1 = opp (var ("60")) in
    let x2 = mul [ (var ("19")); (var ("7")); (var ("64")) ] in
    let x3 = mul [ (var ("19")); (var ("72")); (var ("92")) ] in
    add [ x0; x1; x2; x3 ] = add [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (19)
  (try
   (let x0 = opp (var ("89")) in
    let x1 = opp (var ("61")) in
    let x2 = mul [ (var ("94")); (var ("7")); (var ("43")) ] in
    let x3 = mul [ (var ("19")); (var ("7")); (var ("64")) ] in
    add [ x0; x1; x2; x3 ] = add [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (20)
  (try
   (let x0 = var ("53") in
    let x1 = var ("33") in
    let x2 = add [ (var ("6")); (var ("68")); zero ] in
    let x3 = var ("3") in add [ x0; x1; x2; x3 ] = add [ x3; x1; x2; x0 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (21)
  (try
   (let x0 = opp (var ("33")) in
    let x1 = mul [ (var ("88")); (var ("77")); (var ("71")) ] in
    let x2 = opp (var ("33")) in
    let x3 = add [ (var ("65")); zero; (var ("94")) ] in
    add [ x0; x1; x2; x3 ] = add [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (22)
  (try
   (let x0 = mul [ (var ("30")); (var ("37")); (var ("0")) ] in
    let x1 = var ("65") in
    let x2 = var ("65") in
    let x3 = opp (var ("84")) in
    add [ x0; x1; x2; x3 ] = add [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (23)
  (try
   (let x0 = add [ (var ("65")); zero; (var ("94")) ] in
    let x1 = opp (var ("10")) in
    let x2 = opp (var ("20")) in
    let x3 = mul [ (var ("59")); (var ("90")); (var ("33")) ] in
    add [ x0; x1; x2; x3 ] = add [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (24)
  (try
   (let x0 = mul [ (var ("59")); (var ("90")); (var ("33")) ] in
    let x1 = add [ (var ("36")); (var ("12")); zero ] in
    let x2 = add [ (var ("6")); (var ("12")); (var ("71")) ] in
    let x3 = var ("8") in add [ x0; x1; x2; x3 ] = add [ x3; x1; x2; x0 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (25)
  (try
   (let x0 = var ("84") in
    let x1 = mul [ (var ("82")); one; (var ("2")) ] in
    let x2 = var ("69") in
    let x3 = mul [ (var ("83")); (var ("56")); (var ("71")) ] in
    add [ x0; x1; x2; x3 ] = add [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (26)
  (try
   (let x0 = mul [ (var ("84")); (var ("34")); (var ("66")) ] in
    let x1 = opp (var ("34")) in
    let x2 = add [ (var ("27")); (var ("96")); (var ("90")) ] in
    let x3 = var ("84") in add [ x0; x1; x2; x3 ] = add [ x3; x2; x1; x0 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (27)
  (try
   (let x0 = opp (var ("34")) in
    let x1 = add [ (var ("27")); (var ("96")); (var ("90")) ] in
    let x2 = mul [ (var ("82")); one; (var ("2")) ] in
    let x3 = add [ (var ("27")); (var ("96")); (var ("90")) ] in
    add [ x0; x1; x2; x3 ] = add [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (28)
  (try
   (let x0 = add [ (var ("37")); (var ("96")); (var ("90")) ] in
    let x1 = var ("31") in
    let x2 = one in
    let x3 = mul [ (var ("82")); (var ("54")); (var ("71")) ] in
    add [ x0; x1; x2; x3 ] = add [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (29)
  (try
   (let x0 = var ("16") in
    let x1 = add [ (var ("27")); (var ("96")); (var ("90")) ] in
    let x2 = opp (var ("5")) in
    let x3 = add [ (var ("80")); (var ("6")); (var ("90")) ] in
    add [ x0; x1; x2; x3 ] = add [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (30)
  (try
   (let x0 = mul [ (var ("38")); (var ("50")); (var ("85")) ] in
    let x1 = opp (var ("74")) in
    let x2 = add [ (var ("22")); (var ("2")); (var ("53")) ] in
    let x3 = add [ (var ("44")); (var ("56")); zero ] in
    add [ x0; x1; x2; x3 ] = add [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (31)
  (try
   (let x0 = opp (var ("74")) in
    let x1 = mul [ (var ("85")); (var ("50")); (var ("36")) ] in
    let x2 = add [ (var ("84")); (var ("81")); (var ("96")) ] in
    let x3 = var ("55") in add [ x0; x1; x2; x3 ] = add [ x2; x1; x0; x3 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (32)
  (try
   (let x0 = add [ (var ("44")); (var ("56")); zero ] in
    let x1 = mul [ one; (var ("50")); (var ("60")) ] in
    let x2 = mul [ (var ("45")); (var ("12")); (var ("70")) ] in
    let x3 = add [ (var ("22")); (var ("81")); (var ("96")) ] in
    add [ x0; x1; x2; x3 ] = add [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (33)
  (try
   (let x0 = var ("13") in
    let x1 = opp (var ("36")) in
    let x2 = mul [ (var ("45")); (var ("58")); (var ("54")) ] in
    let x3 = var ("19") in add [ x0; x1; x2; x3 ] = add [ x2; x1; x0; x3 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (34)
  (try
   (let x0 = mul [ (var ("64")); (var ("79")); (var ("36")) ] in
    let x1 = zero in
    let x2 = opp (var ("36")) in
    let x3 = add [ (var ("84")); (var ("54")); (var ("92")) ] in
    add [ x0; x1; x2; x3 ] = add [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (35)
  (try
   (let x0 = opp (var ("28")) in
    let x1 = opp zero in add [ x0; zero; x1 ] = add [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (36)
  (try
   (let x0 = opp (var ("7")) in
    let x1 = opp zero in add [ x0; zero; x1 ] = add [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (37)
  (try
   (let x0 = one in
    let x1 = mul [ (var ("30")); (var ("4")); (var ("5")) ] in
    add [ x0; zero; x1 ] = add [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (38)
  (try
   (let x0 = mul [ (var ("5")); (var ("12")); (var ("7")) ] in
    let x1 = mul [ (var ("30")); (var ("4")); (var ("5")) ] in
    add [ x0; zero; x1 ] = add [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (39)
  (try
   (let x0 = mul [ (var ("5")); (var ("44")); (var ("37")) ] in
    let x1 = mul [ (var ("43")); one; (var ("5")) ] in
    add [ x0; zero; x1 ] = add [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (40)
  (try (let x0 = opp one in add [ zero; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (41)
  (try (let x0 = var ("12") in add [ zero; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (42)
  (try (let x0 = var ("14") in add [ zero; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (43)
  (try (let x0 = add [ one; (var ("2")); zero ] in add [ zero; x0 ] = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (44)
  (try
   (let x0 = mul [ (var ("22")); (var ("9")); one ] in add [ zero; x0 ] = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (45)
  (try
   (let x0 = add [ (var ("2")); (var ("19")); (var ("18")) ] in
    add [ x0; zero; zero ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (46)
  (try (let x0 = opp (var ("12")) in add [ x0; zero; zero ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (47)
  (try (let x0 = zero in add [ x0; zero; zero ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (48)
  (try
   (let x0 = add [ one; zero; (var ("18")) ] in add [ x0; zero; zero ] = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (49)
  (try
   (let x0 = mul [ (var ("1")); (var ("10")); zero ] in
    add [ x0; zero; zero ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (50)
  (try
   (let x0 = add [ (var ("10")); (var ("26")); (var ("7")) ] in
    let x1 = add [ (var ("10")); (var ("26")); (var ("7")) ] in
    let x2 = var ("23") in mul [ (mul [ x0; x1 ]); x2 ] = mul [ x0; x1; x2 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (51)
  (try
   (let x0 = mul [ (var ("14")); (var ("15")); (var ("3")) ] in
    let x1 = mul [ (var ("43")); (var ("15")); zero ] in
    let x2 = add [ (var ("46")); (var ("72")); (var ("7")) ] in
    mul [ (mul [ x0; x1 ]); x2 ] = mul [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (52)
  (try
   (let x0 = mul [ (var ("14")); (var ("15")); (var ("3")) ] in
    let x1 = opp (var ("43")) in
    let x2 = add [ (var ("10")); (var ("26")); (var ("7")) ] in
    mul [ (mul [ x0; x1 ]); x2 ] = mul [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (53)
  (try
   (let x0 = opp zero in
    let x1 = var ("54") in
    let x2 = add [ (var ("46")); (var ("72")); (var ("7")) ] in
    mul [ (mul [ x0; x1 ]); x2 ] = mul [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (54)
  (try
   (let x0 = opp (var ("17")) in
    let x1 = mul [ (var ("43")); (var ("15")); (var ("25")) ] in
    let x2 = add [ (var ("50")); (var ("67")); (var ("7")) ] in
    mul [ (mul [ x0; x1 ]); x2 ] = mul [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (55)
  (try
   (let x0 = var ("82") in
    let x1 = add [ (var ("107")); (var ("57")); (var ("63")) ] in
    let x2 = opp one in
    let x3 = var ("87") in
    let x4 = opp (var ("13")) in
    mul [ x0; (mul [ x1; x2 ]); (mul [ x3; x4 ]) ] =
    mul [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (56)
  (try
   (let x0 = opp (var ("120")) in
    let x1 = add [ (var ("12")); (var ("5")); (var ("63")) ] in
    let x2 = mul [ (var ("112")); (var ("70")); (var ("39")) ] in
    let x3 = opp (var ("116")) in
    let x4 = opp (var ("116")) in
    mul [ x0; (mul [ x1; x2 ]); (mul [ x3; x4 ]) ] =
    mul [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (57)
  (try
   (let x0 = add [ (var ("107")); (var ("101")); (var ("54")) ] in
    let x1 = var ("67") in
    let x2 = add [ (var ("107")); (var ("5")); (var ("48")) ] in
    let x3 = add [ (var ("7")); (var ("57")); (var ("65")) ] in
    let x4 = var ("83") in
    mul [ x0; (mul [ x1; x2 ]); (mul [ x3; x4 ]) ] =
    mul [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (58)
  (try
   (let x0 = add [ (var ("107")); (var ("101")); (var ("54")) ] in
    let x1 = var ("19") in
    let x2 = mul [ (var ("47")); one; (var ("52")) ] in
    let x3 = var ("82") in
    let x4 = var ("82") in
    mul [ x0; (mul [ x1; x2 ]); (mul [ x3; x4 ]) ] =
    mul [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (59)
  (try
   (let x0 = var ("10") in
    let x1 = mul [ (var ("89")); (var ("33")); (var ("39")) ] in
    let x2 = mul [ (var ("47")); one; (var ("52")) ] in
    let x3 = add [ (var ("12")); (var ("5")); (var ("63")) ] in
    let x4 = var ("82") in
    mul [ x0; (mul [ x1; x2 ]); (mul [ x3; x4 ]) ] =
    mul [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (60)
  (try
   (let x0 = mul [ (var ("81")); (var ("64")); (var ("60")) ] in
    let x1 = opp (var ("43")) in
    let x2 = add [ (var ("0")); (var ("79")); (var ("34")) ] in
    let x3 = add [ (var ("56")); (var ("64")); (var ("97")) ] in
    mul [ (mul [ x0; x1; x2 ]); x3 ] = mul [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (61)
  (try
   (let x0 = var ("27") in
    let x1 = mul [ (var ("81")); (var ("90")); (var ("91")) ] in
    let x2 = mul [ (var ("81")); one; (var ("45")) ] in
    let x3 = add [ (var ("53")); (var ("64")); (var ("57")) ] in
    mul [ (mul [ x0; x1; x2 ]); x3 ] = mul [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (62)
  (try
   (let x0 = opp one in
    let x1 = var ("45") in
    let x2 = opp (var ("91")) in
    let x3 = mul [ (var ("52")); (var ("64")); (var ("71")) ] in
    mul [ (mul [ x0; x1; x2 ]); x3 ] = mul [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (63)
  (try
   (let x0 = add [ (var ("80")); (var ("29")); (var ("34")) ] in
    let x1 = mul [ (var ("81")); (var ("90")); (var ("91")) ] in
    let x2 = add [ (var ("90")); (var ("91")); (var ("34")) ] in
    let x3 = var ("34") in
    mul [ (mul [ x0; x1; x2 ]); x3 ] = mul [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (64)
  (try
   (let x0 = add [ (var ("0")); (var ("12")); (var ("34")) ] in
    let x1 = mul [ (var ("83")); (var ("64")); (var ("71")) ] in
    let x2 = mul [ (var ("28")); (var ("60")); (var ("15")) ] in
    let x3 = var ("45") in
    mul [ (mul [ x0; x1; x2 ]); x3 ] = mul [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (65)
  (try
   (let x0 = var ("86") in
    let x1 = add [ (var ("9")); (var ("33")); (var ("79")) ] in
    let x2 = var ("75") in
    let x3 = var ("27") in mul [ x0; x1; x2; x3 ] = mul [ x1; x0; x3; x2 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (66)
  (try
   (let x0 = opp (var ("76")) in
    let x1 = opp (var ("34")) in
    let x2 = add [ (var ("9")); (var ("9")); (var ("79")) ] in
    let x3 = add [ (var ("9")); (var ("33")); (var ("79")) ] in
    mul [ x0; x1; x2; x3 ] = mul [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (67)
  (try
   (let x0 = add [ one; (var ("56")); (var ("79")) ] in
    let x1 = var ("58") in
    let x2 = var ("16") in
    let x3 = opp (var ("93")) in
    mul [ x0; x1; x2; x3 ] = mul [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (68)
  (try
   (let x0 = opp (var ("60")) in
    let x1 = opp (var ("93")) in
    let x2 = opp (var ("76")) in
    let x3 = var ("43") in mul [ x0; x1; x2; x3 ] = mul [ x1; x0; x3; x2 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (69)
  (try
   (let x0 = mul [ (var ("22")); (var ("75")); (var ("29")) ] in
    let x1 = add [ (var ("2")); (var ("47")); (var ("62")) ] in
    let x2 = var ("19") in
    let x3 = opp (var ("94")) in
    mul [ x0; x1; x2; x3 ] = mul [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (70)
  (try
   (let x0 = var ("34") in
    let x1 = opp (var ("15")) in
    let x2 = opp (var ("71")) in
    let x3 = opp (var ("63")) in
    mul [ x0; x1; x2; x3 ] = mul [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (71)
  (try
   (let x0 = mul [ (var ("21")); (var ("12")); (var ("17")) ] in
    let x1 = add [ (var ("59")); (var ("5")); one ] in
    let x2 = add [ (var ("57")); (var ("99")); (var ("60")) ] in
    let x3 = add [ (var ("41")); (var ("55")); one ] in
    mul [ x0; x1; x2; x3 ] = mul [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (72)
  (try
   (let x0 = var ("66") in
    let x1 = add [ (var ("50")); (var ("99")); (var ("99")) ] in
    let x2 = add [ (var ("50")); (var ("99")); (var ("99")) ] in
    let x3 = add [ (var ("16")); (var ("14")); (var ("57")) ] in
    mul [ x0; x1; x2; x3 ] = mul [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (73)
  (try
   (let x0 = var ("15") in
    let x1 = opp (var ("15")) in
    let x2 = add [ (var ("16")); (var ("14")); (var ("57")) ] in
    let x3 = mul [ (var ("21")); (var ("12")); zero ] in
    mul [ x0; x1; x2; x3 ] = mul [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (74)
  (try
   (let x0 = var ("33") in
    let x1 = opp (var ("63")) in
    let x2 = add [ (var ("50")); (var ("99")); (var ("99")) ] in
    let x3 = var ("34") in mul [ x0; x1; x2; x3 ] = mul [ x3; x1; x2; x0 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (75)
  (try
   (let x0 = opp (var ("57")) in
    let x1 = zero in
    let x2 = add [ (var ("13")); (var ("73")); (var ("23")) ] in
    let x3 = add [ (var ("55")); (var ("34")); one ] in
    mul [ x0; x1; x2; x3 ] = mul [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (76)
  (try
   (let x0 = mul [ (var ("62")); (var ("38")); (var ("76")) ] in
    let x1 = opp (var ("84")) in
    let x2 = mul [ (var ("62")); (var ("47")); (var ("72")) ] in
    let x3 = add [ (var ("25")); (var ("93")); (var ("85")) ] in
    mul [ x0; x1; x2; x3 ] = mul [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (77)
  (try
   (let x0 = opp (var ("16")) in
    let x1 = var ("60") in
    let x2 = var ("51") in
    let x3 = mul [ (var ("4")); one; (var ("4")) ] in
    mul [ x0; x1; x2; x3 ] = mul [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (78)
  (try
   (let x0 = add [ (var ("24")); (var ("33")); (var ("85")) ] in
    let x1 = opp (var ("38")) in
    let x2 = var ("64") in
    let x3 = var ("64") in mul [ x0; x1; x2; x3 ] = mul [ x3; x2; x1; x0 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (79)
  (try
   (let x0 = add [ (var ("55")); (var ("34")); (var ("9")) ] in
    let x1 = add [ (var ("73")); (var ("88")); (var ("9")) ] in
    let x2 = var ("34") in
    let x3 = mul [ (var ("9")); (var ("47")); one ] in
    mul [ x0; x1; x2; x3 ] = mul [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (80)
  (try
   (let x0 = add [ (var ("95")); (var ("34")); (var ("44")) ] in
    let x1 = var ("23") in
    let x2 = add [ (var ("68")); (var ("19")); (var ("48")) ] in
    let x3 = var ("56") in mul [ x0; x1; x2; x3 ] = mul [ x2; x1; x0; x3 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (81)
  (try
   (let x0 = mul [ (var ("21")); (var ("93")); (var ("82")) ] in
    let x1 = mul [ zero; (var ("81")); (var ("82")) ] in
    let x2 = opp (var ("2")) in
    let x3 = zero in mul [ x0; x1; x2; x3 ] = mul [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (82)
  (try
   (let x0 = mul [ (var ("84")); (var ("93")); (var ("46")) ] in
    let x1 = opp (var ("51")) in
    let x2 = var ("79") in
    let x3 = opp (var ("18")) in
    mul [ x0; x1; x2; x3 ] = mul [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (83)
  (try
   (let x0 = mul [ (var ("84")); (var ("51")); (var ("34")) ] in
    let x1 = opp (var ("2")) in
    let x2 = mul [ (var ("84")); (var ("93")); (var ("34")) ] in
    let x3 = mul [ (var ("84")); (var ("81")); (var ("16")) ] in
    mul [ x0; x1; x2; x3 ] = mul [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (84)
  (try
   (let x0 = mul [ (var ("84")); (var ("57")); (var ("32")) ] in
    let x1 = add [ (var ("56")); (var ("19")); (var ("33")) ] in
    let x2 = add [ (var ("56")); (var ("19")); (var ("33")) ] in
    let x3 = mul [ (var ("84")); (var ("51")); (var ("34")) ] in
    mul [ x0; x1; x2; x3 ] = mul [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (85)
  (try
   (let x0 = add [ (var ("23")); (var ("35")); (var ("13")) ] in
    let x1 = add [ (var ("23")); (var ("43")); (var ("45")) ] in
    mul [ x0; one; x1 ] = mul [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (86)
  (try
   (let x0 = opp (var ("49")) in
    let x1 = opp (var ("26")) in mul [ x0; one; x1 ] = mul [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (87)
  (try
   (let x0 = add [ (var ("23")); (var ("14")); (var ("26")) ] in
    let x1 = var ("3") in mul [ x0; one; x1 ] = mul [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (88)
  (try
   (let x0 = var ("43") in
    let x1 = add [ one; (var ("43")); one ] in
    mul [ x0; one; x1 ] = mul [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (89)
  (try
   (let x0 = add [ zero; (var ("35")); (var ("45")) ] in
    let x1 = mul [ (var ("3")); (var ("19")); (var ("38")) ] in
    mul [ x0; one; x1 ] = mul [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (90)
  (try
   (let x0 = mul [ (var ("1")); (var ("5")); (var ("12")) ] in
    mul [ one; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (91)
  (try (let x0 = var ("10") in mul [ one; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (92)
  (try (let x0 = var ("15") in mul [ one; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (93)
  (try (let x0 = var ("22") in mul [ one; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (94)
  (try (let x0 = opp (var ("24")) in mul [ one; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (95)
  (try (let x0 = one in mul [ x0; one; one ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (96)
  (try (let x0 = zero in mul [ x0; one; one ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (97)
  (try
   (let x0 = mul [ (var ("5")); zero; (var ("4")) ] in
    mul [ x0; one; one ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (98)
  (try (let x0 = mul [ one; zero; (var ("2")) ] in mul [ x0; one; one ] = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (99)
  (try
   (let x0 = mul [ (var ("5")); zero; (var ("4")) ] in
    mul [ x0; one; one ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (100)
  (try
   (let x0 = mul [ (var ("49")); one; (var ("66")) ] in
    let x1 = opp (var ("43")) in
    let x2 = opp (var ("15")) in
    mul [ x0; x1; (add [ x0; x1; x2 ]); x2 ] =
    add
      [ (mul [ x0; x1; x0; x2 ]); (mul [ x0; x1; x1; x2 ]);
        (mul [ x0; x1; x2; x2 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (101)
  (try
   (let x0 = opp (var ("60")) in
    let x1 = add [ (var ("27")); (var ("68")); (var ("16")) ] in
    let x2 = var ("55") in
    mul [ x0; x1; (add [ x0; x1; x2 ]); x2 ] =
    add
      [ (mul [ x0; x1; x0; x2 ]); (mul [ x0; x1; x1; x2 ]);
        (mul [ x0; x1; x2; x2 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (102)
  (try
   (let x0 = opp (var ("60")) in
    let x1 = opp (var ("15")) in
    let x2 = mul [ (var ("5")); (var ("62")); (var ("50")) ] in
    mul [ x0; x1; (add [ x0; x1; x2 ]); x2 ] =
    add
      [ (mul [ x0; x1; x0; x2 ]); (mul [ x0; x1; x1; x2 ]);
        (mul [ x0; x1; x2; x2 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (103)
  (try
   (let x0 = add [ (var ("9")); zero; (var ("29")) ] in
    let x1 = var ("33") in
    let x2 = var ("33") in
    mul [ x0; x1; (add [ x0; x1; x2 ]); x2 ] =
    add
      [ (mul [ x0; x1; x0; x2 ]); (mul [ x0; x1; x1; x2 ]);
        (mul [ x0; x1; x2; x2 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (104)
  (try
   (let x0 = var ("13") in
    let x1 = add [ one; (var ("68")); (var ("18")) ] in
    let x2 = var ("33") in
    mul [ x0; x1; (add [ x0; x1; x2 ]); x2 ] =
    add
      [ (mul [ x0; x1; x0; x2 ]); (mul [ x0; x1; x1; x2 ]);
        (mul [ x0; x1; x2; x2 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (105)
  (try
   (let x0 = zero in
    let x1 = add [ (var ("29")); (var ("69")); (var ("54")) ] in
    let x2 = opp one in
    mul [ (add [ x0; x1; x2 ]); x0 ] =
    add [ (mul [ x0; x0 ]); (mul [ x1; x0 ]); (mul [ x2; x0 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (106)
  (try
   (let x0 = var ("18") in
    let x1 = add [ (var ("33")); (var ("10")); (var ("42")) ] in
    let x2 = mul [ (var ("41")); (var ("2")); (var ("7")) ] in
    mul [ (add [ x0; x1; x2 ]); x0 ] =
    add [ (mul [ x0; x0 ]); (mul [ x1; x0 ]); (mul [ x2; x0 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (107)
  (try
   (let x0 = opp one in
    let x1 = opp (var ("46")) in
    let x2 = add [ one; (var ("1")); (var ("42")) ] in
    mul [ (add [ x0; x1; x2 ]); x0 ] =
    add [ (mul [ x0; x0 ]); (mul [ x1; x0 ]); (mul [ x2; x0 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (108)
  (try
   (let x0 = mul [ (var ("57")); (var ("2")); one ] in
    let x1 = add [ (var ("2")); (var ("7")); (var ("68")) ] in
    let x2 = var ("18") in
    mul [ (add [ x0; x1; x2 ]); x0 ] =
    add [ (mul [ x0; x0 ]); (mul [ x1; x0 ]); (mul [ x2; x0 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (109)
  (try
   (let x0 = mul [ (var ("57")); (var ("74")); (var ("44")) ] in
    let x1 = add [ (var ("29")); (var ("42")); (var ("54")) ] in
    let x2 = mul [ (var ("41")); (var ("2")); (var ("7")) ] in
    mul [ (add [ x0; x1; x2 ]); x0 ] =
    add [ (mul [ x0; x0 ]); (mul [ x1; x0 ]); (mul [ x2; x0 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (110)
  (try
   (let x0 = opp (var ("32")) in
    let x1 = mul [ zero; (var ("0")); one ] in
    let x2 = opp (var ("54")) in
    mul [ x0; x1; (opp x0); x2 ] = opp (mul [ x0; x1; x0; x2 ])) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (111)
  (try
   (let x0 = mul [ (var ("19")); zero; (var ("45")) ] in
    let x1 = var ("45") in
    let x2 = add [ (var ("1")); (var ("69")); (var ("56")) ] in
    mul [ x0; x1; (opp x0); x2 ] = opp (mul [ x0; x1; x0; x2 ])) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (112)
  (try
   (let x0 = mul [ zero; (var ("57")); (var ("45")) ] in
    let x1 = opp (var ("54")) in
    let x2 = add [ (var ("16")); one; (var ("17")) ] in
    mul [ x0; x1; (opp x0); x2 ] = opp (mul [ x0; x1; x0; x2 ])) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (113)
  (try
   (let x0 = opp (var ("54")) in
    let x1 = opp (var ("54")) in
    let x2 = mul [ (var ("22")); (var ("42")); one ] in
    mul [ x0; x1; (opp x0); x2 ] = opp (mul [ x0; x1; x0; x2 ])) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (114)
  (try
   (let x0 = add [ (var ("16")); one; (var ("17")) ] in
    let x1 = add [ (var ("1")); (var ("69")); (var ("56")) ] in
    let x2 = add [ (var ("1")); (var ("69")); (var ("56")) ] in
    mul [ x0; x1; (opp x0); x2 ] = opp (mul [ x0; x1; x0; x2 ])) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (115)
  (try
   (let x0 = add [ (var ("20")); zero; (var ("1")) ] in
    mul [ (opp x0); x0 ] = opp (mul [ x0; x0 ])) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (116)
  (try
   (let x0 = add [ (var ("19")); (var ("13")); zero ] in
    mul [ (opp x0); x0 ] = opp (mul [ x0; x0 ])) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (117)
  (try
   (let x0 = mul [ (var ("15")); zero; (var ("9")) ] in
    mul [ (opp x0); x0 ] = opp (mul [ x0; x0 ])) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (118)
  (try
   (let x0 = opp (var ("20")) in mul [ (opp x0); x0 ] = opp (mul [ x0; x0 ]))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (119)
  (try
   (let x0 = add [ (var ("20")); zero; (var ("1")) ] in
    mul [ (opp x0); x0 ] = opp (mul [ x0; x0 ])) with
   | Failure "Division by Absorbent" -> true)
;;

