open Sequence_list
;;

open Gentest
;;

testing ("Sequence_list (automatic) - seed: 961259840")
;;

testi
  (0)
  (let x0 =
     concat
       [ (element (61));
         (concat [ (element (10)); (element (39)); (element (30)) ]);
         (element (72)) ] in
   let x1 = element (7) in
   let x2 =
     concat
       [ (concat [ (element (22)); (element (69)); (element (69)) ]);
         (concat [ (element (10)); (element (72)); (element (30)) ]);
         (element (30)) ] in
   concat [ (concat [ x0; x1 ]); x2 ] = concat [ x0; x1; x2 ])
;;

testi
  (1)
  (let x0 = element (7) in
   let x1 = element (61) in
   let x2 = element (61) in
   concat [ (concat [ x0; x1 ]); x2 ] = concat [ x0; x1; x2 ])
;;

testi
  (2)
  (let x0 = element (35) in
   let x1 = element (15) in
   let x2 = element (35) in
   concat [ (concat [ x0; x1 ]); x2 ] = concat [ x0; x1; x2 ])
;;

testi
  (3)
  (let x0 =
     concat
       [ (concat [ (element (22)); (element (69)); (element (69)) ]);
         (element (51)); (element (30)) ] in
   let x1 = element (15) in
   let x2 =
     concat
       [ (concat [ (element (22)); (element (44)); (element (46)) ]);
         (element (9)); (element (47)) ] in
   concat [ (concat [ x0; x1 ]); x2 ] = concat [ x0; x1; x2 ])
;;

testi
  (4)
  (let x0 = element (61) in
   let x1 =
     concat
       [ (element (61));
         (concat [ (element (10)); (element (39)); (element (30)) ]);
         (element (72)) ] in
   let x2 =
     concat
       [ (element (61));
         (concat [ (element (10)); (element (39)); (element (30)) ]);
         (element (72)) ] in
   concat [ (concat [ x0; x1 ]); x2 ] = concat [ x0; x1; x2 ])
;;

testi
  (5)
  (let x0 = element (25) in
   let x1 =
     concat
       [ (element (74)); (element (12));
         (concat [ (element (102)); (element (112)); (element (87)) ]) ] in
   let x2 = concat [ (element (50)); (element (98)); empty ] in
   let x3 =
     concat
       [ (concat [ (element (80)); (element (98)); (element (28)) ]);
         (element (12)); (element (108)) ] in
   let x4 = element (111) in
   concat [ x0; (concat [ x1; x2 ]); (concat [ x3; x4 ]) ] =
   concat [ x0; x1; x2; x3; x4 ])
;;

testi
  (6)
  (let x0 = element (15) in
   let x1 = element (115) in
   let x2 = element (65) in
   let x3 = element (94) in
   let x4 = concat [ (element (80)); (element (18)); (element (108)) ] in
   concat [ x0; (concat [ x1; x2 ]); (concat [ x3; x4 ]) ] =
   concat [ x0; x1; x2; x3; x4 ])
;;

testi
  (7)
  (let x0 =
     concat
       [ (concat [ (element (95)); (element (119)); (element (28)) ]);
         (concat [ (element (15)); (element (60)); (element (12)) ]);
         (element (123)) ] in
   let x1 = element (48) in
   let x2 =
     concat
       [ (element (80));
         (concat [ (element (92)); (element (71)); (element (12)) ]);
         (concat [ empty; (element (111)); (element (63)) ]) ] in
   let x3 = concat [ (element (116)); (element (124)); (element (123)) ] in
   let x4 = concat [ (element (116)); (element (12)); (element (65)) ] in
   concat [ x0; (concat [ x1; x2 ]); (concat [ x3; x4 ]) ] =
   concat [ x0; x1; x2; x3; x4 ])
;;

testi
  (8)
  (let x0 = concat [ (element (116)); (element (124)); (element (65)) ] in
   let x1 = empty in
   let x2 = element (15) in
   let x3 = element (123) in
   let x4 = concat [ (element (74)); (element (124)); (element (65)) ] in
   concat [ x0; (concat [ x1; x2 ]); (concat [ x3; x4 ]) ] =
   concat [ x0; x1; x2; x3; x4 ])
;;

testi
  (9)
  (let x0 =
     concat
       [ (element (52)); (element (124));
         (concat [ (element (123)); (element (111)); (element (109)) ]) ] in
   let x1 = concat [ (element (116)); (element (124)); (element (65)) ] in
   let x2 = concat [ (element (116)); (element (12)); (element (65)) ] in
   let x3 = element (65) in
   let x4 = element (25) in
   concat [ x0; (concat [ x1; x2 ]); (concat [ x3; x4 ]) ] =
   concat [ x0; x1; x2; x3; x4 ])
;;

