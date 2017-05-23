open Group_null_list_sharing
;;

open Gentest
;;

testing ("Group_null_list_sharing (automatic) - seed: 775136229")
;;

testi
  (0)
  (let x0 = opp zero in
   let x1 = opp (add [ zero; zero; zero ]) in
   let x2 = opp (add [ zero; zero; zero ]) in
   add [ (add [ x0; x1 ]); x2 ] = add [ x0; x1; x2 ])
;;

testi
  (1)
  (let x0 = opp (add [ zero; zero; zero ]) in
   let x1 = opp (add [ zero; zero; zero ]) in
   let x2 =
     add
       [ (add [ zero; zero; zero ]); (add [ zero; zero; zero ]);
         (add [ zero; zero; zero ]) ] in
   add [ (add [ x0; x1 ]); x2 ] = add [ x0; x1; x2 ])
;;

testi
  (2)
  (let x0 = opp (opp zero) in
   let x1 =
     add
       [ (add [ zero; zero; zero ]); (add [ zero; zero; zero ]);
         (add [ zero; zero; zero ]) ] in
   let x2 = add [ (opp zero); (add [ zero; zero; zero ]); (opp zero) ] in
   add [ (add [ x0; x1 ]); x2 ] = add [ x0; x1; x2 ])
;;

testi
  (3)
  (let x0 =
     add
       [ (add [ zero; zero; zero ]); (add [ zero; zero; zero ]);
         (add [ zero; zero; zero ]) ] in
   let x1 = zero in
   let x2 =
     add
       [ (add [ zero; zero; zero ]); (add [ zero; zero; zero ]);
         (add [ zero; zero; zero ]) ] in
   add [ (add [ x0; x1 ]); x2 ] = add [ x0; x1; x2 ])
;;

testi
  (4)
  (let x0 = add [ (opp zero); (add [ zero; zero; zero ]); (opp zero) ] in
   let x1 = add [ (opp zero); (add [ zero; zero; zero ]); (opp zero) ] in
   let x2 =
     add
       [ (add [ zero; zero; zero ]); (add [ zero; zero; zero ]);
         (add [ zero; zero; zero ]) ] in
   add [ (add [ x0; x1 ]); x2 ] = add [ x0; x1; x2 ])
;;

testi
  (5)
  (let x0 = opp zero in
   let x1 = opp zero in
   let x2 = add [ (add [ zero; zero; zero ]); (opp zero); (opp zero) ] in
   let x3 =
     add
       [ (add [ zero; zero; zero ]); (add [ zero; zero; zero ]); (opp zero) ] in
   let x4 = opp (opp zero) in
   add [ x0; (add [ x1; x2 ]); (add [ x3; x4 ]) ] =
   add [ x0; x1; x2; x3; x4 ])
;;

testi
  (6)
  (let x0 =
     add
       [ (add [ zero; zero; zero ]); (opp zero); (add [ zero; zero; zero ]) ] in
   let x1 = opp (opp zero) in
   let x2 = opp (add [ zero; zero; zero ]) in
   let x3 = opp (opp zero) in
   let x4 = opp (add [ zero; zero; zero ]) in
   add [ x0; (add [ x1; x2 ]); (add [ x3; x4 ]) ] =
   add [ x0; x1; x2; x3; x4 ])
;;

testi
  (7)
  (let x0 =
     add
       [ (opp zero); (add [ zero; zero; zero ]); (add [ zero; zero; zero ]) ] in
   let x1 = opp (add [ zero; zero; zero ]) in
   let x2 = opp (add [ zero; zero; zero ]) in
   let x3 = opp (add [ zero; zero; zero ]) in
   let x4 = opp (opp zero) in
   add [ x0; (add [ x1; x2 ]); (add [ x3; x4 ]) ] =
   add [ x0; x1; x2; x3; x4 ])
;;

testi
  (8)
  (let x0 = opp zero in
   let x1 = opp (add [ zero; zero; zero ]) in
   let x2 = opp (opp zero) in
   let x3 = opp (add [ zero; zero; zero ]) in
   let x4 = add [ (opp zero); (opp zero); (opp zero) ] in
   add [ x0; (add [ x1; x2 ]); (add [ x3; x4 ]) ] =
   add [ x0; x1; x2; x3; x4 ])
;;

testi
  (9)
  (let x0 =
     add
       [ (add [ zero; zero; zero ]); (opp zero); (add [ zero; zero; zero ]) ] in
   let x1 = opp (opp zero) in
   let x2 = add [ (opp zero); (opp zero); (opp zero) ] in
   let x3 = add [ (add [ zero; zero; zero ]); (opp zero); (opp zero) ] in
   let x4 = opp (add [ zero; zero; zero ]) in
   add [ x0; (add [ x1; x2 ]); (add [ x3; x4 ]) ] =
   add [ x0; x1; x2; x3; x4 ])
