open Biocham_sharing
;;

open Gentest
;;

testing ("Biocham_sharing (automatic) - seed: 202291009")
;;

testi
  (0)
  (let x0 = empty in
   let x1 =
     union ((union ((singleton (8)), (singleton (38)))), (singleton (49))) in
   union (x0, x1) = union (x1, x0))
;;

testi
  (1)
  (let x0 = singleton (39) in
   let x1 = singleton (18) in union (x0, x1) = union (x1, x0))
;;

testi
  (2)
  (let x0 =
     union
       ((union ((singleton (34)), (singleton (36)))),
        (union ((singleton (30)), empty))) in
   let x1 = singleton (17) in union (x0, x1) = union (x1, x0))
;;

testi
  (3)
  (let x0 =
     union
       ((union (empty, (singleton (38)))),
        (union ((singleton (3)), (singleton (25))))) in
   let x1 = singleton (37) in union (x0, x1) = union (x1, x0))
;;

testi
  (4)
  (let x0 = singleton (38) in
   let x1 = singleton (33) in union (x0, x1) = union (x1, x0))
;;

testi (5) (let x0 = empty in union (x0, empty) = x0)
;;

testi (6) (let x0 = empty in union (x0, empty) = x0)
;;

testi
  (7)
  (let x0 =
     union
       ((union ((singleton (24)), (singleton (0)))),
        (union ((singleton (15)), empty))) in
   union (x0, empty) = x0)
;;

testi (8) (let x0 = singleton (3) in union (x0, empty) = x0)
;;

testi (9) (let x0 = singleton (3) in union (x0, empty) = x0)
;;

testi
  (10)
  (let x1 = union ((singleton (30)), (singleton (29))) in
   let x0 = empty in union (x1, (union (x1, x0))) = union (x1, x0))
;;

testi
  (11)
  (let x1 =
     union ((union ((singleton (13)), (singleton (6)))), (singleton (23))) in
   let x0 = union ((singleton (41)), (singleton (29))) in
   union (x1, (union (x1, x0))) = union (x1, x0))
;;

testi
  (12)
  (let x1 =
     union ((union ((singleton (13)), (singleton (16)))), (singleton (29))) in
   let x0 = singleton (18) in union (x1, (union (x1, x0))) = union (x1, x0))
;;

testi
  (13)
  (let x1 =
     union ((union ((singleton (13)), (singleton (48)))), (singleton (29))) in
   let x0 =
     union ((union ((singleton (13)), (singleton (36)))), (singleton (29))) in
   union (x1, (union (x1, x0))) = union (x1, x0))
;;

testi
  (14)
  (let x1 = singleton (47) in
   let x0 = singleton (47) in union (x1, (union (x1, x0))) = union (x1, x0))
;;

testi
  (15)
  (let x1 =
     union ((singleton (8)), (union ((singleton (37)), (singleton (45))))) in
   let x0 =
     union ((singleton (29)), (union ((singleton (14)), (singleton (21))))) in
   union ((union (x1, x0)), x0) = union (x1, x0))
;;

testi
  (16)
  (let x1 = singleton (31) in
   let x0 = union ((singleton (8)), empty) in
   union ((union (x1, x0)), x0) = union (x1, x0))
;;

testi
  (17)
  (let x1 = union ((singleton (20)), empty) in
   let x0 = empty in union ((union (x1, x0)), x0) = union (x1, x0))
;;

testi
  (18)
  (let x1 = singleton (15) in
   let x0 =
     union ((singleton (29)), (union ((singleton (37)), (singleton (45))))) in
   union ((union (x1, x0)), x0) = union (x1, x0))
;;

testi
  (19)
  (let x1 =
     union ((singleton (8)), (union ((singleton (37)), (singleton (45))))) in
   let x0 = union ((singleton (20)), (singleton (36))) in
   union ((union (x1, x0)), x0) = union (x1, x0))
;;

