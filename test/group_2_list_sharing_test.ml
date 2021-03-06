open Group_2_list_sharing
;;

open Gentest
;;

testing ("Group_2_list_sharing (automatic) - seed: 942798431")
;;

testi
  (0)
  (let x0 = opp two in
   let x1 = opp (add [ two; zero; two ]) in
   let x2 = opp two in add [ (add [ x0; x1 ]); x2 ] = add [ x0; x1; x2 ])
;;

testi
  (1)
  (let x0 = add [ (add [ one; zero; zero ]); (opp zero); (opp zero) ] in
   let x1 = one in
   let x2 = add [ (add [ one; zero; zero ]); (opp zero); (opp zero) ] in
   add [ (add [ x0; x1 ]); x2 ] = add [ x0; x1; x2 ])
;;

testi
  (2)
  (let x0 = add [ (add [ one; zero; zero ]); (opp zero); (opp zero) ] in
   let x1 = add [ (opp two); (opp zero); (add [ two; zero; two ]) ] in
   let x2 =
     add
       [ (add [ one; zero; two ]); (add [ two; two; zero ]);
         (add [ zero; two; zero ]) ] in
   add [ (add [ x0; x1 ]); x2 ] = add [ x0; x1; x2 ])
;;

testi
  (3)
  (let x0 = opp (add [ two; zero; two ]) in
   let x1 = opp (add [ two; zero; two ]) in
   let x2 = opp (add [ one; zero; one ]) in
   add [ (add [ x0; x1 ]); x2 ] = add [ x0; x1; x2 ])
;;

testi
  (4)
  (let x0 = add [ (opp two); zero; (opp one) ] in
   let x1 = opp two in
   let x2 = add [ (opp two); zero; (opp one) ] in
   add [ (add [ x0; x1 ]); x2 ] = add [ x0; x1; x2 ])
;;

testi
  (5)
  (let x0 = add [ zero; (opp zero); (opp zero) ] in
   let x1 = add [ (opp one); zero; (add [ one; one; two ]) ] in
   let x2 = add [ (opp one); one; (opp zero) ] in
   let x3 = opp (add [ one; zero; one ]) in
   let x4 = opp (add [ one; zero; one ]) in
   add [ x0; (add [ x1; x2 ]); (add [ x3; x4 ]) ] =
   add [ x0; x1; x2; x3; x4 ])
;;

testi
  (6)
  (let x0 = add [ (opp one); zero; (add [ one; one; two ]) ] in
   let x1 = add [ zero; (opp zero); (opp zero) ] in
   let x2 = add [ (opp one); (opp one); (add [ one; one; two ]) ] in
   let x3 = add [ (opp one); (opp one); (opp zero) ] in
   let x4 = add [ (add [ two; one; two ]); (opp zero); (opp zero) ] in
   add [ x0; (add [ x1; x2 ]); (add [ x3; x4 ]) ] =
   add [ x0; x1; x2; x3; x4 ])
;;

testi
  (7)
  (let x0 = opp (add [ two; two; zero ]) in
   let x1 = opp (add [ one; zero; one ]) in
   let x2 = add [ (opp one); (opp one); (opp zero) ] in
   let x3 = add [ (add [ two; zero; two ]); (opp zero); (opp zero) ] in
   let x4 = opp (add [ two; two; zero ]) in
   add [ x0; (add [ x1; x2 ]); (add [ x3; x4 ]) ] =
   add [ x0; x1; x2; x3; x4 ])
;;

testi
  (8)
  (let x0 = opp (add [ two; two; zero ]) in
   let x1 =
     add [ (add [ one; zero; one ]); (add [ zero; zero; zero ]); (opp zero) ] in
   let x2 = add [ zero; (opp zero); (opp zero) ] in
   let x3 = opp (add [ one; zero; one ]) in
   let x4 = opp (opp two) in
   add [ x0; (add [ x1; x2 ]); (add [ x3; x4 ]) ] =
   add [ x0; x1; x2; x3; x4 ])
;;

testi
  (9)
  (let x0 = opp zero in
   let x1 = opp (add [ two; two; zero ]) in
   let x2 =
     add
       [ (add [ zero; one; zero ]); (add [ zero; zero; zero ]); (opp zero) ] in
   let x3 = add [ (add [ two; one; two ]); (opp zero); (opp zero) ] in
   let x4 = opp (opp one) in
   add [ x0; (add [ x1; x2 ]); (add [ x3; x4 ]) ] =
   add [ x0; x1; x2; x3; x4 ])