;;

testi
  (10)
  (let x0 = opp (add [ zero; zero; zero ]) in
   let x1 = opp (add [ zero; zero; zero ]) in
   let x2 = opp (opp zero) in
   let x3 = add [ (opp zero); (opp zero); (opp zero) ] in
   add [ (add [ x0; x1; x2 ]); x3 ] = add [ x0; x1; x2; x3 ])
;;

testi
  (11)
  (let x0 = opp (add [ zero; zero; zero ]) in
   let x1 = opp (add [ zero; zero; zero ]) in
   let x2 =
     add
       [ (add [ zero; zero; zero ]); (add [ zero; zero; zero ]); (opp zero) ] in
   let x3 = add [ (add [ zero; zero; zero ]); (opp zero); zero ] in
   add [ (add [ x0; x1; x2 ]); x3 ] = add [ x0; x1; x2; x3 ])
;;

testi
  (12)
  (let x0 = add [ (opp zero); (opp zero); (opp zero) ] in
   let x1 = opp (opp zero) in
   let x2 =
     add
       [ (add [ zero; zero; zero ]); (add [ zero; zero; zero ]); (opp zero) ] in
   let x3 =
     add
       [ (add [ zero; zero; zero ]); (opp zero); (add [ zero; zero; zero ]) ] in
   add [ (add [ x0; x1; x2 ]); x3 ] = add [ x0; x1; x2; x3 ])
;;

testi
  (13)
  (let x0 = opp (add [ zero; zero; zero ]) in
   let x1 = add [ (opp zero); (add [ zero; zero; zero ]); (opp zero) ] in
   let x2 = add [ (add [ zero; zero; zero ]); (opp zero); zero ] in
   let x3 = opp (add [ zero; zero; zero ]) in
   add [ (add [ x0; x1; x2 ]); x3 ] = add [ x0; x1; x2; x3 ])
;;

testi
  (14)
  (let x0 = opp (opp zero) in
   let x1 = add [ (opp zero); (opp zero); (add [ zero; zero; zero ]) ] in
   let x2 = opp (opp zero) in
   let x3 = opp (opp zero) in
   add [ (add [ x0; x1; x2 ]); x3 ] = add [ x0; x1; x2; x3 ])
;;

testi
  (15)
  (let x0 = opp (add [ zero; zero; zero ]) in
   let x1 = opp zero in
   let x2 = add [ (add [ zero; zero; zero ]); (opp zero); (opp zero) ] in
   let x3 = opp (opp zero) in add [ x0; x1; x2; x3 ] = add [ x1; x0; x3; x2 ])
;;

testi
  (16)
  (let x0 = opp zero in
   let x1 =
     add
       [ (add [ zero; zero; zero ]); (add [ zero; zero; zero ]); (opp zero) ] in
   let x2 = add [ (opp zero); (opp zero); (add [ zero; zero; zero ]) ] in
   let x3 = opp zero in add [ x0; x1; x2; x3 ] = add [ x1; x0; x3; x2 ])
;;

testi
  (17)
  (let x0 =
     add
       [ (opp zero); (add [ zero; zero; zero ]); (add [ zero; zero; zero ]) ] in
   let x1 = opp zero in
   let x2 =
     add
       [ (add [ zero; zero; zero ]); (add [ zero; zero; zero ]); (opp zero) ] in
   let x3 = add [ (opp zero); (add [ zero; zero; zero ]); (opp zero) ] in
   add [ x0; x1; x2; x3 ] = add [ x1; x0; x3; x2 ])
;;

testi
  (18)
  (let x0 = opp (opp zero) in
   let x1 = opp (opp zero) in
   let x2 =
     add
       [ (add [ zero; zero; zero ]); (add [ zero; zero; zero ]); (opp zero) ] in
   let x3 =
     add
       [ (opp zero); (add [ zero; zero; zero ]); (add [ zero; zero; zero ]) ] in
   add [ x0; x1; x2; x3 ] = add [ x1; x0; x3; x2 ])
;;

testi
  (19)
  (let x0 = add [ (opp zero); (opp zero); (add [ zero; zero; zero ]) ] in
   let x1 = opp (add [ zero; zero; zero ]) in
   let x2 = opp (add [ zero; zero; zero ]) in
   let x3 =
     add
       [ (add [ zero; zero; zero ]); (opp zero); (add [ zero; zero; zero ]) ] in
   add [ x0; x1; x2; x3 ] = add [ x1; x0; x3; x2 ])
