open Group_1_list
;;

open Gentest
;;

testing ("Group_1_list (automatic) - seed: 596286957")
;;

testi
  (0)
  (let x0 = opp one in
   let x1 = opp (add [ one; zero; one ]) in
   let x2 = opp (add [ zero; one; one ]) in
   add [ (add [ x0; x1 ]); x2 ] = add [ x0; x1; x2 ])
;;

testi
  (1)
  (let x0 =
     add [ (add [ one; one; one ]); (add [ zero; one; one ]); (opp one) ] in
   let x1 = add [ (opp one); (opp one); (opp zero) ] in
   let x2 = add [ (opp one); (opp zero); (opp one) ] in
   add [ (add [ x0; x1 ]); x2 ] = add [ x0; x1; x2 ])
;;

testi
  (2)
  (let x0 = add [ (add [ zero; one; one ]); (opp zero); (opp zero) ] in
   let x1 = zero in
   let x2 = add [ (opp one); (opp zero); (opp one) ] in
   add [ (add [ x0; x1 ]); x2 ] = add [ x0; x1; x2 ])
;;

testi
  (3)
  (let x0 = add [ (opp one); (opp one); (opp zero) ] in
   let x1 =
     add [ (add [ one; one; one ]); (opp zero); (add [ one; one; one ]) ] in
   let x2 =
     add [ (opp one); (add [ zero; zero; zero ]); (add [ one; one; one ]) ] in
   add [ (add [ x0; x1 ]); x2 ] = add [ x0; x1; x2 ])
;;

testi
  (4)
  (let x0 = add [ (opp one); (add [ zero; zero; one ]); (opp zero) ] in
   let x1 =
     add [ (add [ one; one; one ]); (add [ zero; one; one ]); (opp zero) ] in
   let x2 = opp (add [ zero; one; one ]) in
   add [ (add [ x0; x1 ]); x2 ] = add [ x0; x1; x2 ])
;;

testi
  (5)
  (let x0 = add [ (opp zero); (opp one); (add [ one; one; one ]) ] in
   let x1 =
     add [ (add [ zero; zero; zero ]); (add [ one; zero; zero ]); (opp one) ] in
   let x2 = add [ (opp one); (opp one); (add [ zero; zero; one ]) ] in
   let x3 = opp (add [ one; zero; one ]) in
   let x4 =
     add [ (add [ zero; zero; zero ]); (add [ one; zero; zero ]); (opp one) ] in
   add [ x0; (add [ x1; x2 ]); (add [ x3; x4 ]) ] =
   add [ x0; x1; x2; x3; x4 ])
;;

testi
  (6)
  (let x0 = opp (add [ zero; zero; zero ]) in
   let x1 = opp (add [ zero; zero; zero ]) in
   let x2 = opp (add [ one; zero; one ]) in
   let x3 = add [ (opp zero); (add [ zero; one; one ]); (opp zero) ] in
   let x4 =
     add [ (add [ zero; zero; zero ]); zero; (add [ zero; one; zero ]) ] in
   add [ x0; (add [ x1; x2 ]); (add [ x3; x4 ]) ] =
   add [ x0; x1; x2; x3; x4 ])
;;

testi
  (7)
  (let x0 = add [ (opp one); (opp one); (add [ zero; zero; one ]) ] in
   let x1 = opp (add [ zero; zero; zero ]) in
   let x2 = add [ (opp one); (opp one); (add [ zero; zero; one ]) ] in
   let x3 = one in
   let x4 = opp (add [ one; zero; one ]) in
   add [ x0; (add [ x1; x2 ]); (add [ x3; x4 ]) ] =
   add [ x0; x1; x2; x3; x4 ])
;;

testi
  (8)
  (let x0 = add [ (opp one); (opp one); (add [ zero; zero; one ]) ] in
   let x1 = opp (add [ one; zero; one ]) in
   let x2 = add [ (opp zero); (opp one); (add [ one; one; one ]) ] in
   let x3 = add [ (add [ one; one; one ]); (opp one); (opp zero) ] in
   let x4 = add [ (add [ one; one; one ]); (opp one); (opp zero) ] in
   add [ x0; (add [ x1; x2 ]); (add [ x3; x4 ]) ] =
   add [ x0; x1; x2; x3; x4 ])
;;

testi
  (9)
  (let x0 = opp (add [ zero; zero; zero ]) in
   let x1 = add [ (opp one); (opp one); (add [ zero; zero; one ]) ] in
   let x2 =
     add [ (add [ zero; zero; zero ]); (opp zero); (add [ one; one; one ]) ] in
   let x3 = add [ (add [ one; one; one ]); (opp one); (opp zero) ] in
   let x4 =
     add [ (add [ zero; zero; zero ]); (opp zero); (add [ one; one; one ]) ] in
   add [ x0; (add [ x1; x2 ]); (add [ x3; x4 ]) ] =
   add [ x0; x1; x2; x3; x4 ])
