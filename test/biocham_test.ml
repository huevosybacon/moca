open Biocham
;;

open Gentest
;;

testing ("Biocham (automatic) - seed: 626238815")
;;

testi
  (0)
  (let x0 = empty in
   let x1 = union ((singleton (26)), (union (empty, empty))) in
   union (x0, x1) = union (x1, x0))
;;

testi
  (1)
  (let x0 = singleton (17) in
   let x1 = union ((singleton (44)), (singleton (46))) in
   union (x0, x1) = union (x1, x0))
;;

testi
  (2)
  (let x0 = singleton (24) in
   let x1 = singleton (31) in union (x0, x1) = union (x1, x0))
;;

testi
  (3)
  (let x0 = singleton (17) in
   let x1 = union ((singleton (44)), (singleton (46))) in
   union (x0, x1) = union (x1, x0))
;;

testi
  (4)
  (let x0 =
     union ((union ((singleton (16)), (singleton (6)))), (singleton (4))) in
   let x1 = empty in union (x0, x1) = union (x1, x0))
;;

testi
  (5)
  (let x0 =
     union ((union ((singleton (14)), (singleton (5)))), (singleton (18))) in
   union (x0, empty) = x0)
;;

testi (6) (let x0 = singleton (19) in union (x0, empty) = x0)
;;

testi
  (7)
  (let x0 =
     union
       ((union ((singleton (21)), (singleton (14)))),
        (union ((singleton (18)), (singleton (9))))) in
   union (x0, empty) = x0)
;;

testi (8) (let x0 = singleton (19) in union (x0, empty) = x0)
;;

testi (9) (let x0 = singleton (19) in union (x0, empty) = x0)
;;

testi
  (10)
  (let x1 = singleton (9) in
   let x0 =
     union
       ((union ((singleton (48)), (singleton (31)))),
        (union ((singleton (5)), (singleton (25))))) in
   union (x1, (union (x1, x0))) = union (x1, x0))
;;

testi
  (11)
  (let x1 =
     union ((union ((singleton (6)), (singleton (40)))), (singleton (48))) in
   let x0 = singleton (11) in union (x1, (union (x1, x0))) = union (x1, x0))
;;

testi
  (12)
  (let x1 = singleton (26) in
   let x0 = singleton (11) in union (x1, (union (x1, x0))) = union (x1, x0))
;;

testi
  (13)
  (let x1 = singleton (5) in
   let x0 =
     union
       ((union ((singleton (6)), (singleton (40)))),
        (union ((singleton (5)), (singleton (25))))) in
   union (x1, (union (x1, x0))) = union (x1, x0))
;;

testi
  (14)
  (let x1 =
     union
       ((union ((singleton (48)), (singleton (31)))),
        (union ((singleton (19)), (singleton (32))))) in
   let x0 = singleton (49) in union (x1, (union (x1, x0))) = union (x1, x0))
;;

testi
  (15)
  (let x1 =
     union ((singleton (48)), (union ((singleton (2)), (singleton (33))))) in
   let x0 = singleton (5) in union ((union (x1, x0)), x0) = union (x1, x0))
;;

testi
  (16)
  (let x1 = singleton (7) in
   let x0 = singleton (5) in union ((union (x1, x0)), x0) = union (x1, x0))
;;

testi
  (17)
  (let x1 = singleton (5) in
   let x0 = singleton (5) in union ((union (x1, x0)), x0) = union (x1, x0))
;;

testi
  (18)
  (let x1 = singleton (5) in
   let x0 = singleton (5) in union ((union (x1, x0)), x0) = union (x1, x0))
;;

testi
  (19)
  (let x1 =
     union
       ((union (empty, (singleton (9)))),
        (union ((singleton (2)), (singleton (23))))) in
   let x0 = singleton (46) in union ((union (x1, x0)), x0) = union (x1, x0))
;;

testi
  (20)
  (let x2 = singleton (72) in
   let x1 =
     union ((union ((singleton (50)), (singleton (51)))), (singleton (18))) in
   let x0 = singleton (9) in
   union ((union (x2, x1)), x0) = union (x2, (union (x1, x0))))
