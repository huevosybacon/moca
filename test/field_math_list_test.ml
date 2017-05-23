open Field_math_list
;;

open Gentest
;;

testing ("Field_math_list (automatic) - seed: 153828730")
;;

testi
  (0)
  (try
   (let x0 = fInv (fMul [ fZero; fOne; fZero ]) in
    let x1 = fInv (fOpp fZero) in
    let x2 =
      fAdd
        [ (fInv fZero); (fAdd [ fOne; fZero; fOne ]);
          (fAdd [ fOne; fOne; fOne ]) ] in
    fAdd [ (fAdd [ x0; x1 ]); x2 ] = fAdd [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (1)
  (try
   (let x0 = fAdd [ (fMul [ fOne; fZero; fOne ]); (fInv fZero); (fOpp fOne) ] in
    let x1 = fOpp (fInv fOne) in
    let x2 =
      fMul [ (fOpp fOne); (fInv fZero); (fAdd [ fZero; fOne; fZero ]) ] in
    fAdd [ (fAdd [ x0; x1 ]); x2 ] = fAdd [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (2)
  (try
   (let x0 = fOpp (fMul [ fOne; fOne; fZero ]) in
    let x1 = fAdd [ (fOpp fZero); (fMul [ fZero; fZero; fOne ]); fOne ] in
    let x2 = fInv (fOpp fZero) in
    fAdd [ (fAdd [ x0; x1 ]); x2 ] = fAdd [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (3)
  (try
   (let x0 = fOpp (fInv fZero) in
    let x1 = fZero in
    let x2 = fInv fZero in
    fAdd [ (fAdd [ x0; x1 ]); x2 ] = fAdd [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (4)
  (try
   (let x0 =
      fAdd [ (fAdd [ fZero; fZero; fOne ]); (fInv fZero); (fInv fZero) ] in
    let x1 = fAdd [ (fMul [ fOne; fZero; fOne ]); (fInv fZero); (fOpp fOne) ] in
    let x2 =
      fMul
        [ (fAdd [ fZero; fZero; fZero ]); (fMul [ fZero; fOne; fOne ]);
          (fOpp fZero) ] in
    fAdd [ (fAdd [ x0; x1 ]); x2 ] = fAdd [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (5)
  (try
   (let x0 = fInv (fInv fOne) in
    let x1 = fOpp (fOpp fOne) in
    let x2 =
      fAdd
        [ (fAdd [ fZero; fZero; fOne ]); (fAdd [ fOne; fOne; fZero ]);
          (fAdd [ fZero; fOne; fZero ]) ] in
    let x3 = fInv (fOpp fZero) in
    let x4 = fMul [ (fOpp fOne); (fInv fZero); (fInv fOne) ] in
    fAdd [ x0; (fAdd [ x1; x2 ]); (fAdd [ x3; x4 ]) ] =
    fAdd [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (6)
  (try
   (let x0 =
      fMul [ (fOpp fOne); (fOpp fZero); (fAdd [ fZero; fZero; fOne ]) ] in
    let x1 =
      fAdd
        [ (fAdd [ fZero; fZero; fZero ]); (fMul [ fZero; fZero; fOne ]);
          (fAdd [ fOne; fZero; fOne ]) ] in
    let x2 =
      fAdd
        [ (fAdd [ fZero; fZero; fOne ]); (fAdd [ fOne; fZero; fOne ]);
          (fInv fZero) ] in
    let x3 =
      fAdd
        [ (fMul [ fOne; fOne; fOne ]); (fInv fZero);
          (fMul [ fZero; fOne; fOne ]) ] in
    let x4 = fAdd [ (fInv fOne); (fOpp fOne); (fOpp fZero) ] in
    fAdd [ x0; (fAdd [ x1; x2 ]); (fAdd [ x3; x4 ]) ] =
    fAdd [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (7)
  (try
   (let x0 =
      fAdd
        [ (fMul [ fOne; fOne; fOne ]); (fInv fZero);
          (fMul [ fZero; fOne; fOne ]) ] in
    let x1 = fMul [ (fOpp fZero); (fAdd [ fOne; fZero; fOne ]); (fOpp fOne) ] in
    let x2 = fOpp (fOpp fZero) in
    let x3 =
      fAdd
        [ (fAdd [ fOne; fZero; fOne ]); (fOpp fZero);
          (fMul [ fOne; fZero; fOne ]) ] in
    let x4 =
      fMul
        [ (fMul [ fOne; fOne; fOne ]); (fMul [ fZero; fZero; fZero ]);
          (fInv fZero) ] in
    fAdd [ x0; (fAdd [ x1; x2 ]); (fAdd [ x3; x4 ]) ] =
    fAdd [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (8)
  (try
   (let x0 = fInv (fMul [ fOne; fOne; fZero ]) in
    let x1 = fMul [ (fOpp fOne); (fInv fZero); (fInv fOne) ] in
    let x2 = fInv (fMul [ fOne; fOne; fOne ]) in
    let x3 = fAdd [ (fOpp fOne); (fOpp fOne); (fOpp fZero) ] in
    let x4 = fAdd [ (fOpp fOne); (fOpp fOne); (fOpp fZero) ] in
    fAdd [ x0; (fAdd [ x1; x2 ]); (fAdd [ x3; x4 ]) ] =
    fAdd [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (9)
  (try
   (let x0 = fOpp (fAdd [ fZero; fOne; fZero ]) in
    let x1 = fInv (fMul [ fOne; fOne; fZero ]) in
    let x2 = fInv (fInv fOne) in
    let x3 =
      fAdd
        [ (fAdd [ fZero; fZero; fOne ]); (fAdd [ fOne; fOne; fZero ]);
          (fAdd [ fZero; fOne; fZero ]) ] in
    let x4 = fInv (fMul [ fOne; fOne; fZero ]) in
    fAdd [ x0; (fAdd [ x1; x2 ]); (fAdd [ x3; x4 ]) ] =
    fAdd [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (10)
  (try
   (let x0 =
      fMul
        [ (fInv fZero); (fAdd [ fZero; fZero; fZero ]);
          (fAdd [ fOne; fOne; fZero ]) ] in
    let x1 =
      fMul [ (fOpp fZero); (fInv fZero); (fAdd [ fZero; fOne; fZero ]) ] in
    let x2 = fAdd [ fZero; (fOpp fOne); (fAdd [ fOne; fOne; fOne ]) ] in
    let x3 = fOpp (fOpp fOne) in
    fAdd [ (fAdd [ x0; x1; x2 ]); x3 ] = fAdd [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (11)
  (try
   (let x0 = fOpp fOne in
    let x1 =
      fAdd [ (fAdd [ fOne; fZero; fZero ]); (fInv fZero); (fOpp fOne) ] in
    let x2 = fOpp (fMul [ fOne; fZero; fOne ]) in
    let x3 = fOpp (fOpp fZero) in
    fAdd [ (fAdd [ x0; x1; x2 ]); x3 ] = fAdd [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (12)
  (try
   (let x0 =
      fMul
        [ (fInv fZero); (fAdd [ fZero; fZero; fZero ]);
          (fAdd [ fZero; fZero; fOne ]) ] in
    let x1 = fOpp (fInv fZero) in
    let x2 = fOpp fOne in
    let x3 = fOpp (fAdd [ fZero; fOne; fOne ]) in
    fAdd [ (fAdd [ x0; x1; x2 ]); x3 ] = fAdd [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (13)
  (try
   (let x0 =
      fMul [ (fOpp fZero); (fInv fZero); (fAdd [ fZero; fOne; fZero ]) ] in
    let x1 =
      fMul
        [ (fInv fZero); (fAdd [ fZero; fZero; fZero ]);
          (fAdd [ fZero; fZero; fOne ]) ] in
    let x2 = fMul [ (fInv fZero); (fMul [ fOne; fOne; fOne ]); (fOpp fOne) ] in
    let x3 = fInv (fMul [ fZero; fZero; fZero ]) in
    fAdd [ (fAdd [ x0; x1; x2 ]); x3 ] = fAdd [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (14)
  (try
   (let x0 = fMul [ (fInv fOne); (fInv fOne); (fAdd [ fZero; fOne; fOne ]) ] in
    let x1 = fAdd [ (fOpp fOne); (fInv fZero); (fOpp fZero) ] in
    let x2 = fInv (fOpp fZero) in
    let x3 = fOpp fOne in
    fAdd [ (fAdd [ x0; x1; x2 ]); x3 ] = fAdd [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (15)
  (try
   (let x0 = fOpp (fAdd [ fOne; fZero; fOne ]) in
    let x1 = fOpp (fAdd [ fOne; fZero; fOne ]) in
    let x2 = fOpp (fMul [ fZero; fZero; fZero ]) in
    let x3 = fInv (fInv fOne) in
    fAdd [ x0; x1; x2; x3 ] = fAdd [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (16)
  (try
   (let x0 =
      fMul
        [ (fMul [ fOne; fOne; fOne ]); (fOpp fOne);
          (fMul [ fZero; fOne; fZero ]) ] in
    let x1 =
      fMul
        [ (fAdd [ fZero; fOne; fOne ]); (fMul [ fOne; fZero; fZero ]);
          (fMul [ fOne; fZero; fOne ]) ] in
    let x2 =
      fAdd
        [ (fMul [ fZero; fOne; fZero ]); (fMul [ fOne; fOne; fZero ]);
          (fAdd [ fZero; fOne; fOne ]) ] in
    let x3 = fInv (fOpp fZero) in
    fAdd [ x0; x1; x2; x3 ] = fAdd [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (17)
  (try
   (let x0 =
      fMul
        [ (fAdd [ fZero; fOne; fOne ]); (fMul [ fOne; fZero; fZero ]);
          (fMul [ fOne; fZero; fOne ]) ] in
    let x1 = fInv (fInv fOne) in
    let x2 = fInv (fOpp fZero) in
    let x3 = fInv (fMul [ fOne; fOne; fZero ]) in
    fAdd [ x0; x1; x2; x3 ] = fAdd [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (18)
  (try
   (let x0 = fOpp (fInv fZero) in
    let x1 = fInv (fInv fOne) in
    let x2 = fInv (fMul [ fOne; fOne; fZero ]) in
    let x3 =
      fMul
        [ (fMul [ fOne; fZero; fOne ]); (fAdd [ fZero; fZero; fZero ]);
          (fInv fZero) ] in
    fAdd [ x0; x1; x2; x3 ] = fAdd [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (19)
  (try
   (let x0 =
      fMul
        [ (fMul [ fOne; fZero; fOne ]); (fAdd [ fZero; fZero; fZero ]);
          (fInv fZero) ] in
    let x1 = fMul [ (fInv fOne); (fOpp fZero); (fInv fZero) ] in
    let x2 = fOpp (fInv fOne) in
    let x3 =
      fMul
        [ (fMul [ fOne; fZero; fOne ]); (fAdd [ fZero; fZero; fZero ]);
          (fInv fZero) ] in
    fAdd [ x0; x1; x2; x3 ] = fAdd [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (20)
  (try
   (let x0 =
      fAdd [ (fInv fZero); (fMul [ fZero; fOne; fZero ]); (fOpp fZero) ] in
    let x1 = fOpp (fAdd [ fZero; fOne; fZero ]) in
    let x2 =
      fMul
        [ (fMul [ fZero; fOne; fOne ]); (fOpp fZero);
          (fAdd [ fOne; fZero; fOne ]) ] in
    let x3 = fInv (fInv fZero) in
    fAdd [ x0; x1; x2; x3 ] = fAdd [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (21)
  (try
   (let x0 = fInv (fInv fOne) in
    let x1 =
      fAdd
        [ (fInv fOne); (fAdd [ fZero; fOne; fOne ]);
          (fAdd [ fZero; fZero; fZero ]) ] in
    let x2 = fInv (fAdd [ fOne; fOne; fOne ]) in
    let x3 =
      fAdd [ (fInv fZero); (fMul [ fZero; fOne; fZero ]); (fOpp fZero) ] in
    fAdd [ x0; x1; x2; x3 ] = fAdd [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (22)
  (try
   (let x0 = fInv (fAdd [ fZero; fOne; fZero ]) in
    let x1 =
      fMul
        [ (fMul [ fZero; fOne; fOne ]); (fOpp fZero);
          (fAdd [ fOne; fZero; fOne ]) ] in
    let x2 =
      fAdd
        [ (fAdd [ fOne; fOne; fZero ]); (fMul [ fOne; fOne; fOne ]);
          (fOpp fZero) ] in
    let x3 = fOpp (fAdd [ fZero; fZero; fOne ]) in
    fAdd [ x0; x1; x2; x3 ] = fAdd [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (23)
  (try
   (let x0 =
      fAdd
        [ (fAdd [ fOne; fOne; fZero ]); (fAdd [ fZero; fOne; fOne ]);
          (fOpp fZero) ] in
    let x1 = fOpp (fOpp fZero) in
    let x2 =
      fAdd
        [ (fAdd [ fZero; fZero; fOne ]); (fAdd [ fZero; fOne; fOne ]);
          (fMul [ fZero; fZero; fOne ]) ] in
    let x3 =
      fAdd [ (fOpp fZero); (fAdd [ fZero; fZero; fZero ]); (fOpp fOne) ] in
    fAdd [ x0; x1; x2; x3 ] = fAdd [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (24)
  (try
   (let x0 = fOpp (fMul [ fZero; fOne; fOne ]) in
    let x1 = fZero in
    let x2 = fInv (fOpp fZero) in
    let x3 =
      fMul
        [ (fMul [ fOne; fOne; fOne ]); (fAdd [ fOne; fOne; fOne ]);
          (fMul [ fZero; fOne; fZero ]) ] in
    fAdd [ x0; x1; x2; x3 ] = fAdd [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (25)
  (try
   (let x0 = fInv (fMul [ fZero; fOne; fOne ]) in
    let x1 =
      fAdd
        [ (fAdd [ fOne; fOne; fZero ]); (fAdd [ fZero; fOne; fZero ]);
          (fAdd [ fZero; fOne; fOne ]) ] in
    let x2 = fMul [ (fOpp fOne); (fMul [ fOne; fZero; fZero ]); (fOpp fOne) ] in
    let x3 = fInv (fAdd [ fOne; fZero; fOne ]) in
    fAdd [ x0; x1; x2; x3 ] = fAdd [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (26)
  (try
   (let x0 = fInv (fOpp fZero) in
    let x1 = fInv (fOpp fOne) in
    let x2 =
      fMul
        [ (fMul [ fZero; fOne; fZero ]); (fMul [ fOne; fOne; fOne ]);
          (fMul [ fZero; fZero; fOne ]) ] in
    let x3 = fInv (fInv fZero) in
    fAdd [ x0; x1; x2; x3 ] = fAdd [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (27)
  (try
   (let x0 =
      fMul
        [ (fAdd [ fOne; fZero; fZero ]); (fMul [ fZero; fZero; fZero ]);
          (fOpp fZero) ] in
    let x1 =
      fAdd
        [ (fAdd [ fOne; fZero; fZero ]); (fInv fZero);
          (fAdd [ fZero; fOne; fOne ]) ] in
    let x2 = fMul [ (fOpp fOne); (fOpp fOne); (fOpp fZero) ] in
    let x3 = fOpp (fMul [ fZero; fOne; fOne ]) in
    fAdd [ x0; x1; x2; x3 ] = fAdd [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (28)
  (try
   (let x0 = fOpp (fOpp fZero) in
    let x1 =
      fAdd
        [ (fMul [ fZero; fZero; fOne ]); (fAdd [ fZero; fOne; fOne ]);
          (fMul [ fZero; fZero; fZero ]) ] in
    let x2 = fOpp (fOpp fOne) in
    let x3 = fMul [ (fOpp fOne); (fMul [ fOne; fZero; fZero ]); (fOpp fOne) ] in
    fAdd [ x0; x1; x2; x3 ] = fAdd [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (29)
  (try
   (let x0 =
      fAdd
        [ (fInv fZero); (fAdd [ fZero; fOne; fZero ]);
          (fMul [ fZero; fZero; fZero ]) ] in
    let x1 = fInv (fOpp fOne) in
    let x2 = fInv (fOpp fOne) in
    let x3 = fOpp (fMul [ fZero; fOne; fOne ]) in
    fAdd [ x0; x1; x2; x3 ] = fAdd [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (30)
  (try
   (let x0 = fMul [ (fOpp fOne); (fInv fOne); (fInv fOne) ] in
    let x1 = fInv (fOpp fZero) in
    let x2 = fOpp (fMul [ fOne; fZero; fZero ]) in
    let x3 =
      fAdd
        [ (fInv fZero); (fAdd [ fOne; fOne; fOne ]);
          (fMul [ fOne; fZero; fOne ]) ] in
    fAdd [ x0; x1; x2; x3 ] = fAdd [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (31)
  (try
   (let x0 =
      fAdd
        [ (fAdd [ fOne; fZero; fZero ]); (fMul [ fZero; fZero; fZero ]);
          (fMul [ fOne; fZero; fOne ]) ] in
    let x1 = fOpp (fInv fOne) in
    let x2 = fOpp (fMul [ fOne; fZero; fZero ]) in
    let x3 = fMul [ (fAdd [ fZero; fOne; fOne ]); (fOpp fZero); (fInv fOne) ] in
    fAdd [ x0; x1; x2; x3 ] = fAdd [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (32)
  (try
   (let x0 = fMul [ (fAdd [ fZero; fOne; fOne ]); (fOpp fZero); (fInv fOne) ] in
    let x1 = fOpp (fInv fZero) in
    let x2 = fOpp (fOpp fOne) in
    let x3 = fInv (fOpp fOne) in
    fAdd [ x0; x1; x2; x3 ] = fAdd [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (33)
  (try
   (let x0 = fInv (fOpp fOne) in
    let x1 =
      fAdd
        [ (fAdd [ fOne; fZero; fOne ]); (fAdd [ fZero; fOne; fZero ]);
          (fInv fZero) ] in
    let x2 =
      fMul
        [ (fMul [ fOne; fZero; fOne ]); (fAdd [ fOne; fOne; fZero ]);
          (fAdd [ fOne; fOne; fZero ]) ] in
    let x3 =
      fAdd
        [ (fInv fZero); (fAdd [ fOne; fOne; fOne ]);
          (fMul [ fOne; fZero; fOne ]) ] in
    fAdd [ x0; x1; x2; x3 ] = fAdd [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (34)
  (try
   (let x0 = fOpp (fAdd [ fOne; fOne; fZero ]) in
    let x1 = fMul [ (fAdd [ fZero; fZero; fOne ]); (fInv fOne); (fInv fOne) ] in
    let x2 =
      fMul
        [ (fAdd [ fZero; fZero; fOne ]); fZero;
          (fMul [ fZero; fZero; fZero ]) ] in
    let x3 =
      fAdd
        [ (fInv fZero); (fAdd [ fOne; fOne; fOne ]);
          (fMul [ fOne; fZero; fOne ]) ] in
    fAdd [ x0; x1; x2; x3 ] = fAdd [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (35)
  (try
   (let x0 = fOpp (fAdd [ fZero; fOne; fZero ]) in
    let x1 = fOne in fAdd [ x0; fZero; x1 ] = fAdd [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (36)
  (try
   (let x0 = fOpp (fInv fOne) in
    let x1 = fMul [ (fMul [ fOne; fZero; fOne ]); fZero; (fInv fZero) ] in
    fAdd [ x0; fZero; x1 ] = fAdd [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (37)
  (try
   (let x0 = fOpp (fMul [ fOne; fZero; fOne ]) in
    let x1 = fInv (fInv fZero) in fAdd [ x0; fZero; x1 ] = fAdd [ x0; x1 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (38)
  (try
   (let x0 = fOpp (fAdd [ fZero; fZero; fZero ]) in
    let x1 =
      fMul
        [ (fMul [ fZero; fOne; fOne ]); fZero; (fAdd [ fZero; fOne; fZero ]) ] in
    fAdd [ x0; fZero; x1 ] = fAdd [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (39)
  (try
   (let x0 = fInv (fOpp fZero) in
    let x1 = fAdd [ (fInv fZero); (fInv fOne); (fAdd [ fOne; fZero; fOne ]) ] in
    fAdd [ x0; fZero; x1 ] = fAdd [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (40)
  (try
   (let x0 = fMul [ fOne; (fMul [ fZero; fZero; fZero ]); (fOpp fZero) ] in
    fAdd [ fZero; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (41)
  (try
   (let x0 = fOpp (fMul [ fOne; fOne; fZero ]) in fAdd [ fZero; x0 ] = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (42)
  (try
   (let x0 =
      fAdd
        [ (fAdd [ fOne; fOne; fOne ]); (fMul [ fOne; fZero; fZero ]);
          (fOpp fZero) ] in
    fAdd [ fZero; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (43)
  (try
   (let x0 = fOpp (fMul [ fZero; fOne; fZero ]) in fAdd [ fZero; x0 ] = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (44)
  (try
   (let x0 = fOpp (fMul [ fOne; fOne; fZero ]) in fAdd [ fZero; x0 ] = x0)
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (45)
  (try (let x0 = fOpp (fInv fOne) in fAdd [ x0; fZero; fZero ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (46)
  (try
   (let x0 = fMul [ (fOpp fZero); (fAdd [ fOne; fOne; fOne ]); (fOpp fZero) ] in
    fAdd [ x0; fZero; fZero ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (47)
  (try
   (let x0 =
      fAdd
        [ (fAdd [ fOne; fZero; fZero ]); (fMul [ fOne; fZero; fZero ]);
          (fOpp fZero) ] in
    fAdd [ x0; fZero; fZero ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (48)
  (try (let x0 = fInv (fOpp fZero) in fAdd [ x0; fZero; fZero ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (49)
  (try
   (let x0 = fMul [ (fInv fOne); (fOpp fOne); (fOpp fZero) ] in
    fAdd [ x0; fZero; fZero ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (50)
  (try
   (let x0 = fInv (fAdd [ fZero; fOne; fOne ]) in
    let x1 = fInv (fInv fZero) in
    let x2 =
      fMul
        [ (fAdd [ fOne; fOne; fZero ]); (fMul [ fZero; fZero; fOne ]);
          (fMul [ fOne; fZero; fOne ]) ] in
    fMul [ (fMul [ x0; x1 ]); x2 ] = fMul [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (51)
  (try
   (let x0 = fOpp (fAdd [ fZero; fZero; fOne ]) in
    let x1 = fOpp (fOpp fOne) in
    let x2 = fOpp (fAdd [ fZero; fZero; fOne ]) in
    fMul [ (fMul [ x0; x1 ]); x2 ] = fMul [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (52)
  (try
   (let x0 =
      fAdd [ (fInv fZero); (fInv fZero); (fMul [ fZero; fOne; fOne ]) ] in
    let x1 = fOpp (fAdd [ fZero; fOne; fZero ]) in
    let x2 = fOpp (fAdd [ fZero; fZero; fOne ]) in
    fMul [ (fMul [ x0; x1 ]); x2 ] = fMul [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (53)
  (try
   (let x0 = fInv (fAdd [ fOne; fZero; fOne ]) in
    let x1 = fOpp (fOpp fOne) in
    let x2 =
      fAdd
        [ (fAdd [ fZero; fOne; fZero ]); (fInv fOne);
          (fMul [ fZero; fOne; fOne ]) ] in
    fMul [ (fMul [ x0; x1 ]); x2 ] = fMul [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (54)
  (try
   (let x0 = fInv (fAdd [ fZero; fOne; fOne ]) in
    let x1 =
      fAdd [ (fInv fZero); (fInv fZero); (fMul [ fZero; fOne; fOne ]) ] in
    let x2 =
      fAdd [ (fOpp fZero); (fInv fZero); (fAdd [ fOne; fZero; fZero ]) ] in
    fMul [ (fMul [ x0; x1 ]); x2 ] = fMul [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (55)
  (try
   (let x0 = fInv (fOpp fZero) in
    let x1 = fOpp (fMul [ fOne; fOne; fZero ]) in
    let x2 =
      fAdd
        [ (fAdd [ fZero; fOne; fOne ]); (fAdd [ fZero; fOne; fOne ]);
          (fMul [ fZero; fZero; fZero ]) ] in
    let x3 = fInv (fOpp fOne) in
    let x4 = fInv (fAdd [ fZero; fOne; fZero ]) in
    fMul [ x0; (fMul [ x1; x2 ]); (fMul [ x3; x4 ]) ] =
    fMul [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (56)
  (try
   (let x0 = fOpp (fMul [ fOne; fOne; fOne ]) in
    let x1 = fAdd [ (fInv fZero); (fAdd [ fZero; fOne; fOne ]); (fInv fOne) ] in
    let x2 = fInv (fMul [ fOne; fOne; fZero ]) in
    let x3 =
      fAdd
        [ (fAdd [ fZero; fOne; fOne ]); (fAdd [ fZero; fOne; fOne ]);
          (fMul [ fZero; fZero; fZero ]) ] in
    let x4 = fOpp (fInv fOne) in
    fMul [ x0; (fMul [ x1; x2 ]); (fMul [ x3; x4 ]) ] =
    fMul [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (57)
  (try
   (let x0 = fOpp (fOpp fZero) in
    let x1 = fOpp (fMul [ fZero; fOne; fZero ]) in
    let x2 =
      fMul [ (fMul [ fZero; fOne; fZero ]); (fOpp fZero); (fInv fOne) ] in
    let x3 = fOpp (fMul [ fOne; fOne; fZero ]) in
    let x4 = fOpp (fAdd [ fZero; fOne; fOne ]) in
    fMul [ x0; (fMul [ x1; x2 ]); (fMul [ x3; x4 ]) ] =
    fMul [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (58)
  (try
   (let x0 =
      fMul
        [ (fAdd [ fOne; fZero; fZero ]); (fMul [ fOne; fOne; fZero ]);
          (fInv fOne) ] in
    let x1 =
      fMul [ (fMul [ fZero; fOne; fZero ]); (fOpp fZero); (fInv fOne) ] in
    let x2 = fMul [ (fInv fOne); (fMul [ fOne; fOne; fZero ]); (fOpp fZero) ] in
    let x3 = fMul [ (fOpp fOne); (fInv fZero); (fOpp fOne) ] in
    let x4 = fOpp (fAdd [ fOne; fZero; fZero ]) in
    fMul [ x0; (fMul [ x1; x2 ]); (fMul [ x3; x4 ]) ] =
    fMul [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (59)
  (try
   (let x0 =
      fMul [ (fInv fZero); (fAdd [ fOne; fZero; fOne ]); (fOpp fZero) ] in
    let x1 = fInv (fAdd [ fZero; fOne; fZero ]) in
    let x2 = fMul [ (fOpp fOne); (fInv fZero); (fOpp fOne) ] in
    let x3 =
      fAdd
        [ (fMul [ fOne; fZero; fZero ]); (fMul [ fOne; fOne; fZero ]);
          (fAdd [ fZero; fZero; fZero ]) ] in
    let x4 =
      fAdd
        [ (fAdd [ fZero; fOne; fOne ]); (fAdd [ fZero; fOne; fOne ]);
          (fMul [ fZero; fZero; fZero ]) ] in
    fMul [ x0; (fMul [ x1; x2 ]); (fMul [ x3; x4 ]) ] =
    fMul [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (60)
  (try
   (let x0 =
      fAdd
        [ (fMul [ fZero; fZero; fOne ]); (fOpp fZero);
          (fMul [ fOne; fOne; fZero ]) ] in
    let x1 =
      fAdd [ (fMul [ fZero; fZero; fZero ]); (fOpp fZero); (fOpp fOne) ] in
    let x2 =
      fAdd [ (fMul [ fZero; fZero; fZero ]); (fOpp fZero); (fOpp fOne) ] in
    let x3 = fOpp (fAdd [ fOne; fZero; fOne ]) in
    fMul [ (fMul [ x0; x1; x2 ]); x3 ] = fMul [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (61)
  (try
   (let x0 = fInv (fOpp fZero) in
    let x1 = fMul [ (fOpp fOne); (fAdd [ fOne; fZero; fZero ]); fZero ] in
    let x2 = fOpp (fInv fZero) in
    let x3 = fInv (fOpp fOne) in
    fMul [ (fMul [ x0; x1; x2 ]); x3 ] = fMul [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (62)
  (try
   (let x0 =
      fAdd
        [ (fMul [ fZero; fZero; fOne ]); (fOpp fZero);
          (fMul [ fOne; fOne; fZero ]) ] in
    let x1 =
      fMul [ (fOpp fOne); (fAdd [ fOne; fZero; fZero ]); (fInv fZero) ] in
    let x2 = fAdd [ (fInv fZero); (fOpp fOne); (fAdd [ fOne; fOne; fOne ]) ] in
    let x3 =
      fAdd [ (fMul [ fZero; fZero; fZero ]); (fOpp fZero); (fOpp fOne) ] in
    fMul [ (fMul [ x0; x1; x2 ]); x3 ] = fMul [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (63)
  (try
   (let x0 = fOpp (fInv fOne) in
    let x1 = fOpp (fOpp fOne) in
    let x2 =
      fMul [ (fOpp fOne); (fAdd [ fOne; fZero; fZero ]); (fInv fZero) ] in
    let x3 =
      fAdd [ (fMul [ fZero; fZero; fZero ]); (fOpp fZero); (fOpp fOne) ] in
    fMul [ (fMul [ x0; x1; x2 ]); x3 ] = fMul [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (64)
  (try
   (let x0 = fMul [ (fOpp fOne); (fAdd [ fOne; fZero; fZero ]); fZero ] in
    let x1 = fMul [ (fInv fZero); (fOpp fZero); (fOpp fZero) ] in
    let x2 =
      fMul
        [ (fAdd [ fZero; fZero; fZero ]); (fOpp fOne);
          (fMul [ fZero; fOne; fOne ]) ] in
    let x3 =
      fMul
        [ (fMul [ fOne; fOne; fZero ]); (fAdd [ fOne; fOne; fZero ]);
          (fMul [ fZero; fZero; fOne ]) ] in
    fMul [ (fMul [ x0; x1; x2 ]); x3 ] = fMul [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (65)
  (try
   (let x0 = fOpp (fMul [ fOne; fZero; fOne ]) in
    let x1 =
      fAdd
        [ (fMul [ fOne; fZero; fZero ]); (fMul [ fZero; fOne; fOne ]);
          (fOpp fOne) ] in
    let x2 = fAdd [ (fOpp fZero); (fMul [ fOne; fOne; fOne ]); (fOpp fOne) ] in
    let x3 = fInv (fOpp fZero) in
    fMul [ x0; x1; x2; x3 ] = fMul [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (66)
  (try
   (let x0 = fOpp (fInv fZero) in
    let x1 = fInv (fMul [ fZero; fOne; fOne ]) in
    let x2 = fOpp (fMul [ fOne; fOne; fZero ]) in
    let x3 = fOpp (fMul [ fOne; fZero; fOne ]) in
    fMul [ x0; x1; x2; x3 ] = fMul [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (67)
  (try
   (let x0 = fOpp (fOpp fZero) in
    let x1 = fInv (fInv fZero) in
    let x2 = fMul [ (fAdd [ fZero; fOne; fZero ]); (fOpp fZero); fZero ] in
    let x3 = fZero in fMul [ x0; x1; x2; x3 ] = fMul [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (68)
  (try
   (let x0 = fInv (fInv fZero) in
    let x1 = fInv fOne in
    let x2 = fAdd [ (fOpp fOne); (fInv fZero); (fOpp fOne) ] in
    let x3 =
      fMul
        [ (fAdd [ fOne; fOne; fZero ]); (fAdd [ fZero; fOne; fZero ]);
          (fAdd [ fZero; fOne; fOne ]) ] in
    fMul [ x0; x1; x2; x3 ] = fMul [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (69)
  (try
   (let x0 = fInv (fOpp fZero) in
    let x1 = fInv (fMul [ fZero; fOne; fOne ]) in
    let x2 = fOpp (fMul [ fOne; fOne; fZero ]) in
    let x3 = fInv (fInv fOne) in
    fMul [ x0; x1; x2; x3 ] = fMul [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (70)
  (try
   (let x0 = fAdd [ (fOpp fOne); (fOpp fOne); (fAdd [ fZero; fOne; fOne ]) ] in
    let x1 =
      fAdd [ (fInv fOne); (fAdd [ fZero; fZero; fZero ]); (fOpp fZero) ] in
    let x2 = fOpp (fMul [ fOne; fZero; fOne ]) in
    let x3 = fInv (fInv fOne) in
    fMul [ x0; x1; x2; x3 ] = fMul [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (71)
  (try
   (let x0 = fInv (fMul [ fOne; fZero; fZero ]) in
    let x1 =
      fAdd
        [ (fOpp fZero); (fAdd [ fOne; fOne; fZero ]);
          (fMul [ fOne; fOne; fOne ]) ] in
    let x2 = fMul [ (fAdd [ fZero; fOne; fOne ]); (fInv fZero); (fInv fOne) ] in
    let x3 =
      fMul
        [ (fMul [ fZero; fZero; fOne ]); (fAdd [ fOne; fZero; fOne ]);
          (fMul [ fZero; fZero; fOne ]) ] in
    fMul [ x0; x1; x2; x3 ] = fMul [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (72)
  (try
   (let x0 =
      fMul
        [ (fMul [ fZero; fZero; fOne ]); (fMul [ fOne; fZero; fOne ]);
          (fAdd [ fZero; fZero; fZero ]) ] in
    let x1 =
      fAdd
        [ (fOpp fOne); (fAdd [ fOne; fZero; fOne ]);
          (fAdd [ fZero; fOne; fOne ]) ] in
    let x2 =
      fMul
        [ (fMul [ fOne; fOne; fZero ]); (fMul [ fOne; fZero; fOne ]);
          (fInv fZero) ] in
    let x3 =
      fMul [ (fInv fOne); (fAdd [ fZero; fOne; fZero ]); (fOpp fZero) ] in
    fMul [ x0; x1; x2; x3 ] = fMul [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (73)
  (try
   (let x0 =
      fAdd
        [ (fMul [ fZero; fZero; fOne ]); (fOpp fOne);
          (fAdd [ fZero; fOne; fZero ]) ] in
    let x1 = fInv (fAdd [ fZero; fOne; fZero ]) in
    let x2 = fOpp (fAdd [ fZero; fOne; fOne ]) in
    let x3 = fOpp (fAdd [ fZero; fOne; fOne ]) in
    fMul [ x0; x1; x2; x3 ] = fMul [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (74)
  (try
   (let x0 = fInv (fAdd [ fZero; fOne; fOne ]) in
    let x1 =
      fAdd
        [ (fOpp fOne); (fAdd [ fOne; fZero; fZero ]);
          (fAdd [ fZero; fOne; fZero ]) ] in
    let x2 =
      fAdd
        [ (fOpp fOne); (fAdd [ fOne; fZero; fZero ]);
          (fAdd [ fZero; fOne; fZero ]) ] in
    let x3 = fInv (fMul [ fOne; fZero; fZero ]) in
    fMul [ x0; x1; x2; x3 ] = fMul [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (75)
  (try
   (let x0 =
      fMul
        [ (fAdd [ fOne; fZero; fZero ]); (fMul [ fZero; fOne; fOne ]);
          (fInv fOne) ] in
    let x1 = fInv (fOpp fZero) in
    let x2 = fZero in
    let x3 = fInv (fAdd [ fOne; fZero; fOne ]) in
    fMul [ x0; x1; x2; x3 ] = fMul [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (76)
  (try
   (let x0 = fInv (fOpp fOne) in
    let x1 =
      fAdd
        [ (fMul [ fOne; fOne; fOne ]); (fMul [ fOne; fOne; fOne ]);
          (fOpp fOne) ] in
    let x2 = fInv (fAdd [ fOne; fZero; fOne ]) in
    let x3 =
      fMul
        [ (fMul [ fZero; fZero; fZero ]); (fAdd [ fZero; fOne; fZero ]);
          fZero ] in
    fMul [ x0; x1; x2; x3 ] = fMul [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (77)
  (try
   (let x0 = fInv (fMul [ fZero; fOne; fZero ]) in
    let x1 = fInv (fAdd [ fZero; fZero; fZero ]) in
    let x2 = fOpp (fAdd [ fOne; fOne; fOne ]) in
    let x3 =
      fMul
        [ (fMul [ fZero; fZero; fZero ]); (fAdd [ fZero; fOne; fZero ]);
          fZero ] in
    fMul [ x0; x1; x2; x3 ] = fMul [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (78)
  (try
   (let x0 =
      fAdd
        [ (fMul [ fZero; fZero; fZero ]); (fMul [ fZero; fZero; fOne ]);
          (fAdd [ fOne; fZero; fZero ]) ] in
    let x1 =
      fMul
        [ (fAdd [ fOne; fZero; fZero ]); (fMul [ fZero; fOne; fOne ]);
          (fInv fOne) ] in
    let x2 =
      fMul
        [ (fMul [ fZero; fOne; fZero ]); (fAdd [ fZero; fOne; fZero ]);
          (fAdd [ fOne; fOne; fZero ]) ] in
    let x3 = fOpp (fMul [ fOne; fZero; fZero ]) in
    fMul [ x0; x1; x2; x3 ] = fMul [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (79)
  (try
   (let x0 =
      fAdd
        [ (fOpp fOne); (fAdd [ fZero; fZero; fOne ]);
          (fAdd [ fOne; fZero; fZero ]) ] in
    let x1 = fInv (fInv fZero) in
    let x2 = fOpp (fMul [ fZero; fOne; fOne ]) in
    let x3 = fOpp (fAdd [ fOne; fZero; fOne ]) in
    fMul [ x0; x1; x2; x3 ] = fMul [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (80)
  (try
   (let x0 =
      fAdd [ (fInv fOne); (fAdd [ fZero; fZero; fOne ]); (fInv fZero) ] in
    let x1 = fMul [ (fInv fOne); (fMul [ fOne; fZero; fZero ]); (fOpp fOne) ] in
    let x2 = fOpp (fMul [ fOne; fOne; fOne ]) in
    let x3 =
      fMul [ (fMul [ fOne; fZero; fZero ]); (fInv fZero); (fOpp fOne) ] in
    fMul [ x0; x1; x2; x3 ] = fMul [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (81)
  (try
   (let x0 =
      fMul
        [ (fMul [ fOne; fZero; fZero ]); (fMul [ fOne; fZero; fZero ]);
          (fOpp fOne) ] in
    let x1 = fOpp (fInv fOne) in
    let x2 = fOpp (fMul [ fOne; fZero; fZero ]) in
    let x3 = fOpp (fInv fZero) in
    fMul [ x0; x1; x2; x3 ] = fMul [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (82)
  (try
   (let x0 = fInv (fAdd [ fZero; fZero; fOne ]) in
    let x1 = fInv (fMul [ fOne; fOne; fOne ]) in
    let x2 =
      fAdd [ (fInv fOne); (fAdd [ fZero; fZero; fOne ]); (fInv fZero) ] in
    let x3 = fOpp (fAdd [ fZero; fOne; fZero ]) in
    fMul [ x0; x1; x2; x3 ] = fMul [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (83)
  (try
   (let x0 = fOpp (fMul [ fOne; fZero; fZero ]) in
    let x1 = fOpp (fOpp fOne) in
    let x2 =
      fAdd
        [ (fAdd [ fZero; fOne; fOne ]); (fMul [ fZero; fZero; fOne ]);
          (fInv fOne) ] in
    let x3 = fMul [ (fInv fOne); fOne; (fOpp fZero) ] in
    fMul [ x0; x1; x2; x3 ] = fMul [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (84)
  (try
   (let x0 = fOpp (fInv fZero) in
    let x1 = fMul [ (fOpp fOne); (fInv fZero); (fOpp fZero) ] in
    let x2 = fAdd [ (fInv fZero); (fInv fZero); (fInv fZero) ] in
    let x3 =
      fMul
        [ (fInv fOne); (fAdd [ fZero; fOne; fZero ]);
          (fAdd [ fZero; fOne; fOne ]) ] in
    fMul [ x0; x1; x2; x3 ] = fMul [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (85)
  (try
   (let x0 = fMul [ (fInv fOne); (fOpp fZero); (fMul [ fOne; fOne; fZero ]) ] in
    let x1 =
      fMul
        [ (fAdd [ fZero; fZero; fOne ]); (fOpp fZero);
          (fAdd [ fZero; fZero; fOne ]) ] in
    fMul [ x0; fOne; x1 ] = fMul [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (86)
  (try
   (let x0 = fMul [ (fInv fOne); (fOpp fZero); (fMul [ fOne; fOne; fZero ]) ] in
    let x1 = fInv (fMul [ fZero; fZero; fOne ]) in
    fMul [ x0; fOne; x1 ] = fMul [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (87)
  (try
   (let x0 = fOpp (fMul [ fZero; fOne; fZero ]) in
    let x1 = fAdd [ (fAdd [ fOne; fOne; fOne ]); (fOpp fOne); (fInv fOne) ] in
    fMul [ x0; fOne; x1 ] = fMul [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (88)
  (try
   (let x0 =
      fMul
        [ (fAdd [ fZero; fOne; fZero ]); (fInv fOne);
          (fAdd [ fZero; fZero; fOne ]) ] in
    let x1 = fInv (fInv fOne) in fMul [ x0; fOne; x1 ] = fMul [ x0; x1 ])
   with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (89)
  (try
   (let x0 = fOpp (fInv fOne) in
    let x1 = fAdd [ (fInv fOne); (fInv fOne); (fMul [ fOne; fOne; fOne ]) ] in
    fMul [ x0; fOne; x1 ] = fMul [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (90)
  (try
   (let x0 =
      fMul [ (fInv fOne); (fOpp fZero); (fAdd [ fOne; fZero; fZero ]) ] in
    fMul [ fOne; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (91)
  (try
   (let x0 =
      fMul [ (fInv fOne); (fOpp fZero); (fAdd [ fOne; fZero; fZero ]) ] in
    fMul [ fOne; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (92)
  (try
   (let x0 =
      fMul [ (fInv fOne); (fOpp fZero); (fAdd [ fOne; fZero; fZero ]) ] in
    fMul [ fOne; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (93)
  (try (let x0 = fOne in fMul [ fOne; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (94)
  (try
   (let x0 =
      fAdd
        [ (fOpp fZero); (fMul [ fOne; fZero; fZero ]);
          (fAdd [ fZero; fOne; fOne ]) ] in
    fMul [ fOne; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (95)
  (try
   (let x0 =
      fMul
        [ (fMul [ fZero; fOne; fZero ]); (fMul [ fZero; fOne; fOne ]);
          (fAdd [ fZero; fZero; fOne ]) ] in
    fMul [ x0; fOne; fOne ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (96)
  (try
   (let x0 =
      fAdd
        [ (fInv fZero); (fMul [ fOne; fOne; fOne ]);
          (fMul [ fOne; fZero; fZero ]) ] in
    fMul [ x0; fOne; fOne ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (97)
  (try
   (let x0 =
      fMul
        [ (fMul [ fZero; fOne; fZero ]); (fMul [ fZero; fOne; fOne ]);
          (fAdd [ fZero; fZero; fOne ]) ] in
    fMul [ x0; fOne; fOne ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (98)
  (try
   (let x0 =
      fMul
        [ (fMul [ fZero; fOne; fZero ]); (fAdd [ fOne; fOne; fZero ]);
          (fOpp fOne) ] in
    fMul [ x0; fOne; fOne ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (99)
  (try (let x0 = fZero in fMul [ x0; fOne; fOne ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (100)
  (try
   (let x0 =
      fMul
        [ (fMul [ fOne; fOne; fOne ]); (fAdd [ fZero; fOne; fZero ]);
          (fAdd [ fZero; fZero; fZero ]) ] in
    let x1 = fOpp (fOpp fZero) in
    let x2 = fInv (fAdd [ fZero; fOne; fZero ]) in
    fMul [ x0; x1; (fAdd [ x0; x1; x2 ]); x2 ] =
    fAdd
      [ (fMul [ x0; x1; x0; x2 ]); (fMul [ x0; x1; x1; x2 ]);
        (fMul [ x0; x1; x2; x2 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (101)
  (try
   (let x0 = fInv (fInv fOne) in
    let x1 =
      fMul
        [ (fMul [ fZero; fOne; fZero ]); (fInv fZero);
          (fMul [ fZero; fZero; fZero ]) ] in
    let x2 = fOpp (fOpp fZero) in
    fMul [ x0; x1; (fAdd [ x0; x1; x2 ]); x2 ] =
    fAdd
      [ (fMul [ x0; x1; x0; x2 ]); (fMul [ x0; x1; x1; x2 ]);
        (fMul [ x0; x1; x2; x2 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (102)
  (try
   (let x0 = fInv (fMul [ fZero; fOne; fOne ]) in
    let x1 = fOpp (fOpp fZero) in
    let x2 =
      fAdd
        [ (fInv fOne); (fAdd [ fZero; fZero; fZero ]);
          (fAdd [ fZero; fOne; fZero ]) ] in
    fMul [ x0; x1; (fAdd [ x0; x1; x2 ]); x2 ] =
    fAdd
      [ (fMul [ x0; x1; x0; x2 ]); (fMul [ x0; x1; x1; x2 ]);
        (fMul [ x0; x1; x2; x2 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (103)
  (try
   (let x0 =
      fAdd
        [ (fInv fOne); (fAdd [ fZero; fZero; fZero ]);
          (fAdd [ fZero; fOne; fZero ]) ] in
    let x1 = fInv (fInv fOne) in
    let x2 = fOpp (fInv fOne) in
    fMul [ x0; x1; (fAdd [ x0; x1; x2 ]); x2 ] =
    fAdd
      [ (fMul [ x0; x1; x0; x2 ]); (fMul [ x0; x1; x1; x2 ]);
        (fMul [ x0; x1; x2; x2 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (104)
  (try
   (let x0 = fInv (fInv fOne) in
    let x1 = fInv (fInv fOne) in
    let x2 = fOpp (fAdd [ fOne; fOne; fOne ]) in
    fMul [ x0; x1; (fAdd [ x0; x1; x2 ]); x2 ] =
    fAdd
      [ (fMul [ x0; x1; x0; x2 ]); (fMul [ x0; x1; x1; x2 ]);
        (fMul [ x0; x1; x2; x2 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (105)
  (try
   (let x0 =
      fMul
        [ (fAdd [ fZero; fOne; fZero ]); fOne; (fAdd [ fZero; fOne; fOne ]) ] in
    let x1 =
      fMul
        [ (fAdd [ fZero; fOne; fZero ]); fOne; (fAdd [ fZero; fOne; fOne ]) ] in
    let x2 =
      fMul
        [ (fAdd [ fZero; fOne; fZero ]); fOne; (fAdd [ fZero; fOne; fOne ]) ] in
    fMul [ (fAdd [ x0; x1; x2 ]); x0 ] =
    fAdd [ (fMul [ x0; x0 ]); (fMul [ x1; x0 ]); (fMul [ x2; x0 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (106)
  (try
   (let x0 = fOpp (fInv fOne) in
    let x1 =
      fMul
        [ (fOpp fZero); (fAdd [ fZero; fZero; fZero ]);
          (fAdd [ fOne; fZero; fOne ]) ] in
    let x2 =
      fAdd [ (fOpp fZero); (fInv fZero); (fAdd [ fZero; fZero; fZero ]) ] in
    fMul [ (fAdd [ x0; x1; x2 ]); x0 ] =
    fAdd [ (fMul [ x0; x0 ]); (fMul [ x1; x0 ]); (fMul [ x2; x0 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (107)
  (try
   (let x0 = fInv (fInv fOne) in
    let x1 = fInv (fMul [ fOne; fOne; fZero ]) in
    let x2 = fAdd [ (fInv fOne); (fInv fOne); (fInv fZero) ] in
    fMul [ (fAdd [ x0; x1; x2 ]); x0 ] =
    fAdd [ (fMul [ x0; x0 ]); (fMul [ x1; x0 ]); (fMul [ x2; x0 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (108)
  (try
   (let x0 = fAdd [ (fOpp fZero); (fOpp fZero); (fOpp fOne) ] in
    let x1 =
      fAdd
        [ (fMul [ fZero; fOne; fOne ]); (fAdd [ fOne; fOne; fOne ]);
          (fOpp fOne) ] in
    let x2 =
      fAdd [ (fOpp fZero); (fAdd [ fOne; fZero; fZero ]); (fInv fZero) ] in
    fMul [ (fAdd [ x0; x1; x2 ]); x0 ] =
    fAdd [ (fMul [ x0; x0 ]); (fMul [ x1; x0 ]); (fMul [ x2; x0 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (109)
  (try
   (let x0 =
      fMul
        [ (fAdd [ fZero; fOne; fZero ]); (fAdd [ fZero; fOne; fOne ]);
          (fOpp fOne) ] in
    let x1 = fOpp (fOpp fZero) in
    let x2 =
      fMul
        [ (fAdd [ fZero; fZero; fZero ]); (fAdd [ fZero; fZero; fOne ]);
          (fAdd [ fOne; fOne; fOne ]) ] in
    fMul [ (fAdd [ x0; x1; x2 ]); x0 ] =
    fAdd [ (fMul [ x0; x0 ]); (fMul [ x1; x0 ]); (fMul [ x2; x0 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