;;

testi
  (10)
  (let x0 = zero in
   let x1 = opp one in
   let x2 = opp one in
   let x3 =
     add [ (opp zero); (add [ zero; zero; zero ]); (add [ one; one; one ]) ] in
   add [ (add [ x0; x1; x2 ]); x3 ] = add [ x0; x1; x2; x3 ])
;;

testi
  (11)
  (let x0 = opp (add [ zero; zero; one ]) in
   let x1 =
     add [ (opp zero); (add [ zero; zero; one ]); (add [ zero; one; one ]) ] in
   let x2 = opp (opp one) in
   let x3 = add [ (opp one); (opp zero); (add [ zero; one; zero ]) ] in
   add [ (add [ x0; x1; x2 ]); x3 ] = add [ x0; x1; x2; x3 ])
;;

testi
  (12)
  (let x0 =
     add [ (add [ zero; zero; zero ]); (opp zero); (add [ one; one; one ]) ] in
   let x1 = opp (add [ one; one; zero ]) in
   let x2 =
     add [ (add [ one; one; one ]); (opp zero); (add [ zero; zero; one ]) ] in
   let x3 = opp (add [ zero; zero; one ]) in
   add [ (add [ x0; x1; x2 ]); x3 ] = add [ x0; x1; x2; x3 ])
;;

testi
  (13)
  (let x0 = opp (add [ zero; zero; one ]) in
   let x1 = add [ (opp zero); (opp zero); (opp zero) ] in
   let x2 =
     add [ (opp one); (add [ one; one; zero ]); (add [ zero; one; zero ]) ] in
   let x3 = opp one in
   add [ (add [ x0; x1; x2 ]); x3 ] = add [ x0; x1; x2; x3 ])
;;

testi
  (14)
  (let x0 = opp (add [ zero; zero; one ]) in
   let x1 =
     add [ (opp zero); (add [ zero; zero; zero ]); (add [ one; one; one ]) ] in
   let x2 = opp (add [ zero; zero; one ]) in
   let x3 =
     add [ (opp one); (add [ one; one; zero ]); (add [ zero; one; zero ]) ] in
   add [ (add [ x0; x1; x2 ]); x3 ] = add [ x0; x1; x2; x3 ])
;;

testi
  (15)
  (let x0 = add [ (add [ one; zero; one ]); one; zero ] in
   let x1 =
     add [ (add [ zero; zero; one ]); (opp zero); (add [ one; one; one ]) ] in
   add [ x0; zero; x1 ] = add [ x0; x1 ])
;;

testi
  (16)
  (let x0 = one in
   let x1 = opp (opp one) in add [ x0; zero; x1 ] = add [ x0; x1 ])
;;

testi
  (17)
  (let x0 = opp (add [ zero; one; zero ]) in
   let x1 = add [ (add [ zero; zero; one ]); (opp zero); (opp zero) ] in
   add [ x0; zero; x1 ] = add [ x0; x1 ])
;;

testi
  (18)
  (let x0 = opp (add [ one; one; zero ]) in
   let x1 =
     add [ (add [ zero; zero; one ]); (add [ one; one; zero ]); (opp zero) ] in
   add [ x0; zero; x1 ] = add [ x0; x1 ])
;;

testi
  (19)
  (let x0 =
     add [ (add [ zero; zero; one ]); (opp zero); (add [ one; one; one ]) ] in
   let x1 = add [ (add [ one; zero; one ]); one; zero ] in
   add [ x0; zero; x1 ] = add [ x0; x1 ])
;;

testi (20) (let x0 = one in add [ zero; x0 ] = x0)
;;

testi (21) (let x0 = opp (opp zero) in add [ zero; x0 ] = x0)
;;

testi
  (22)
  (let x0 = add [ one; (opp one); (add [ zero; one; zero ]) ] in
   add [ zero; x0 ] = x0)
;;

testi
  (23)
  (let x0 = add [ (opp zero); (add [ zero; one; one ]); (opp zero) ] in
   add [ zero; x0 ] = x0)
;;

testi (24) (let x0 = zero in add [ zero; x0 ] = x0)
;;

testi (25) (let x0 = opp zero in add [ x0; zero; zero ] = x0)
;;

testi
  (26)
  (let x0 =
     add [ (add [ one; one; zero ]); (add [ one; zero; zero ]); (opp one) ] in
   add [ x0; zero; zero ] = x0)
;;

testi
  (27)
  (let x0 = opp (add [ one; one; one ]) in add [ x0; zero; zero ] = x0)
;;

testi (28) (let x0 = opp zero in add [ x0; zero; zero ] = x0)
;;

testi
  (29)
  (let x0 =
     add [ (add [ one; one; zero ]); (add [ one; zero; zero ]); (opp one) ] in
   add [ x0; zero; zero ] = x0)
;;