;;

testi
  (20)
  (let x0 = opp (opp zero) in
   let x1 = add [ (opp zero); (add [ zero; zero; zero ]); zero ] in
   let x2 = opp (opp zero) in
   let x3 = add [ (opp zero); (add [ zero; zero; zero ]); zero ] in
   add [ x0; x1; x2; x3 ] = add [ x3; x1; x2; x0 ])
;;

testi
  (21)
  (let x0 = add [ (opp zero); (add [ zero; zero; zero ]); (opp zero) ] in
   let x1 = add [ (opp zero); (opp zero); (add [ zero; zero; zero ]) ] in
   let x2 = add [ (opp zero); (opp zero); (add [ zero; zero; zero ]) ] in
   let x3 = add [ (opp zero); (add [ zero; zero; zero ]); (opp zero) ] in
   add [ x0; x1; x2; x3 ] = add [ x3; x1; x2; x0 ])
;;

testi
  (22)
  (let x0 = add [ (add [ zero; zero; zero ]); (opp zero); zero ] in
   let x1 = opp (opp zero) in
   let x2 = add [ (opp zero); (add [ zero; zero; zero ]); (opp zero) ] in
   let x3 = opp (opp zero) in add [ x0; x1; x2; x3 ] = add [ x3; x1; x2; x0 ])
;;

testi
  (23)
  (let x0 =
     add [ (add [ zero; zero; zero ]); (add [ zero; zero; zero ]); zero ] in
   let x1 = opp (opp zero) in
   let x2 = opp (add [ zero; zero; zero ]) in
   let x3 = add [ (opp zero); (add [ zero; zero; zero ]); (opp zero) ] in
   add [ x0; x1; x2; x3 ] = add [ x3; x1; x2; x0 ])
;;

testi
  (24)
  (let x0 = add [ (opp zero); (add [ zero; zero; zero ]); (opp zero) ] in
   let x1 = opp (add [ zero; zero; zero ]) in
   let x2 = add [ (opp zero); (add [ zero; zero; zero ]); zero ] in
   let x3 = add [ (opp zero); (opp zero); (opp zero) ] in
   add [ x0; x1; x2; x3 ] = add [ x3; x1; x2; x0 ])
;;

testi
  (25)
  (let x0 = zero in
   let x1 = opp (add [ zero; zero; zero ]) in
   let x2 = opp (add [ zero; zero; zero ]) in
   let x3 = opp (opp zero) in add [ x0; x1; x2; x3 ] = add [ x3; x2; x1; x0 ])
;;

testi
  (26)
  (let x0 =
     add
       [ (add [ zero; zero; zero ]); (add [ zero; zero; zero ]); (opp zero) ] in
   let x1 = opp (add [ zero; zero; zero ]) in
   let x2 = opp (add [ zero; zero; zero ]) in
   let x3 = opp (add [ zero; zero; zero ]) in
   add [ x0; x1; x2; x3 ] = add [ x3; x2; x1; x0 ])
;;

testi
  (27)
  (let x0 = opp (opp zero) in
   let x1 = opp (opp zero) in
   let x2 =
     add
       [ (add [ zero; zero; zero ]); (add [ zero; zero; zero ]); (opp zero) ] in
   let x3 = add [ (add [ zero; zero; zero ]); zero; (opp zero) ] in
   add [ x0; x1; x2; x3 ] = add [ x3; x2; x1; x0 ])
;;

testi
  (28)
  (let x0 =
     add
       [ (opp zero); (add [ zero; zero; zero ]); (add [ zero; zero; zero ]) ] in
   let x1 =
     add
       [ (add [ zero; zero; zero ]); (add [ zero; zero; zero ]);
         (add [ zero; zero; zero ]) ] in
   let x2 = opp (add [ zero; zero; zero ]) in
   let x3 =
     add
       [ (opp zero); (add [ zero; zero; zero ]); (add [ zero; zero; zero ]) ] in
   add [ x0; x1; x2; x3 ] = add [ x3; x2; x1; x0 ])
;;

testi
  (29)
  (let x0 =
     add
       [ (opp zero); (add [ zero; zero; zero ]); (add [ zero; zero; zero ]) ] in
   let x1 = add [ (opp zero); (add [ zero; zero; zero ]); (opp zero) ] in
   let x2 =
     add
       [ (opp zero); (add [ zero; zero; zero ]); (add [ zero; zero; zero ]) ] in
   let x3 = add [ (opp zero); (add [ zero; zero; zero ]); (opp zero) ] in
   add [ x0; x1; x2; x3 ] = add [ x3; x2; x1; x0 ])
