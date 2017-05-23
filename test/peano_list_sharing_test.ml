open Peano_list_sharing
;;

open Gentest
;;

testing ("Peano_list_sharing (automatic) - seed: 92816244")
;;

testi
  (0)
  (let x0 = plus [ (succ zero); (succ zero); (succ zero) ] in
   let x1 =
     plus
       [ (plus [ zero; zero; zero ]); (succ zero);
         (plus [ zero; zero; zero ]) ] in
   let x2 = succ (plus [ zero; zero; zero ]) in
   plus [ (plus [ x0; x1 ]); x2 ] = plus [ x0; x1; x2 ])
;;

testi
  (1)
  (let x0 = succ (plus [ zero; zero; zero ]) in
   let x1 =
     plus
       [ (plus [ zero; zero; zero ]); (succ zero);
         (plus [ zero; zero; zero ]) ] in
   let x2 = succ (plus [ zero; zero; zero ]) in
   plus [ (plus [ x0; x1 ]); x2 ] = plus [ x0; x1; x2 ])
;;

testi
  (2)
  (let x0 = plus [ (succ zero); (succ zero); (succ zero) ] in
   let x1 =
     plus
       [ (plus [ zero; zero; zero ]); (succ zero);
         (plus [ zero; zero; zero ]) ] in
   let x2 = succ (succ zero) in
   plus [ (plus [ x0; x1 ]); x2 ] = plus [ x0; x1; x2 ])
;;

testi
  (3)
  (let x0 =
     plus
       [ (plus [ zero; zero; zero ]); (succ zero);
         (plus [ zero; zero; zero ]) ] in
   let x1 = plus [ (succ zero); (succ zero); (succ zero) ] in
   let x2 = plus [ (succ zero); (succ zero); (succ zero) ] in
   plus [ (plus [ x0; x1 ]); x2 ] = plus [ x0; x1; x2 ])
;;

testi
  (4)
  (let x0 = plus [ (succ zero); (succ zero); (succ zero) ] in
   let x1 = plus [ (succ zero); (succ zero); (succ zero) ] in
   let x2 = succ (plus [ zero; zero; zero ]) in
   plus [ (plus [ x0; x1 ]); x2 ] = plus [ x0; x1; x2 ])
;;

testi
  (5)
  (let x0 = plus [ (succ zero); (succ zero); (succ zero) ] in
   let x1 =
     plus
       [ (succ zero); (plus [ zero; zero; zero ]);
         (plus [ zero; zero; zero ]) ] in
   let x2 = succ (succ zero) in
   let x3 = plus [ (plus [ zero; zero; zero ]); (succ zero); (succ zero) ] in
   let x4 =
     plus
       [ (succ zero); (plus [ zero; zero; zero ]);
         (plus [ zero; zero; zero ]) ] in
   plus [ x0; (plus [ x1; x2 ]); (plus [ x3; x4 ]) ] =
   plus [ x0; x1; x2; x3; x4 ])
;;

testi
  (6)
  (let x0 =
     plus
       [ (plus [ zero; zero; zero ]); (plus [ zero; zero; zero ]);
         (plus [ zero; zero; zero ]) ] in
   let x1 = succ (succ zero) in
   let x2 =
     plus
       [ (plus [ zero; zero; zero ]); (succ zero);
         (plus [ zero; zero; zero ]) ] in
   let x3 = succ (succ zero) in
   let x4 = plus [ (succ zero); (succ zero); (plus [ zero; zero; zero ]) ] in
   plus [ x0; (plus [ x1; x2 ]); (plus [ x3; x4 ]) ] =
   plus [ x0; x1; x2; x3; x4 ])
;;

testi
  (7)
  (let x0 = succ (plus [ zero; zero; zero ]) in
   let x1 =
     plus
       [ (plus [ zero; zero; zero ]); (plus [ zero; zero; zero ]);
         (plus [ zero; zero; zero ]) ] in
   let x2 = succ (succ zero) in
   let x3 = succ (plus [ zero; zero; zero ]) in
   let x4 = succ (plus [ zero; zero; zero ]) in
   plus [ x0; (plus [ x1; x2 ]); (plus [ x3; x4 ]) ] =
   plus [ x0; x1; x2; x3; x4 ])
;;