testi
  (20)
  (let x2 = singleton (3) in
   let x1 = singleton (26) in
   let x0 = singleton (3) in
   union ((union (x2, x1)), x0) = union (x2, (union (x1, x0))))
;;

testi
  (21)
  (let x2 = singleton (26) in
   let x1 =
     union ((union ((singleton (25)), (singleton (26)))), (singleton (74))) in
   let x0 = union ((singleton (67)), (singleton (45))) in
   union ((union (x2, x1)), x0) = union (x2, (union (x1, x0))))
;;

testi
  (22)
  (let x2 = empty in
   let x1 = singleton (25) in
   let x0 = singleton (26) in
   union ((union (x2, x1)), x0) = union (x2, (union (x1, x0))))
;;

testi
  (23)
  (let x2 = singleton (28) in
   let x1 =
     union ((union ((singleton (26)), (singleton (26)))), (singleton (12))) in
   let x0 = singleton (26) in
   union ((union (x2, x1)), x0) = union (x2, (union (x1, x0))))
;;

testi
  (24)
  (let x2 =
     union ((singleton (38)), (union ((singleton (46)), (singleton (19))))) in
   let x1 = empty in
   let x0 = singleton (28) in
   union ((union (x2, x1)), x0) = union (x2, (union (x1, x0))))
;;

testi (25) (let x0 = singleton (12) in union (empty, x0) = x0)
;;

testi (26) (let x0 = singleton (9) in union (empty, x0) = x0)
;;

testi (27) (let x0 = union (empty, empty) in union (empty, x0) = x0)
;;

testi (28) (let x0 = union (empty, empty) in union (empty, x0) = x0)
;;

testi (29) (let x0 = empty in union (empty, x0) = x0)
;;

testi
  (30)
  (let x0 = name ("37") in
   let x1 =
     ph
       ((phospho ((name ("13")), empty)), (ph ((name ("44")), (name ("5"))))) in
   complex (x0, x1) = complex (x1, x0))
;;

testi
  (31)
  (let x0 = phospho ((name ("38")), (union (empty, empty))) in
   let x1 = phospho ((phospho ((name ("4")), empty)), (union (empty, empty))) in
   complex (x0, x1) = complex (x1, x0))
;;

testi
  (32)
  (let x0 = phospho ((name ("26")), (union (empty, empty))) in
   let x1 =
     ph
       ((phospho ((name ("13")), empty)), (ph ((name ("43")), (name ("37"))))) in
   complex (x0, x1) = complex (x1, x0))
;;

testi
  (33)
  (let x0 = phospho ((name ("38")), (union (empty, empty))) in
   let x1 = complex ((name ("4")), (phospho ((name ("13")), empty))) in
   complex (x0, x1) = complex (x1, x0))
;;

testi
  (34)
  (let x0 = ph ((name ("48")), (ph ((name ("44")), (name ("5"))))) in
   let x1 = name ("18") in complex (x0, x1) = complex (x1, x0))
;;

testi
  (35)
  (let x2 =
     phospho ((ph ((name ("43")), (name ("35")))), (singleton (name ("43")))) in
   let x1 = complex ((name ("41")), (complex ((name ("62")), (name ("6"))))) in
   let x0 = ph ((ph ((name ("13")), (name ("39")))), (name ("7"))) in
   complex ((complex (x2, x1)), x0) = complex (x2, (complex (x1, x0))))
;;

testi
  (36)
  (let x2 = phospho ((name ("28")), (union (empty, empty))) in
   let x1 = name ("29") in
   let x0 =
     complex
       ((ph ((name ("45")), (name ("63")))),
        (ph ((name ("39")), (name ("59"))))) in
   complex ((complex (x2, x1)), x0) = complex (x2, (complex (x1, x0))))
;;

testi
  (37)
  (let x2 = name ("27") in
   let x1 =
     phospho
       ((complex ((name ("74")), (name ("58")))), (union (empty, empty))) in
   let x0 = phospho ((name ("34")), (singleton (name ("39")))) in
   complex ((complex (x2, x1)), x0) = complex (x2, (complex (x1, x0))))