;;

testi
  (10)
  (let x0 = zero in
   let x1 = opp (add [ zero; one; zero ]) in
   let x2 = opp (opp two) in
   let x3 = add [ (add [ two; zero; one ]); (opp one); (opp zero) ] in
   add [ (add [ x0; x1; x2 ]); x3 ] = add [ x0; x1; x2; x3 ])
;;

testi
  (11)
  (let x0 = opp (opp one) in
   let x1 = opp (add [ one; one; one ]) in
   let x2 = add [ (add [ two; one; two ]); (opp zero); (opp one) ] in
   let x3 = add [ (add [ two; one; two ]); (opp zero); (opp one) ] in
   add [ (add [ x0; x1; x2 ]); x3 ] = add [ x0; x1; x2; x3 ])
;;

testi
  (12)
  (let x0 = add [ (add [ two; one; two ]); (opp zero); (opp one) ] in
   let x1 = opp (add [ two; one; zero ]) in
   let x2 = add [ (add [ two; one; one ]); one; (add [ one; two; one ]) ] in
   let x3 = opp (opp one) in
   add [ (add [ x0; x1; x2 ]); x3 ] = add [ x0; x1; x2; x3 ])
;;

testi
  (13)
  (let x0 = opp (add [ two; one; zero ]) in
   let x1 =
     add [ (add [ two; zero; two ]); (add [ one; zero; two ]); (opp zero) ] in
   let x2 = add [ (opp one); (opp zero); one ] in
   let x3 = opp (opp one) in
   add [ (add [ x0; x1; x2 ]); x3 ] = add [ x0; x1; x2; x3 ])
;;

testi
  (14)
  (let x0 = add [ (opp zero); zero; (add [ one; zero; two ]) ] in
   let x1 =
     add [ (add [ two; zero; two ]); (opp zero); (add [ one; two; one ]) ] in
   let x2 = opp (add [ zero; two; two ]) in
   let x3 = add [ (add [ two; one; two ]); (opp zero); (opp one) ] in
   add [ (add [ x0; x1; x2 ]); x3 ] = add [ x0; x1; x2; x3 ])
;;

testi
  (15)
  (let x0 = add [ (opp two); (opp one); (opp one) ] in
   let x1 = opp (add [ two; zero; two ]) in
   add [ x0; zero; x1 ] = add [ x0; x1 ])
;;

testi
  (16)
  (let x0 = add [ zero; (opp two); (opp one) ] in
   let x1 = opp (add [ two; zero; two ]) in
   add [ x0; zero; x1 ] = add [ x0; x1 ])
;;

testi
  (17)
  (let x0 = opp one in
   let x1 = opp one in add [ x0; zero; x1 ] = add [ x0; x1 ])
;;

testi
  (18)
  (let x0 = add [ (opp two); (opp one); (opp one) ] in
   let x1 = opp (add [ two; zero; two ]) in
   add [ x0; zero; x1 ] = add [ x0; x1 ])
;;

testi
  (19)
  (let x0 = add [ (opp one); one; (opp one) ] in
   let x1 = add [ (add [ one; zero; two ]); (add [ zero; two; zero ]); one ] in
   add [ x0; zero; x1 ] = add [ x0; x1 ])
;;

testi (20) (let x0 = opp (opp two) in add [ zero; x0 ] = x0)
;;

testi (21) (let x0 = opp (add [ zero; two; zero ]) in add [ zero; x0 ] = x0)
;;

testi
  (22)
  (let x0 = add [ (opp zero); (opp two); (add [ two; two; zero ]) ] in
   add [ zero; x0 ] = x0)
;;

testi (23) (let x0 = add [ one; (opp two); one ] in add [ zero; x0 ] = x0)
;;

testi (24) (let x0 = opp (opp two) in add [ zero; x0 ] = x0)
;;

testi (25) (let x0 = opp (opp one) in add [ x0; zero; zero ] = x0)
;;

testi
  (26)
  (let x0 = add [ (opp zero); (opp one); (add [ two; one; one ]) ] in
   add [ x0; zero; zero ] = x0)
;;

testi
  (27)
  (let x0 = add [ (opp zero); (opp one); (add [ two; one; one ]) ] in
   add [ x0; zero; zero ] = x0)
;;

testi (28) (let x0 = zero in add [ x0; zero; zero ] = x0)
;;

testi (29) (let x0 = one in add [ x0; zero; zero ] = x0)
;;