testi
  (8)
  (let x0 = plus [ (succ zero); (succ zero); (plus [ zero; zero; zero ]) ] in
   let x1 = succ (plus [ zero; zero; zero ]) in
   let x2 =
     plus
       [ (plus [ zero; zero; zero ]); (succ zero);
         (plus [ zero; zero; zero ]) ] in
   let x3 =
     plus
       [ (plus [ zero; zero; zero ]); (plus [ zero; zero; zero ]);
         (plus [ zero; zero; zero ]) ] in
   let x4 = succ (succ zero) in
   plus [ x0; (plus [ x1; x2 ]); (plus [ x3; x4 ]) ] =
   plus [ x0; x1; x2; x3; x4 ])
;;

testi
  (9)
  (let x0 =
     plus
       [ (plus [ zero; zero; zero ]); (plus [ zero; zero; zero ]);
         (plus [ zero; zero; zero ]) ] in
   let x1 = plus [ (plus [ zero; zero; zero ]); (succ zero); zero ] in
   let x2 =
     plus
       [ (plus [ zero; zero; zero ]); (plus [ zero; zero; zero ]);
         (plus [ zero; zero; zero ]) ] in
   let x3 = plus [ (succ zero); (succ zero); (plus [ zero; zero; zero ]) ] in
   let x4 = succ (succ zero) in
   plus [ x0; (plus [ x1; x2 ]); (plus [ x3; x4 ]) ] =
   plus [ x0; x1; x2; x3; x4 ])
;;

testi
  (10)
  (let x0 = succ (succ zero) in
   let x1 = succ (succ zero) in
   let x2 = plus [ (succ zero); (succ zero); (plus [ zero; zero; zero ]) ] in
   let x3 = succ (plus [ zero; zero; zero ]) in
   plus [ (plus [ x0; x1; x2 ]); x3 ] = plus [ x0; x1; x2; x3 ])
;;

testi
  (11)
  (let x0 = succ (plus [ zero; zero; zero ]) in
   let x1 = succ (plus [ zero; zero; zero ]) in
   let x2 = succ (succ zero) in
   let x3 = succ (succ zero) in
   plus [ (plus [ x0; x1; x2 ]); x3 ] = plus [ x0; x1; x2; x3 ])
;;

testi
  (12)
  (let x0 = succ (plus [ zero; zero; zero ]) in
   let x1 = succ (succ zero) in
   let x2 = plus [ (succ zero); (succ zero); (plus [ zero; zero; zero ]) ] in
   let x3 =
     plus
       [ (plus [ zero; zero; zero ]); (succ zero);
         (plus [ zero; zero; zero ]) ] in
   plus [ (plus [ x0; x1; x2 ]); x3 ] = plus [ x0; x1; x2; x3 ])
;;

testi
  (13)
  (let x0 = succ (plus [ zero; zero; zero ]) in
   let x1 =
     plus
       [ (succ zero); (plus [ zero; zero; zero ]);
         (plus [ zero; zero; zero ]) ] in
   let x2 = plus [ (succ zero); (succ zero); (plus [ zero; zero; zero ]) ] in
   let x3 = succ (plus [ zero; zero; zero ]) in
   plus [ (plus [ x0; x1; x2 ]); x3 ] = plus [ x0; x1; x2; x3 ])
;;

testi
  (14)
  (let x0 = plus [ (succ zero); (succ zero); (plus [ zero; zero; zero ]) ] in
   let x1 =
     plus
       [ (plus [ zero; zero; zero ]); (succ zero);
         (plus [ zero; zero; zero ]) ] in
   let x2 = succ (plus [ zero; zero; zero ]) in
   let x3 = succ (plus [ zero; zero; zero ]) in
   plus [ (plus [ x0; x1; x2 ]); x3 ] = plus [ x0; x1; x2; x3 ])
;;

testi
  (15)
  (let x0 = succ (plus [ zero; zero; zero ]) in
   let x1 = succ (succ zero) in plus [ x0; zero; x1 ] = plus [ x0; x1 ])
;;

testi
  (16)
  (let x0 = succ (succ zero) in
   let x1 = plus [ (plus [ zero; zero; zero ]); (succ zero); (succ zero) ] in
   plus [ x0; zero; x1 ] = plus [ x0; x1 ])
;;

