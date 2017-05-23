open Ring_list_sharing
;;

open Gentest
;;

testing ("Ring_list_sharing (automatic) - seed: 547753124")
;;

testi
  (0)
  (try
   (let x0 = add [ (gen (2)); (gen (65)); (gen (65)) ] in
    let x1 = gen (66) in
    let x2 = gen (11) in add [ (add [ x0; x1 ]); x2 ] = add [ x0; x1; x2 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (1)
  (try
   (let x0 = add [ (gen (44)); (gen (36)); (gen (9)) ] in
    let x1 = opp (gen (34)) in
    let x2 = gen (67) in add [ (add [ x0; x1 ]); x2 ] = add [ x0; x1; x2 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (2)
  (try
   (let x0 = gen (66) in
    let x1 = mul [ one; (gen (32)); (gen (20)) ] in
    let x2 = zero in add [ (add [ x0; x1 ]); x2 ] = add [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (3)
  (try
   (let x0 = mul [ (gen (39)); (gen (8)); (gen (24)) ] in
    let x1 = gen (56) in
    let x2 = one in add [ (add [ x0; x1 ]); x2 ] = add [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (4)
  (try
   (let x0 = opp (gen (18)) in
    let x1 = opp (gen (34)) in
    let x2 = mul [ one; (gen (32)); one ] in
    add [ (add [ x0; x1 ]); x2 ] = add [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (5)
  (try
   (let x0 = add [ (gen (113)); (gen (48)); (gen (4)) ] in
    let x1 = add [ (gen (108)); (gen (48)); (gen (104)) ] in
    let x2 = gen (12) in
    let x3 = mul [ one; (gen (5)); (gen (68)) ] in
    let x4 = gen (33) in
    add [ x0; (add [ x1; x2 ]); (add [ x3; x4 ]) ] =
    add [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (6)
  (try
   (let x0 = mul [ (gen (94)); (gen (104)); (gen (29)) ] in
    let x1 = opp (gen (72)) in
    let x2 = opp (gen (104)) in
    let x3 = mul [ (gen (62)); (gen (104)); (gen (59)) ] in
    let x4 = opp (gen (104)) in
    add [ x0; (add [ x1; x2 ]); (add [ x3; x4 ]) ] =
    add [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (7)
  (try
   (let x0 = one in
    let x1 = mul [ (gen (12)); (gen (59)); zero ] in
    let x2 = add [ (gen (75)); (gen (48)); (gen (44)) ] in
    let x3 = gen (49) in
    let x4 = opp (gen (12)) in
    add [ x0; (add [ x1; x2 ]); (add [ x3; x4 ]) ] =
    add [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (8)
  (try
   (let x0 = mul [ one; (gen (5)); (gen (68)) ] in
    let x1 = add [ (gen (11)); (gen (96)); (gen (77)) ] in
    let x2 = opp (gen (104)) in
    let x3 = add [ (gen (11)); (gen (72)); (gen (110)) ] in
    let x4 = opp (gen (12)) in
    add [ x0; (add [ x1; x2 ]); (add [ x3; x4 ]) ] =
    add [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (9)
  (try
   (let x0 = opp (gen (38)) in
    let x1 = mul [ (gen (46)); (gen (44)); (gen (46)) ] in
    let x2 = opp (gen (104)) in
    let x3 = add [ (gen (5)); (gen (74)); (gen (77)) ] in
    let x4 = add [ (gen (5)); (gen (96)); (gen (56)) ] in
    add [ x0; (add [ x1; x2 ]); (add [ x3; x4 ]) ] =
    add [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (10)
  (try
   (let x0 = gen (21) in
    let x1 = gen (79) in
    let x2 = gen (50) in
    let x3 = mul [ (gen (91)); (gen (10)); (gen (30)) ] in
    add [ (add [ x0; x1; x2 ]); x3 ] = add [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (11)
  (try
   (let x0 = mul [ (gen (47)); zero; (gen (53)) ] in
    let x1 = add [ (gen (64)); (gen (36)); (gen (20)) ] in
    let x2 = opp (gen (91)) in
    let x3 = add [ (gen (14)); (gen (36)); (gen (38)) ] in
    add [ (add [ x0; x1; x2 ]); x3 ] = add [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (12)
  (try
   (let x0 = opp (gen (28)) in
    let x1 = opp (gen (28)) in
    let x2 = opp (gen (21)) in
    let x3 = mul [ (gen (47)); zero; (gen (53)) ] in
    add [ (add [ x0; x1; x2 ]); x3 ] = add [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (13)
  (try
   (let x0 = gen (48) in
    let x1 = gen (55) in
    let x2 = opp (gen (91)) in
    let x3 = gen (37) in
    add [ (add [ x0; x1; x2 ]); x3 ] = add [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (14)
  (try
   (let x0 = mul [ (gen (73)); (gen (8)); (gen (38)) ] in
    let x1 = add [ (gen (14)); (gen (36)); (gen (38)) ] in
    let x2 = add [ (gen (14)); (gen (16)); (gen (38)) ] in
    let x3 = add [ (gen (64)); (gen (36)); (gen (20)) ] in
    add [ (add [ x0; x1; x2 ]); x3 ] = add [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (15)
  (try
   (let x0 = mul [ (gen (16)); (gen (73)); (gen (67)) ] in
    let x1 = add [ (gen (0)); (gen (7)); (gen (91)) ] in
    let x2 = add [ zero; (gen (8)); (gen (72)) ] in
    let x3 = gen (2) in add [ x0; x1; x2; x3 ] = add [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (16)
  (try
   (let x0 = add [ (gen (80)); (gen (50)); (gen (72)) ] in
    let x1 = mul [ (gen (8)); (gen (1)); (gen (67)) ] in
    let x2 = opp (gen (17)) in
    let x3 = opp (gen (91)) in
    add [ x0; x1; x2; x3 ] = add [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (17)
  (try
   (let x0 = add [ (gen (0)); (gen (50)); (gen (91)) ] in
    let x1 = gen (17) in
    let x2 = opp (gen (2)) in
    let x3 = gen (22) in add [ x0; x1; x2; x3 ] = add [ x1; x0; x3; x2 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (18)
  (try
   (let x0 = add [ (gen (0)); (gen (50)); (gen (91)) ] in
    let x1 = gen (22) in
    let x2 = zero in
    let x3 = gen (17) in add [ x0; x1; x2; x3 ] = add [ x1; x0; x3; x2 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (19)
  (try
   (let x0 = gen (46) in
    let x1 = opp (gen (74)) in
    let x2 = opp (gen (91)) in
    let x3 = add [ zero; (gen (8)); (gen (72)) ] in
    add [ x0; x1; x2; x3 ] = add [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (20)
  (try
   (let x0 = opp one in
    let x1 = gen (47) in
    let x2 = mul [ (gen (94)); (gen (39)); (gen (82)) ] in
    let x3 = mul [ (gen (74)); (gen (39)); (gen (82)) ] in
    add [ x0; x1; x2; x3 ] = add [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (21)
  (try
   (let x0 = one in
    let x1 = add [ (gen (59)); (gen (68)); (gen (0)) ] in
    let x2 = opp (gen (73)) in
    let x3 = add [ (gen (83)); (gen (71)); (gen (47)) ] in
    add [ x0; x1; x2; x3 ] = add [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (22)
  (try
   (let x0 = gen (91) in
    let x1 = opp (gen (49)) in
    let x2 = add [ one; (gen (19)); (gen (0)) ] in
    let x3 = add [ (gen (59)); (gen (22)); (gen (88)) ] in
    add [ x0; x1; x2; x3 ] = add [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (23)
  (try
   (let x0 = opp (gen (69)) in
    let x1 = gen (74) in
    let x2 = opp (gen (19)) in
    let x3 = opp (gen (31)) in
    add [ x0; x1; x2; x3 ] = add [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (24)
  (try
   (let x0 = mul [ (gen (74)); (gen (39)); (gen (82)) ] in
    let x1 = gen (3) in
    let x2 = add [ one; (gen (19)); (gen (0)) ] in
    let x3 = opp (gen (49)) in
    add [ x0; x1; x2; x3 ] = add [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (25)
  (try
   (let x0 = opp (gen (4)) in
    let x1 = gen (20) in
    let x2 = add [ (gen (4)); (gen (62)); (gen (29)) ] in
    let x3 = one in add [ x0; x1; x2; x3 ] = add [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (26)
  (try
   (let x0 = mul [ (gen (49)); (gen (15)); (gen (12)) ] in
    let x1 = opp (gen (61)) in
    let x2 = mul [ (gen (96)); (gen (5)); (gen (11)) ] in
    let x3 = mul [ zero; (gen (5)); (gen (12)) ] in
    add [ x0; x1; x2; x3 ] = add [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (27)
  (try
   (let x0 = add [ (gen (61)); one; (gen (65)) ] in
    let x1 = mul [ (gen (51)); (gen (93)); (gen (12)) ] in
    let x2 = mul [ (gen (33)); (gen (39)); (gen (86)) ] in
    let x3 = add [ (gen (31)); (gen (62)); (gen (29)) ] in
    add [ x0; x1; x2; x3 ] = add [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (28)
  (try
   (let x0 = opp (gen (79)) in
    let x1 = add [ (gen (84)); (gen (62)); (gen (88)) ] in
    let x2 = opp (gen (4)) in
    let x3 = gen (38) in add [ x0; x1; x2; x3 ] = add [ x3; x2; x1; x0 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (29)
  (try
   (let x0 = add [ (gen (84)); (gen (25)); (gen (29)) ] in
    let x1 = mul [ (gen (51)); (gen (39)); zero ] in
    let x2 = mul [ (gen (96)); (gen (5)); (gen (11)) ] in
    let x3 = opp (gen (61)) in
    add [ x0; x1; x2; x3 ] = add [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (30)
  (try
   (let x0 = gen (31) in
    let x1 = gen (11) in
    let x2 = gen (6) in
    let x3 = opp one in add [ x0; x1; x2; x3 ] = add [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (31)
  (try
   (let x0 = add [ (gen (98)); (gen (53)); one ] in
    let x1 = mul [ one; (gen (35)); (gen (42)) ] in
    let x2 = opp one in
    let x3 = add [ (gen (36)); (gen (33)); (gen (38)) ] in
    add [ x0; x1; x2; x3 ] = add [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (32)
  (try
   (let x0 = add [ (gen (15)); (gen (20)); (gen (1)) ] in
    let x1 = add [ (gen (98)); (gen (56)); (gen (6)) ] in
    let x2 = gen (14) in
    let x3 = gen (6) in add [ x0; x1; x2; x3 ] = add [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (33)
  (try
   (let x0 = mul [ (gen (49)); (gen (91)); (gen (82)) ] in
    let x1 = mul [ (gen (8)); (gen (40)); one ] in
    let x2 = opp (gen (5)) in
    let x3 = add [ (gen (36)); (gen (33)); (gen (38)) ] in
    add [ x0; x1; x2; x3 ] = add [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (34)
  (try
   (let x0 = opp (gen (1)) in
    let x1 = gen (6) in
    let x2 = add [ (gen (98)); (gen (53)); one ] in
    let x3 = gen (6) in add [ x0; x1; x2; x3 ] = add [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (35)
  (try
   (let x0 = opp (gen (13)) in
    let x1 = add [ (gen (16)); (gen (26)); (gen (29)) ] in
    add [ x0; zero; x1 ] = add [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (36)
  (try
   (let x0 = mul [ (gen (25)); (gen (33)); (gen (23)) ] in
    let x1 = opp (gen (16)) in add [ x0; zero; x1 ] = add [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (37)
  (try
   (let x0 = opp (gen (13)) in
    let x1 = add [ (gen (14)); (gen (44)); (gen (29)) ] in
    add [ x0; zero; x1 ] = add [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (38)
  (try
   (let x0 = add [ (gen (48)); (gen (20)); (gen (29)) ] in
    let x1 = add [ (gen (14)); (gen (44)); (gen (29)) ] in
    add [ x0; zero; x1 ] = add [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (39)
  (try
   (let x0 = gen (12) in
    let x1 = add [ (gen (48)); (gen (44)); (gen (29)) ] in
    add [ x0; zero; x1 ] = add [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (40)
  (try (let x0 = add [ one; (gen (5)); (gen (5)) ] in add [ zero; x0 ] = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (41)
  (try (let x0 = opp (gen (12)) in add [ zero; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (42)
  (try
   (let x0 = add [ (gen (8)); (gen (5)); (gen (8)) ] in add [ zero; x0 ] = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (43)
  (try (let x0 = opp (gen (8)) in add [ zero; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (44)
  (try (let x0 = opp (gen (8)) in add [ zero; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (45)
  (try (let x0 = mul [ one; (gen (16)); one ] in add [ x0; zero; zero ] = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (46)
  (try
   (let x0 = add [ one; (gen (6)); (gen (21)) ] in
    add [ x0; zero; zero ] = x0) with
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
   (let x0 = add [ (gen (11)); (gen (4)); (gen (13)) ] in
    add [ x0; zero; zero ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (49)
  (try
   (let x0 = mul [ (gen (5)); (gen (2)); zero ] in
    add [ x0; zero; zero ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (50)
  (try
   (let x0 = zero in
    let x1 = opp zero in
    let x2 = mul [ (gen (58)); (gen (36)); (gen (51)) ] in
    mul [ (mul [ x0; x1 ]); x2 ] = mul [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (51)
  (try
   (let x0 = gen (35) in
    let x1 = add [ zero; (gen (67)); (gen (61)) ] in
    let x2 = add [ zero; (gen (3)); (gen (51)) ] in
    mul [ (mul [ x0; x1 ]); x2 ] = mul [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (52)
  (try
   (let x0 = opp (gen (31)) in
    let x1 = gen (28) in
    let x2 = add [ (gen (2)); (gen (32)); (gen (51)) ] in
    mul [ (mul [ x0; x1 ]); x2 ] = mul [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (53)
  (try
   (let x0 = mul [ one; one; (gen (17)) ] in
    let x1 = mul [ (gen (54)); one; one ] in
    let x2 = opp (gen (41)) in
    mul [ (mul [ x0; x1 ]); x2 ] = mul [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (54)
  (try
   (let x0 = add [ zero; (gen (3)); (gen (51)) ] in
    let x1 = opp (gen (32)) in
    let x2 = gen (12) in mul [ (mul [ x0; x1 ]); x2 ] = mul [ x0; x1; x2 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (55)
  (try
   (let x0 = mul [ (gen (24)); (gen (110)); (gen (46)) ] in
    let x1 = add [ (gen (44)); (gen (92)); (gen (10)) ] in
    let x2 = add [ (gen (107)); (gen (92)); (gen (114)) ] in
    let x3 = opp (gen (50)) in
    let x4 = add [ (gen (19)); (gen (110)); (gen (16)) ] in
    mul [ x0; (mul [ x1; x2 ]); (mul [ x3; x4 ]) ] =
    mul [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (56)
  (try
   (let x0 = gen (21) in
    let x1 = mul [ (gen (32)); (gen (110)); (gen (100)) ] in
    let x2 = add [ (gen (118)); (gen (8)); one ] in
    let x3 = add [ (gen (118)); (gen (53)); (gen (97)) ] in
    let x4 = gen (57) in
    mul [ x0; (mul [ x1; x2 ]); (mul [ x3; x4 ]) ] =
    mul [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (57)
  (try
   (let x0 = mul [ (gen (122)); (gen (32)); (gen (46)) ] in
    let x1 = mul [ (gen (24)); (gen (110)); (gen (46)) ] in
    let x2 = mul [ (gen (32)); (gen (110)); (gen (100)) ] in
    let x3 = opp (gen (79)) in
    let x4 = gen (100) in
    mul [ x0; (mul [ x1; x2 ]); (mul [ x3; x4 ]) ] =
    mul [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (58)
  (try
   (let x0 = mul [ (gen (24)); (gen (32)); (gen (100)) ] in
    let x1 = mul [ (gen (24)); (gen (110)); (gen (46)) ] in
    let x2 = opp (gen (79)) in
    let x3 = mul [ (gen (24)); (gen (110)); (gen (46)) ] in
    let x4 = mul [ (gen (24)); (gen (110)); (gen (12)) ] in
    mul [ x0; (mul [ x1; x2 ]); (mul [ x3; x4 ]) ] =
    mul [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (59)
  (try
   (let x0 = opp (gen (50)) in
    let x1 = mul [ (gen (24)); (gen (29)); (gen (90)) ] in
    let x2 = opp (gen (52)) in
    let x3 = zero in
    let x4 = zero in
    mul [ x0; (mul [ x1; x2 ]); (mul [ x3; x4 ]) ] =
    mul [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (60)
  (try
   (let x0 = add [ (gen (50)); (gen (96)); (gen (49)) ] in
    let x1 = opp (gen (83)) in
    let x2 = mul [ (gen (5)); (gen (50)); (gen (39)) ] in
    let x3 = mul [ (gen (28)); (gen (89)); (gen (39)) ] in
    mul [ (mul [ x0; x1; x2 ]); x3 ] = mul [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (61)
  (try
   (let x0 = opp (gen (83)) in
    let x1 = add [ (gen (31)); (gen (58)); one ] in
    let x2 = mul [ (gen (6)); (gen (54)); (gen (16)) ] in
    let x3 = opp (gen (83)) in
    mul [ (mul [ x0; x1; x2 ]); x3 ] = mul [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (62)
  (try
   (let x0 = add [ (gen (50)); (gen (80)); one ] in
    let x1 = gen (41) in
    let x2 = add [ (gen (31)); (gen (64)); (gen (60)) ] in
    let x3 = gen (66) in
    mul [ (mul [ x0; x1; x2 ]); x3 ] = mul [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (63)
  (try
   (let x0 = add [ (gen (51)); (gen (61)); (gen (15)) ] in
    let x1 = gen (41) in
    let x2 = opp (gen (38)) in
    let x3 = gen (22) in
    mul [ (mul [ x0; x1; x2 ]); x3 ] = mul [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (64)
  (try
   (let x0 = add [ (gen (50)); (gen (80)); one ] in
    let x1 = opp (gen (10)) in
    let x2 = opp (gen (88)) in
    let x3 = add [ one; (gen (61)); (gen (60)) ] in
    mul [ (mul [ x0; x1; x2 ]); x3 ] = mul [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (65)
  (try
   (let x0 = opp (gen (36)) in
    let x1 = opp (gen (36)) in
    let x2 = add [ (gen (33)); (gen (31)); (gen (94)) ] in
    let x3 = mul [ (gen (86)); (gen (38)); (gen (49)) ] in
    mul [ x0; x1; x2; x3 ] = mul [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (66)
  (try
   (let x0 = mul [ (gen (86)); (gen (38)); (gen (49)) ] in
    let x1 = opp (gen (88)) in
    let x2 = add [ (gen (55)); (gen (64)); (gen (94)) ] in
    let x3 = add [ (gen (66)); (gen (96)); (gen (22)) ] in
    mul [ x0; x1; x2; x3 ] = mul [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (67)
  (try
   (let x0 = add [ (gen (23)); (gen (11)); (gen (89)) ] in
    let x1 = add [ (gen (23)); (gen (96)); (gen (89)) ] in
    let x2 = opp (gen (88)) in
    let x3 = opp (gen (88)) in
    mul [ x0; x1; x2; x3 ] = mul [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (68)
  (try
   (let x0 = add [ (gen (23)); (gen (11)); (gen (89)) ] in
    let x1 = mul [ (gen (9)); (gen (98)); (gen (46)) ] in
    let x2 = mul [ one; (gen (88)); (gen (82)) ] in
    let x3 = mul [ (gen (80)); (gen (75)); (gen (17)) ] in
    mul [ x0; x1; x2; x3 ] = mul [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (69)
  (try
   (let x0 = gen (45) in
    let x1 = gen (54) in
    let x2 = opp (gen (88)) in
    let x3 = gen (6) in mul [ x0; x1; x2; x3 ] = mul [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (70)
  (try
   (let x0 = opp (gen (87)) in
    let x1 = opp (gen (69)) in
    let x2 = gen (21) in
    let x3 = opp (gen (66)) in
    mul [ x0; x1; x2; x3 ] = mul [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (71)
  (try
   (let x0 = add [ zero; (gen (16)); (gen (27)) ] in
    let x1 = add [ zero; (gen (0)); (gen (67)) ] in
    let x2 = gen (68) in
    let x3 = add [ zero; (gen (16)); (gen (27)) ] in
    mul [ x0; x1; x2; x3 ] = mul [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (72)
  (try
   (let x0 = add [ one; (gen (86)); (gen (62)) ] in
    let x1 = gen (11) in
    let x2 = opp (gen (74)) in
    let x3 = opp (gen (64)) in
    mul [ x0; x1; x2; x3 ] = mul [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (73)
  (try
   (let x0 = add [ (gen (31)); (gen (85)); (gen (66)) ] in
    let x1 = opp (gen (66)) in
    let x2 = gen (46) in
    let x3 = add [ (gen (94)); (gen (31)); (gen (27)) ] in
    mul [ x0; x1; x2; x3 ] = mul [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (74)
  (try
   (let x0 = gen (11) in
    let x1 = opp (gen (66)) in
    let x2 = gen (46) in
    let x3 = add [ one; (gen (86)); (gen (62)) ] in
    mul [ x0; x1; x2; x3 ] = mul [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (75)
  (try
   (let x0 = mul [ (gen (13)); (gen (19)); (gen (57)) ] in
    let x1 = mul [ (gen (80)); (gen (27)); (gen (1)) ] in
    let x2 = gen (24) in
    let x3 = zero in mul [ x0; x1; x2; x3 ] = mul [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (76)
  (try
   (let x0 = mul [ (gen (94)); (gen (48)); (gen (57)) ] in
    let x1 = add [ one; (gen (57)); (gen (64)) ] in
    let x2 = add [ one; (gen (3)); (gen (64)) ] in
    let x3 = add [ (gen (97)); (gen (88)); (gen (71)) ] in
    mul [ x0; x1; x2; x3 ] = mul [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (77)
  (try
   (let x0 = mul [ zero; (gen (90)); (gen (80)) ] in
    let x1 = gen (94) in
    let x2 = mul [ (gen (13)); (gen (48)); (gen (80)) ] in
    let x3 = add [ (gen (97)); (gen (88)); (gen (71)) ] in
    mul [ x0; x1; x2; x3 ] = mul [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (78)
  (try
   (let x0 = mul [ zero; (gen (90)); (gen (80)) ] in
    let x1 = gen (69) in
    let x2 = mul [ (gen (94)); (gen (48)); (gen (57)) ] in
    let x3 = add [ (gen (97)); (gen (0)); (gen (64)) ] in
    mul [ x0; x1; x2; x3 ] = mul [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (79)
  (try
   (let x0 = opp (gen (9)) in
    let x1 = opp (gen (5)) in
    let x2 = gen (28) in
    let x3 = gen (26) in mul [ x0; x1; x2; x3 ] = mul [ x3; x2; x1; x0 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (80)
  (try
   (let x0 = add [ (gen (29)); (gen (45)); (gen (49)) ] in
    let x1 = opp (gen (67)) in
    let x2 = opp (gen (48)) in
    let x3 = mul [ (gen (8)); (gen (85)); (gen (63)) ] in
    mul [ x0; x1; x2; x3 ] = mul [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (81)
  (try
   (let x0 = opp (gen (67)) in
    let x1 = gen (50) in
    let x2 = gen (40) in
    let x3 = mul [ (gen (38)); (gen (64)); (gen (63)) ] in
    mul [ x0; x1; x2; x3 ] = mul [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (82)
  (try
   (let x0 = mul [ (gen (8)); (gen (74)); (gen (63)) ] in
    let x1 = mul [ (gen (8)); (gen (85)); (gen (63)) ] in
    let x2 = mul [ (gen (57)); (gen (77)); (gen (87)) ] in
    let x3 = add [ (gen (64)); (gen (34)); (gen (69)) ] in
    mul [ x0; x1; x2; x3 ] = mul [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (83)
  (try
   (let x0 = opp (gen (96)) in
    let x1 = opp (gen (12)) in
    let x2 = gen (99) in
    let x3 = add [ (gen (86)); (gen (79)); (gen (69)) ] in
    mul [ x0; x1; x2; x3 ] = mul [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (84)
  (try
   (let x0 = gen (99) in
    let x1 = mul [ (gen (8)); (gen (64)); (gen (89)) ] in
    let x2 = gen (83) in
    let x3 = gen (46) in mul [ x0; x1; x2; x3 ] = mul [ x2; x1; x0; x3 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (85)
  (try
   (let x0 = add [ (gen (45)); (gen (20)); (gen (9)) ] in
    let x1 = opp (gen (4)) in mul [ x0; one; x1 ] = mul [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (86)
  (try
   (let x0 = mul [ (gen (43)); (gen (24)); (gen (25)) ] in
    let x1 = opp (gen (4)) in mul [ x0; one; x1 ] = mul [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (87)
  (try
   (let x0 = mul [ (gen (5)); (gen (9)); (gen (31)) ] in
    let x1 = mul [ (gen (5)); (gen (9)); (gen (31)) ] in
    mul [ x0; one; x1 ] = mul [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (88)
  (try
   (let x0 = mul [ (gen (5)); (gen (45)); (gen (25)) ] in
    let x1 = opp (gen (4)) in mul [ x0; one; x1 ] = mul [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (89)
  (try
   (let x0 = add [ (gen (45)); (gen (20)); (gen (9)) ] in
    let x1 = opp one in mul [ x0; one; x1 ] = mul [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (90)
  (try (let x0 = one in mul [ one; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (91)
  (try
   (let x0 = mul [ (gen (20)); (gen (11)); (gen (5)) ] in
    mul [ one; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (92)
  (try (let x0 = gen (6) in mul [ one; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (93)
  (try (let x0 = opp zero in mul [ one; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (94)
  (try (let x0 = opp (gen (16)) in mul [ one; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (95)
  (try (let x0 = gen (13) in mul [ x0; one; one ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (96)
  (try (let x0 = gen (15) in mul [ x0; one; one ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (97)
  (try
   (let x0 = add [ (gen (13)); (gen (4)); one ] in mul [ x0; one; one ] = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (98)
  (try (let x0 = opp (gen (24)) in mul [ x0; one; one ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (99)
  (try (let x0 = gen (0) in mul [ x0; one; one ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (100)
  (try
   (let x0 = opp (gen (53)) in
    let x1 = gen (67) in
    let x2 = opp (gen (74)) in
    mul [ x0; x1; (add [ x0; x1; x2 ]); x2 ] =
    add
      [ (mul [ x0; x1; x0; x2 ]); (mul [ x0; x1; x1; x2 ]);
        (mul [ x0; x1; x2; x2 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (101)
  (try
   (let x0 = zero in
    let x1 = add [ zero; (gen (42)); (gen (47)) ] in
    let x2 = one in
    mul [ x0; x1; (add [ x0; x1; x2 ]); x2 ] =
    add
      [ (mul [ x0; x1; x0; x2 ]); (mul [ x0; x1; x1; x2 ]);
        (mul [ x0; x1; x2; x2 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (102)
  (try
   (let x0 = mul [ (gen (37)); (gen (42)); (gen (20)) ] in
    let x1 = gen (67) in
    let x2 = one in
    mul [ x0; x1; (add [ x0; x1; x2 ]); x2 ] =
    add
      [ (mul [ x0; x1; x0; x2 ]); (mul [ x0; x1; x1; x2 ]);
        (mul [ x0; x1; x2; x2 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (103)
  (try
   (let x0 = gen (53) in
    let x1 = gen (67) in
    let x2 = add [ (gen (54)); (gen (8)); (gen (47)) ] in
    mul [ x0; x1; (add [ x0; x1; x2 ]); x2 ] =
    add
      [ (mul [ x0; x1; x0; x2 ]); (mul [ x0; x1; x1; x2 ]);
        (mul [ x0; x1; x2; x2 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (104)
  (try
   (let x0 = add [ zero; (gen (42)); (gen (47)) ] in
    let x1 = mul [ (gen (16)); (gen (72)); one ] in
    let x2 = add [ zero; (gen (42)); (gen (47)) ] in
    mul [ x0; x1; (add [ x0; x1; x2 ]); x2 ] =
    add
      [ (mul [ x0; x1; x0; x2 ]); (mul [ x0; x1; x1; x2 ]);
        (mul [ x0; x1; x2; x2 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (105)
  (try
   (let x0 = opp (gen (55)) in
    let x1 = gen (13) in
    let x2 = add [ (gen (12)); (gen (12)); (gen (61)) ] in
    mul [ (add [ x0; x1; x2 ]); x0 ] =
    add [ (mul [ x0; x0 ]); (mul [ x1; x0 ]); (mul [ x2; x0 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (106)
  (try
   (let x0 = add [ (gen (12)); (gen (59)); (gen (6)) ] in
    let x1 = mul [ (gen (51)); (gen (5)); (gen (70)) ] in
    let x2 = add [ (gen (12)); (gen (12)); (gen (61)) ] in
    mul [ (add [ x0; x1; x2 ]); x0 ] =
    add [ (mul [ x0; x0 ]); (mul [ x1; x0 ]); (mul [ x2; x0 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (107)
  (try
   (let x0 = mul [ one; (gen (5)); (gen (70)) ] in
    let x1 = mul [ (gen (65)); (gen (69)); (gen (49)) ] in
    let x2 = gen (43) in
    mul [ (add [ x0; x1; x2 ]); x0 ] =
    add [ (mul [ x0; x0 ]); (mul [ x1; x0 ]); (mul [ x2; x0 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (108)
  (try
   (let x0 = mul [ (gen (51)); (gen (5)); (gen (70)) ] in
    let x1 = opp (gen (12)) in
    let x2 = gen (65) in
    mul [ (add [ x0; x1; x2 ]); x0 ] =
    add [ (mul [ x0; x0 ]); (mul [ x1; x0 ]); (mul [ x2; x0 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (109)
  (try
   (let x0 = opp zero in
    let x1 = opp zero in
    let x2 = opp (gen (73)) in
    mul [ (add [ x0; x1; x2 ]); x0 ] =
    add [ (mul [ x0; x0 ]); (mul [ x1; x0 ]); (mul [ x2; x0 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (110)
  (try
   (let x0 = add [ zero; (gen (7)); (gen (8)) ] in
    let x1 = add [ (gen (33)); (gen (49)); (gen (31)) ] in
    let x2 = opp one in
    mul [ x0; x1; (opp x0); x2 ] = opp (mul [ x0; x1; x0; x2 ])) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (111)
  (try
   (let x0 = opp (gen (12)) in
    let x1 = gen (6) in
    let x2 = opp (gen (20)) in
    mul [ x0; x1; (opp x0); x2 ] = opp (mul [ x0; x1; x0; x2 ])) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (112)
  (try
   (let x0 = add [ (gen (72)); one; (gen (8)) ] in
    let x1 = add [ zero; (gen (7)); (gen (8)) ] in
    let x2 = mul [ (gen (50)); (gen (72)); (gen (66)) ] in
    mul [ x0; x1; (opp x0); x2 ] = opp (mul [ x0; x1; x0; x2 ])) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (113)
  (try
   (let x0 = mul [ (gen (25)); (gen (11)); (gen (70)) ] in
    let x1 = opp (gen (28)) in
    let x2 = mul [ zero; (gen (5)); (gen (70)) ] in
    mul [ x0; x1; (opp x0); x2 ] = opp (mul [ x0; x1; x0; x2 ])) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (114)
  (try
   (let x0 = mul [ (gen (25)); (gen (11)); (gen (70)) ] in
    let x1 = mul [ zero; (gen (72)); (gen (45)) ] in
    let x2 = opp (gen (12)) in
    mul [ x0; x1; (opp x0); x2 ] = opp (mul [ x0; x1; x0; x2 ])) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (115)
  (try
   (let x0 = mul [ (gen (22)); (gen (21)); (gen (24)) ] in
    mul [ (opp x0); x0 ] = opp (mul [ x0; x0 ])) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (116)
  (try (let x0 = opp one in mul [ (opp x0); x0 ] = opp (mul [ x0; x0 ])) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (117)
  (try (let x0 = gen (24) in mul [ (opp x0); x0 ] = opp (mul [ x0; x0 ]))
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (118)
  (try (let x0 = one in mul [ (opp x0); x0 ] = opp (mul [ x0; x0 ])) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (119)
  (try
   (let x0 = mul [ (gen (9)); (gen (8)); (gen (21)) ] in
    mul [ (opp x0); x0 ] = opp (mul [ x0; x0 ])) with
   | Failure "Division by Absorbent" -> true)
;;