;;

testi
  (21)
  (let x2 = singleton (12) in
   let x1 = singleton (9) in
   let x0 = union ((singleton (14)), (singleton (44))) in
   union ((union (x2, x1)), x0) = union (x2, (union (x1, x0))))
;;

testi
  (22)
  (let x2 = singleton (72) in
   let x1 = singleton (12) in
   let x0 = singleton (9) in
   union ((union (x2, x1)), x0) = union (x2, (union (x1, x0))))
;;

testi
  (23)
  (let x2 = union ((singleton (70)), (singleton (29))) in
   let x1 = singleton (9) in
   let x0 = union ((singleton (8)), (singleton (44))) in
   union ((union (x2, x1)), x0) = union (x2, (union (x1, x0))))
;;

testi
  (24)
  (let x2 = union ((singleton (14)), (singleton (44))) in
   let x1 = union ((singleton (8)), (singleton (44))) in
   let x0 = singleton (46) in
   union ((union (x2, x1)), x0) = union (x2, (union (x1, x0))))
;;

testi (25) (let x0 = singleton (7) in union (empty, x0) = x0)
;;

testi
  (26)
  (let x0 =
     union
       ((union ((singleton (12)), (singleton (20)))),
        (union ((singleton (5)), (singleton (2))))) in
   union (empty, x0) = x0)
;;

testi
  (27)
  (let x0 =
     union ((union ((singleton (12)), (singleton (20)))), (singleton (2))) in
   union (empty, x0) = x0)
;;

testi
  (28)
  (let x0 =
     union ((union ((singleton (12)), (singleton (20)))), (singleton (2))) in
   union (empty, x0) = x0)
;;

testi
  (29)
  (let x0 =
     union ((singleton (22)), (union ((singleton (20)), (singleton (7))))) in
   union (empty, x0) = x0)
;;

testi
  (30)
  (let x0 =
     phospho ((phospho ((name ("29")), empty)), (singleton (name ("48")))) in
   let x1 =
     ph
       ((complex ((name ("5")), (name ("15")))),
        (phospho ((name ("7")), empty))) in
   complex (x0, x1) = complex (x1, x0))
;;

testi
  (31)
  (let x0 = name ("24") in
   let x1 =
     phospho ((phospho ((name ("1")), empty)), (singleton (name ("13")))) in
   complex (x0, x1) = complex (x1, x0))
;;

testi
  (32)
  (let x0 = name ("9") in
   let x1 =
     phospho ((phospho ((name ("29")), empty)), (union (empty, empty))) in
   complex (x0, x1) = complex (x1, x0))
;;

testi
  (33)
  (let x0 = name ("3") in
   let x1 = ph ((phospho ((name ("5")), empty)), (name ("6"))) in
   complex (x0, x1) = complex (x1, x0))
;;

testi
  (34)
  (let x0 = name ("31") in
   let x1 = complex ((name ("44")), (phospho ((name ("45")), empty))) in
   complex (x0, x1) = complex (x1, x0))
;;

testi
  (35)
  (let x2 = ph ((name ("49")), (ph ((name ("20")), (name ("40"))))) in
   let x1 = name ("37") in
   let x0 = phospho ((name ("72")), (union (empty, empty))) in
   complex ((complex (x2, x1)), x0) = complex (x2, (complex (x1, x0))))
;;

testi
  (36)
  (let x2 =
     ph
       ((phospho ((name ("1")), empty)), (ph ((name ("20")), (name ("40"))))) in
   let x1 =
     complex
       ((ph ((name ("35")), (name ("30")))),
        (ph ((name ("59")), (name ("4"))))) in
   let x0 = name ("30") in
   complex ((complex (x2, x1)), x0) = complex (x2, (complex (x1, x0))))
;;

testi
  (37)
  (let x2 = name ("0") in
   let x1 = name ("37") in
   let x0 = complex ((ph ((name ("66")), (name ("10")))), (name ("20"))) in
   complex ((complex (x2, x1)), x0) = complex (x2, (complex (x1, x0))))