testi
  (17)
  (let x0 = succ (plus [ zero; zero; zero ]) in
   let x1 = succ (succ zero) in plus [ x0; zero; x1 ] = plus [ x0; x1 ])
;;

testi
  (18)
  (let x0 = succ (plus [ zero; zero; zero ]) in
   let x1 = succ (succ zero) in plus [ x0; zero; x1 ] = plus [ x0; x1 ])
;;

testi
  (19)
  (let x0 = plus [ (plus [ zero; zero; zero ]); (succ zero); (succ zero) ] in
   let x1 = plus [ (plus [ zero; zero; zero ]); (succ zero); (succ zero) ] in
   plus [ x0; zero; x1 ] = plus [ x0; x1 ])
;;

testi (20) (let x0 = succ (succ zero) in plus [ zero; x0 ] = x0)
;;

testi (21) (let x0 = succ (succ zero) in plus [ zero; x0 ] = x0)
;;

testi (22) (let x0 = succ (succ zero) in plus [ zero; x0 ] = x0)
;;

testi
  (23)
  (let x0 = plus [ (succ zero); (succ zero); (plus [ zero; zero; zero ]) ] in
   plus [ zero; x0 ] = x0)
;;

testi
  (24)
  (let x0 = succ (plus [ zero; zero; zero ]) in plus [ zero; x0 ] = x0)
;;

testi
  (25)
  (let x0 =
     plus [ zero; (plus [ zero; zero; zero ]); (plus [ zero; zero; zero ]) ] in
   plus [ x0; zero; zero ] = x0)
;;

testi (26) (let x0 = succ (succ zero) in plus [ x0; zero; zero ] = x0)
;;

testi (27) (let x0 = succ (succ zero) in plus [ x0; zero; zero ] = x0)
;;

testi
  (28)
  (let x0 =
     plus
       [ (succ zero); (plus [ zero; zero; zero ]);
         (plus [ zero; zero; zero ]) ] in
   plus [ x0; zero; zero ] = x0)
;;

testi (29) (let x0 = zero in plus [ x0; zero; zero ] = x0)
;;

testi
  (30)
  (let x1 = succ (succ zero) in
   let x2 =
     [ succ (succ zero); succ (plus [ zero; zero; zero ]);
       succ (plus [ zero; zero; zero ]) ] in
   plus (succ x1 :: x2) = succ (plus (x1 :: x2)))
;;

testi
  (31)
  (let x1 = zero in
   let x2 =
     [ succ (succ zero); plus [ (succ zero); (succ zero); (succ zero) ];
       plus [ (plus [ zero; zero; zero ]); (succ zero); (succ zero) ] ] in
   plus (succ x1 :: x2) = succ (plus (x1 :: x2)))
;;

testi
  (32)
  (let x1 = succ (succ zero) in
   let x2 =
     [ plus
         [ (plus [ zero; zero; zero ]); (succ zero);
           (plus [ zero; zero; zero ]) ]; succ (plus [ zero; zero; zero ]);
       succ (plus [ zero; zero; zero ]) ] in
   plus (succ x1 :: x2) = succ (plus (x1 :: x2)))
;;

testi
  (33)
  (let x1 =
     plus
       [ (plus [ zero; zero; zero ]); (plus [ zero; zero; zero ]);
         (plus [ zero; zero; zero ]) ] in
   let x2 =
     [ plus
         [ (plus [ zero; zero; zero ]); (succ zero);
           (plus [ zero; zero; zero ]) ];
       plus [ (succ zero); (succ zero); (succ zero) ];
       plus [ (plus [ zero; zero; zero ]); (succ zero); (succ zero) ] ] in
   plus (succ x1 :: x2) = succ (plus (x1 :: x2)))
;;

testi
  (34)
  (let x1 =
     plus
       [ (plus [ zero; zero; zero ]); (plus [ zero; zero; zero ]);
         (plus [ zero; zero; zero ]) ] in
   let x2 =
     [ plus
         [ (plus [ zero; zero; zero ]); (succ zero);
           (plus [ zero; zero; zero ]) ];
       plus [ (succ zero); (succ zero); (succ zero) ];
       plus [ (plus [ zero; zero; zero ]); (succ zero); (succ zero) ] ] in
   plus (succ x1 :: x2) = succ (plus (x1 :: x2)))
;;

