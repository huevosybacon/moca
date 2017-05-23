open Ring_list
;;

open Gentest
;;

testing ("Ring_list (automatic) - seed: 1035770280")
;;

testi
  (0)
  (try
   (let x0 = gen (12) in
    let x1 =
      mul
        [ (opp (gen (18))); (add [ one; (gen (3)); (gen (72)) ]);
          (add [ (gen (27)); (gen (1)); (gen (21)) ]) ] in
    let x2 = opp (add [ (gen (10)); (gen (56)); (gen (26)) ]) in
    add [ (add [ x0; x1 ]); x2 ] = add [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (1)
  (try
   (let x0 =
      add
        [ (gen (17)); (mul [ (gen (18)); one; (gen (60)) ]);
          (mul [ (gen (25)); (gen (36)); (gen (11)) ]) ] in
    let x1 =
      add
        [ (gen (17)); (mul [ (gen (18)); one; (gen (60)) ]);
          (mul [ (gen (25)); (gen (36)); (gen (11)) ]) ] in
    let x2 = gen (37) in add [ (add [ x0; x1 ]); x2 ] = add [ x0; x1; x2 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (2)
  (try
   (let x0 =
      add
        [ (opp one); (add [ (gen (1)); (gen (55)); (gen (42)) ]);
          (opp (gen (22))) ] in
    let x1 =
      mul
        [ (mul [ (gen (19)); (gen (70)); (gen (11)) ]); (gen (60));
          (gen (68)) ] in
    let x2 = gen (46) in add [ (add [ x0; x1 ]); x2 ] = add [ x0; x1; x2 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (3)
  (try
   (let x0 =
      add
        [ (gen (17)); (add [ zero; (gen (51)); (gen (41)) ]);
          (add [ (gen (74)); (gen (32)); zero ]) ] in
    let x1 = zero in
    let x2 =
      mul
        [ (add [ (gen (4)); (gen (44)); (gen (22)) ]); (gen (60));
          (mul [ (gen (51)); (gen (52)); (gen (43)) ]) ] in
    add [ (add [ x0; x1 ]); x2 ] = add [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (4)
  (try
   (let x0 =
      add
        [ (opp one); (mul [ (gen (18)); one; (gen (60)) ]); (opp (gen (22))) ] in
    let x1 =
      add
        [ (add [ (gen (62)); (gen (43)); (gen (54)) ]);
          (mul [ zero; zero; (gen (34)) ]);
          (mul [ (gen (25)); (gen (36)); (gen (11)) ]) ] in
    let x2 = opp (mul [ (gen (37)); (gen (30)); (gen (67)) ]) in
    add [ (add [ x0; x1 ]); x2 ] = add [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (5)
  (try
   (let x0 = opp (opp (gen (14))) in
    let x1 = gen (112) in
    let x2 =
      add
        [ (mul [ (gen (65)); (gen (97)); (gen (16)) ]);
          (mul [ zero; (gen (13)); (gen (116)) ]); (gen (27)) ] in
    let x3 =
      mul
        [ (add [ (gen (57)); (gen (53)); (gen (94)) ]);
          (add [ (gen (49)); (gen (74)); (gen (11)) ]);
          (mul [ (gen (85)); (gen (77)); (gen (68)) ]) ] in
    let x4 =
      add
        [ (mul [ (gen (44)); (gen (37)); (gen (61)) ]); (gen (114));
          (opp (gen (16))) ] in
    add [ x0; (add [ x1; x2 ]); (add [ x3; x4 ]) ] =
    add [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (6)
  (try
   (let x0 =
      add
        [ (mul [ (gen (68)); (gen (56)); (gen (115)) ]);
          (add [ (gen (35)); (gen (93)); (gen (25)) ]); (gen (19)) ] in
    let x1 = opp (add [ (gen (112)); (gen (27)); (gen (122)) ]) in
    let x2 =
      add
        [ (mul [ one; (gen (60)); (gen (89)) ]);
          (add [ (gen (121)); (gen (50)); (gen (10)) ]); (opp (gen (27))) ] in
    let x3 =
      mul
        [ (opp (gen (11))); (opp (gen (43)));
          (add [ (gen (123)); (gen (69)); (gen (67)) ]) ] in
    let x4 = gen (115) in
    add [ x0; (add [ x1; x2 ]); (add [ x3; x4 ]) ] =
    add [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (7)
  (try
   (let x0 =
      mul
        [ (add [ (gen (57)); (gen (53)); (gen (94)) ]);
          (add [ (gen (49)); (gen (74)); (gen (11)) ]);
          (mul [ (gen (85)); (gen (77)); (gen (68)) ]) ] in
    let x1 =
      mul
        [ (opp (gen (35))); (mul [ (gen (95)); (gen (12)); (gen (40)) ]);
          (add [ (gen (28)); one; (gen (116)) ]) ] in
    let x2 =
      add
        [ (mul [ (gen (68)); (gen (56)); (gen (115)) ]);
          (add [ (gen (35)); (gen (93)); (gen (25)) ]); (gen (19)) ] in
    let x3 = gen (66) in
    let x4 = gen (42) in
    add [ x0; (add [ x1; x2 ]); (add [ x3; x4 ]) ] =
    add [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (8)
  (try
   (let x0 =
      add
        [ (gen (33)); (mul [ (gen (53)); (gen (74)); (gen (2)) ]);
          (add [ (gen (107)); (gen (99)); (gen (30)) ]) ] in
    let x1 =
      add
        [ (mul [ one; (gen (60)); (gen (89)) ]);
          (add [ (gen (121)); (gen (50)); (gen (10)) ]); (opp (gen (27))) ] in
    let x2 = gen (44) in
    let x3 = gen (115) in
    let x4 =
      add
        [ (mul [ (gen (68)); (gen (56)); (gen (115)) ]);
          (add [ (gen (35)); (gen (93)); (gen (25)) ]); (gen (19)) ] in
    add [ x0; (add [ x1; x2 ]); (add [ x3; x4 ]) ] =
    add [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (9)
  (try
   (let x0 =
      mul
        [ (opp (gen (35))); (mul [ (gen (95)); (gen (12)); (gen (40)) ]);
          (add [ (gen (28)); one; (gen (116)) ]) ] in
    let x1 = add [ (mul [ (gen (44)); (gen (106)); zero ]); (gen (74)); one ] in
    let x2 = opp (mul [ (gen (121)); (gen (2)); (gen (36)) ]) in
    let x3 =
      add
        [ (mul [ (gen (65)); (gen (97)); (gen (16)) ]);
          (mul [ zero; (gen (13)); (gen (116)) ]); (gen (27)) ] in
    let x4 = opp (opp (gen (54))) in
    add [ x0; (add [ x1; x2 ]); (add [ x3; x4 ]) ] =
    add [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (10)
  (try
   (let x0 = mul [ (gen (12)); (opp zero); (opp (gen (16))) ] in
    let x1 = opp (gen (47)) in
    let x2 = mul [ (gen (12)); (opp zero); (opp (gen (16))) ] in
    let x3 = gen (96) in
    add [ (add [ x0; x1; x2 ]); x3 ] = add [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (11)
  (try
   (let x0 =
      mul
        [ (mul [ (gen (74)); (gen (61)); (gen (35)) ]); (gen (52));
          (gen (34)) ] in
    let x1 = gen (43) in
    let x2 =
      add
        [ (mul [ (gen (33)); (gen (59)); (gen (42)) ]);
          (mul [ (gen (41)); (gen (81)); (gen (69)) ]);
          (mul [ (gen (14)); (gen (45)); (gen (96)) ]) ] in
    let x3 =
      add
        [ (mul [ (gen (33)); (gen (59)); (gen (42)) ]);
          (mul [ (gen (41)); (gen (81)); (gen (69)) ]);
          (mul [ (gen (14)); (gen (45)); (gen (96)) ]) ] in
    add [ (add [ x0; x1; x2 ]); x3 ] = add [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (12)
  (try
   (let x0 = opp (mul [ (gen (74)); (gen (0)); (gen (38)) ]) in
    let x1 = add [ (opp (gen (77))); (gen (74)); (opp (gen (64))) ] in
    let x2 =
      mul
        [ (gen (28)); (add [ (gen (74)); (gen (87)); (gen (93)) ]);
          (mul [ (gen (0)); (gen (67)); (gen (95)) ]) ] in
    let x3 =
      mul
        [ (add [ one; (gen (45)); (gen (20)) ]); (gen (78));
          (add [ (gen (37)); (gen (17)); (gen (41)) ]) ] in
    add [ (add [ x0; x1; x2 ]); x3 ] = add [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (13)
  (try
   (let x0 = mul [ (gen (28)); (gen (78)); (gen (99)) ] in
    let x1 = opp (mul [ (gen (57)); (gen (14)); (gen (38)) ]) in
    let x2 = gen (40) in
    let x3 = gen (96) in
    add [ (add [ x0; x1; x2 ]); x3 ] = add [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (14)
  (try
   (let x0 =
      mul
        [ (gen (28)); (add [ (gen (74)); (gen (87)); (gen (93)) ]);
          (mul [ (gen (0)); (gen (67)); (gen (95)) ]) ] in
    let x1 =
      add
        [ (mul [ (gen (9)); (gen (7)); (gen (89)) ]);
          (mul [ (gen (80)); (gen (31)); (gen (65)) ]); (gen (36)) ] in
    let x2 = gen (80) in
    let x3 = opp (opp zero) in
    add [ (add [ x0; x1; x2 ]); x3 ] = add [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (15)
  (try
   (let x0 = gen (97) in
    let x1 = add [ (opp one); (gen (79)); (gen (82)) ] in
    let x2 = gen (99) in
    let x3 = gen (54) in add [ x0; x1; x2; x3 ] = add [ x1; x0; x3; x2 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (16)
  (try
   (let x0 = opp (add [ zero; (gen (33)); (gen (66)) ]) in
    let x1 =
      add
        [ (add [ (gen (24)); (gen (69)); (gen (41)) ]);
          (mul [ (gen (1)); (gen (48)); (gen (58)) ]);
          (add [ (gen (68)); (gen (62)); (gen (73)) ]) ] in
    let x2 =
      add
        [ (opp one); (opp (gen (57)));
          (mul [ (gen (99)); (gen (5)); (gen (88)) ]) ] in
    let x3 = mul [ (gen (53)); (gen (14)); (opp (gen (6))) ] in
    add [ x0; x1; x2; x3 ] = add [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (17)
  (try
   (let x0 =
      add
        [ (mul [ (gen (81)); (gen (97)); (gen (66)) ]);
          (mul [ (gen (19)); (gen (35)); (gen (41)) ]);
          (mul [ (gen (99)); (gen (5)); (gen (88)) ]) ] in
    let x1 =
      mul
        [ (gen (49)); (mul [ (gen (5)); (gen (17)); (gen (64)) ]);
          (mul [ (gen (43)); (gen (98)); (gen (63)) ]) ] in
    let x2 = mul [ (gen (49)); zero; (opp (gen (6))) ] in
    let x3 = opp (gen (69)) in
    add [ x0; x1; x2; x3 ] = add [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (18)
  (try
   (let x0 =
      add
        [ (add [ (gen (24)); (gen (35)); (gen (54)) ]);
          (mul [ (gen (64)); (gen (60)); (gen (24)) ]);
          (add [ (gen (68)); (gen (57)); (gen (19)) ]) ] in
    let x1 =
      mul
        [ (opp (gen (69))); (opp (gen (16)));
          (mul [ (gen (43)); (gen (98)); (gen (63)) ]) ] in
    let x2 =
      add
        [ (opp one); (opp (gen (57)));
          (mul [ (gen (99)); (gen (5)); (gen (88)) ]) ] in
    let x3 =
      add
        [ (mul [ (gen (72)); (gen (97)); (gen (66)) ]);
          (mul [ (gen (19)); (gen (60)); zero ]);
          (mul [ (gen (7)); (gen (9)); (gen (16)) ]) ] in
    add [ x0; x1; x2; x3 ] = add [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (19)
  (try
   (let x0 = gen (97) in
    let x1 =
      mul [ (gen (87)); zero; (mul [ (gen (90)); (gen (0)); (gen (82)) ]) ] in
    let x2 =
      add
        [ (mul [ (gen (81)); (gen (97)); (gen (66)) ]);
          (mul [ (gen (19)); (gen (35)); (gen (41)) ]);
          (mul [ (gen (99)); (gen (5)); (gen (88)) ]) ] in
    let x3 = mul [ zero; (gen (26)); (opp (gen (69))) ] in
    add [ x0; x1; x2; x3 ] = add [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (20)
  (try
   (let x0 = gen (3) in
    let x1 = opp (opp (gen (82))) in
    let x2 = add [ (gen (64)); one; (mul [ (gen (44)); one; (gen (26)) ]) ] in
    let x3 = opp (opp (gen (47))) in
    add [ x0; x1; x2; x3 ] = add [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (21)
  (try
   (let x0 = opp (opp (gen (25))) in
    let x1 = gen (20) in
    let x2 = gen (54) in
    let x3 =
      mul
        [ (add [ (gen (26)); (gen (12)); (gen (51)) ]);
          (mul [ (gen (48)); (gen (20)); (gen (42)) ]);
          (mul [ (gen (6)); (gen (2)); zero ]) ] in
    add [ x0; x1; x2; x3 ] = add [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (22)
  (try
   (let x0 =
      add
        [ (opp (gen (75))); (opp (gen (21))); (mul [ zero; one; (gen (1)) ]) ] in
    let x1 = gen (3) in
    let x2 = add [ (gen (64)); one; (mul [ (gen (44)); one; (gen (26)) ]) ] in
    let x3 = opp (opp (gen (82))) in
    add [ x0; x1; x2; x3 ] = add [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (23)
  (try
   (let x0 = gen (54) in
    let x1 =
      mul
        [ (add [ (gen (26)); (gen (12)); (gen (51)) ]);
          (mul [ (gen (48)); (gen (20)); (gen (42)) ]);
          (mul [ (gen (6)); (gen (2)); zero ]) ] in
    let x2 = opp (mul [ (gen (81)); (gen (6)); (gen (73)) ]) in
    let x3 = gen (20) in add [ x0; x1; x2; x3 ] = add [ x3; x1; x2; x0 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (24)
  (try
   (let x0 =
      add
        [ (gen (55)); (mul [ (gen (98)); (gen (36)); (gen (95)) ]);
          (mul [ zero; one; (gen (1)) ]) ] in
    let x1 =
      mul
        [ (add [ (gen (26)); (gen (68)); (gen (51)) ]); (opp (gen (67)));
          (opp (gen (73))) ] in
    let x2 = add [ (opp (gen (66))); (gen (30)); (opp (gen (82))) ] in
    let x3 = gen (48) in add [ x0; x1; x2; x3 ] = add [ x3; x1; x2; x0 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (25)
  (try
   (let x0 = zero in
    let x1 = gen (11) in
    let x2 = gen (12) in
    let x3 =
      mul
        [ (gen (18)); (add [ (gen (46)); (gen (21)); (gen (57)) ]);
          (gen (70)) ] in
    add [ x0; x1; x2; x3 ] = add [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (26)
  (try
   (let x0 = gen (45) in
    let x1 = mul [ (opp (gen (26))); (gen (43)); (gen (27)) ] in
    let x2 =
      add
        [ (mul [ (gen (84)); (gen (98)); (gen (10)) ]);
          (mul [ (gen (30)); (gen (31)); (gen (23)) ]);
          (mul [ (gen (46)); (gen (77)); zero ]) ] in
    let x3 = gen (45) in add [ x0; x1; x2; x3 ] = add [ x3; x2; x1; x0 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (27)
  (try
   (let x0 = gen (11) in
    let x1 = gen (45) in
    let x2 = opp (gen (30)) in
    let x3 =
      add
        [ (mul [ (gen (84)); (gen (98)); (gen (10)) ]);
          (mul [ (gen (30)); (gen (31)); (gen (23)) ]);
          (mul [ (gen (46)); (gen (77)); zero ]) ] in
    add [ x0; x1; x2; x3 ] = add [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (28)
  (try
   (let x0 =
      add
        [ (opp (gen (63))); (add [ (gen (42)); (gen (73)); (gen (80)) ]);
          (gen (83)) ] in
    let x1 = zero in
    let x2 = opp (gen (44)) in
    let x3 =
      add
        [ (gen (12)); (add [ (gen (58)); (gen (19)); (gen (66)) ]);
          (add [ (gen (0)); (gen (64)); (gen (6)) ]) ] in
    add [ x0; x1; x2; x3 ] = add [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (29)
  (try
   (let x0 =
      mul
        [ (gen (46)); (gen (84));
          (mul [ (gen (70)); (gen (32)); (gen (26)) ]) ] in
    let x1 = gen (45) in
    let x2 =
      mul
        [ (gen (18)); (mul [ (gen (10)); (gen (6)); (gen (97)) ]);
          (add [ (gen (92)); zero; (gen (84)) ]) ] in
    let x3 = gen (4) in add [ x0; x1; x2; x3 ] = add [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (30)
  (try
   (let x0 = opp (opp (gen (46))) in
    let x1 =
      add
        [ (mul [ (gen (20)); (gen (39)); zero ]);
          (mul [ (gen (4)); (gen (32)); (gen (25)) ]); (gen (42)) ] in
    let x2 =
      mul
        [ (gen (43)); (add [ (gen (84)); (gen (6)); (gen (86)) ]);
          (add [ (gen (10)); (gen (78)); (gen (52)) ]) ] in
    let x3 = opp (gen (65)) in
    add [ x0; x1; x2; x3 ] = add [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (31)
  (try
   (let x0 = gen (47) in
    let x1 = gen (47) in
    let x2 =
      add
        [ (mul [ (gen (20)); (gen (39)); zero ]);
          (mul [ (gen (4)); (gen (32)); (gen (25)) ]); (gen (42)) ] in
    let x3 =
      add [ (mul [ (gen (20)); (gen (39)); zero ]); (gen (54)); (gen (53)) ] in
    add [ x0; x1; x2; x3 ] = add [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (32)
  (try
   (let x0 =
      mul
        [ one; (add [ (gen (2)); (gen (73)); (gen (35)) ]);
          (mul [ (gen (47)); (gen (68)); (gen (12)) ]) ] in
    let x1 =
      add [ (mul [ (gen (20)); (gen (39)); zero ]); (gen (54)); (gen (53)) ] in
    let x2 = gen (21) in
    let x3 =
      mul
        [ (gen (43)); (opp (gen (43)));
          (mul [ (gen (38)); (gen (45)); (gen (91)) ]) ] in
    add [ x0; x1; x2; x3 ] = add [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (33)
  (try
   (let x0 =
      mul
        [ (gen (70)); (opp (gen (43)));
          (mul [ (gen (38)); (gen (87)); (gen (2)) ]) ] in
    let x1 =
      mul
        [ (mul [ (gen (93)); (gen (51)); (gen (87)) ]);
          (mul [ (gen (13)); (gen (58)); (gen (31)) ]);
          (add [ (gen (10)); (gen (78)); (gen (52)) ]) ] in
    let x2 =
      add
        [ (gen (13)); (add [ (gen (36)); (gen (66)); (gen (24)) ]);
          (opp (gen (43))) ] in
    let x3 =
      add
        [ (gen (13)); (add [ (gen (36)); (gen (66)); (gen (24)) ]);
          (opp (gen (43))) ] in
    add [ x0; x1; x2; x3 ] = add [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (34)
  (try
   (let x0 = opp (gen (65)) in
    let x1 = opp (gen (65)) in
    let x2 =
      mul
        [ (gen (43)); (add [ (gen (2)); (gen (73)); (gen (35)) ]);
          (mul [ (gen (91)); (gen (68)); (gen (77)) ]) ] in
    let x3 =
      add
        [ (mul [ (gen (20)); (gen (39)); zero ]); (opp (gen (20))); (opp one) ] in
    add [ x0; x1; x2; x3 ] = add [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (35)
  (try
   (let x0 = gen (33) in
    let x1 =
      mul
        [ (mul [ zero; (gen (16)); (gen (31)) ]); (opp (gen (30)));
          (add [ (gen (18)); (gen (7)); (gen (28)) ]) ] in
    add [ x0; zero; x1 ] = add [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (36)
  (try
   (let x0 = opp (mul [ (gen (27)); (gen (46)); (gen (12)) ]) in
    let x1 = gen (36) in add [ x0; zero; x1 ] = add [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (37)
  (try
   (let x0 = add [ (gen (26)); one; (opp zero) ] in
    let x1 =
      add
        [ (gen (26)); (mul [ (gen (37)); (gen (23)); (gen (32)) ]);
          (add [ (gen (20)); zero; one ]) ] in
    add [ x0; zero; x1 ] = add [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (38)
  (try
   (let x0 = gen (10) in
    let x1 = gen (2) in add [ x0; zero; x1 ] = add [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (39)
  (try
   (let x0 = gen (10) in
    let x1 = gen (10) in add [ x0; zero; x1 ] = add [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (40)
  (try
   (let x0 = add [ zero; zero; (add [ (gen (24)); (gen (16)); (gen (11)) ]) ] in
    add [ zero; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (41)
  (try
   (let x0 =
      mul
        [ (gen (0)); (opp (gen (22))); (mul [ (gen (23)); one; (gen (23)) ]) ] in
    add [ zero; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (42)
  (try (let x0 = one in add [ zero; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (43)
  (try
   (let x0 =
      add
        [ (mul [ (gen (12)); (gen (9)); (gen (3)) ]); (opp (gen (22)));
          (add [ (gen (24)); (gen (16)); (gen (11)) ]) ] in
    add [ zero; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (44)
  (try
   (let x0 =
      mul
        [ (gen (0)); (opp (gen (22))); (mul [ (gen (23)); one; (gen (23)) ]) ] in
    add [ zero; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (45)
  (try
   (let x0 =
      mul
        [ (opp (gen (11))); (mul [ (gen (22)); (gen (10)); (gen (10)) ]);
          (opp (gen (4))) ] in
    add [ x0; zero; zero ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (46)
  (try (let x0 = gen (17) in add [ x0; zero; zero ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (47)
  (try
   (let x0 =
      add
        [ (add [ (gen (6)); (gen (7)); (gen (11)) ]); (gen (18)); (gen (23)) ] in
    add [ x0; zero; zero ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (48)
  (try
   (let x0 = opp (add [ (gen (14)); (gen (9)); (gen (9)) ]) in
    add [ x0; zero; zero ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (49)
  (try (let x0 = gen (17) in add [ x0; zero; zero ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (50)
  (try
   (let x0 = gen (27) in
    let x1 = opp (mul [ (gen (14)); zero; (gen (42)) ]) in
    let x2 = gen (3) in mul [ (mul [ x0; x1 ]); x2 ] = mul [ x0; x1; x2 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (51)
  (try
   (let x0 =
      add
        [ (add [ (gen (49)); (gen (74)); (gen (9)) ]); (gen (28)); (gen (42)) ] in
    let x1 = gen (62) in
    let x2 = opp zero in mul [ (mul [ x0; x1 ]); x2 ] = mul [ x0; x1; x2 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (52)
  (try
   (let x0 = opp zero in
    let x1 = mul [ (opp (gen (31))); (gen (19)); (gen (23)) ] in
    let x2 = zero in mul [ (mul [ x0; x1 ]); x2 ] = mul [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (53)
  (try
   (let x0 =
      add
        [ (gen (40)); (mul [ (gen (41)); (gen (53)); (gen (69)) ]);
          (opp (gen (70))) ] in
    let x1 = opp (gen (0)) in
    let x2 =
      mul
        [ (mul [ (gen (58)); (gen (6)); one ]); (opp (gen (42)));
          (mul [ (gen (44)); zero; (gen (60)) ]) ] in
    mul [ (mul [ x0; x1 ]); x2 ] = mul [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (54)
  (try
   (let x0 =
      mul
        [ (opp (gen (31))); (add [ (gen (54)); (gen (48)); (gen (34)) ]);
          (gen (13)) ] in
    let x1 = opp (mul [ (gen (14)); zero; (gen (42)) ]) in
    let x2 =
      mul
        [ zero; (mul [ (gen (43)); (gen (43)); (gen (63)) ]);
          (mul [ (gen (19)); (gen (61)); (gen (11)) ]) ] in
    mul [ (mul [ x0; x1 ]); x2 ] = mul [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (55)
  (try
   (let x0 = add [ (gen (17)); zero; (gen (91)) ] in
    let x1 = gen (118) in
    let x2 =
      mul
        [ (add [ (gen (98)); (gen (71)); (gen (124)) ]);
          (add [ (gen (89)); (gen (22)); (gen (96)) ]); (opp (gen (38))) ] in
    let x3 = gen (94) in
    let x4 =
      add
        [ (add [ (gen (111)); (gen (65)); (gen (2)) ]);
          (add [ (gen (68)); (gen (120)); (gen (124)) ]);
          (add [ (gen (37)); (gen (102)); (gen (84)) ]) ] in
    mul [ x0; (mul [ x1; x2 ]); (mul [ x3; x4 ]) ] =
    mul [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (56)
  (try
   (let x0 = opp (add [ (gen (68)); (gen (54)); (gen (30)) ]) in
    let x1 =
      add
        [ (gen (43)); (opp (gen (12)));
          (add [ (gen (15)); (gen (15)); (gen (62)) ]) ] in
    let x2 = gen (76) in
    let x3 =
      add
        [ (add [ (gen (111)); (gen (65)); (gen (2)) ]);
          (add [ (gen (68)); (gen (120)); (gen (124)) ]);
          (add [ (gen (37)); (gen (102)); (gen (84)) ]) ] in
    let x4 = opp (mul [ (gen (64)); (gen (65)); (gen (65)) ]) in
    mul [ x0; (mul [ x1; x2 ]); (mul [ x3; x4 ]) ] =
    mul [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (57)
  (try
   (let x0 = opp (gen (52)) in
    let x1 =
      add
        [ (mul [ (gen (55)); (gen (19)); (gen (62)) ]); (gen (124));
          (mul [ (gen (114)); (gen (33)); (gen (119)) ]) ] in
    let x2 = gen (10) in
    let x3 =
      mul
        [ (opp (gen (106))); (opp (gen (27)));
          (add [ (gen (85)); (gen (110)); (gen (90)) ]) ] in
    let x4 = gen (15) in
    mul [ x0; (mul [ x1; x2 ]); (mul [ x3; x4 ]) ] =
    mul [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (58)
  (try
   (let x0 = gen (76) in
    let x1 = gen (16) in
    let x2 = opp (add [ (gen (68)); (gen (54)); (gen (30)) ]) in
    let x3 = add [ (gen (94)); one; (opp (gen (73))) ] in
    let x4 = gen (8) in
    mul [ x0; (mul [ x1; x2 ]); (mul [ x3; x4 ]) ] =
    mul [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (59)
  (try
   (let x0 =
      mul
        [ (add [ (gen (58)); (gen (44)); (gen (124)) ]); (gen (26));
          (add [ (gen (2)); (gen (110)); (gen (65)) ]) ] in
    let x1 =
      mul [ zero; (add [ (gen (18)); (gen (22)); (gen (75)) ]); (opp one) ] in
    let x2 =
      mul
        [ (mul [ (gen (93)); (gen (97)); (gen (105)) ]); (opp (gen (105)));
          (gen (123)) ] in
    let x3 = mul [ (gen (11)); (opp (gen (55))); (opp zero) ] in
    let x4 = opp (mul [ (gen (64)); zero; (gen (65)) ]) in
    mul [ x0; (mul [ x1; x2 ]); (mul [ x3; x4 ]) ] =
    mul [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (60)
  (try
   (let x0 = opp (gen (53)) in
    let x1 =
      mul
        [ (opp (gen (83))); (gen (98));
          (add [ (gen (23)); (gen (10)); (gen (80)) ]) ] in
    let x2 = opp (add [ one; (gen (75)); (gen (31)) ]) in
    let x3 =
      mul
        [ (opp (gen (83))); (gen (98));
          (add [ (gen (23)); (gen (10)); (gen (80)) ]) ] in
    mul [ (mul [ x0; x1; x2 ]); x3 ] = mul [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (61)
  (try
   (let x0 =
      mul
        [ (mul [ (gen (24)); (gen (90)); (gen (6)) ]); (opp (gen (84)));
          (opp (gen (64))) ] in
    let x1 = mul [ (opp (gen (27))); (gen (98)); (gen (37)) ] in
    let x2 =
      add
        [ (mul [ (gen (99)); (gen (81)); (gen (5)) ]); (gen (92));
          (mul [ (gen (61)); (gen (83)); (gen (81)) ]) ] in
    let x3 =
      mul
        [ (gen (20)); (opp (gen (84)));
          (add [ (gen (56)); (gen (21)); (gen (80)) ]) ] in
    mul [ (mul [ x0; x1; x2 ]); x3 ] = mul [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (62)
  (try
   (let x0 = opp (mul [ (gen (25)); (gen (17)); (gen (51)) ]) in
    let x1 = zero in
    let x2 = opp (opp (gen (71))) in
    let x3 = opp (opp (gen (29))) in
    mul [ (mul [ x0; x1; x2 ]); x3 ] = mul [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (63)
  (try
   (let x0 =
      mul
        [ (gen (20)); (opp (gen (84)));
          (add [ (gen (56)); (gen (21)); (gen (80)) ]) ] in
    let x1 = gen (17) in
    let x2 =
      add
        [ (add [ (gen (85)); (gen (67)); (gen (53)) ]);
          (mul [ (gen (41)); (gen (67)); (gen (43)) ]); (opp (gen (11))) ] in
    let x3 =
      add
        [ (add [ (gen (85)); (gen (67)); (gen (53)) ]); zero;
          (mul [ (gen (46)); (gen (16)); (gen (93)) ]) ] in
    mul [ (mul [ x0; x1; x2 ]); x3 ] = mul [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (64)
  (try
   (let x0 =
      mul
        [ (mul [ (gen (24)); (gen (90)); (gen (6)) ]); (opp (gen (84)));
          (opp (gen (64))) ] in
    let x1 =
      mul
        [ (opp (gen (27))); (opp (gen (84)));
          (add [ (gen (56)); (gen (21)); (gen (80)) ]) ] in
    let x2 = opp (opp zero) in
    let x3 = gen (41) in
    mul [ (mul [ x0; x1; x2 ]); x3 ] = mul [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (65)
  (try
   (let x0 = opp (gen (35)) in
    let x1 =
      add
        [ (add [ (gen (33)); (gen (82)); (gen (17)) ]);
          (add [ (gen (18)); one; (gen (66)) ]);
          (add [ zero; (gen (64)); (gen (43)) ]) ] in
    let x2 = opp (opp (gen (12))) in
    let x3 = opp zero in mul [ x0; x1; x2; x3 ] = mul [ x1; x0; x3; x2 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (66)
  (try
   (let x0 = gen (72) in
    let x1 = opp (mul [ (gen (97)); (gen (55)); (gen (19)) ]) in
    let x2 =
      mul
        [ (add [ one; (gen (22)); (gen (18)) ]);
          (mul [ (gen (2)); one; (gen (66)) ]);
          (mul [ one; (gen (78)); (gen (27)) ]) ] in
    let x3 = gen (62) in mul [ x0; x1; x2; x3 ] = mul [ x1; x0; x3; x2 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (67)
  (try
   (let x0 = gen (52) in
    let x1 =
      mul
        [ (add [ one; (gen (22)); (gen (18)) ]);
          (mul [ (gen (2)); one; (gen (66)) ]);
          (mul [ one; (gen (78)); (gen (27)) ]) ] in
    let x2 =
      mul
        [ (gen (61)); (mul [ (gen (90)); (gen (1)); (gen (69)) ]);
          (mul [ (gen (47)); (gen (8)); (gen (42)) ]) ] in
    let x3 =
      mul
        [ (add [ one; (gen (22)); (gen (18)) ]);
          (mul [ (gen (2)); one; (gen (66)) ]);
          (mul [ one; (gen (78)); (gen (27)) ]) ] in
    mul [ x0; x1; x2; x3 ] = mul [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (68)
  (try
   (let x0 = gen (21) in
    let x1 = opp (add [ one; (gen (95)); (gen (39)) ]) in
    let x2 =
      mul
        [ (gen (83)); (add [ (gen (64)); (gen (11)); (gen (27)) ]);
          (gen (15)) ] in
    let x3 =
      mul
        [ (gen (29)); (add [ (gen (12)); (gen (73)); (gen (77)) ]);
          (add [ (gen (52)); (gen (33)); (gen (95)) ]) ] in
    mul [ x0; x1; x2; x3 ] = mul [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (69)
  (try
   (let x0 =
      mul
        [ (gen (83)); (add [ (gen (64)); (gen (11)); (gen (27)) ]);
          (gen (15)) ] in
    let x1 = gen (91) in
    let x2 =
      add
        [ (mul [ (gen (4)); (gen (10)); (gen (97)) ]); (gen (94));
          (opp (gen (48))) ] in
    let x3 =
      add
        [ one; (add [ (gen (33)); (gen (62)); (gen (67)) ]); (opp (gen (48))) ] in
    mul [ x0; x1; x2; x3 ] = mul [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (70)
  (try
   (let x0 = gen (9) in
    let x1 = gen (36) in
    let x2 =
      mul
        [ (mul [ (gen (91)); (gen (3)); (gen (35)) ]); (opp (gen (45)));
          (mul [ (gen (17)); (gen (96)); (gen (10)) ]) ] in
    let x3 =
      add
        [ (mul [ (gen (32)); (gen (63)); (gen (73)) ]); (gen (15));
          (gen (41)) ] in
    mul [ x0; x1; x2; x3 ] = mul [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (71)
  (try
   (let x0 =
      add
        [ (mul [ (gen (32)); (gen (63)); (gen (73)) ]);
          (mul [ (gen (88)); (gen (81)); (gen (10)) ]);
          (add [ (gen (38)); (gen (47)); (gen (90)) ]) ] in
    let x1 = opp (mul [ (gen (44)); (gen (86)); (gen (76)) ]) in
    let x2 = opp (gen (44)) in
    let x3 = gen (42) in mul [ x0; x1; x2; x3 ] = mul [ x3; x1; x2; x0 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (72)
  (try
   (let x0 =
      add
        [ (gen (97)); (add [ (gen (47)); (gen (11)); (gen (18)) ]);
          (opp (gen (3))) ] in
    let x1 = gen (54) in
    let x2 =
      add
        [ (mul [ (gen (32)); (gen (39)); (gen (14)) ]);
          (add [ (gen (47)); (gen (11)); (gen (18)) ]);
          (mul [ (gen (3)); (gen (43)); (gen (55)) ]) ] in
    let x3 = gen (54) in mul [ x0; x1; x2; x3 ] = mul [ x3; x1; x2; x0 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (73)
  (try
   (let x0 = gen (47) in
    let x1 =
      mul
        [ (gen (46)); (add [ (gen (37)); (gen (5)); zero ]);
          (mul [ (gen (85)); (gen (46)); (gen (30)) ]) ] in
    let x2 = opp (opp (gen (7))) in
    let x3 = opp (mul [ one; one; (gen (2)) ]) in
    mul [ x0; x1; x2; x3 ] = mul [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (74)
  (try
   (let x0 = opp (gen (27)) in
    let x1 = gen (83) in
    let x2 = one in
    let x3 =
      add
        [ (mul [ (gen (32)); (gen (63)); (gen (73)) ]); (opp (gen (14)));
          (mul [ (gen (20)); (gen (15)); one ]) ] in
    mul [ x0; x1; x2; x3 ] = mul [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (75)
  (try
   (let x0 =
      add
        [ (add [ (gen (13)); (gen (23)); (gen (40)) ]);
          (mul [ (gen (68)); (gen (38)); (gen (33)) ]); (opp (gen (17))) ] in
    let x1 =
      mul
        [ (gen (10)); (opp (gen (52))); (add [ (gen (83)); one; (gen (32)) ]) ] in
    let x2 = gen (60) in
    let x3 = gen (32) in mul [ x0; x1; x2; x3 ] = mul [ x3; x2; x1; x0 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (76)
  (try
   (let x0 =
      add
        [ (gen (39)); (add [ one; (gen (22)); (gen (3)) ]); (opp (gen (40))) ] in
    let x1 = opp (mul [ (gen (29)); (gen (56)); (gen (15)) ]) in
    let x2 = gen (34) in
    let x3 = opp (mul [ (gen (29)); (gen (56)); (gen (15)) ]) in
    mul [ x0; x1; x2; x3 ] = mul [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (77)
  (try
   (let x0 =
      add
        [ (mul [ (gen (45)); (gen (1)); (gen (51)) ]); (gen (10));
          (mul [ (gen (60)); zero; (gen (29)) ]) ] in
    let x1 =
      mul
        [ (mul [ (gen (20)); (gen (61)); (gen (35)) ]);
          (mul [ (gen (88)); (gen (66)); (gen (19)) ]);
          (add [ (gen (55)); zero; (gen (1)) ]) ] in
    let x2 =
      add [ (gen (70)); (gen (39)); (mul [ (gen (60)); one; (gen (33)) ]) ] in
    let x3 = opp (mul [ (gen (29)); (gen (56)); (gen (15)) ]) in
    mul [ x0; x1; x2; x3 ] = mul [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (78)
  (try
   (let x0 =
      mul
        [ (add [ (gen (46)); one; (gen (71)) ]);
          (mul [ (gen (32)); (gen (8)); (gen (72)) ]);
          (add [ (gen (83)); (gen (74)); (gen (68)) ]) ] in
    let x1 =
      mul
        [ (add [ (gen (46)); one; (gen (71)) ]);
          (mul [ (gen (32)); (gen (8)); (gen (72)) ]);
          (add [ (gen (83)); (gen (74)); (gen (68)) ]) ] in
    let x2 = opp (gen (54)) in
    let x3 = gen (79) in mul [ x0; x1; x2; x3 ] = mul [ x3; x2; x1; x0 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (79)
  (try
   (let x0 =
      add
        [ (mul [ (gen (45)); (gen (1)); (gen (51)) ]); (gen (10));
          (mul [ (gen (60)); zero; (gen (29)) ]) ] in
    let x1 = gen (56) in
    let x2 = gen (32) in
    let x3 = gen (61) in mul [ x0; x1; x2; x3 ] = mul [ x3; x2; x1; x0 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (80)
  (try
   (let x0 =
      add
        [ (mul [ one; (gen (87)); (gen (34)) ]);
          (mul [ (gen (86)); (gen (18)); (gen (42)) ]); (gen (64)) ] in
    let x1 = opp (add [ zero; (gen (26)); (gen (17)) ]) in
    let x2 =
      mul
        [ (add [ zero; (gen (74)); (gen (81)) ]); (opp (gen (34)));
          (opp (gen (19))) ] in
    let x3 =
      add
        [ (opp (gen (97))); (gen (28));
          (add [ (gen (69)); (gen (95)); (gen (35)) ]) ] in
    mul [ x0; x1; x2; x3 ] = mul [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (81)
  (try
   (let x0 =
      mul
        [ (add [ (gen (45)); (gen (1)); (gen (32)) ]);
          (mul [ one; (gen (95)); (gen (69)) ]); (gen (0)) ] in
    let x1 = gen (15) in
    let x2 =
      add
        [ (add [ (gen (14)); (gen (5)); (gen (10)) ]); (opp (gen (11)));
          (add [ (gen (69)); (gen (95)); (gen (35)) ]) ] in
    let x3 =
      add
        [ (mul [ one; (gen (15)); (gen (92)) ]);
          (mul [ (gen (95)); (gen (18)); (gen (32)) ]);
          (mul [ (gen (92)); (gen (88)); (gen (70)) ]) ] in
    mul [ x0; x1; x2; x3 ] = mul [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (82)
  (try
   (let x0 =
      mul
        [ (add [ (gen (89)); (gen (1)); (gen (81)) ]);
          (mul [ one; (gen (15)); (gen (85)) ]); (gen (0)) ] in
    let x1 =
      add
        [ (opp (gen (97))); (gen (28));
          (add [ (gen (69)); (gen (95)); (gen (35)) ]) ] in
    let x2 = opp (opp (gen (37))) in
    let x3 = gen (47) in mul [ x0; x1; x2; x3 ] = mul [ x2; x1; x0; x3 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (83)
  (try
   (let x0 =
      add
        [ (mul [ one; (gen (15)); (gen (92)) ]);
          (mul [ (gen (95)); (gen (18)); (gen (32)) ]);
          (mul [ (gen (92)); (gen (88)); (gen (70)) ]) ] in
    let x1 =
      add
        [ (mul [ (gen (63)); (gen (93)); one ]);
          (mul [ (gen (86)); (gen (18)); (gen (42)) ]);
          (mul [ (gen (87)); (gen (88)); (gen (70)) ]) ] in
    let x2 = opp (opp (gen (37))) in
    let x3 = gen (93) in mul [ x0; x1; x2; x3 ] = mul [ x2; x1; x0; x3 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (84)
  (try
   (let x0 =
      mul
        [ (add [ zero; (gen (1)); (gen (41)) ]);
          (mul [ one; (gen (15)); (gen (85)) ]); (opp (gen (19))) ] in
    let x1 =
      add
        [ (mul [ one; (gen (15)); (gen (92)) ]); (gen (28));
          (mul [ (gen (87)); (gen (94)); (gen (70)) ]) ] in
    let x2 = gen (16) in
    let x3 =
      add
        [ (mul [ one; (gen (93)); one ]);
          (mul [ (gen (95)); (gen (18)); (gen (32)) ]); (opp (gen (14))) ] in
    mul [ x0; x1; x2; x3 ] = mul [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (85)
  (try
   (let x0 =
      add
        [ (mul [ one; (gen (43)); (gen (45)) ]);
          (mul [ (gen (20)); (gen (12)); (gen (21)) ]); (opp (gen (6))) ] in
    let x1 =
      mul
        [ (mul [ (gen (6)); zero; (gen (23)) ]); (opp (gen (9)));
          (opp (gen (8))) ] in
    mul [ x0; one; x1 ] = mul [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (86)
  (try
   (let x0 =
      add
        [ (gen (14)); (mul [ (gen (22)); (gen (7)); (gen (17)) ]); (gen (18)) ] in
    let x1 = gen (49) in mul [ x0; one; x1 ] = mul [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (87)
  (try
   (let x0 = gen (49) in
    let x1 =
      mul
        [ (mul [ (gen (6)); zero; (gen (23)) ]); (opp (gen (9)));
          (opp (gen (8))) ] in
    mul [ x0; one; x1 ] = mul [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (88)
  (try
   (let x0 = opp (opp (gen (44))) in
    let x1 = opp (add [ (gen (22)); (gen (16)); (gen (19)) ]) in
    mul [ x0; one; x1 ] = mul [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (89)
  (try
   (let x0 =
      add
        [ (mul [ (gen (29)); (gen (3)); zero ]);
          (add [ (gen (1)); (gen (19)); (gen (6)) ]); (opp (gen (6))) ] in
    let x1 =
      add
        [ (mul [ one; (gen (43)); (gen (45)) ]);
          (add [ zero; (gen (19)); (gen (3)) ]);
          (add [ one; (gen (46)); (gen (29)) ]) ] in
    mul [ x0; one; x1 ] = mul [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (90)
  (try (let x0 = one in mul [ one; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (91)
  (try (let x0 = opp (gen (18)) in mul [ one; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (92)
  (try
   (let x0 =
      mul
        [ (opp (gen (11))); (add [ one; zero; (gen (20)) ]);
          (mul [ (gen (18)); (gen (11)); one ]) ] in
    mul [ one; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (93)
  (try (let x0 = gen (5) in mul [ one; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (94)
  (try (let x0 = opp (gen (18)) in mul [ one; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (95)
  (try
   (let x0 = opp (mul [ (gen (9)); (gen (12)); (gen (6)) ]) in
    mul [ x0; one; one ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (96)
  (try
   (let x0 =
      add
        [ (add [ (gen (15)); (gen (17)); (gen (10)) ]); (gen (10));
          (add [ (gen (5)); (gen (20)); (gen (19)) ]) ] in
    mul [ x0; one; one ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (97)
  (try
   (let x0 =
      add
        [ (add [ (gen (15)); (gen (17)); (gen (10)) ]); (gen (10));
          (add [ (gen (5)); (gen (20)); (gen (19)) ]) ] in
    mul [ x0; one; one ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (98)
  (try (let x0 = gen (10) in mul [ x0; one; one ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (99)
  (try
   (let x0 =
      add
        [ (mul [ (gen (19)); zero; one ]); (mul [ one; (gen (10)); one ]);
          (gen (6)) ] in
    mul [ x0; one; one ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (100)
  (try
   (let x0 =
      add
        [ (mul [ (gen (6)); (gen (66)); (gen (3)) ]);
          (add [ (gen (39)); zero; zero ]);
          (add [ zero; (gen (53)); (gen (59)) ]) ] in
    let x1 =
      mul
        [ (opp (gen (74))); (mul [ (gen (70)); (gen (21)); one ]);
          (mul [ one; (gen (28)); (gen (46)) ]) ] in
    let x2 = opp (opp (gen (6))) in
    mul [ x0; x1; (add [ x0; x1; x2 ]); x2 ] =
    add
      [ (mul [ x0; x1; x0; x2 ]); (mul [ x0; x1; x1; x2 ]);
        (mul [ x0; x1; x2; x2 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (101)
  (try
   (let x0 = opp (opp (gen (22))) in
    let x1 = gen (40) in
    let x2 = mul [ (add [ zero; one; (gen (14)) ]); one; (gen (54)) ] in
    mul [ x0; x1; (add [ x0; x1; x2 ]); x2 ] =
    add
      [ (mul [ x0; x1; x0; x2 ]); (mul [ x0; x1; x1; x2 ]);
        (mul [ x0; x1; x2; x2 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (102)
  (try
   (let x0 = opp (opp (gen (22))) in
    let x1 =
      add
        [ (mul [ (gen (6)); (gen (66)); (gen (3)) ]);
          (add [ (gen (39)); zero; zero ]);
          (add [ zero; (gen (53)); (gen (59)) ]) ] in
    let x2 =
      add
        [ (mul [ (gen (6)); (gen (66)); (gen (3)) ]);
          (add [ (gen (39)); zero; zero ]);
          (add [ zero; (gen (53)); (gen (59)) ]) ] in
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
      mul
        [ (add [ zero; (gen (44)); (gen (33)) ]);
          (mul [ zero; (gen (4)); (gen (47)) ]); (gen (72)) ] in
    let x1 =
      add
        [ (mul [ (gen (6)); (gen (66)); (gen (3)) ]);
          (add [ (gen (39)); zero; zero ]);
          (add [ zero; (gen (53)); (gen (59)) ]) ] in
    let x2 = opp (mul [ (gen (61)); (gen (38)); (gen (63)) ]) in
    mul [ x0; x1; (add [ x0; x1; x2 ]); x2 ] =
    add
      [ (mul [ x0; x1; x0; x2 ]); (mul [ x0; x1; x1; x2 ]);
        (mul [ x0; x1; x2; x2 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (104)
  (try
   (let x0 =
      mul
        [ (gen (12)); (mul [ (gen (70)); (gen (21)); one ]); (opp (gen (54))) ] in
    let x1 = mul [ (add [ zero; one; (gen (14)) ]); one; (gen (54)) ] in
    let x2 = opp (mul [ (gen (61)); (gen (38)); (gen (63)) ]) in
    mul [ x0; x1; (add [ x0; x1; x2 ]); x2 ] =
    add
      [ (mul [ x0; x1; x0; x2 ]); (mul [ x0; x1; x1; x2 ]);
        (mul [ x0; x1; x2; x2 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (105)
  (try
   (let x0 = opp (opp (gen (10))) in
    let x1 =
      mul
        [ (opp (gen (65))); (add [ zero; (gen (53)); (gen (33)) ]);
          (mul [ (gen (12)); (gen (44)); (gen (30)) ]) ] in
    let x2 =
      add
        [ (opp (gen (48))); (mul [ (gen (66)); (gen (57)); one ]);
          (add [ (gen (14)); (gen (69)); (gen (39)) ]) ] in
    mul [ (add [ x0; x1; x2 ]); x0 ] =
    add [ (mul [ x0; x0 ]); (mul [ x1; x0 ]); (mul [ x2; x0 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (106)
  (try
   (let x0 =
      mul
        [ (mul [ (gen (41)); (gen (12)); (gen (3)) ]); (opp (gen (55)));
          (add [ (gen (49)); zero; (gen (33)) ]) ] in
    let x1 = opp (opp (gen (10))) in
    let x2 =
      add
        [ (opp (gen (74))); (gen (19));
          (mul [ zero; (gen (59)); (gen (48)) ]) ] in
    mul [ (add [ x0; x1; x2 ]); x0 ] =
    add [ (mul [ x0; x0 ]); (mul [ x1; x0 ]); (mul [ x2; x0 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (107)
  (try
   (let x0 = opp (opp (gen (10))) in
    let x1 =
      mul
        [ (opp (gen (35))); (opp (gen (55)));
          (add [ (gen (14)); (gen (50)); (gen (18)) ]) ] in
    let x2 =
      add
        [ (mul [ zero; zero; (gen (50)) ]);
          (add [ (gen (26)); (gen (45)); (gen (7)) ]);
          (add [ (gen (14)); (gen (15)); (gen (27)) ]) ] in
    mul [ (add [ x0; x1; x2 ]); x0 ] =
    add [ (mul [ x0; x0 ]); (mul [ x1; x0 ]); (mul [ x2; x0 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (108)
  (try
   (let x0 =
      add
        [ (mul [ zero; zero; (gen (50)) ]);
          (add [ (gen (26)); (gen (45)); (gen (7)) ]);
          (add [ (gen (14)); (gen (15)); (gen (27)) ]) ] in
    let x1 =
      mul
        [ (opp (gen (35))); (opp (gen (55)));
          (add [ (gen (14)); (gen (50)); (gen (18)) ]) ] in
    let x2 = opp (add [ (gen (58)); (gen (7)); one ]) in
    mul [ (add [ x0; x1; x2 ]); x0 ] =
    add [ (mul [ x0; x0 ]); (mul [ x1; x0 ]); (mul [ x2; x0 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (109)
  (try
   (let x0 = gen (1) in
    let x1 = opp (add [ (gen (58)); (gen (7)); one ]) in
    let x2 =
      add
        [ (opp (gen (74))); (gen (19));
          (mul [ zero; (gen (59)); (gen (48)) ]) ] in
    mul [ (add [ x0; x1; x2 ]); x0 ] =
    add [ (mul [ x0; x0 ]); (mul [ x1; x0 ]); (mul [ x2; x0 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (110)
  (try
   (let x0 = mul [ one; (gen (47)); (opp (gen (60))) ] in
    let x1 =
      add
        [ (mul [ (gen (63)); zero; (gen (41)) ]);
          (add [ (gen (14)); (gen (55)); (gen (37)) ]);
          (add [ (gen (36)); (gen (63)); zero ]) ] in
    let x2 =
      mul
        [ (mul [ (gen (24)); (gen (28)); one ]);
          (add [ (gen (60)); (gen (52)); (gen (27)) ]); (gen (0)) ] in
    mul [ x0; x1; (opp x0); x2 ] = opp (mul [ x0; x1; x0; x2 ])) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (111)
  (try
   (let x0 =
      add [ (mul [ (gen (63)); zero; (gen (41)) ]); (gen (43)); (gen (65)) ] in
    let x1 = gen (9) in
    let x2 =
      add
        [ (mul [ (gen (63)); zero; (gen (41)) ]);
          (mul [ (gen (0)); one; (gen (71)) ]);
          (add [ (gen (36)); (gen (63)); zero ]) ] in
    mul [ x0; x1; (opp x0); x2 ] = opp (mul [ x0; x1; x0; x2 ])) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (112)
  (try
   (let x0 = opp (gen (22)) in
    let x1 = gen (61) in
    let x2 = gen (9) in
    mul [ x0; x1; (opp x0); x2 ] = opp (mul [ x0; x1; x0; x2 ])) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (113)
  (try
   (let x0 = opp (mul [ one; (gen (28)); (gen (39)) ]) in
    let x1 = gen (9) in
    let x2 = gen (9) in
    mul [ x0; x1; (opp x0); x2 ] = opp (mul [ x0; x1; x0; x2 ])) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (114)
  (try
   (let x0 =
      mul
        [ (opp (gen (55))); (mul [ (gen (67)); (gen (6)); (gen (51)) ]);
          (mul [ (gen (36)); (gen (58)); (gen (6)) ]) ] in
    let x1 = gen (63) in
    let x2 = gen (61) in
    mul [ x0; x1; (opp x0); x2 ] = opp (mul [ x0; x1; x0; x2 ])) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (115)
  (try
   (let x0 =
      add
        [ (mul [ (gen (6)); (gen (24)); (gen (23)) ]);
          (mul [ (gen (5)); (gen (9)); (gen (6)) ]); (gen (2)) ] in
    mul [ (opp x0); x0 ] = opp (mul [ x0; x0 ])) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (116)
  (try
   (let x0 = mul [ (gen (18)); (opp one); (opp (gen (17))) ] in
    mul [ (opp x0); x0 ] = opp (mul [ x0; x0 ])) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (117)
  (try
   (let x0 = opp (add [ zero; zero; (gen (9)) ]) in
    mul [ (opp x0); x0 ] = opp (mul [ x0; x0 ])) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (118)
  (try
   (let x0 =
      add [ (gen (10)); zero; (mul [ (gen (18)); (gen (15)); (gen (0)) ]) ] in
    mul [ (opp x0); x0 ] = opp (mul [ x0; x0 ])) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (119)
  (try
   (let x0 = opp (mul [ (gen (14)); (gen (4)); one ]) in
    mul [ (opp x0); x0 ] = opp (mul [ x0; x0 ])) with
   | Failure "Division by Absorbent" -> true)
;;