;;

testi
  (38)
  (let x2 = name ("13") in
   let x1 =
     ph
       ((complex ((name ("35")), (name ("8")))),
        (complex ((name ("14")), (name ("24"))))) in
   let x0 =
     phospho
       ((complex ((name ("41")), (name ("48")))), (singleton (name ("27")))) in
   complex ((complex (x2, x1)), x0) = complex (x2, (complex (x1, x0))))
;;

testi
  (39)
  (let x2 =
     complex
       ((complex ((name ("8")), (name ("66")))),
        (ph ((name ("39")), (name ("59"))))) in
   let x1 =
     complex
       ((phospho ((name ("61")), empty)), (phospho ((name ("39")), empty))) in
   let x0 =
     phospho
       ((complex ((name ("74")), (name ("58")))), (union (empty, empty))) in
   complex ((complex (x2, x1)), x0) = complex (x2, (complex (x1, x0))))
;;

testi
  (40)
  (let x0 =
     ph
       ((ph ((name ("42")), (name ("18")))),
        (ph ((name ("37")), (name ("40"))))) in
   let x1 = name ("45") in ph (x0, x1) = ph (x1, x0))
;;

testi
  (41)
  (let x0 = name ("33") in
   let x1 =
     complex
       ((ph ((name ("22")), (name ("42")))),
        (ph ((name ("28")), (name ("19"))))) in
   ph (x0, x1) = ph (x1, x0))
;;

testi
  (42)
  (let x0 = name ("29") in
   let x1 = ph ((name ("15")), (name ("12"))) in ph (x0, x1) = ph (x1, x0))
;;

testi
  (43)
  (let x0 = name ("21") in let x1 = name ("22") in ph (x0, x1) = ph (x1, x0))
;;

testi
  (44)
  (let x0 = name ("33") in
   let x1 = ph ((name ("34")), (ph ((name ("37")), (name ("40"))))) in
   ph (x0, x1) = ph (x1, x0))
;;

testi
  (45)
  (let x2 =
     complex
       ((ph ((name ("53")), (name ("15")))),
        (ph ((name ("2")), (name ("73"))))) in
   let x1 =
     phospho ((ph ((name ("37")), (name ("31")))), (union (empty, empty))) in
   let x0 = ph ((ph ((name ("46")), (name ("32")))), (name ("8"))) in
   ph ((ph (x2, x1)), x0) = ph (x2, (ph (x1, x0))))
;;

testi
  (46)
  (let x2 =
     phospho
       ((complex ((name ("56")), (name ("60")))), (singleton (name ("37")))) in
   let x1 = complex ((name ("54")), (name ("29"))) in
   let x0 = name ("3") in ph ((ph (x2, x1)), x0) = ph (x2, (ph (x1, x0))))
;;

testi
  (47)
  (let x2 =
     complex
       ((complex ((name ("25")), (name ("3")))),
        (ph ((name ("2")), (name ("68"))))) in
   let x1 = name ("4") in
   let x0 = name ("63") in ph ((ph (x2, x1)), x0) = ph (x2, (ph (x1, x0))))
;;

testi
  (48)
  (let x2 =
     phospho
       ((complex ((name ("58")), (name ("60")))), (singleton (name ("37")))) in
   let x1 = phospho ((name ("40")), (singleton (name ("37")))) in
   let x0 =
     ph
       ((complex ((name ("59")), (name ("73")))),
        (phospho ((name ("17")), empty))) in
   ph ((ph (x2, x1)), x0) = ph (x2, (ph (x1, x0))))
;;

testi
  (49)
  (let x2 =
     phospho ((ph ((name ("37")), (name ("31")))), (union (empty, empty))) in
   let x1 = complex ((name ("22")), (ph ((name ("2")), (name ("73"))))) in
   let x0 = ph ((phospho ((name ("54")), empty)), (name ("8"))) in
   ph ((ph (x2, x1)), x0) = ph (x2, (ph (x1, x0))))
;;

