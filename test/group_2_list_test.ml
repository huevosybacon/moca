open Group_2_list
;;

open Gentest
;;

testing ("Group_2_list (automatic) - seed: 397893839")
;;

testi
  (0)
  (let x0 = add [ (opp zero); zero; (add [ one; one; two ]) ] in
   let x1 = add [ (add [ zero; two; zero ]); (opp two); (opp two) ] in
   let x2 = zero in add [ (add [ x0; x1 ]); x2 ] = add [ x0; x1; x2 ])
;;

testi
  (1)
  (let x0 = opp (add [ two; one; two ]) in
   let x1 = add [ (add [ zero; two; zero ]); (opp two); (opp two) ] in
   let x2 = add [ (add [ zero; two; zero ]); (opp two); (opp two) ] in
   add [ (add [ x0; x1 ]); x2 ] = add [ x0; x1; x2 ])
;;

testi
  (2)
  (let x0 = opp (add [ two; one; two ]) in
   let x1 = opp (opp one) in
   let x2 = opp (add [ two; one; two ]) in
   add [ (add [ x0; x1 ]); x2 ] = add [ x0; x1; x2 ])
;;

testi
  (3)
  (let x0 = opp (add [ two; one; two ]) in
   let x1 = add [ (opp two); (add [ one; one; one ]); (opp one) ] in
   let x2 = opp (add [ zero; one; two ]) in
   add [ (add [ x0; x1 ]); x2 ] = add [ x0; x1; x2 ])
;;

testi
  (4)
  (let x0 = opp (add [ two; one; two ]) in
   let x1 = add [ (opp zero); (opp two); (opp zero) ] in
   let x2 = add [ zero; (opp one); (opp zero) ] in
   add [ (add [ x0; x1 ]); x2 ] = add [ x0; x1; x2 ])
;;

testi
  (5)
  (let x0 =
     add [ (add [ zero; zero; one ]); (add [ zero; one; one ]); (opp one) ] in
   let x1 = add [ (add [ zero; one; one ]); (opp two); one ] in
   let x2 = opp (add [ zero; two; zero ]) in
   let x3 = opp (opp one) in
   let x4 = opp (add [ zero; two; zero ]) in
   add [ x0; (add [ x1; x2 ]); (add [ x3; x4 ]) ] =
   add [ x0; x1; x2; x3; x4 ])
;;

testi
  (6)
  (let x0 = opp (add [ zero; two; zero ]) in
   let x1 = opp (opp zero) in
   let x2 = add [ (opp two); (opp zero); (opp zero) ] in
   let x3 = add [ (opp two); (opp two); (add [ one; two; two ]) ] in
   let x4 = opp (add [ zero; two; zero ]) in
   add [ x0; (add [ x1; x2 ]); (add [ x3; x4 ]) ] =
   add [ x0; x1; x2; x3; x4 ])
;;

testi
  (7)
  (let x0 =
     add [ (add [ zero; zero; one ]); (add [ zero; one; one ]); (opp one) ] in
   let x1 = add [ (opp zero); (opp zero); (add [ one; two; two ]) ] in
   let x2 = add [ (opp two); (opp two); (add [ one; two; two ]) ] in
   let x3 = add [ (opp two); (opp zero); (opp zero) ] in
   let x4 = opp (opp zero) in
   add [ x0; (add [ x1; x2 ]); (add [ x3; x4 ]) ] =
   add [ x0; x1; x2; x3; x4 ])
;;

testi
  (8)
  (let x0 = add [ (add [ zero; one; two ]); (opp one); (opp zero) ] in
   let x1 = opp (opp one) in
   let x2 = opp (add [ one; one; zero ]) in
   let x3 = opp (add [ one; zero; zero ]) in
   let x4 = add [ (opp two); (opp one); (opp zero) ] in
   add [ x0; (add [ x1; x2 ]); (add [ x3; x4 ]) ] =
   add [ x0; x1; x2; x3; x4 ])
;;

testi
  (9)
  (let x0 =
     add
       [ (add [ zero; two; two ]); (add [ zero; one; one ]);
         (add [ zero; zero; one ]) ] in
   let x1 = zero in
   let x2 = opp (opp one) in
   let x3 = opp (add [ zero; two; zero ]) in
   let x4 = zero in
   add [ x0; (add [ x1; x2 ]); (add [ x3; x4 ]) ] =
   add [ x0; x1; x2; x3; x4 ])