;;

testi
  (38)
  (let x2 = phospho ((name ("16")), (singleton (name ("63")))) in
   let x1 = name ("14") in
   let x0 = complex ((name ("50")), (ph ((name ("19")), (name ("22"))))) in
   complex ((complex (x2, x1)), x0) = complex (x2, (complex (x1, x0))))
;;

testi
  (39)
  (let x2 =
     ph
       ((phospho ((name ("1")), empty)), (ph ((name ("20")), (name ("40"))))) in
   let x1 =
     ph
       ((complex ((name ("73")), (name ("43")))),
        (ph ((name ("67")), (name ("26"))))) in
   let x0 = name ("0") in
   complex ((complex (x2, x1)), x0) = complex (x2, (complex (x1, x0))))
;;

testi
  (40)
  (let x0 =
     complex
       ((phospho ((name ("39")), empty)), (phospho ((name ("39")), empty))) in
   let x1 =
     phospho ((ph ((name ("20")), (name ("18")))), (union (empty, empty))) in
   ph (x0, x1) = ph (x1, x0))
;;

testi
  (41)
  (let x0 = name ("13") in
   let x1 =
     phospho ((ph ((name ("20")), (name ("18")))), (union (empty, empty))) in
   ph (x0, x1) = ph (x1, x0))
;;

testi
  (42)
  (let x0 =
     ph
       ((complex ((name ("9")), (name ("27")))),
        (ph ((name ("42")), (name ("9"))))) in
   let x1 =
     phospho ((ph ((name ("20")), (name ("18")))), (union (empty, empty))) in
   ph (x0, x1) = ph (x1, x0))
;;

testi
  (43)
  (let x0 = ph ((phospho ((name ("9")), empty)), (name ("22"))) in
   let x1 = complex ((name ("12")), (phospho ((name ("46")), empty))) in
   ph (x0, x1) = ph (x1, x0))
;;

testi
  (44)
  (let x0 = ph ((phospho ((name ("25")), empty)), (name ("38"))) in
   let x1 = name ("35") in ph (x0, x1) = ph (x1, x0))
;;

testi
  (45)
  (let x2 =
     ph
       ((complex ((name ("68")), (name ("35")))),
        (ph ((name ("24")), (name ("72"))))) in
   let x1 = name ("9") in
   let x0 = phospho ((name ("40")), (singleton (name ("62")))) in
   ph ((ph (x2, x1)), x0) = ph (x2, (ph (x1, x0))))
;;

testi
  (46)
  (let x2 = phospho ((name ("40")), (singleton (name ("35")))) in
   let x1 = phospho ((name ("40")), (singleton (name ("35")))) in
   let x0 = complex ((name ("5")), (complex ((name ("11")), (name ("39"))))) in
   ph ((ph (x2, x1)), x0) = ph (x2, (ph (x1, x0))))
;;

testi
  (47)
  (let x2 =
     phospho
       ((complex ((name ("73")), (name ("69")))), (union (empty, empty))) in
   let x1 = phospho ((name ("33")), (union (empty, empty))) in
   let x0 = name ("64") in ph ((ph (x2, x1)), x0) = ph (x2, (ph (x1, x0))))
;;

testi
  (48)
  (let x2 = name ("18") in
   let x1 =
     complex
       ((ph ((name ("50")), (name ("74")))),
        (ph ((name ("69")), (name ("14"))))) in
   let x0 = ph ((ph ((name ("40")), (name ("72")))), (name ("14"))) in
   ph ((ph (x2, x1)), x0) = ph (x2, (ph (x1, x0))))
;;

testi
  (49)
  (let x2 =
     complex
       ((ph ((name ("19")), (name ("47")))),
        (complex ((name ("11")), (name ("39"))))) in
   let x1 = name ("64") in
   let x0 = phospho ((name ("33")), (union (empty, empty))) in
   ph ((ph (x2, x1)), x0) = ph (x2, (ph (x1, x0))))
;;