;;

testi
  (30)
  (let x0 = opp (opp zero) in
   let x1 = add [ (opp zero); (add [ zero; zero; zero ]); (opp zero) ] in
   let x2 = add [ (opp zero); (add [ zero; zero; zero ]); (opp zero) ] in
   let x3 = opp (opp zero) in add [ x0; x1; x2; x3 ] = add [ x2; x1; x0; x3 ])
;;

testi
  (31)
  (let x0 = add [ (opp zero); (add [ zero; zero; zero ]); (opp zero) ] in
   let x1 = opp (add [ zero; zero; zero ]) in
   let x2 = add [ (opp zero); (add [ zero; zero; zero ]); (opp zero) ] in
   let x3 = opp (opp zero) in add [ x0; x1; x2; x3 ] = add [ x2; x1; x0; x3 ])
;;

testi
  (32)
  (let x0 = zero in
   let x1 = add [ (opp zero); (add [ zero; zero; zero ]); (opp zero) ] in
   let x2 = zero in
   let x3 = opp (opp zero) in add [ x0; x1; x2; x3 ] = add [ x2; x1; x0; x3 ])
;;

testi
  (33)
  (let x0 = add [ (opp zero); (add [ zero; zero; zero ]); (opp zero) ] in
   let x1 =
     add
       [ (add [ zero; zero; zero ]); (opp zero); (add [ zero; zero; zero ]) ] in
   let x2 = zero in
   let x3 = add [ (add [ zero; zero; zero ]); (opp zero); (opp zero) ] in
   add [ x0; x1; x2; x3 ] = add [ x2; x1; x0; x3 ])
;;

testi
  (34)
  (let x0 = opp (opp zero) in
   let x1 = opp (add [ zero; zero; zero ]) in
   let x2 = opp (add [ zero; zero; zero ]) in
   let x3 = opp (opp zero) in add [ x0; x1; x2; x3 ] = add [ x2; x1; x0; x3 ])
;;

testi
  (35)
  (let x0 = add [ zero; (add [ zero; zero; zero ]); (opp zero) ] in
   let x1 = opp (add [ zero; zero; zero ]) in
   add [ x0; zero; x1 ] = add [ x0; x1 ])
;;

testi
  (36)
  (let x0 = opp (add [ zero; zero; zero ]) in
   let x1 = add [ zero; (opp zero); (add [ zero; zero; zero ]) ] in
   add [ x0; zero; x1 ] = add [ x0; x1 ])
;;

testi
  (37)
  (let x0 = opp (add [ zero; zero; zero ]) in
   let x1 = opp (add [ zero; zero; zero ]) in
   add [ x0; zero; x1 ] = add [ x0; x1 ])
;;

testi
  (38)
  (let x0 =
     add
       [ (add [ zero; zero; zero ]); (opp zero); (add [ zero; zero; zero ]) ] in
   let x1 = add [ zero; (opp zero); (add [ zero; zero; zero ]) ] in
   add [ x0; zero; x1 ] = add [ x0; x1 ])
;;

testi
  (39)
  (let x0 = opp (add [ zero; zero; zero ]) in
   let x1 = add [ (add [ zero; zero; zero ]); (opp zero); (opp zero) ] in
   add [ x0; zero; x1 ] = add [ x0; x1 ])
;;

testi (40) (let x0 = opp (opp zero) in add [ zero; x0 ] = x0)
;;

testi
  (41)
  (let x0 = add [ zero; (opp zero); (opp zero) ] in add [ zero; x0 ] = x0)
;;

testi
  (42)
  (let x0 = add [ zero; (opp zero); (add [ zero; zero; zero ]) ] in
   add [ zero; x0 ] = x0)
;;

testi (43) (let x0 = zero in add [ zero; x0 ] = x0)
;;

testi
  (44)
  (let x0 = add [ zero; (opp zero); (opp zero) ] in add [ zero; x0 ] = x0)
;;

testi (45) (let x0 = opp (opp zero) in add [ x0; zero; zero ] = x0)
;;

testi
  (46)
  (let x0 = opp (add [ zero; zero; zero ]) in add [ x0; zero; zero ] = x0)
;;

testi
  (47)
  (let x0 =
     add
       [ (add [ zero; zero; zero ]); (add [ zero; zero; zero ]);
         (add [ zero; zero; zero ]) ] in
   add [ x0; zero; zero ] = x0)
;;

testi (48) (let x0 = zero in add [ x0; zero; zero ] = x0)
;;

testi
  (49)
  (let x0 = opp (add [ zero; zero; zero ]) in add [ x0; zero; zero ] = x0)
;;