;;

testi
  (10)
  (let x0 = opp (opp two) in
   let x1 =
     add [ (add [ zero; one; one ]); (opp two); (add [ one; one; zero ]) ] in
   let x2 = opp (opp one) in
   let x3 = opp (add [ zero; one; two ]) in
   add [ (add [ x0; x1; x2 ]); x3 ] = add [ x0; x1; x2; x3 ])
;;

testi
  (11)
  (let x0 = one in
   let x1 = add [ (add [ one; one; zero ]); two; (opp zero) ] in
   let x2 = opp (opp one) in
   let x3 = add [ (opp zero); (opp two); (add [ one; one; zero ]) ] in
   add [ (add [ x0; x1; x2 ]); x3 ] = add [ x0; x1; x2; x3 ])
;;

testi
  (12)
  (let x0 = opp (add [ zero; one; two ]) in
   let x1 = add [ (opp zero); (opp two); (add [ one; one; zero ]) ] in
   let x2 = add [ (opp one); one; (add [ zero; two; zero ]) ] in
   let x3 = opp (opp two) in
   add [ (add [ x0; x1; x2 ]); x3 ] = add [ x0; x1; x2; x3 ])
;;

testi
  (13)
  (let x0 = opp (opp zero) in
   let x1 = add [ (add [ two; zero; two ]); two; (add [ one; one; zero ]) ] in
   let x2 = opp (add [ two; one; zero ]) in
   let x3 = opp (opp one) in
   add [ (add [ x0; x1; x2 ]); x3 ] = add [ x0; x1; x2; x3 ])
;;

testi
  (14)
  (let x0 = zero in
   let x1 = add [ (opp zero); (opp two); (add [ one; one; zero ]) ] in
   let x2 = opp (opp two) in
   let x3 = zero in add [ (add [ x0; x1; x2 ]); x3 ] = add [ x0; x1; x2; x3 ])
;;

testi
  (15)
  (let x0 = two in let x1 = opp two in add [ x0; zero; x1 ] = add [ x0; x1 ])
;;

testi
  (16)
  (let x0 = opp (opp zero) in
   let x1 = add [ (add [ zero; two; one ]); (opp zero); (opp two) ] in
   add [ x0; zero; x1 ] = add [ x0; x1 ])
;;

testi
  (17)
  (let x0 =
     add [ (add [ one; one; one ]); (add [ one; zero; one ]); (opp one) ] in
   let x1 = opp (add [ two; zero; zero ]) in
   add [ x0; zero; x1 ] = add [ x0; x1 ])
;;

testi
  (18)
  (let x0 = opp two in
   let x1 =
     add [ (add [ one; one; one ]); (add [ one; zero; one ]); (opp one) ] in
   add [ x0; zero; x1 ] = add [ x0; x1 ])
;;

testi
  (19)
  (let x0 = opp (add [ two; zero; zero ]) in
   let x1 = add [ (add [ zero; two; one ]); (opp zero); (opp two) ] in
   add [ x0; zero; x1 ] = add [ x0; x1 ])
;;

testi (20) (let x0 = zero in add [ zero; x0 ] = x0)
;;

testi
  (21)
  (let x0 = add [ zero; (add [ one; two; one ]); one ] in
   add [ zero; x0 ] = x0)
;;

testi
  (22)
  (let x0 = add [ (opp two); (opp one); (opp one) ] in add [ zero; x0 ] = x0)
;;

testi
  (23)
  (let x0 = add [ (opp two); (add [ one; two; one ]); one ] in
   add [ zero; x0 ] = x0)
;;

testi (24) (let x0 = two in add [ zero; x0 ] = x0)
;;

testi
  (25)
  (let x0 = opp (add [ one; two; one ]) in add [ x0; zero; zero ] = x0)
;;

testi
  (26)
  (let x0 = opp (add [ one; two; one ]) in add [ x0; zero; zero ] = x0)
;;

testi
  (27)
  (let x0 = add [ one; two; (opp zero) ] in add [ x0; zero; zero ] = x0)
;;

testi (28) (let x0 = opp zero in add [ x0; zero; zero ] = x0)
;;

testi
  (29)
  (let x0 = opp (add [ one; two; one ]) in add [ x0; zero; zero ] = x0)
;;

