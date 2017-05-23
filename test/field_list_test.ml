open Field_list
;;

open Gentest
;;

testing ("Field_list (automatic) - seed: 633560484")
;;

testi
  (0)
  (try
   (let x0 =
      kAdd
        [ (kAdd [ kZero; kOne; kZero ]); (kProd [ kOne; kZero; kOne ]);
          (kProd [ kZero; kOne; kOne ]) ] in
    let x1 =
      kAdd
        [ (kProd [ kZero; kZero; kOne ]); (kProd [ kOne; kOne; kOne ]);
          (kAdd [ kOne; kZero; kOne ]) ] in
    let x2 =
      kProd
        [ (kAdd [ kOne; kZero; kOne ]); (kProd [ kZero; kZero; kOne ]);
          (kAdd [ kOne; kZero; kOne ]) ] in
    kAdd [ (kAdd [ x0; x1 ]); x2 ] = kAdd [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (1)
  (try
   (let x0 =
      kProd
        [ (kAdd [ kZero; kZero; kOne ]); (kProd [ kOne; kZero; kOne ]);
          (kProd [ kZero; kOne; kOne ]) ] in
    let x1 =
      kAdd
        [ (kAdd [ kZero; kOne; kZero ]); (kProd [ kOne; kZero; kOne ]);
          (kProd [ kOne; kOne; kZero ]) ] in
    let x2 =
      kAdd
        [ (kProd [ kZero; kZero; kOne ]); (kProd [ kOne; kOne; kOne ]);
          (kAdd [ kOne; kZero; kOne ]) ] in
    kAdd [ (kAdd [ x0; x1 ]); x2 ] = kAdd [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (2)
  (try
   (let x0 =
      kProd
        [ (kAdd [ kOne; kOne; kOne ]); (kProd [ kZero; kZero; kOne ]);
          (kProd [ kZero; kOne; kOne ]) ] in
    let x1 =
      kAdd
        [ (kAdd [ kZero; kOne; kZero ]); (kProd [ kOne; kZero; kOne ]);
          (kProd [ kOne; kOne; kZero ]) ] in
    let x2 =
      kProd
        [ (kAdd [ kOne; kOne; kOne ]); kZero; (kAdd [ kOne; kZero; kZero ]) ] in
    kAdd [ (kAdd [ x0; x1 ]); x2 ] = kAdd [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (3)
  (try
   (let x0 =
      kAdd
        [ (kAdd [ kZero; kOne; kZero ]); (kProd [ kOne; kOne; kOne ]);
          (kProd [ kZero; kZero; kOne ]) ] in
    let x1 =
      kProd
        [ (kAdd [ kZero; kZero; kOne ]); (kProd [ kOne; kZero; kOne ]);
          (kProd [ kZero; kOne; kOne ]) ] in
    let x2 =
      kProd
        [ (kAdd [ kOne; kOne; kOne ]); (kProd [ kZero; kZero; kOne ]);
          (kProd [ kZero; kOne; kOne ]) ] in
    kAdd [ (kAdd [ x0; x1 ]); x2 ] = kAdd [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (4)
  (try
   (let x0 =
      kAdd
        [ (kAdd [ kZero; kOne; kZero ]); (kProd [ kOne; kOne; kOne ]);
          (kProd [ kOne; kOne; kOne ]) ] in
    let x1 =
      kProd
        [ (kAdd [ kOne; kOne; kOne ]); kOne; (kAdd [ kOne; kZero; kZero ]) ] in
    let x2 =
      kProd
        [ (kAdd [ kOne; kZero; kOne ]); (kProd [ kZero; kZero; kOne ]);
          (kAdd [ kOne; kZero; kOne ]) ] in
    kAdd [ (kAdd [ x0; x1 ]); x2 ] = kAdd [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (5)
  (try
   (let x0 =
      kAdd
        [ (kProd [ kOne; kOne; kZero ]); (kAdd [ kOne; kZero; kZero ]);
          (kAdd [ kZero; kOne; kZero ]) ] in
    let x1 =
      kAdd
        [ (kProd [ kOne; kOne; kZero ]); (kProd [ kOne; kZero; kZero ]); kOne ] in
    let x2 =
      kProd
        [ (kAdd [ kOne; kOne; kOne ]); (kAdd [ kZero; kOne; kOne ]);
          (kAdd [ kZero; kZero; kOne ]) ] in
    let x3 =
      kProd
        [ (kAdd [ kZero; kOne; kZero ]); (kProd [ kZero; kOne; kOne ]);
          (kProd [ kZero; kZero; kZero ]) ] in
    let x4 =
      kAdd
        [ (kProd [ kOne; kOne; kZero ]); (kProd [ kZero; kOne; kZero ]);
          (kProd [ kZero; kOne; kOne ]) ] in
    kAdd [ x0; (kAdd [ x1; x2 ]); (kAdd [ x3; x4 ]) ] =
    kAdd [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (6)
  (try
   (let x0 =
      kAdd
        [ (kAdd [ kOne; kOne; kZero ]); (kAdd [ kOne; kZero; kZero ]);
          (kAdd [ kZero; kZero; kOne ]) ] in
    let x1 =
      kProd
        [ (kProd [ kOne; kZero; kZero ]); (kProd [ kZero; kZero; kOne ]);
          (kProd [ kZero; kZero; kOne ]) ] in
    let x2 =
      kAdd
        [ (kProd [ kOne; kOne; kZero ]); (kAdd [ kOne; kOne; kOne ]);
          (kAdd [ kOne; kZero; kZero ]) ] in
    let x3 = kOne in
    let x4 =
      kProd
        [ (kAdd [ kZero; kOne; kZero ]); (kProd [ kOne; kZero; kOne ]);
          (kAdd [ kZero; kZero; kZero ]) ] in
    kAdd [ x0; (kAdd [ x1; x2 ]); (kAdd [ x3; x4 ]) ] =
    kAdd [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (7)
  (try
   (let x0 =
      kAdd
        [ (kProd [ kOne; kOne; kOne ]); (kProd [ kZero; kZero; kOne ]);
          (kProd [ kZero; kOne; kOne ]) ] in
    let x1 =
      kProd
        [ (kProd [ kOne; kZero; kZero ]); (kProd [ kOne; kOne; kOne ]);
          (kProd [ kZero; kZero; kOne ]) ] in
    let x2 =
      kProd
        [ (kProd [ kOne; kZero; kZero ]); (kProd [ kZero; kZero; kOne ]);
          (kProd [ kZero; kZero; kOne ]) ] in
    let x3 =
      kProd
        [ (kAdd [ kZero; kZero; kOne ]); (kProd [ kZero; kZero; kOne ]); kOne ] in
    let x4 =
      kAdd
        [ (kProd [ kOne; kOne; kZero ]); (kProd [ kOne; kZero; kZero ]); kOne ] in
    kAdd [ x0; (kAdd [ x1; x2 ]); (kAdd [ x3; x4 ]) ] =
    kAdd [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (8)
  (try
   (let x0 =
      kProd
        [ (kProd [ kOne; kZero; kZero ]); (kProd [ kZero; kZero; kOne ]);
          (kProd [ kZero; kZero; kOne ]) ] in
    let x1 =
      kAdd
        [ (kProd [ kOne; kOne; kZero ]); (kAdd [ kOne; kZero; kOne ]);
          (kAdd [ kOne; kZero; kOne ]) ] in
    let x2 =
      kProd
        [ (kAdd [ kZero; kOne; kZero ]); (kAdd [ kOne; kZero; kOne ]);
          (kProd [ kZero; kZero; kOne ]) ] in
    let x3 =
      kAdd
        [ (kProd [ kOne; kOne; kOne ]); (kProd [ kZero; kZero; kOne ]);
          (kProd [ kZero; kOne; kOne ]) ] in
    let x4 =
      kAdd
        [ (kProd [ kOne; kOne; kZero ]); (kProd [ kZero; kOne; kZero ]);
          (kProd [ kZero; kOne; kOne ]) ] in
    kAdd [ x0; (kAdd [ x1; x2 ]); (kAdd [ x3; x4 ]) ] =
    kAdd [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (9)
  (try
   (let x0 =
      kAdd
        [ (kProd [ kOne; kOne; kZero ]); (kProd [ kOne; kZero; kZero ]); kOne ] in
    let x1 =
      kAdd
        [ (kAdd [ kOne; kZero; kOne ]); (kAdd [ kOne; kOne; kOne ]);
          (kProd [ kOne; kOne; kOne ]) ] in
    let x2 =
      kProd
        [ (kAdd [ kOne; kOne; kOne ]); (kAdd [ kOne; kZero; kOne ]);
          (kProd [ kZero; kZero; kOne ]) ] in
    let x3 =
      kAdd
        [ (kProd [ kOne; kOne; kZero ]); (kAdd [ kOne; kZero; kZero ]);
          (kAdd [ kZero; kOne; kZero ]) ] in
    let x4 =
      kAdd
        [ (kProd [ kOne; kOne; kOne ]); (kProd [ kZero; kZero; kOne ]);
          (kProd [ kZero; kOne; kOne ]) ] in
    kAdd [ x0; (kAdd [ x1; x2 ]); (kAdd [ x3; x4 ]) ] =
    kAdd [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (10)
  (try
   (let x0 =
      kProd
        [ kOne; (kProd [ kZero; kOne; kOne ]); (kAdd [ kOne; kOne; kOne ]) ] in
    let x1 =
      kProd
        [ (kAdd [ kOne; kZero; kZero ]); (kProd [ kOne; kOne; kOne ]);
          (kProd [ kOne; kOne; kOne ]) ] in
    let x2 =
      kAdd
        [ kOne; (kAdd [ kZero; kZero; kZero ]); (kProd [ kOne; kOne; kOne ]) ] in
    let x3 =
      kProd
        [ (kProd [ kOne; kZero; kZero ]); (kAdd [ kZero; kZero; kZero ]);
          (kProd [ kOne; kZero; kZero ]) ] in
    kAdd [ (kAdd [ x0; x1; x2 ]); x3 ] = kAdd [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (11)
  (try
   (let x0 =
      kProd
        [ (kAdd [ kZero; kOne; kZero ]); (kAdd [ kOne; kOne; kOne ]);
          (kAdd [ kZero; kZero; kOne ]) ] in
    let x1 =
      kProd
        [ (kAdd [ kOne; kZero; kZero ]); (kProd [ kOne; kOne; kOne ]);
          (kProd [ kOne; kOne; kOne ]) ] in
    let x2 =
      kProd
        [ (kAdd [ kZero; kOne; kZero ]); (kAdd [ kOne; kOne; kOne ]);
          (kAdd [ kZero; kZero; kOne ]) ] in
    let x3 =
      kProd
        [ (kProd [ kOne; kZero; kZero ]); (kProd [ kOne; kOne; kZero ]);
          (kAdd [ kOne; kOne; kOne ]) ] in
    kAdd [ (kAdd [ x0; x1; x2 ]); x3 ] = kAdd [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (12)
  (try
   (let x0 =
      kProd
        [ (kAdd [ kOne; kZero; kZero ]); (kProd [ kOne; kOne; kOne ]);
          (kProd [ kOne; kOne; kOne ]) ] in
    let x1 =
      kAdd
        [ (kAdd [ kOne; kZero; kOne ]); (kAdd [ kZero; kZero; kZero ]);
          (kAdd [ kZero; kZero; kZero ]) ] in
    let x2 =
      kAdd
        [ (kAdd [ kZero; kZero; kOne ]); (kAdd [ kZero; kZero; kOne ]);
          (kProd [ kZero; kZero; kOne ]) ] in
    let x3 =
      kProd
        [ (kProd [ kOne; kZero; kZero ]); (kAdd [ kZero; kZero; kZero ]);
          (kProd [ kOne; kZero; kZero ]) ] in
    kAdd [ (kAdd [ x0; x1; x2 ]); x3 ] = kAdd [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (13)
  (try
   (let x0 =
      kAdd
        [ (kAdd [ kZero; kZero; kOne ]); (kProd [ kOne; kOne; kOne ]);
          (kProd [ kOne; kOne; kOne ]) ] in
    let x1 =
      kProd
        [ (kAdd [ kZero; kOne; kZero ]); (kAdd [ kOne; kOne; kOne ]);
          (kAdd [ kZero; kZero; kOne ]) ] in
    let x2 =
      kProd
        [ (kProd [ kOne; kZero; kZero ]); (kAdd [ kZero; kZero; kZero ]);
          (kProd [ kOne; kZero; kZero ]) ] in
    let x3 =
      kProd
        [ (kAdd [ kZero; kOne; kZero ]); (kAdd [ kOne; kOne; kOne ]);
          (kAdd [ kZero; kZero; kOne ]) ] in
    kAdd [ (kAdd [ x0; x1; x2 ]); x3 ] = kAdd [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (14)
  (try
   (let x0 =
      kAdd
        [ (kAdd [ kOne; kOne; kOne ]); (kAdd [ kOne; kOne; kOne ]); kZero ] in
    let x1 =
      kAdd
        [ (kAdd [ kOne; kZero; kOne ]); (kProd [ kZero; kOne; kOne ]);
          (kAdd [ kOne; kOne; kZero ]) ] in
    let x2 =
      kProd
        [ (kAdd [ kOne; kZero; kZero ]); (kProd [ kZero; kOne; kZero ]);
          (kAdd [ kOne; kZero; kOne ]) ] in
    let x3 = kOne in
    kAdd [ (kAdd [ x0; x1; x2 ]); x3 ] = kAdd [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (15)
  (try
   (let x0 =
      kAdd
        [ (kAdd [ kOne; kZero; kOne ]); (kProd [ kZero; kZero; kOne ]);
          (kAdd [ kZero; kOne; kZero ]) ] in
    let x1 =
      kAdd
        [ (kProd [ kZero; kOne; kOne ]); (kProd [ kZero; kZero; kOne ]);
          (kAdd [ kZero; kZero; kZero ]) ] in
    let x2 =
      kAdd
        [ (kAdd [ kZero; kOne; kZero ]); (kProd [ kZero; kZero; kZero ]);
          (kAdd [ kOne; kZero; kOne ]) ] in
    let x3 =
      kAdd
        [ (kProd [ kOne; kOne; kZero ]); (kAdd [ kZero; kZero; kZero ]);
          (kAdd [ kOne; kZero; kOne ]) ] in
    kAdd [ x0; x1; x2; x3 ] = kAdd [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (16)
  (try
   (let x0 =
      kProd
        [ (kAdd [ kZero; kOne; kZero ]); (kProd [ kOne; kZero; kOne ]);
          (kAdd [ kOne; kOne; kZero ]) ] in
    let x1 =
      kProd
        [ (kAdd [ kOne; kOne; kZero ]); (kAdd [ kZero; kZero; kZero ]);
          (kAdd [ kOne; kZero; kOne ]) ] in
    let x2 =
      kProd
        [ (kAdd [ kZero; kOne; kZero ]); (kProd [ kOne; kOne; kZero ]);
          (kProd [ kZero; kOne; kZero ]) ] in
    let x3 =
      kAdd
        [ (kProd [ kOne; kOne; kZero ]); (kAdd [ kZero; kZero; kZero ]);
          (kProd [ kZero; kOne; kZero ]) ] in
    kAdd [ x0; x1; x2; x3 ] = kAdd [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (17)
  (try
   (let x0 =
      kAdd
        [ (kProd [ kOne; kZero; kZero ]); (kAdd [ kOne; kOne; kOne ]);
          (kAdd [ kZero; kZero; kZero ]) ] in
    let x1 =
      kAdd
        [ (kProd [ kOne; kZero; kZero ]); (kAdd [ kOne; kOne; kOne ]);
          (kAdd [ kZero; kZero; kZero ]) ] in
    let x2 =
      kProd
        [ (kProd [ kOne; kZero; kZero ]); (kProd [ kOne; kZero; kOne ]);
          (kAdd [ kZero; kOne; kOne ]) ] in
    let x3 =
      kProd
        [ (kAdd [ kOne; kZero; kZero ]); (kAdd [ kOne; kZero; kOne ]);
          (kProd [ kZero; kZero; kOne ]) ] in
    kAdd [ x0; x1; x2; x3 ] = kAdd [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (18)
  (try
   (let x0 =
      kProd
        [ (kProd [ kOne; kZero; kZero ]); (kProd [ kOne; kOne; kZero ]);
          (kAdd [ kOne; kOne; kZero ]) ] in
    let x1 =
      kAdd
        [ (kAdd [ kOne; kZero; kOne ]); (kProd [ kZero; kZero; kOne ]);
          (kAdd [ kZero; kOne; kZero ]) ] in
    let x2 =
      kProd
        [ (kAdd [ kOne; kOne; kZero ]); (kAdd [ kZero; kZero; kOne ]);
          (kProd [ kZero; kOne; kZero ]) ] in
    let x3 =
      kAdd
        [ (kProd [ kOne; kOne; kZero ]); (kAdd [ kZero; kZero; kZero ]);
          (kAdd [ kOne; kZero; kOne ]) ] in
    kAdd [ x0; x1; x2; x3 ] = kAdd [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (19)
  (try
   (let x0 =
      kProd
        [ (kAdd [ kZero; kOne; kZero ]); kZero; (kAdd [ kOne; kZero; kZero ]) ] in
    let x1 =
      kProd
        [ (kAdd [ kOne; kOne; kZero ]); (kAdd [ kZero; kZero; kZero ]);
          (kAdd [ kOne; kZero; kOne ]) ] in
    let x2 =
      kAdd
        [ (kAdd [ kOne; kZero; kOne ]); (kProd [ kZero; kZero; kOne ]);
          (kAdd [ kZero; kOne; kZero ]) ] in
    let x3 =
      kAdd
        [ (kProd [ kOne; kOne; kOne ]); (kProd [ kOne; kZero; kZero ]);
          (kAdd [ kZero; kZero; kZero ]) ] in
    kAdd [ x0; x1; x2; x3 ] = kAdd [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (20)
  (try
   (let x0 =
      kProd
        [ (kProd [ kZero; kZero; kOne ]); (kAdd [ kZero; kZero; kOne ]);
          (kAdd [ kOne; kOne; kZero ]) ] in
    let x1 =
      kAdd
        [ (kProd [ kOne; kZero; kZero ]); (kProd [ kOne; kZero; kOne ]);
          (kAdd [ kZero; kOne; kOne ]) ] in
    let x2 =
      kProd
        [ (kAdd [ kZero; kOne; kOne ]); (kProd [ kOne; kOne; kOne ]);
          (kProd [ kZero; kOne; kZero ]) ] in
    let x3 =
      kProd
        [ (kAdd [ kOne; kZero; kOne ]); (kProd [ kOne; kZero; kZero ]);
          (kProd [ kZero; kZero; kOne ]) ] in
    kAdd [ x0; x1; x2; x3 ] = kAdd [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (21)
  (try
   (let x0 =
      kAdd
        [ (kProd [ kOne; kOne; kOne ]); (kAdd [ kOne; kOne; kOne ]); kOne ] in
    let x1 =
      kAdd
        [ (kProd [ kOne; kZero; kZero ]); (kProd [ kZero; kZero; kZero ]);
          (kAdd [ kZero; kZero; kZero ]) ] in
    let x2 =
      kAdd
        [ (kProd [ kOne; kZero; kZero ]); (kProd [ kOne; kZero; kOne ]);
          (kAdd [ kZero; kOne; kOne ]) ] in
    let x3 =
      kProd
        [ (kProd [ kZero; kZero; kOne ]); (kAdd [ kZero; kZero; kOne ]);
          (kProd [ kZero; kZero; kOne ]) ] in
    kAdd [ x0; x1; x2; x3 ] = kAdd [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (22)
  (try
   (let x0 =
      kAdd
        [ (kAdd [ kZero; kOne; kZero ]); (kAdd [ kOne; kOne; kOne ]);
          (kProd [ kZero; kOne; kOne ]) ] in
    let x1 = kOne in
    let x2 =
      kProd
        [ (kAdd [ kZero; kOne; kOne ]); (kAdd [ kZero; kZero; kOne ]);
          (kProd [ kOne; kOne; kZero ]) ] in
    let x3 =
      kAdd
        [ (kProd [ kOne; kOne; kZero ]); (kProd [ kOne; kOne; kOne ]);
          (kProd [ kOne; kOne; kZero ]) ] in
    kAdd [ x0; x1; x2; x3 ] = kAdd [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (23)
  (try
   (let x0 =
      kProd
        [ (kAdd [ kOne; kZero; kOne ]); (kAdd [ kOne; kZero; kZero ]);
          (kProd [ kZero; kOne; kZero ]) ] in
    let x1 =
      kProd
        [ (kAdd [ kOne; kZero; kOne ]); (kAdd [ kOne; kZero; kZero ]);
          (kProd [ kZero; kOne; kZero ]) ] in
    let x2 =
      kProd
        [ (kAdd [ kZero; kOne; kOne ]); (kAdd [ kOne; kZero; kZero ]);
          (kProd [ kOne; kOne; kZero ]) ] in
    let x3 =
      kAdd
        [ (kProd [ kOne; kZero; kZero ]); (kProd [ kZero; kZero; kZero ]);
          (kProd [ kOne; kZero; kOne ]) ] in
    kAdd [ x0; x1; x2; x3 ] = kAdd [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (24)
  (try
   (let x0 =
      kAdd
        [ (kProd [ kOne; kZero; kZero ]); (kProd [ kZero; kZero; kZero ]);
          (kProd [ kOne; kZero; kOne ]) ] in
    let x1 =
      kProd
        [ (kProd [ kZero; kZero; kOne ]); (kAdd [ kZero; kZero; kOne ]);
          (kAdd [ kOne; kOne; kZero ]) ] in
    let x2 =
      kAdd
        [ (kProd [ kOne; kZero; kZero ]); (kProd [ kZero; kZero; kZero ]);
          (kAdd [ kZero; kZero; kZero ]) ] in
    let x3 =
      kAdd
        [ (kProd [ kOne; kOne; kZero ]); (kProd [ kOne; kOne; kOne ]);
          (kAdd [ kZero; kZero; kZero ]) ] in
    kAdd [ x0; x1; x2; x3 ] = kAdd [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (25)
  (try
   (let x0 =
      kAdd
        [ (kAdd [ kOne; kOne; kZero ]); (kProd [ kOne; kOne; kZero ]);
          (kAdd [ kOne; kOne; kOne ]) ] in
    let x1 =
      kAdd
        [ (kProd [ kOne; kZero; kOne ]); (kAdd [ kOne; kZero; kZero ]);
          (kAdd [ kOne; kZero; kOne ]) ] in
    let x2 =
      kProd
        [ kOne; (kAdd [ kOne; kZero; kOne ]); (kProd [ kZero; kOne; kZero ]) ] in
    let x3 =
      kAdd
        [ (kProd [ kZero; kOne; kZero ]); (kAdd [ kOne; kZero; kZero ]);
          (kAdd [ kZero; kZero; kZero ]) ] in
    kAdd [ x0; x1; x2; x3 ] = kAdd [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (26)
  (try
   (let x0 =
      kProd
        [ (kAdd [ kZero; kOne; kOne ]); (kAdd [ kOne; kOne; kOne ]);
          (kProd [ kZero; kOne; kZero ]) ] in
    let x1 =
      kProd
        [ kOne; (kAdd [ kOne; kZero; kOne ]); (kProd [ kZero; kOne; kZero ]) ] in
    let x2 =
      kProd
        [ (kAdd [ kZero; kZero; kZero ]); (kAdd [ kOne; kOne; kOne ]);
          (kAdd [ kZero; kOne; kOne ]) ] in
    let x3 =
      kProd
        [ (kAdd [ kZero; kZero; kZero ]); (kProd [ kZero; kZero; kZero ]);
          (kProd [ kZero; kOne; kZero ]) ] in
    kAdd [ x0; x1; x2; x3 ] = kAdd [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (27)
  (try
   (let x0 =
      kAdd
        [ (kAdd [ kOne; kOne; kZero ]); (kAdd [ kZero; kZero; kZero ]);
          (kProd [ kOne; kZero; kZero ]) ] in
    let x1 =
      kAdd
        [ (kProd [ kZero; kZero; kZero ]); (kAdd [ kZero; kOne; kOne ]);
          (kAdd [ kOne; kZero; kOne ]) ] in
    let x2 =
      kAdd
        [ (kAdd [ kOne; kOne; kZero ]); (kAdd [ kZero; kZero; kZero ]);
          (kProd [ kOne; kZero; kZero ]) ] in
    let x3 =
      kProd
        [ kOne; (kAdd [ kOne; kZero; kOne ]); (kProd [ kZero; kOne; kZero ]) ] in
    kAdd [ x0; x1; x2; x3 ] = kAdd [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (28)
  (try
   (let x0 =
      kAdd
        [ (kProd [ kZero; kZero; kOne ]); (kProd [ kOne; kOne; kZero ]);
          (kAdd [ kOne; kZero; kOne ]) ] in
    let x1 =
      kAdd
        [ (kAdd [ kOne; kOne; kZero ]); (kAdd [ kZero; kZero; kZero ]);
          (kProd [ kOne; kZero; kZero ]) ] in
    let x2 =
      kProd
        [ (kAdd [ kOne; kZero; kZero ]); (kAdd [ kOne; kOne; kOne ]);
          (kProd [ kZero; kOne; kOne ]) ] in
    let x3 =
      kProd
        [ kOne; (kAdd [ kOne; kZero; kOne ]); (kProd [ kZero; kOne; kZero ]) ] in
    kAdd [ x0; x1; x2; x3 ] = kAdd [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (29)
  (try
   (let x0 =
      kAdd
        [ (kAdd [ kOne; kZero; kOne ]); (kAdd [ kOne; kZero; kZero ]);
          (kAdd [ kZero; kZero; kZero ]) ] in
    let x1 =
      kProd
        [ (kProd [ kZero; kZero; kOne ]); (kProd [ kZero; kZero; kZero ]);
          (kProd [ kZero; kOne; kOne ]) ] in
    let x2 =
      kAdd
        [ (kProd [ kZero; kZero; kZero ]); (kAdd [ kZero; kOne; kOne ]);
          (kAdd [ kOne; kZero; kOne ]) ] in
    let x3 =
      kProd
        [ (kAdd [ kOne; kOne; kOne ]); (kProd [ kZero; kZero; kZero ]);
          (kAdd [ kOne; kZero; kOne ]) ] in
    kAdd [ x0; x1; x2; x3 ] = kAdd [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (30)
  (try
   (let x0 =
      kAdd
        [ (kProd [ kZero; kZero; kOne ]); (kAdd [ kOne; kOne; kZero ]); kOne ] in
    let x1 =
      kAdd
        [ (kProd [ kOne; kOne; kOne ]); (kAdd [ kZero; kOne; kOne ]); kZero ] in
    let x2 =
      kAdd
        [ (kAdd [ kZero; kZero; kZero ]); (kAdd [ kZero; kZero; kOne ]);
          (kProd [ kZero; kZero; kZero ]) ] in
    let x3 =
      kProd
        [ (kProd [ kOne; kOne; kZero ]); (kAdd [ kOne; kZero; kZero ]);
          (kAdd [ kOne; kZero; kOne ]) ] in
    kAdd [ x0; x1; x2; x3 ] = kAdd [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (31)
  (try
   (let x0 =
      kProd
        [ (kProd [ kOne; kOne; kZero ]); (kAdd [ kOne; kZero; kZero ]);
          (kAdd [ kOne; kZero; kOne ]) ] in
    let x1 =
      kAdd
        [ (kAdd [ kZero; kOne; kOne ]); (kProd [ kZero; kOne; kOne ]);
          (kAdd [ kOne; kOne; kOne ]) ] in
    let x2 =
      kAdd
        [ (kAdd [ kOne; kOne; kOne ]); (kProd [ kOne; kZero; kOne ]);
          (kAdd [ kZero; kOne; kZero ]) ] in
    let x3 =
      kProd
        [ (kProd [ kOne; kOne; kZero ]); (kAdd [ kOne; kOne; kZero ]);
          (kAdd [ kZero; kOne; kZero ]) ] in
    kAdd [ x0; x1; x2; x3 ] = kAdd [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (32)
  (try
   (let x0 =
      kAdd
        [ (kProd [ kZero; kZero; kZero ]); (kProd [ kZero; kOne; kOne ]);
          (kAdd [ kZero; kZero; kZero ]) ] in
    let x1 =
      kProd
        [ (kProd [ kOne; kOne; kZero ]); (kAdd [ kOne; kZero; kZero ]);
          (kAdd [ kOne; kZero; kOne ]) ] in
    let x2 =
      kProd
        [ kZero; (kAdd [ kZero; kZero; kZero ]); (kAdd [ kOne; kOne; kZero ]) ] in
    let x3 =
      kProd
        [ (kProd [ kOne; kOne; kZero ]); (kAdd [ kOne; kZero; kZero ]);
          (kAdd [ kOne; kZero; kOne ]) ] in
    kAdd [ x0; x1; x2; x3 ] = kAdd [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (33)
  (try
   (let x0 =
      kAdd
        [ (kAdd [ kZero; kOne; kOne ]); (kProd [ kZero; kOne; kOne ]);
          (kAdd [ kOne; kOne; kOne ]) ] in
    let x1 =
      kProd
        [ (kAdd [ kZero; kZero; kZero ]); (kAdd [ kOne; kZero; kZero ]);
          (kAdd [ kZero; kZero; kZero ]) ] in
    let x2 =
      kAdd
        [ (kAdd [ kOne; kOne; kOne ]); (kProd [ kOne; kZero; kOne ]);
          (kAdd [ kZero; kOne; kZero ]) ] in
    let x3 = kZero in kAdd [ x0; x1; x2; x3 ] = kAdd [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (34)
  (try
   (let x0 =
      kAdd
        [ (kProd [ kOne; kOne; kZero ]); (kAdd [ kZero; kOne; kOne ]); kOne ] in
    let x1 =
      kProd
        [ (kProd [ kOne; kOne; kZero ]); (kAdd [ kOne; kOne; kZero ]);
          (kAdd [ kZero; kOne; kZero ]) ] in
    let x2 = kOne in
    let x3 =
      kAdd
        [ (kProd [ kOne; kOne; kZero ]); (kAdd [ kOne; kOne; kZero ]);
          (kProd [ kZero; kZero; kZero ]) ] in
    kAdd [ x0; x1; x2; x3 ] = kAdd [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (35)
  (try
   (let x0 =
      kProd
        [ (kAdd [ kZero; kOne; kOne ]); (kProd [ kOne; kZero; kZero ]);
          (kProd [ kZero; kOne; kOne ]) ] in
    let x1 =
      kProd
        [ (kAdd [ kZero; kOne; kOne ]); (kProd [ kOne; kZero; kOne ]); kOne ] in
    kAdd [ x0; kZero; x1 ] = kAdd [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (36)
  (try
   (let x0 =
      kProd
        [ (kProd [ kZero; kZero; kZero ]); (kProd [ kOne; kZero; kZero ]);
          (kProd [ kOne; kOne; kOne ]) ] in
    let x1 =
      kAdd
        [ (kProd [ kZero; kZero; kZero ]); (kAdd [ kOne; kOne; kOne ]);
          (kAdd [ kOne; kOne; kOne ]) ] in
    kAdd [ x0; kZero; x1 ] = kAdd [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (37)
  (try
   (let x0 =
      kAdd
        [ (kAdd [ kOne; kZero; kOne ]); (kAdd [ kOne; kOne; kOne ]);
          (kProd [ kOne; kZero; kOne ]) ] in
    let x1 = kOne in kAdd [ x0; kZero; x1 ] = kAdd [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (38)
  (try
   (let x0 =
      kProd
        [ (kAdd [ kOne; kZero; kZero ]); (kAdd [ kZero; kZero; kZero ]);
          (kAdd [ kOne; kOne; kZero ]) ] in
    let x1 =
      kAdd
        [ (kProd [ kZero; kZero; kZero ]); (kAdd [ kOne; kOne; kZero ]);
          (kProd [ kOne; kZero; kOne ]) ] in
    kAdd [ x0; kZero; x1 ] = kAdd [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (39)
  (try
   (let x0 =
      kProd
        [ (kProd [ kZero; kZero; kZero ]); (kProd [ kOne; kZero; kZero ]);
          (kProd [ kOne; kOne; kOne ]) ] in
    let x1 =
      kProd
        [ (kAdd [ kZero; kOne; kOne ]); (kProd [ kOne; kZero; kZero ]);
          (kProd [ kZero; kOne; kOne ]) ] in
    kAdd [ x0; kZero; x1 ] = kAdd [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (40)
  (try
   (let x0 =
      kAdd
        [ (kAdd [ kZero; kZero; kZero ]); (kAdd [ kOne; kZero; kOne ]);
          (kProd [ kZero; kZero; kOne ]) ] in
    kAdd [ kZero; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (41)
  (try (let x0 = kZero in kAdd [ kZero; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (42)
  (try
   (let x0 =
      kAdd
        [ (kAdd [ kZero; kZero; kZero ]); kZero; (kProd [ kOne; kOne; kOne ]) ] in
    kAdd [ kZero; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (43)
  (try
   (let x0 =
      kAdd
        [ (kProd [ kOne; kOne; kOne ]); (kAdd [ kOne; kZero; kOne ]);
          (kProd [ kOne; kOne; kOne ]) ] in
    kAdd [ kZero; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (44)
  (try
   (let x0 =
      kProd
        [ (kAdd [ kOne; kOne; kZero ]); (kAdd [ kZero; kZero; kOne ]);
          (kProd [ kZero; kOne; kZero ]) ] in
    kAdd [ kZero; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (45)
  (try (let x0 = kOne in kAdd [ x0; kZero; kZero ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (46)
  (try
   (let x0 =
      kProd
        [ (kProd [ kZero; kZero; kOne ]); (kProd [ kZero; kZero; kOne ]);
          (kProd [ kOne; kOne; kZero ]) ] in
    kAdd [ x0; kZero; kZero ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (47)
  (try
   (let x0 =
      kAdd
        [ (kAdd [ kZero; kZero; kOne ]); (kProd [ kZero; kOne; kZero ]);
          (kAdd [ kOne; kOne; kOne ]) ] in
    kAdd [ x0; kZero; kZero ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (48)
  (try
   (let x0 =
      kProd
        [ kOne; (kAdd [ kZero; kOne; kOne ]); (kProd [ kOne; kOne; kZero ]) ] in
    kAdd [ x0; kZero; kZero ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (49)
  (try
   (let x0 =
      kAdd
        [ (kAdd [ kZero; kZero; kOne ]); (kAdd [ kOne; kOne; kZero ]); kZero ] in
    kAdd [ x0; kZero; kZero ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (50)
  (try
   (let x0 =
      kProd
        [ (kProd [ kOne; kZero; kZero ]); (kProd [ kZero; kOne; kOne ]);
          (kProd [ kOne; kZero; kZero ]) ] in
    let x1 =
      kProd
        [ (kAdd [ kOne; kZero; kOne ]); (kAdd [ kOne; kOne; kOne ]);
          (kAdd [ kZero; kZero; kOne ]) ] in
    let x2 =
      kAdd
        [ (kAdd [ kOne; kZero; kZero ]); (kProd [ kZero; kOne; kZero ]);
          (kProd [ kZero; kOne; kOne ]) ] in
    kProd [ (kProd [ x0; x1 ]); x2 ] = kProd [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (51)
  (try
   (let x0 =
      kProd
        [ (kProd [ kZero; kZero; kZero ]); (kAdd [ kZero; kOne; kZero ]);
          (kProd [ kOne; kZero; kZero ]) ] in
    let x1 =
      kAdd
        [ (kProd [ kZero; kZero; kZero ]); (kAdd [ kOne; kOne; kOne ]);
          (kProd [ kOne; kOne; kZero ]) ] in
    let x2 =
      kAdd
        [ (kAdd [ kOne; kZero; kZero ]); (kProd [ kZero; kOne; kZero ]);
          (kProd [ kZero; kOne; kOne ]) ] in
    kProd [ (kProd [ x0; x1 ]); x2 ] = kProd [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (52)
  (try
   (let x0 =
      kAdd
        [ (kAdd [ kZero; kOne; kZero ]); (kProd [ kZero; kOne; kZero ]);
          (kAdd [ kZero; kOne; kOne ]) ] in
    let x1 =
      kAdd
        [ (kAdd [ kOne; kZero; kZero ]); (kProd [ kOne; kZero; kZero ]);
          (kAdd [ kOne; kZero; kOne ]) ] in
    let x2 =
      kAdd
        [ (kProd [ kOne; kOne; kOne ]); (kProd [ kOne; kOne; kZero ]);
          (kAdd [ kZero; kZero; kZero ]) ] in
    kProd [ (kProd [ x0; x1 ]); x2 ] = kProd [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (53)
  (try
   (let x0 = kZero in
    let x1 =
      kProd
        [ (kProd [ kOne; kZero; kZero ]); (kAdd [ kOne; kZero; kZero ]);
          (kProd [ kOne; kOne; kZero ]) ] in
    let x2 =
      kAdd
        [ (kAdd [ kOne; kZero; kZero ]); (kProd [ kZero; kOne; kZero ]);
          (kProd [ kZero; kOne; kOne ]) ] in
    kProd [ (kProd [ x0; x1 ]); x2 ] = kProd [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (54)
  (try
   (let x0 =
      kProd
        [ (kProd [ kOne; kOne; kZero ]); (kProd [ kZero; kOne; kZero ]);
          (kProd [ kOne; kOne; kOne ]) ] in
    let x1 =
      kAdd
        [ (kProd [ kOne; kOne; kZero ]); kOne; (kProd [ kOne; kOne; kZero ]) ] in
    let x2 =
      kAdd
        [ (kAdd [ kOne; kZero; kZero ]); (kProd [ kZero; kOne; kZero ]);
          (kProd [ kZero; kOne; kOne ]) ] in
    kProd [ (kProd [ x0; x1 ]); x2 ] = kProd [ x0; x1; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (55)
  (try
   (let x0 =
      kProd
        [ (kAdd [ kZero; kOne; kZero ]); kZero; (kProd [ kOne; kZero; kOne ]) ] in
    let x1 =
      kProd
        [ (kAdd [ kOne; kOne; kOne ]); (kAdd [ kOne; kOne; kOne ]);
          (kProd [ kOne; kZero; kOne ]) ] in
    let x2 =
      kProd
        [ (kAdd [ kOne; kZero; kZero ]); (kProd [ kOne; kZero; kZero ]);
          (kAdd [ kZero; kZero; kZero ]) ] in
    let x3 =
      kAdd
        [ (kProd [ kOne; kOne; kOne ]); (kProd [ kOne; kZero; kZero ]);
          (kAdd [ kOne; kOne; kOne ]) ] in
    let x4 =
      kAdd
        [ (kProd [ kOne; kZero; kOne ]); (kProd [ kZero; kOne; kOne ]);
          (kProd [ kZero; kOne; kOne ]) ] in
    kProd [ x0; (kProd [ x1; x2 ]); (kProd [ x3; x4 ]) ] =
    kProd [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (56)
  (try
   (let x0 =
      kProd
        [ (kProd [ kZero; kOne; kZero ]); (kAdd [ kZero; kOne; kOne ]);
          (kProd [ kOne; kOne; kOne ]) ] in
    let x1 =
      kProd
        [ (kAdd [ kOne; kOne; kOne ]); (kAdd [ kZero; kOne; kOne ]);
          (kProd [ kOne; kZero; kOne ]) ] in
    let x2 =
      kProd
        [ (kAdd [ kOne; kOne; kOne ]); (kAdd [ kOne; kOne; kOne ]);
          (kProd [ kOne; kZero; kOne ]) ] in
    let x3 =
      kAdd
        [ (kAdd [ kZero; kOne; kZero ]); kOne; (kProd [ kOne; kZero; kOne ]) ] in
    let x4 =
      kAdd
        [ (kProd [ kOne; kOne; kOne ]); (kProd [ kOne; kZero; kZero ]);
          (kAdd [ kOne; kOne; kOne ]) ] in
    kProd [ x0; (kProd [ x1; x2 ]); (kProd [ x3; x4 ]) ] =
    kProd [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (57)
  (try
   (let x0 =
      kProd
        [ (kAdd [ kOne; kOne; kZero ]); (kAdd [ kZero; kOne; kOne ]);
          (kAdd [ kOne; kOne; kOne ]) ] in
    let x1 =
      kAdd
        [ (kAdd [ kOne; kOne; kOne ]); (kProd [ kOne; kZero; kZero ]);
          (kProd [ kZero; kOne; kOne ]) ] in
    let x2 =
      kAdd
        [ (kAdd [ kZero; kZero; kZero ]); (kProd [ kZero; kZero; kOne ]);
          (kAdd [ kOne; kZero; kOne ]) ] in
    let x3 =
      kProd
        [ (kProd [ kOne; kOne; kZero ]); (kAdd [ kZero; kOne; kOne ]);
          (kProd [ kZero; kZero; kZero ]) ] in
    let x4 =
      kProd
        [ (kAdd [ kOne; kOne; kOne ]); (kAdd [ kOne; kOne; kOne ]);
          (kProd [ kZero; kZero; kZero ]) ] in
    kProd [ x0; (kProd [ x1; x2 ]); (kProd [ x3; x4 ]) ] =
    kProd [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (58)
  (try
   (let x0 =
      kProd
        [ (kAdd [ kOne; kOne; kOne ]); (kAdd [ kZero; kOne; kOne ]);
          (kProd [ kOne; kZero; kOne ]) ] in
    let x1 =
      kAdd
        [ (kAdd [ kZero; kOne; kZero ]); kOne; (kAdd [ kOne; kOne; kOne ]) ] in
    let x2 =
      kAdd
        [ (kAdd [ kZero; kOne; kZero ]); (kProd [ kZero; kOne; kZero ]);
          (kProd [ kZero; kZero; kZero ]) ] in
    let x3 =
      kAdd
        [ (kAdd [ kZero; kZero; kZero ]); (kAdd [ kZero; kZero; kOne ]);
          (kProd [ kOne; kOne; kZero ]) ] in
    let x4 =
      kProd
        [ (kAdd [ kOne; kZero; kZero ]); (kAdd [ kOne; kOne; kOne ]);
          (kProd [ kOne; kOne; kOne ]) ] in
    kProd [ x0; (kProd [ x1; x2 ]); (kProd [ x3; x4 ]) ] =
    kProd [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (59)
  (try
   (let x0 =
      kAdd
        [ (kAdd [ kZero; kOne; kZero ]); kOne; (kProd [ kOne; kZero; kOne ]) ] in
    let x1 =
      kAdd
        [ (kProd [ kOne; kZero; kOne ]); (kProd [ kZero; kOne; kOne ]);
          (kProd [ kZero; kOne; kOne ]) ] in
    let x2 =
      kAdd
        [ (kAdd [ kZero; kOne; kZero ]); (kAdd [ kZero; kOne; kZero ]);
          (kProd [ kZero; kOne; kOne ]) ] in
    let x3 =
      kProd
        [ (kProd [ kOne; kOne; kZero ]); (kProd [ kZero; kZero; kZero ]);
          (kAdd [ kOne; kOne; kOne ]) ] in
    let x4 =
      kAdd
        [ (kAdd [ kZero; kZero; kZero ]); (kAdd [ kZero; kZero; kOne ]);
          (kProd [ kOne; kOne; kZero ]) ] in
    kProd [ x0; (kProd [ x1; x2 ]); (kProd [ x3; x4 ]) ] =
    kProd [ x0; x1; x2; x3; x4 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (60)
  (try
   (let x0 =
      kAdd
        [ (kAdd [ kZero; kZero; kOne ]); (kProd [ kOne; kOne; kZero ]);
          (kProd [ kOne; kOne; kOne ]) ] in
    let x1 =
      kProd
        [ (kProd [ kZero; kZero; kZero ]); (kAdd [ kZero; kOne; kZero ]);
          (kAdd [ kOne; kZero; kOne ]) ] in
    let x2 = kAdd [ kZero; kOne; (kProd [ kOne; kZero; kZero ]) ] in
    let x3 =
      kAdd
        [ (kAdd [ kOne; kOne; kZero ]); (kAdd [ kZero; kZero; kOne ]);
          (kProd [ kOne; kZero; kZero ]) ] in
    kProd [ (kProd [ x0; x1; x2 ]); x3 ] = kProd [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (61)
  (try
   (let x0 =
      kAdd
        [ kZero; (kProd [ kZero; kOne; kOne ]); (kProd [ kOne; kOne; kOne ]) ] in
    let x1 =
      kAdd
        [ (kAdd [ kZero; kZero; kOne ]); (kProd [ kOne; kOne; kZero ]);
          (kProd [ kZero; kZero; kZero ]) ] in
    let x2 =
      kAdd
        [ (kAdd [ kOne; kOne; kZero ]); (kAdd [ kZero; kZero; kOne ]);
          (kAdd [ kZero; kZero; kOne ]) ] in
    let x3 =
      kAdd
        [ kZero; (kAdd [ kZero; kZero; kOne ]); (kAdd [ kZero; kZero; kOne ]) ] in
    kProd [ (kProd [ x0; x1; x2 ]); x3 ] = kProd [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (62)
  (try
   (let x0 =
      kProd
        [ (kProd [ kZero; kZero; kZero ]); (kProd [ kOne; kOne; kZero ]);
          (kProd [ kZero; kOne; kOne ]) ] in
    let x1 =
      kAdd
        [ (kAdd [ kZero; kZero; kOne ]); (kAdd [ kOne; kOne; kZero ]);
          (kProd [ kZero; kOne; kOne ]) ] in
    let x2 =
      kProd
        [ (kAdd [ kOne; kZero; kOne ]); (kAdd [ kOne; kOne; kZero ]);
          (kProd [ kZero; kZero; kOne ]) ] in
    let x3 = kZero in
    kProd [ (kProd [ x0; x1; x2 ]); x3 ] = kProd [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (63)
  (try
   (let x0 =
      kAdd
        [ (kAdd [ kZero; kZero; kOne ]); (kAdd [ kOne; kOne; kZero ]);
          (kProd [ kZero; kOne; kOne ]) ] in
    let x1 =
      kAdd
        [ (kAdd [ kOne; kOne; kZero ]); (kAdd [ kZero; kZero; kOne ]);
          (kProd [ kOne; kZero; kOne ]) ] in
    let x2 = kOne in
    let x3 =
      kProd
        [ (kAdd [ kOne; kZero; kOne ]); (kAdd [ kOne; kOne; kZero ]);
          (kProd [ kZero; kZero; kOne ]) ] in
    kProd [ (kProd [ x0; x1; x2 ]); x3 ] = kProd [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (64)
  (try
   (let x0 = kAdd [ kZero; kOne; (kProd [ kOne; kZero; kZero ]) ] in
    let x1 =
      kAdd
        [ (kAdd [ kZero; kZero; kOne ]); (kAdd [ kZero; kZero; kOne ]);
          (kAdd [ kOne; kOne; kOne ]) ] in
    let x2 =
      kProd
        [ (kProd [ kZero; kZero; kOne ]); (kProd [ kZero; kOne; kZero ]);
          (kProd [ kZero; kZero; kOne ]) ] in
    let x3 =
      kAdd
        [ (kAdd [ kOne; kOne; kZero ]); (kAdd [ kZero; kZero; kOne ]);
          (kProd [ kOne; kZero; kZero ]) ] in
    kProd [ (kProd [ x0; x1; x2 ]); x3 ] = kProd [ x0; x1; x2; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (65)
  (try
   (let x0 =
      kProd
        [ (kAdd [ kOne; kOne; kOne ]); (kProd [ kZero; kOne; kOne ]);
          (kProd [ kOne; kZero; kZero ]) ] in
    let x1 =
      kAdd
        [ (kAdd [ kZero; kZero; kZero ]); (kProd [ kOne; kOne; kOne ]);
          (kProd [ kOne; kOne; kZero ]) ] in
    let x2 =
      kProd
        [ (kProd [ kOne; kOne; kZero ]); (kProd [ kOne; kZero; kOne ]);
          (kProd [ kOne; kOne; kZero ]) ] in
    let x3 =
      kAdd
        [ (kProd [ kZero; kZero; kZero ]); kZero;
          (kProd [ kOne; kOne; kZero ]) ] in
    kProd [ x0; x1; x2; x3 ] = kProd [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (66)
  (try
   (let x0 =
      kAdd
        [ (kAdd [ kOne; kOne; kZero ]); (kProd [ kZero; kOne; kOne ]);
          (kAdd [ kZero; kZero; kZero ]) ] in
    let x1 =
      kAdd
        [ (kAdd [ kOne; kZero; kZero ]); (kAdd [ kZero; kOne; kOne ]);
          (kProd [ kZero; kOne; kOne ]) ] in
    let x2 =
      kAdd
        [ (kAdd [ kZero; kZero; kZero ]); (kAdd [ kOne; kZero; kZero ]);
          (kProd [ kOne; kZero; kZero ]) ] in
    let x3 =
      kProd
        [ (kProd [ kOne; kOne; kZero ]); (kProd [ kOne; kZero; kOne ]);
          (kProd [ kOne; kOne; kZero ]) ] in
    kProd [ x0; x1; x2; x3 ] = kProd [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (67)
  (try
   (let x0 = kOne in
    let x1 =
      kProd
        [ kZero; (kProd [ kZero; kOne; kOne ]); (kAdd [ kOne; kZero; kOne ]) ] in
    let x2 =
      kProd
        [ (kProd [ kOne; kOne; kOne ]); (kProd [ kOne; kZero; kOne ]);
          (kProd [ kOne; kZero; kOne ]) ] in
    let x3 =
      kAdd
        [ (kProd [ kOne; kOne; kOne ]); (kAdd [ kZero; kZero; kOne ]);
          (kProd [ kZero; kOne; kOne ]) ] in
    kProd [ x0; x1; x2; x3 ] = kProd [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (68)
  (try
   (let x0 =
      kProd
        [ (kProd [ kOne; kOne; kZero ]); (kAdd [ kOne; kOne; kOne ]);
          (kProd [ kOne; kOne; kZero ]) ] in
    let x1 =
      kProd
        [ (kProd [ kOne; kOne; kZero ]); kOne; (kProd [ kOne; kZero; kZero ]) ] in
    let x2 =
      kProd
        [ (kProd [ kZero; kOne; kOne ]); kOne; (kProd [ kOne; kOne; kOne ]) ] in
    let x3 =
      kProd
        [ (kAdd [ kZero; kOne; kOne ]); (kProd [ kOne; kZero; kOne ]);
          (kProd [ kOne; kOne; kOne ]) ] in
    kProd [ x0; x1; x2; x3 ] = kProd [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (69)
  (try
   (let x0 =
      kAdd
        [ (kAdd [ kOne; kOne; kZero ]); (kAdd [ kZero; kOne; kOne ]);
          (kProd [ kZero; kOne; kOne ]) ] in
    let x1 =
      kProd
        [ (kProd [ kOne; kOne; kZero ]); (kProd [ kOne; kZero; kOne ]);
          (kAdd [ kOne; kZero; kOne ]) ] in
    let x2 =
      kProd
        [ (kAdd [ kZero; kZero; kZero ]); (kProd [ kZero; kOne; kOne ]);
          (kProd [ kZero; kOne; kZero ]) ] in
    let x3 =
      kProd
        [ (kAdd [ kZero; kOne; kOne ]); (kProd [ kOne; kZero; kOne ]);
          (kProd [ kOne; kOne; kOne ]) ] in
    kProd [ x0; x1; x2; x3 ] = kProd [ x1; x0; x3; x2 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (70)
  (try
   (let x0 =
      kProd
        [ (kAdd [ kOne; kOne; kZero ]); (kAdd [ kZero; kOne; kZero ]);
          (kAdd [ kOne; kZero; kOne ]) ] in
    let x1 = kOne in
    let x2 =
      kAdd
        [ (kProd [ kOne; kOne; kZero ]); (kAdd [ kOne; kOne; kZero ]);
          (kAdd [ kZero; kZero; kOne ]) ] in
    let x3 =
      kProd
        [ (kAdd [ kOne; kOne; kZero ]); (kAdd [ kZero; kOne; kZero ]);
          (kProd [ kOne; kZero; kOne ]) ] in
    kProd [ x0; x1; x2; x3 ] = kProd [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (71)
  (try
   (let x0 =
      kProd
        [ (kProd [ kZero; kOne; kZero ]); (kAdd [ kZero; kOne; kOne ]);
          (kAdd [ kOne; kZero; kOne ]) ] in
    let x1 =
      kAdd
        [ (kProd [ kOne; kOne; kZero ]); (kAdd [ kOne; kOne; kZero ]);
          (kAdd [ kZero; kZero; kOne ]) ] in
    let x2 =
      kProd
        [ (kProd [ kZero; kOne; kZero ]); (kAdd [ kZero; kOne; kOne ]);
          (kAdd [ kOne; kZero; kOne ]) ] in
    let x3 =
      kProd
        [ (kAdd [ kZero; kZero; kZero ]); (kAdd [ kOne; kZero; kOne ]);
          (kProd [ kZero; kZero; kZero ]) ] in
    kProd [ x0; x1; x2; x3 ] = kProd [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (72)
  (try
   (let x0 =
      kProd
        [ (kAdd [ kOne; kOne; kZero ]); (kAdd [ kZero; kOne; kZero ]);
          (kProd [ kOne; kZero; kOne ]) ] in
    let x1 =
      kAdd
        [ (kAdd [ kZero; kOne; kOne ]); (kProd [ kZero; kZero; kZero ]);
          (kAdd [ kZero; kZero; kOne ]) ] in
    let x2 =
      kProd
        [ (kProd [ kZero; kOne; kZero ]); (kAdd [ kZero; kOne; kOne ]);
          (kAdd [ kOne; kZero; kOne ]) ] in
    let x3 =
      kAdd
        [ (kProd [ kOne; kOne; kZero ]); (kAdd [ kOne; kOne; kZero ]);
          (kAdd [ kZero; kZero; kOne ]) ] in
    kProd [ x0; x1; x2; x3 ] = kProd [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (73)
  (try
   (let x0 =
      kProd
        [ (kAdd [ kOne; kOne; kZero ]); (kAdd [ kZero; kOne; kZero ]);
          (kProd [ kOne; kZero; kOne ]) ] in
    let x1 =
      kAdd
        [ (kAdd [ kOne; kOne; kZero ]); (kProd [ kOne; kZero; kOne ]);
          (kAdd [ kZero; kZero; kOne ]) ] in
    let x2 =
      kAdd
        [ (kAdd [ kOne; kOne; kZero ]); (kAdd [ kOne; kOne; kOne ]);
          (kProd [ kOne; kOne; kZero ]) ] in
    let x3 =
      kProd
        [ (kProd [ kOne; kOne; kOne ]); (kProd [ kOne; kOne; kZero ]);
          (kProd [ kOne; kZero; kOne ]) ] in
    kProd [ x0; x1; x2; x3 ] = kProd [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (74)
  (try
   (let x0 =
      kAdd
        [ (kProd [ kZero; kZero; kOne ]); (kProd [ kOne; kZero; kOne ]);
          (kAdd [ kOne; kOne; kZero ]) ] in
    let x1 =
      kProd
        [ (kAdd [ kOne; kOne; kZero ]); (kAdd [ kZero; kOne; kZero ]);
          (kProd [ kOne; kZero; kOne ]) ] in
    let x2 =
      kAdd
        [ (kAdd [ kOne; kOne; kZero ]); (kProd [ kOne; kZero; kOne ]);
          (kAdd [ kZero; kZero; kOne ]) ] in
    let x3 =
      kAdd
        [ (kProd [ kZero; kZero; kZero ]); (kAdd [ kOne; kOne; kOne ]);
          (kProd [ kOne; kZero; kZero ]) ] in
    kProd [ x0; x1; x2; x3 ] = kProd [ x3; x1; x2; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (75)
  (try
   (let x0 =
      kAdd
        [ (kProd [ kZero; kZero; kZero ]); (kAdd [ kOne; kZero; kOne ]);
          (kProd [ kZero; kZero; kZero ]) ] in
    let x1 =
      kAdd
        [ (kAdd [ kZero; kOne; kZero ]); (kAdd [ kOne; kZero; kZero ]);
          (kAdd [ kZero; kOne; kOne ]) ] in
    let x2 =
      kProd
        [ (kProd [ kZero; kOne; kZero ]); (kAdd [ kOne; kOne; kOne ]); kOne ] in
    let x3 =
      kAdd
        [ (kProd [ kZero; kZero; kOne ]); (kProd [ kOne; kOne; kOne ]);
          (kProd [ kOne; kOne; kZero ]) ] in
    kProd [ x0; x1; x2; x3 ] = kProd [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (76)
  (try
   (let x0 =
      kProd
        [ (kProd [ kOne; kZero; kZero ]); (kAdd [ kZero; kOne; kZero ]);
          (kAdd [ kZero; kZero; kOne ]) ] in
    let x1 =
      kProd
        [ (kAdd [ kZero; kZero; kOne ]); (kAdd [ kOne; kOne; kOne ]);
          (kProd [ kOne; kZero; kOne ]) ] in
    let x2 =
      kProd
        [ (kProd [ kOne; kZero; kOne ]); (kProd [ kOne; kZero; kOne ]);
          (kProd [ kZero; kOne; kOne ]) ] in
    let x3 =
      kAdd
        [ (kAdd [ kZero; kOne; kZero ]); (kAdd [ kOne; kZero; kOne ]);
          (kProd [ kOne; kOne; kZero ]) ] in
    kProd [ x0; x1; x2; x3 ] = kProd [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (77)
  (try
   (let x0 =
      kProd
        [ (kProd [ kOne; kZero; kOne ]); (kProd [ kOne; kZero; kOne ]);
          (kProd [ kZero; kOne; kOne ]) ] in
    let x1 = kZero in
    let x2 =
      kAdd
        [ (kProd [ kOne; kZero; kZero ]); (kAdd [ kOne; kOne; kOne ]);
          (kAdd [ kZero; kOne; kOne ]) ] in
    let x3 =
      kAdd
        [ (kProd [ kOne; kZero; kZero ]); (kAdd [ kOne; kOne; kOne ]);
          (kAdd [ kZero; kOne; kOne ]) ] in
    kProd [ x0; x1; x2; x3 ] = kProd [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (78)
  (try
   (let x0 =
      kProd
        [ (kAdd [ kZero; kOne; kOne ]); (kProd [ kOne; kZero; kOne ]);
          (kProd [ kZero; kZero; kOne ]) ] in
    let x1 =
      kProd
        [ (kAdd [ kZero; kOne; kOne ]); (kProd [ kOne; kZero; kZero ]);
          (kProd [ kZero; kZero; kOne ]) ] in
    let x2 =
      kAdd
        [ (kProd [ kOne; kOne; kZero ]); (kAdd [ kZero; kOne; kZero ]);
          (kAdd [ kOne; kOne; kOne ]) ] in
    let x3 =
      kAdd
        [ (kAdd [ kZero; kOne; kZero ]); (kAdd [ kOne; kZero; kZero ]);
          (kAdd [ kZero; kOne; kOne ]) ] in
    kProd [ x0; x1; x2; x3 ] = kProd [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (79)
  (try
   (let x0 =
      kAdd
        [ kOne; (kAdd [ kOne; kZero; kOne ]); (kAdd [ kZero; kOne; kOne ]) ] in
    let x1 = kZero in
    let x2 =
      kAdd
        [ (kAdd [ kZero; kOne; kZero ]); (kAdd [ kOne; kZero; kZero ]);
          (kAdd [ kZero; kOne; kOne ]) ] in
    let x3 =
      kAdd
        [ (kProd [ kOne; kZero; kZero ]); (kAdd [ kOne; kOne; kOne ]);
          (kAdd [ kZero; kOne; kOne ]) ] in
    kProd [ x0; x1; x2; x3 ] = kProd [ x3; x2; x1; x0 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (80)
  (try
   (let x0 =
      kProd
        [ (kProd [ kZero; kOne; kZero ]); kOne; (kAdd [ kOne; kZero; kZero ]) ] in
    let x1 =
      kProd
        [ (kAdd [ kOne; kZero; kOne ]); (kAdd [ kOne; kZero; kZero ]);
          (kProd [ kOne; kOne; kOne ]) ] in
    let x2 =
      kAdd
        [ (kProd [ kOne; kZero; kOne ]); (kProd [ kOne; kOne; kOne ]);
          (kProd [ kOne; kZero; kZero ]) ] in
    let x3 =
      kProd
        [ (kAdd [ kOne; kZero; kOne ]); (kProd [ kZero; kZero; kOne ]);
          (kAdd [ kZero; kOne; kZero ]) ] in
    kProd [ x0; x1; x2; x3 ] = kProd [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (81)
  (try
   (let x0 =
      kProd
        [ (kProd [ kZero; kOne; kZero ]); kOne; (kAdd [ kOne; kZero; kZero ]) ] in
    let x1 =
      kProd
        [ (kProd [ kOne; kOne; kOne ]); (kAdd [ kOne; kZero; kOne ]);
          (kProd [ kOne; kZero; kOne ]) ] in
    let x2 =
      kProd
        [ (kAdd [ kZero; kOne; kOne ]); (kProd [ kZero; kZero; kOne ]);
          (kProd [ kOne; kZero; kOne ]) ] in
    let x3 =
      kProd
        [ (kProd [ kOne; kOne; kOne ]); (kAdd [ kOne; kZero; kOne ]);
          (kProd [ kOne; kZero; kOne ]) ] in
    kProd [ x0; x1; x2; x3 ] = kProd [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (82)
  (try
   (let x0 =
      kProd
        [ (kProd [ kZero; kZero; kOne ]); (kAdd [ kOne; kZero; kOne ]);
          (kProd [ kOne; kZero; kOne ]) ] in
    let x1 =
      kProd
        [ (kAdd [ kZero; kOne; kOne ]); (kAdd [ kOne; kZero; kZero ]);
          (kProd [ kOne; kZero; kZero ]) ] in
    let x2 =
      kProd
        [ (kProd [ kOne; kOne; kOne ]); (kProd [ kZero; kZero; kOne ]);
          (kAdd [ kOne; kZero; kZero ]) ] in
    let x3 =
      kProd
        [ (kAdd [ kOne; kZero; kOne ]); (kProd [ kZero; kZero; kOne ]);
          (kAdd [ kZero; kOne; kZero ]) ] in
    kProd [ x0; x1; x2; x3 ] = kProd [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (83)
  (try
   (let x0 =
      kProd
        [ (kProd [ kOne; kOne; kOne ]); (kProd [ kZero; kZero; kOne ]);
          (kProd [ kZero; kOne; kZero ]) ] in
    let x1 =
      kProd
        [ (kAdd [ kOne; kZero; kOne ]); (kProd [ kZero; kZero; kOne ]);
          (kAdd [ kZero; kOne; kZero ]) ] in
    let x2 =
      kProd
        [ (kProd [ kZero; kOne; kZero ]); (kAdd [ kOne; kZero; kZero ]);
          (kAdd [ kOne; kZero; kZero ]) ] in
    let x3 =
      kAdd
        [ (kProd [ kZero; kOne; kZero ]); (kProd [ kOne; kOne; kOne ]);
          (kProd [ kOne; kZero; kOne ]) ] in
    kProd [ x0; x1; x2; x3 ] = kProd [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (84)
  (try
   (let x0 =
      kProd
        [ (kProd [ kZero; kOne; kZero ]); kOne; (kAdd [ kOne; kZero; kZero ]) ] in
    let x1 =
      kAdd
        [ (kProd [ kZero; kOne; kZero ]); (kProd [ kOne; kOne; kOne ]);
          (kProd [ kOne; kZero; kOne ]) ] in
    let x2 =
      kProd
        [ (kAdd [ kZero; kOne; kOne ]); (kProd [ kZero; kZero; kOne ]);
          (kProd [ kOne; kZero; kOne ]) ] in
    let x3 =
      kAdd
        [ (kProd [ kOne; kZero; kOne ]); (kProd [ kOne; kOne; kOne ]);
          (kProd [ kOne; kZero; kZero ]) ] in
    kProd [ x0; x1; x2; x3 ] = kProd [ x2; x1; x0; x3 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (85)
  (try
   (let x0 =
      kAdd
        [ (kProd [ kOne; kOne; kOne ]); (kProd [ kZero; kOne; kOne ]);
          (kProd [ kZero; kOne; kOne ]) ] in
    let x1 =
      kAdd
        [ (kAdd [ kOne; kOne; kOne ]); (kAdd [ kZero; kZero; kZero ]); kZero ] in
    kProd [ x0; kOne; x1 ] = kProd [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (86)
  (try
   (let x0 =
      kAdd
        [ (kProd [ kZero; kOne; kZero ]); (kProd [ kZero; kOne; kZero ]);
          (kAdd [ kOne; kOne; kZero ]) ] in
    let x1 =
      kProd
        [ (kProd [ kZero; kZero; kOne ]); (kAdd [ kOne; kOne; kZero ]); kOne ] in
    kProd [ x0; kOne; x1 ] = kProd [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (87)
  (try
   (let x0 = kZero in
    let x1 =
      kProd
        [ (kAdd [ kOne; kZero; kZero ]); (kAdd [ kOne; kOne; kZero ]);
          (kProd [ kOne; kOne; kZero ]) ] in
    kProd [ x0; kOne; x1 ] = kProd [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (88)
  (try
   (let x0 =
      kProd
        [ (kProd [ kZero; kZero; kOne ]); (kAdd [ kZero; kZero; kZero ]);
          (kAdd [ kOne; kZero; kOne ]) ] in
    let x1 =
      kAdd
        [ (kProd [ kOne; kOne; kOne ]); (kAdd [ kZero; kZero; kZero ]);
          (kAdd [ kOne; kOne; kOne ]) ] in
    kProd [ x0; kOne; x1 ] = kProd [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (89)
  (try
   (let x0 = kProd [ kOne; kOne; (kProd [ kOne; kOne; kZero ]) ] in
    let x1 =
      kAdd
        [ (kAdd [ kOne; kOne; kOne ]); (kAdd [ kZero; kZero; kZero ]); kZero ] in
    kProd [ x0; kOne; x1 ] = kProd [ x0; x1 ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (90)
  (try
   (let x0 =
      kProd
        [ (kAdd [ kZero; kOne; kOne ]); (kProd [ kOne; kZero; kOne ]);
          (kAdd [ kZero; kOne; kZero ]) ] in
    kProd [ kOne; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (91)
  (try (let x0 = kZero in kProd [ kOne; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (92)
  (try
   (let x0 =
      kAdd
        [ (kProd [ kZero; kOne; kZero ]); (kProd [ kZero; kZero; kZero ]);
          (kProd [ kZero; kZero; kOne ]) ] in
    kProd [ kOne; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (93)
  (try
   (let x0 =
      kProd
        [ (kProd [ kZero; kOne; kOne ]); (kProd [ kZero; kOne; kOne ]);
          (kAdd [ kZero; kOne; kZero ]) ] in
    kProd [ kOne; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (94)
  (try
   (let x0 =
      kProd
        [ kOne; (kProd [ kZero; kOne; kOne ]); (kAdd [ kZero; kOne; kZero ]) ] in
    kProd [ kOne; x0 ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (95)
  (try
   (let x0 =
      kProd
        [ (kAdd [ kOne; kZero; kZero ]); (kProd [ kZero; kOne; kZero ]);
          (kProd [ kZero; kZero; kZero ]) ] in
    kProd [ x0; kOne; kOne ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (96)
  (try
   (let x0 =
      kProd
        [ (kAdd [ kOne; kZero; kZero ]); (kProd [ kZero; kOne; kZero ]);
          (kProd [ kZero; kZero; kZero ]) ] in
    kProd [ x0; kOne; kOne ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (97)
  (try
   (let x0 =
      kAdd
        [ (kAdd [ kOne; kOne; kZero ]); (kProd [ kOne; kOne; kZero ]);
          (kProd [ kOne; kZero; kZero ]) ] in
    kProd [ x0; kOne; kOne ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (98)
  (try
   (let x0 =
      kProd
        [ (kAdd [ kOne; kZero; kZero ]); (kProd [ kZero; kOne; kZero ]);
          (kProd [ kZero; kZero; kZero ]) ] in
    kProd [ x0; kOne; kOne ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (99)
  (try (let x0 = kZero in kProd [ x0; kOne; kOne ] = x0) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (100)
  (try
   (let x0 =
      kProd
        [ (kAdd [ kOne; kZero; kOne ]); (kAdd [ kOne; kZero; kOne ]);
          (kAdd [ kOne; kZero; kZero ]) ] in
    let x1 =
      kProd
        [ (kProd [ kZero; kOne; kOne ]); (kProd [ kOne; kZero; kZero ]);
          (kAdd [ kOne; kZero; kOne ]) ] in
    let x2 =
      kProd
        [ (kProd [ kZero; kZero; kZero ]); (kAdd [ kOne; kZero; kZero ]);
          (kAdd [ kZero; kZero; kZero ]) ] in
    kProd [ x0; x1; (kAdd [ x0; x1; x2 ]); x2 ] =
    kAdd
      [ (kProd [ x0; x1; x0; x2 ]); (kProd [ x0; x1; x1; x2 ]);
        (kProd [ x0; x1; x2; x2 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (101)
  (try
   (let x0 =
      kProd
        [ (kProd [ kZero; kOne; kOne ]); (kProd [ kOne; kZero; kZero ]);
          (kAdd [ kOne; kZero; kOne ]) ] in
    let x1 =
      kAdd
        [ (kAdd [ kOne; kOne; kZero ]); (kAdd [ kOne; kZero; kZero ]);
          (kProd [ kOne; kZero; kZero ]) ] in
    let x2 =
      kProd
        [ (kProd [ kZero; kOne; kOne ]); (kAdd [ kZero; kOne; kZero ]);
          (kProd [ kZero; kZero; kZero ]) ] in
    kProd [ x0; x1; (kAdd [ x0; x1; x2 ]); x2 ] =
    kAdd
      [ (kProd [ x0; x1; x0; x2 ]); (kProd [ x0; x1; x1; x2 ]);
        (kProd [ x0; x1; x2; x2 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (102)
  (try
   (let x0 =
      kProd
        [ (kProd [ kZero; kOne; kOne ]); (kAdd [ kOne; kZero; kOne ]);
          (kProd [ kZero; kZero; kZero ]) ] in
    let x1 =
      kAdd
        [ (kProd [ kZero; kOne; kZero ]); (kProd [ kOne; kZero; kOne ]);
          (kAdd [ kZero; kOne; kZero ]) ] in
    let x2 =
      kProd
        [ (kProd [ kOne; kOne; kOne ]); (kProd [ kOne; kZero; kZero ]);
          (kAdd [ kZero; kZero; kZero ]) ] in
    kProd [ x0; x1; (kAdd [ x0; x1; x2 ]); x2 ] =
    kAdd
      [ (kProd [ x0; x1; x0; x2 ]); (kProd [ x0; x1; x1; x2 ]);
        (kProd [ x0; x1; x2; x2 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (103)
  (try
   (let x0 =
      kProd
        [ (kProd [ kZero; kZero; kZero ]); (kAdd [ kOne; kZero; kZero ]);
          (kAdd [ kZero; kZero; kZero ]) ] in
    let x1 =
      kProd
        [ (kProd [ kZero; kZero; kZero ]); (kAdd [ kOne; kZero; kZero ]);
          (kAdd [ kZero; kZero; kZero ]) ] in
    let x2 =
      kAdd
        [ (kProd [ kZero; kOne; kZero ]); (kProd [ kOne; kZero; kOne ]);
          (kProd [ kZero; kZero; kZero ]) ] in
    kProd [ x0; x1; (kAdd [ x0; x1; x2 ]); x2 ] =
    kAdd
      [ (kProd [ x0; x1; x0; x2 ]); (kProd [ x0; x1; x1; x2 ]);
        (kProd [ x0; x1; x2; x2 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (104)
  (try
   (let x0 =
      kProd
        [ (kProd [ kZero; kZero; kZero ]); (kAdd [ kOne; kZero; kZero ]);
          (kAdd [ kZero; kZero; kZero ]) ] in
    let x1 =
      kAdd
        [ (kAdd [ kOne; kOne; kZero ]); (kAdd [ kZero; kZero; kOne ]);
          (kAdd [ kOne; kZero; kOne ]) ] in
    let x2 =
      kProd
        [ (kProd [ kZero; kOne; kOne ]); (kAdd [ kZero; kOne; kZero ]);
          (kProd [ kZero; kZero; kZero ]) ] in
    kProd [ x0; x1; (kAdd [ x0; x1; x2 ]); x2 ] =
    kAdd
      [ (kProd [ x0; x1; x0; x2 ]); (kProd [ x0; x1; x1; x2 ]);
        (kProd [ x0; x1; x2; x2 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (105)
  (try
   (let x0 =
      kProd
        [ (kAdd [ kOne; kOne; kOne ]); (kProd [ kZero; kZero; kZero ]);
          (kProd [ kOne; kZero; kOne ]) ] in
    let x1 =
      kAdd
        [ (kAdd [ kOne; kZero; kOne ]); (kProd [ kOne; kZero; kZero ]);
          (kProd [ kOne; kZero; kZero ]) ] in
    let x2 =
      kProd
        [ (kAdd [ kZero; kZero; kOne ]); (kAdd [ kOne; kOne; kOne ]);
          (kProd [ kOne; kZero; kOne ]) ] in
    kProd [ (kAdd [ x0; x1; x2 ]); x0 ] =
    kAdd [ (kProd [ x0; x0 ]); (kProd [ x1; x0 ]); (kProd [ x2; x0 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (106)
  (try
   (let x0 =
      kProd
        [ (kAdd [ kZero; kZero; kOne ]); (kAdd [ kOne; kOne; kZero ]);
          (kProd [ kZero; kZero; kOne ]) ] in
    let x1 =
      kProd
        [ (kAdd [ kZero; kZero; kOne ]); (kAdd [ kOne; kZero; kOne ]);
          (kProd [ kZero; kOne; kOne ]) ] in
    let x2 =
      kAdd
        [ (kAdd [ kOne; kZero; kOne ]); (kAdd [ kOne; kZero; kOne ]); kOne ] in
    kProd [ (kAdd [ x0; x1; x2 ]); x0 ] =
    kAdd [ (kProd [ x0; x0 ]); (kProd [ x1; x0 ]); (kProd [ x2; x0 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (107)
  (try
   (let x0 =
      kProd
        [ (kAdd [ kZero; kZero; kOne ]); (kAdd [ kOne; kOne; kZero ]);
          (kProd [ kZero; kZero; kOne ]) ] in
    let x1 =
      kAdd
        [ (kAdd [ kOne; kZero; kOne ]); (kAdd [ kOne; kZero; kOne ]); kOne ] in
    let x2 =
      kProd
        [ (kAdd [ kZero; kZero; kOne ]); (kAdd [ kOne; kOne; kOne ]);
          (kProd [ kOne; kZero; kOne ]) ] in
    kProd [ (kAdd [ x0; x1; x2 ]); x0 ] =
    kAdd [ (kProd [ x0; x0 ]); (kProd [ x1; x0 ]); (kProd [ x2; x0 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (108)
  (try
   (let x0 =
      kProd
        [ (kAdd [ kZero; kZero; kOne ]); (kAdd [ kOne; kOne; kOne ]);
          (kProd [ kOne; kZero; kOne ]) ] in
    let x1 =
      kProd
        [ (kProd [ kOne; kOne; kZero ]); (kAdd [ kOne; kZero; kOne ]);
          (kAdd [ kZero; kZero; kOne ]) ] in
    let x2 =
      kAdd
        [ (kAdd [ kOne; kOne; kOne ]); (kProd [ kOne; kZero; kOne ]);
          (kProd [ kOne; kZero; kZero ]) ] in
    kProd [ (kAdd [ x0; x1; x2 ]); x0 ] =
    kAdd [ (kProd [ x0; x0 ]); (kProd [ x1; x0 ]); (kProd [ x2; x0 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

testi
  (109)
  (try
   (let x0 =
      kAdd
        [ (kProd [ kZero; kOne; kOne ]); (kAdd [ kOne; kOne; kOne ]); kOne ] in
    let x1 =
      kAdd
        [ (kProd [ kOne; kZero; kZero ]); (kAdd [ kOne; kOne; kOne ]);
          (kProd [ kOne; kOne; kZero ]) ] in
    let x2 =
      kProd
        [ (kAdd [ kZero; kZero; kOne ]); (kAdd [ kOne; kZero; kOne ]);
          (kProd [ kZero; kOne; kOne ]) ] in
    kProd [ (kAdd [ x0; x1; x2 ]); x0 ] =
    kAdd [ (kProd [ x0; x0 ]); (kProd [ x1; x0 ]); (kProd [ x2; x0 ]) ]) with
   | Failure "Division by Absorbent" -> true)
;;