testi
  (10)
  (let x0 =
     concat
       [ (concat [ (element (75)); (element (32)); (element (60)) ]);
         (element (18));
         (concat [ (element (98)); (element (63)); (element (73)) ]) ] in
   let x1 = element (14) in
   let x2 = element (84) in
   let x3 =
     concat
       [ (element (2)); (element (18));
         (concat [ (element (74)); (element (0)); empty ]) ] in
   concat [ (concat [ x0; x1; x2 ]); x3 ] = concat [ x0; x1; x2; x3 ])
;;

testi
  (11)
  (let x0 =
     concat
       [ (element (40));
         (concat [ (element (79)); (element (57)); (element (37)) ]);
         (element (14)) ] in
   let x1 =
     concat
       [ (concat [ (element (75)); (element (0)); (element (35)) ]);
         (element (75));
         (concat [ (element (98)); (element (15)); (element (4)) ]) ] in
   let x2 = element (14) in
   let x3 = element (14) in
   concat [ (concat [ x0; x1; x2 ]); x3 ] = concat [ x0; x1; x2; x3 ])
;;

testi
  (12)
  (let x0 =
     concat
       [ (concat [ (element (75)); (element (0)); (element (35)) ]);
         (element (75));
         (concat [ (element (98)); (element (15)); (element (4)) ]) ] in
   let x1 = element (14) in
   let x2 = element (91) in
   let x3 = element (84) in
   concat [ (concat [ x0; x1; x2 ]); x3 ] = concat [ x0; x1; x2; x3 ])
;;

testi
  (13)
  (let x0 = element (86) in
   let x1 =
     concat
       [ (concat [ empty; (element (65)); (element (76)) ]); (element (24));
         (concat [ (element (48)); (element (10)); (element (73)) ]) ] in
   let x2 = element (97) in
   let x3 =
     concat
       [ (concat [ (element (61)); (element (89)); (element (15)) ]);
         (element (24)); (element (14)) ] in
   concat [ (concat [ x0; x1; x2 ]); x3 ] = concat [ x0; x1; x2; x3 ])
;;

testi
  (14)
  (let x0 =
     concat
       [ (concat [ (element (26)); (element (32)); empty ]);
         (concat [ (element (79)); (element (57)); (element (37)) ]);
         (concat [ (element (74)); (element (0)); empty ]) ] in
   let x1 = element (45) in
   let x2 = empty in
   let x3 = element (20) in
   concat [ (concat [ x0; x1; x2 ]); x3 ] = concat [ x0; x1; x2; x3 ])
;;

testi
  (15)
  (let x0 = element (8) in
   let x1 = element (37) in concat [ x0; empty; x1 ] = concat [ x0; x1 ])
;;

testi
  (16)
  (let x0 = element (8) in
   let x1 = element (8) in concat [ x0; empty; x1 ] = concat [ x0; x1 ])
;;

testi
  (17)
  (let x0 = element (8) in
   let x1 = empty in concat [ x0; empty; x1 ] = concat [ x0; x1 ])
;;

testi
  (18)
  (let x0 =
     concat
       [ (concat [ (element (19)); (element (23)); (element (2)) ]);
         (element (18)); (element (28)) ] in
   let x1 =
     concat
       [ (element (31)); (element (39));
         (concat [ (element (9)); empty; (element (44)) ]) ] in
   concat [ x0; empty; x1 ] = concat [ x0; x1 ])
;;

testi
  (19)
  (let x0 = element (9) in
   let x1 =
     concat
       [ (concat [ (element (33)); (element (34)); (element (2)) ]);
         (element (18)); (element (38)) ] in
   concat [ x0; empty; x1 ] = concat [ x0; x1 ])
;;

testi (20) (let x0 = element (8) in concat [ empty; x0 ] = x0)
;;

testi (21) (let x0 = element (19) in concat [ empty; x0 ] = x0)
;;

testi (22) (let x0 = element (9) in concat [ empty; x0 ] = x0)
;;

testi
  (23)
  (let x0 =
     concat
       [ (element (6)); (concat [ (element (16)); empty; (element (10)) ]);
         empty ] in
   concat [ empty; x0 ] = x0)
;;

testi (24) (let x0 = element (19) in concat [ empty; x0 ] = x0)
;;

testi (25) (let x0 = element (21) in concat [ x0; empty; empty ] = x0)
;;

testi (26) (let x0 = element (21) in concat [ x0; empty; empty ] = x0)
;;

testi (27) (let x0 = empty in concat [ x0; empty; empty ] = x0)
;;

testi
  (28)
  (let x0 = concat [ (element (7)); (element (2)); (element (10)) ] in
   concat [ x0; empty; empty ] = x0)
;;

testi (29) (let x0 = element (21) in concat [ x0; empty; empty ] = x0)
;;

