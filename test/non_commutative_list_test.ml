open Non_commutative_list
;;

open Gentest
;;

testing ("Non_commutative_list (automatic) - seed: 123482317")
;;

testi
  (0)
  (let x0 = elem ("45") in
   let x1 =
     constr4
       [ (constr3 [ (elem ("49")); (elem ("44")); nil ]);
         (constr3 [ (elem ("73")); (elem ("55")); (elem ("24")) ]);
         (elem ("14")) ] in
   let x2 =
     constr5
       [ (constr4 [ (elem ("26")); (elem ("22")); (elem ("34")) ]);
         (inv (elem ("4"))); (elem ("13")) ] in
   constr1 [ (constr1 [ x0; x1 ]); x2 ] = constr1 [ x0; x1; x2 ])
;;

testi
  (1)
  (let x0 =
     constr3
       [ (constr4 [ (elem ("59")); (elem ("71")); (elem ("72")) ]);
         (constr5 [ (elem ("17")); (elem ("60")); (elem ("19")) ]); neutral ] in
   let x1 =
     constr6
       [ (constr5 [ (elem ("65")); (elem ("10")); (elem ("24")) ]);
         (constr6 [ (elem ("63")); (elem ("8")); (elem ("57")) ]);
         (constr3 [ (elem ("71")); (elem ("66")); (elem ("22")) ]) ] in
   let x2 =
     constr2
       [ (inv (elem ("12"))); (inv (elem ("39")));
         (constr4 [ (elem ("56")); (elem ("35")); (elem ("28")) ]) ] in
   constr1 [ (constr1 [ x0; x1 ]); x2 ] = constr1 [ x0; x1; x2 ])
;;

testi
  (2)
  (let x0 =
     constr6
       [ nil; (constr6 [ (elem ("40")); (elem ("16")); (elem ("68")) ]);
         (constr6 [ (elem ("63")); (elem ("56")); (elem ("40")) ]) ] in
   let x1 =
     constr5
       [ (constr5 [ (elem ("28")); (elem ("13")); (elem ("8")) ]);
         (constr3 [ (elem ("10")); (elem ("45")); (elem ("1")) ]);
         (constr1 [ (elem ("67")); neutral; (elem ("72")) ]) ] in
   let x2 = elem ("15") in
   constr1 [ (constr1 [ x0; x1 ]); x2 ] = constr1 [ x0; x1; x2 ])
;;

testi
  (3)
  (let x0 = inv (elem ("52")) in
   let x1 =
     constr3
       [ (constr4 [ (elem ("59")); (elem ("46")); (elem ("45")) ]);
         (constr5 [ (elem ("17")); (elem ("60")); (elem ("19")) ]); neutral ] in
   let x2 = inv (elem ("52")) in
   constr1 [ (constr1 [ x0; x1 ]); x2 ] = constr1 [ x0; x1; x2 ])
;;

testi
  (4)
  (let x0 =
     constr5
       [ (constr4 [ (elem ("26")); (elem ("22")); (elem ("34")) ]);
         (inv (elem ("4"))); (elem ("13")) ] in
   let x1 =
     constr1
       [ (inv (elem ("1")));
         (constr5 [ neutral; (elem ("49")); (elem ("60")) ]);
         (constr5 [ (elem ("25")); (elem ("43")); (elem ("69")) ]) ] in
   let x2 =
     constr3
       [ (constr1 [ (elem ("20")); (elem ("56")); (elem ("17")) ]);
         (constr3 [ (elem ("55")); (elem ("72")); (elem ("65")) ]);
         (constr4 [ (elem ("21")); (elem ("29")); (elem ("41")) ]) ] in
   constr1 [ (constr1 [ x0; x1 ]); x2 ] = constr1 [ x0; x1; x2 ])
;;

testi
  (5)
  (let x0 =
     constr2
       [ (constr5 [ neutral; (elem ("29")); (elem ("2")) ]);
         (inv (elem ("98"))); (constr3 [ (elem ("97")); (elem ("56")); nil ]) ] in
   let x1 =
     constr3
       [ (constr5 [ (elem ("96")); (elem ("0")); (elem ("75")) ]);
         (constr6 [ (elem ("116")); (elem ("17")); (elem ("18")) ]);
         (constr5 [ nil; (elem ("113")); (elem ("36")) ]) ] in
   let x2 =
     constr5
       [ (constr3 [ (elem ("53")); (elem ("69")); (elem ("73")) ]);
         (inv (elem ("73"))); nil ] in
   let x3 =
     constr5
       [ (constr3 [ neutral; (elem ("79")); (elem ("73")) ]);
         (constr4 [ (elem ("115")); (elem ("121")); (elem ("63")) ]);
         (inv (elem ("57"))) ] in
   let x4 =
     constr6
       [ (constr4 [ (elem ("75")); neutral; (elem ("65")) ]); (elem ("36"));
         (constr6 [ (elem ("36")); (elem ("44")); (elem ("1")) ]) ] in
   constr1 [ x0; (constr1 [ x1; x2 ]); (constr1 [ x3; x4 ]) ] =
   constr1 [ x0; x1; x2; x3; x4 ])
;;

testi
  (6)
  (let x0 = elem ("2") in
   let x1 =
     constr3
       [ (constr6 [ (elem ("86")); (elem ("82")); (elem ("22")) ]);
         (inv (elem ("6"))); (constr5 [ (elem ("101")); (elem ("61")); nil ]) ] in
   let x2 = inv (constr2 [ (elem ("25")); (elem ("97")); (elem ("3")) ]) in
   let x3 = elem ("2") in
   let x4 = inv (constr6 [ (elem ("28")); (elem ("73")); (elem ("118")) ]) in
   constr1 [ x0; (constr1 [ x1; x2 ]); (constr1 [ x3; x4 ]) ] =
   constr1 [ x0; x1; x2; x3; x4 ])
;;

testi
  (7)
  (let x0 =
     constr1
       [ (elem ("37"));
         (constr6 [ (elem ("30")); (elem ("105")); (elem ("110")) ]);
         (constr5 [ (elem ("66")); (elem ("4")); (elem ("1")) ]) ] in
   let x1 =
     constr5
       [ (elem ("2")); (inv (elem ("26")));
         (constr5 [ neutral; (elem ("48")); (elem ("46")) ]) ] in
   let x2 =
     constr2
       [ (constr5 [ (elem ("36")); (elem ("63")); (elem ("77")) ]);
         (constr3 [ (elem ("45")); (elem ("117")); (elem ("47")) ]);
         (constr4 [ (elem ("5")); (elem ("102")); (elem ("19")) ]) ] in
   let x3 =
     constr4
       [ (constr1 [ (elem ("17")); (elem ("13")); nil ]);
         (constr3 [ neutral; (elem ("97")); (elem ("13")) ]);
         (constr3 [ (elem ("14")); (elem ("95")); nil ]) ] in
   let x4 = inv (elem ("35")) in
   constr1 [ x0; (constr1 [ x1; x2 ]); (constr1 [ x3; x4 ]) ] =
   constr1 [ x0; x1; x2; x3; x4 ])
;;

testi
  (8)
  (let x0 =
     constr5
       [ (elem ("70"));
         (constr5 [ (elem ("53")); (elem ("21")); (elem ("55")) ]);
         (constr2 [ (elem ("59")); (elem ("124")); nil ]) ] in
   let x1 =
     constr2
       [ (constr3 [ (elem ("100")); (elem ("56")); (elem ("34")) ]);
         (constr2 [ (elem ("82")); (elem ("93")); (elem ("59")) ]);
         (constr4 [ (elem ("5")); (elem ("102")); (elem ("19")) ]) ] in
   let x2 =
     constr5
       [ (inv (elem ("23"))); (inv (elem ("12")));
         (constr2 [ (elem ("65")); (elem ("68")); (elem ("48")) ]) ] in
   let x3 =
     constr4
       [ (constr1 [ (elem ("69")); (elem ("109")); (elem ("106")) ]);
         (constr4 [ (elem ("2")); (elem ("89")); (elem ("14")) ]);
         (inv (elem ("110"))) ] in
   let x4 = elem ("67") in
   constr1 [ x0; (constr1 [ x1; x2 ]); (constr1 [ x3; x4 ]) ] =
   constr1 [ x0; x1; x2; x3; x4 ])
;;

testi
  (9)
  (let x0 = elem ("56") in
   let x1 =
     constr2
       [ (constr2 [ (elem ("11")); (elem ("11")); (elem ("67")) ]);
         (constr3 [ (elem ("116")); (elem ("117")); (elem ("124")) ]);
         (constr2 [ (elem ("51")); (elem ("17")); (elem ("106")) ]) ] in
   let x2 =
     constr6
       [ (constr5 [ (elem ("120")); (elem ("51")); (elem ("43")) ]);
         (constr3 [ (elem ("1")); (elem ("70")); (elem ("116")) ]);
         (constr3 [ (elem ("65")); (elem ("21")); (elem ("37")) ]) ] in
   let x3 =
     constr1
       [ (constr3 [ (elem ("29")); (elem ("8")); (elem ("104")) ]);
         (constr2 [ (elem ("13")); (elem ("97")); (elem ("55")) ]);
         (constr5 [ (elem ("118")); (elem ("65")); (elem ("1")) ]) ] in
   let x4 =
     constr3
       [ (constr5 [ (elem ("85")); (elem ("120")); (elem ("11")) ]);
         (constr6 [ (elem ("15")); (elem ("86")); (elem ("103")) ]);
         (inv (elem ("1"))) ] in
   constr1 [ x0; (constr1 [ x1; x2 ]); (constr1 [ x3; x4 ]) ] =
   constr1 [ x0; x1; x2; x3; x4 ])
;;

testi
  (10)
  (let x0 =
     constr1
       [ (constr6 [ nil; (elem ("95")); (elem ("36")) ]); (inv neutral);
         (constr2 [ (elem ("0")); neutral; (elem ("63")) ]) ] in
   let x1 =
     constr1
       [ (elem ("21"));
         (constr6 [ (elem ("72")); (elem ("82")); (elem ("13")) ]);
         (elem ("71")) ] in
   let x2 =
     constr2
       [ (constr1 [ (elem ("12")); (elem ("92")); (elem ("78")) ]);
         (constr1 [ (elem ("80")); (elem ("72")); (elem ("35")) ]);
         (constr6 [ (elem ("80")); (elem ("13")); (elem ("49")) ]) ] in
   let x3 =
     constr3
       [ (constr3 [ (elem ("9")); (elem ("90")); (elem ("84")) ]);
         (constr2 [ (elem ("68")); neutral; (elem ("76")) ]);
         (inv (elem ("46"))) ] in
   constr1 [ (constr1 [ x0; x1; x2 ]); x3 ] = constr1 [ x0; x1; x2; x3 ])
;;

testi
  (11)
  (let x0 =
     constr3
       [ (constr4 [ (elem ("89")); (elem ("31")); (elem ("10")) ]);
         (constr3 [ (elem ("1")); (elem ("24")); (elem ("39")) ]);
         (constr6 [ (elem ("25")); (elem ("99")); (elem ("37")) ]) ] in
   let x1 =
     constr4
       [ (constr6 [ (elem ("55")); (elem ("21")); (elem ("27")) ]);
         (constr5 [ (elem ("93")); (elem ("90")); (elem ("8")) ]);
         (constr4 [ (elem ("76")); (elem ("63")); (elem ("31")) ]) ] in
   let x2 = inv (constr3 [ (elem ("22")); neutral; (elem ("23")) ]) in
   let x3 =
     constr2
       [ (inv (elem ("91")));
         (constr4 [ (elem ("85")); (elem ("86")); (elem ("66")) ]);
         (constr5 [ (elem ("44")); (elem ("18")); (elem ("21")) ]) ] in
   constr1 [ (constr1 [ x0; x1; x2 ]); x3 ] = constr1 [ x0; x1; x2; x3 ])
;;

testi
  (12)
  (let x0 = elem ("29") in
   let x1 =
     constr5 [ (inv (elem ("60"))); (elem ("64")); (inv (elem ("51"))) ] in
   let x2 = elem ("44") in
   let x3 =
     constr5
       [ neutral; (constr1 [ (elem ("32")); (elem ("1")); (elem ("7")) ]);
         (constr6 [ (elem ("39")); (elem ("44")); (elem ("83")) ]) ] in
   constr1 [ (constr1 [ x0; x1; x2 ]); x3 ] = constr1 [ x0; x1; x2; x3 ])
;;

testi
  (13)
  (let x0 =
     constr5
       [ (constr4 [ (elem ("99")); (elem ("58")); (elem ("6")) ]);
         (constr5 [ (elem ("17")); (elem ("88")); (elem ("47")) ]);
         (constr5 [ (elem ("91")); (elem ("41")); (elem ("38")) ]) ] in
   let x1 =
     constr3
       [ (constr5 [ (elem ("6")); (elem ("9")); (elem ("37")) ]);
         (constr3 [ (elem ("1")); (elem ("24")); (elem ("39")) ]);
         (constr1 [ (elem ("42")); (elem ("63")); (elem ("45")) ]) ] in
   let x2 =
     constr3
       [ (constr1 [ nil; (elem ("29")); (elem ("6")) ]);
         (constr3 [ (elem ("1")); (elem ("24")); (elem ("39")) ]);
         (constr3 [ (elem ("97")); (elem ("16")); (elem ("75")) ]) ] in
   let x3 =
     constr2
       [ (constr6 [ (elem ("95")); (elem ("74")); (elem ("21")) ]);
         (constr1 [ (elem ("80")); (elem ("72")); (elem ("35")) ]);
         (constr3 [ nil; (elem ("3")); (elem ("15")) ]) ] in
   constr1 [ (constr1 [ x0; x1; x2 ]); x3 ] = constr1 [ x0; x1; x2; x3 ])
;;

testi
  (14)
  (let x0 = elem ("74") in
   let x1 =
     constr1
       [ (constr1 [ (elem ("4")); (elem ("3")); (elem ("60")) ]);
         (constr5 [ (elem ("9")); (elem ("83")); (elem ("67")) ]);
         (inv (elem ("8"))) ] in
   let x2 =
     constr3
       [ (constr4 [ (elem ("89")); (elem ("31")); (elem ("10")) ]);
         (inv (elem ("68")));
         (constr3 [ (elem ("39")); (elem ("2")); (elem ("86")) ]) ] in
   let x3 = elem ("51") in
   constr1 [ (constr1 [ x0; x1; x2 ]); x3 ] = constr1 [ x0; x1; x2; x3 ])
;;

testi
  (15)
  (let x0 =
     constr3
       [ (inv (elem ("12")));
         (constr4 [ (elem ("19")); (elem ("27")); (elem ("47")) ]);
         (elem ("47")) ] in
   let x1 =
     constr6
       [ (constr5 [ (elem ("46")); (elem ("38")); (elem ("41")) ]);
         (constr3 [ nil; nil; (elem ("38")) ]);
         (constr6 [ (elem ("18")); neutral; (elem ("3")) ]) ] in
   constr1 [ x0; neutral; x1 ] = constr1 [ x0; x1 ])
;;

testi
  (16)
  (let x0 =
     constr5
       [ (constr3 [ (elem ("49")); (elem ("36")); (elem ("9")) ]);
         (constr3 [ nil; (elem ("21")); nil ]);
         (constr6 [ nil; neutral; (elem ("41")) ]) ] in
   let x1 =
     constr5
       [ (elem ("1")); (constr3 [ nil; (elem ("21")); nil ]);
         (inv (elem ("16"))) ] in
   constr1 [ x0; neutral; x1 ] = constr1 [ x0; x1 ])
;;

testi
  (17)
  (let x0 =
     constr2
       [ (constr4 [ (elem ("12")); (elem ("29")); (elem ("11")) ]);
         (constr2 [ (elem ("17")); (elem ("25")); (elem ("29")) ]);
         (constr6 [ (elem ("49")); (elem ("2")); (elem ("6")) ]) ] in
   let x1 =
     constr3
       [ (constr1 [ (elem ("22")); (elem ("41")); (elem ("43")) ]);
         (constr2 [ nil; (elem ("26")); (elem ("25")) ]);
         (constr2 [ (elem ("24")); nil; (elem ("38")) ]) ] in
   constr1 [ x0; neutral; x1 ] = constr1 [ x0; x1 ])
;;

testi
  (18)
  (let x0 = elem ("41") in
   let x1 =
     constr6
       [ (constr5 [ (elem ("46")); (elem ("38")); (elem ("41")) ]);
         (constr3 [ nil; nil; (elem ("38")) ]);
         (constr6 [ (elem ("18")); neutral; (elem ("3")) ]) ] in
   constr1 [ x0; neutral; x1 ] = constr1 [ x0; x1 ])
;;

testi
  (19)
  (let x0 =
     constr3
       [ (elem ("44")); (constr6 [ (elem ("49")); nil; (elem ("4")) ]);
         (constr6 [ (elem ("14")); nil; (elem ("22")) ]) ] in
   let x1 =
     constr2
       [ (constr3 [ (elem ("44")); (elem ("47")); (elem ("46")) ]);
         (constr3 [ (elem ("20")); (elem ("30")); nil ]);
         (constr4 [ (elem ("38")); (elem ("37")); (elem ("2")) ]) ] in
   constr1 [ x0; neutral; x1 ] = constr1 [ x0; x1 ])
;;

testi
  (20)
  (let x0 =
     constr6
       [ (inv (elem ("16"))); (elem ("6"));
         (constr5 [ nil; (elem ("0")); nil ]) ] in
   constr1 [ neutral; x0 ] = x0)
;;

testi
  (21)
  (let x0 =
     constr6
       [ (constr4 [ nil; (elem ("17")); (elem ("22")) ]);
         (constr1 [ (elem ("11")); (elem ("7")); (elem ("23")) ]);
         (constr1 [ (elem ("0")); neutral; (elem ("15")) ]) ] in
   constr1 [ neutral; x0 ] = x0)
;;

testi
  (22)
  (let x0 =
     constr5
       [ (constr2 [ neutral; (elem ("10")); (elem ("20")) ]);
         (constr3 [ nil; neutral; (elem ("21")) ]);
         (constr2 [ neutral; nil; (elem ("14")) ]) ] in
   constr1 [ neutral; x0 ] = x0)
;;

testi
  (23)
  (let x0 =
     constr6
       [ (inv (elem ("16")));
         (constr1 [ (elem ("11")); (elem ("7")); (elem ("23")) ]);
         (constr5 [ nil; (elem ("0")); nil ]) ] in
   constr1 [ neutral; x0 ] = x0)
;;

testi
  (24)
  (let x0 =
     constr1
       [ (constr2 [ neutral; (elem ("18")); (elem ("7")) ]);
         (constr5 [ (elem ("3")); (elem ("9")); (elem ("17")) ]);
         (constr1 [ neutral; (elem ("13")); (elem ("2")) ]) ] in
   constr1 [ neutral; x0 ] = x0)
;;

testi
  (25)
  (let x0 =
     constr5
       [ (constr5 [ (elem ("13")); (elem ("15")); (elem ("8")) ]);
         (elem ("13")); (inv (elem ("15"))) ] in
   constr1 [ x0; neutral; neutral ] = constr1 [ x0; neutral ])
;;

testi
  (26)
  (let x0 =
     constr2
       [ (constr6 [ nil; (elem ("3")); neutral ]);
         (constr5 [ (elem ("17")); (elem ("12")); nil ]);
         (constr4 [ neutral; (elem ("16")); (elem ("19")) ]) ] in
   constr1 [ x0; neutral; neutral ] = constr1 [ x0; neutral ])
;;

testi
  (27)
  (let x0 = constr5 [ (inv (elem ("21"))); (elem ("13")); (elem ("20")) ] in
   constr1 [ x0; neutral; neutral ] = constr1 [ x0; neutral ])
;;

testi
  (28)
  (let x0 = elem ("14") in
   constr1 [ x0; neutral; neutral ] = constr1 [ x0; neutral ])
;;

testi
  (29)
  (let x0 =
     constr6
       [ (elem ("17")); (elem ("9"));
         (constr4 [ neutral; (elem ("4")); (elem ("11")) ]) ] in
   constr1 [ x0; neutral; neutral ] = constr1 [ x0; neutral ])
;;

testi
  (30)
  (let x0 =
     constr5
       [ (inv (elem ("45")));
         (constr1 [ neutral; (elem ("10")); (elem ("15")) ]);
         (constr6 [ (elem ("23")); neutral; (elem ("28")) ]) ] in
   let x1 = elem ("39") in
   constr1 [ x0; neutral; neutral; x1 ] = constr1 [ x0; x1 ])
;;

testi
  (31)
  (let x0 =
     constr5
       [ (constr6 [ (elem ("45")); nil; (elem ("12")) ]);
         (constr1 [ neutral; (elem ("10")); (elem ("15")) ]);
         (constr2 [ (elem ("29")); (elem ("26")); (elem ("32")) ]) ] in
   let x1 =
     constr4
       [ (constr3 [ (elem ("44")); (elem ("23")); nil ]);
         (constr5 [ (elem ("46")); (elem ("23")); (elem ("14")) ]);
         (constr2 [ (elem ("21")); (elem ("21")); neutral ]) ] in
   constr1 [ x0; neutral; neutral; x1 ] = constr1 [ x0; x1 ])
;;

testi
  (32)
  (let x0 =
     constr3
       [ (constr4 [ (elem ("42")); (elem ("9")); (elem ("22")) ]);
         (constr2 [ (elem ("13")); (elem ("35")); (elem ("40")) ]);
         (constr3 [ (elem ("20")); (elem ("39")); (elem ("34")) ]) ] in
   let x1 =
     constr6
       [ (constr1 [ (elem ("23")); (elem ("28")); (elem ("38")) ]);
         (inv (elem ("29")));
         (constr2 [ (elem ("7")); (elem ("28")); (elem ("1")) ]) ] in
   constr1 [ x0; neutral; neutral; x1 ] = constr1 [ x0; x1 ])
;;

testi
  (33)
  (let x0 =
     constr3
       [ (constr3 [ (elem ("33")); (elem ("32")); neutral ]); nil;
         (inv neutral) ] in
   let x1 =
     constr1
       [ (constr6 [ (elem ("12")); neutral; (elem ("8")) ]);
         (constr2 [ (elem ("35")); (elem ("38")); (elem ("1")) ]);
         (constr6 [ (elem ("47")); (elem ("13")); (elem ("48")) ]) ] in
   constr1 [ x0; neutral; neutral; x1 ] = constr1 [ x0; x1 ])
;;

testi
  (34)
  (let x0 = elem ("7") in
   let x1 = inv (constr5 [ (elem ("3")); neutral; (elem ("2")) ]) in
   constr1 [ x0; neutral; neutral; x1 ] = constr1 [ x0; x1 ])
;;

testi
  (35)
  (let x1 =
     constr5
       [ (inv (elem ("43")));
         (constr3 [ (elem ("45")); (elem ("0")); (elem ("47")) ]); (inv nil) ] in
   let x0 = elem ("41") in constr2 [ x1; x0; x0 ] = constr2 [ x1; x0 ])
;;

testi
  (36)
  (let x1 = elem ("11") in
   let x0 =
     constr3
       [ (constr5 [ (elem ("1")); (elem ("41")); neutral ]);
         (constr2 [ (elem ("28")); (elem ("35")); (elem ("9")) ]);
         (constr1 [ (elem ("40")); (elem ("37")); (elem ("46")) ]) ] in
   constr2 [ x1; x0; x0 ] = constr2 [ x1; x0 ])
;;

testi
  (37)
  (let x1 =
     constr3
       [ (constr5 [ (elem ("1")); (elem ("41")); neutral ]);
         (constr2 [ (elem ("28")); (elem ("35")); (elem ("9")) ]);
         (constr1 [ (elem ("40")); (elem ("37")); (elem ("46")) ]) ] in
   let x0 =
     constr2
       [ (constr5 [ (elem ("36")); neutral; (elem ("40")) ]);
         (constr1 [ (elem ("36")); (elem ("15")); (elem ("35")) ]);
         (constr5 [ (elem ("41")); (elem ("10")); (elem ("4")) ]) ] in
   constr2 [ x1; x0; x0 ] = constr2 [ x1; x0 ])
;;

testi
  (38)
  (let x1 =
     constr6
       [ (elem ("3")); (constr2 [ (elem ("6")); nil; (elem ("49")) ]);
         (constr2 [ nil; (elem ("40")); (elem ("24")) ]) ] in
   let x0 =
     constr5
       [ (constr5 [ (elem ("43")); neutral; (elem ("47")) ]);
         (constr5 [ (elem ("17")); (elem ("12")); (elem ("48")) ]);
         (constr3 [ (elem ("47")); (elem ("5")); (elem ("42")) ]) ] in
   constr2 [ x1; x0; x0 ] = constr2 [ x1; x0 ])
;;

testi
  (39)
  (let x1 =
     constr5
       [ (constr5 [ (elem ("43")); neutral; (elem ("47")) ]);
         (constr5 [ (elem ("17")); (elem ("12")); (elem ("48")) ]);
         (constr6 [ (elem ("31")); neutral; (elem ("29")) ]) ] in
   let x0 = constr6 [ (elem ("3")); nil; (elem ("13")) ] in
   constr2 [ x1; x0; x0 ] = constr2 [ x1; x0 ])
;;

testi
  (40)
  (let x0 =
     constr6
       [ (constr5 [ (elem ("41")); (elem ("38")); (elem ("2")) ]);
         (elem ("18")); (constr2 [ (elem ("54")); (elem ("68")); neutral ]) ] in
   let x1 =
     constr5
       [ (constr5 [ (elem ("40")); (elem ("54")); (elem ("37")) ]);
         (constr1 [ (elem ("2")); (elem ("24")); (elem ("6")) ]);
         (inv (elem ("51"))) ] in
   let x2 = elem ("53") in
   constr2 [ x0; x1; x1; x2 ] = constr2 [ x0; x1; x2 ])
;;

testi
  (41)
  (let x0 = inv (inv (elem ("16"))) in
   let x1 =
     constr1
       [ (constr4 [ (elem ("70")); (elem ("62")); (elem ("26")) ]);
         (constr1 [ (elem ("21")); (elem ("1")); (elem ("20")) ]);
         (constr5 [ (elem ("73")); (elem ("17")); (elem ("58")) ]) ] in
   let x2 =
     constr3
       [ (constr2 [ (elem ("62")); (elem ("51")); (elem ("29")) ]);
         (elem ("72")); (constr4 [ (elem ("69")); (elem ("29")); neutral ]) ] in
   constr2 [ x0; x1; x1; x2 ] = constr2 [ x0; x1; x2 ])
;;

testi
  (42)
  (let x0 =
     constr4
       [ (constr2 [ (elem ("69")); neutral; (elem ("51")) ]);
         (constr1 [ (elem ("60")); (elem ("65")); (elem ("8")) ]);
         (constr5 [ (elem ("49")); (elem ("67")); (elem ("5")) ]) ] in
   let x1 = inv (inv (elem ("39"))) in
   let x2 =
     constr6
       [ (constr5 [ (elem ("41")); (elem ("38")); (elem ("2")) ]);
         (constr1 [ (elem ("41")); (elem ("52")); (elem ("55")) ]);
         (constr2 [ (elem ("54")); (elem ("68")); neutral ]) ] in
   constr2 [ x0; x1; x1; x2 ] = constr2 [ x0; x1; x2 ])
;;

testi
  (43)
  (let x0 =
     constr3
       [ (constr6 [ (elem ("57")); (elem ("24")); (elem ("56")) ]);
         (constr3 [ (elem ("31")); nil; (elem ("0")) ]); (inv (elem ("45"))) ] in
   let x1 =
     constr1
       [ (constr2 [ neutral; nil; (elem ("65")) ]);
         (constr6 [ neutral; (elem ("42")); (elem ("1")) ]);
         (constr6 [ (elem ("24")); (elem ("36")); (elem ("6")) ]) ] in
   let x2 =
     constr4
       [ (constr6 [ nil; (elem ("6")); (elem ("17")) ]); (elem ("60"));
         (elem ("47")) ] in
   constr2 [ x0; x1; x1; x2 ] = constr2 [ x0; x1; x2 ])
;;

testi
  (44)
  (let x0 =
     constr1
       [ (constr4 [ (elem ("70")); (elem ("62")); (elem ("26")) ]);
         (constr1 [ (elem ("21")); (elem ("1")); (elem ("20")) ]);
         (constr5 [ (elem ("73")); (elem ("17")); (elem ("58")) ]) ] in
   let x1 =
     constr6
       [ (constr1 [ (elem ("9")); (elem ("19")); (elem ("9")) ]);
         (elem ("8"));
         (constr6 [ (elem ("11")); (elem ("27")); (elem ("57")) ]) ] in
   let x2 =
     constr4
       [ (constr2 [ (elem ("69")); neutral; (elem ("51")) ]);
         (constr1 [ (elem ("60")); (elem ("65")); (elem ("8")) ]);
         (constr5 [ (elem ("49")); (elem ("67")); (elem ("5")) ]) ] in
   constr2 [ x0; x1; x1; x2 ] = constr2 [ x0; x1; x2 ])
;;

testi
  (45)
  (let x0 =
     constr5
       [ (constr5 [ (elem ("42")); (elem ("71")); (elem ("43")) ]);
         (elem ("29"));
         (constr2 [ (elem ("22")); (elem ("3")); (elem ("33")) ]) ] in
   let x1 = inv (elem ("47")) in
   let x2 = elem ("52") in
   constr3 [ (constr3 [ x0; x1 ]); x2 ] = constr3 [ x0; x1; x2 ])
;;

testi
  (46)
  (let x0 = elem ("52") in
   let x1 =
     constr6
       [ (constr5 [ (elem ("63")); (elem ("20")); (elem ("48")) ]);
         (constr2 [ (elem ("51")); (elem ("38")); (elem ("16")) ]);
         (constr1 [ (elem ("5")); (elem ("46")); (elem ("13")) ]) ] in
   let x2 =
     constr5
       [ (constr6 [ (elem ("72")); (elem ("43")); (elem ("21")) ]);
         (elem ("72"));
         (constr6 [ (elem ("72")); (elem ("54")); (elem ("53")) ]) ] in
   constr3 [ (constr3 [ x0; x1 ]); x2 ] = constr3 [ x0; x1; x2 ])
;;

testi
  (47)
  (let x0 =
     constr6
       [ (constr6 [ (elem ("27")); nil; (elem ("62")) ]);
         (constr4 [ nil; (elem ("38")); (elem ("67")) ]);
         (constr5 [ (elem ("3")); (elem ("48")); (elem ("20")) ]) ] in
   let x1 =
     constr3
       [ (constr6 [ (elem ("70")); (elem ("25")); (elem ("58")) ]);
         (elem ("23")); (inv (elem ("54"))) ] in
   let x2 =
     constr1
       [ (constr6 [ (elem ("14")); (elem ("1")); (elem ("46")) ]);
         (inv (elem ("26")));
         (constr4 [ (elem ("40")); (elem ("63")); (elem ("50")) ]) ] in
   constr3 [ (constr3 [ x0; x1 ]); x2 ] = constr3 [ x0; x1; x2 ])
;;

testi
  (48)
  (let x0 =
     constr2
       [ (constr5 [ (elem ("7")); (elem ("73")); (elem ("58")) ]);
         (inv neutral); (inv (elem ("57"))) ] in
   let x1 = inv (constr6 [ (elem ("55")); (elem ("8")); (elem ("66")) ]) in
   let x2 =
     constr6
       [ (constr3 [ (elem ("58")); (elem ("56")); (elem ("36")) ]);
         (constr4 [ nil; (elem ("38")); (elem ("67")) ]); (elem ("0")) ] in
   constr3 [ (constr3 [ x0; x1 ]); x2 ] = constr3 [ x0; x1; x2 ])
;;

testi
  (49)
  (let x0 = inv (constr5 [ (elem ("18")); (elem ("23")); (elem ("19")) ]) in
   let x1 = elem ("19") in
   let x2 =
     constr6
       [ (constr3 [ (elem ("2")); (elem ("11")); (elem ("28")) ]);
         (constr3 [ neutral; (elem ("6")); (elem ("21")) ]);
         (constr5 [ (elem ("69")); (elem ("50")); (elem ("20")) ]) ] in
   constr3 [ (constr3 [ x0; x1 ]); x2 ] = constr3 [ x0; x1; x2 ])
;;

testi
  (50)
  (let x0 =
     constr5
       [ (elem ("43"));
         (constr6 [ (elem ("71")); (elem ("72")); (elem ("55")) ]);
         (constr6 [ (elem ("15")); (elem ("32")); (elem ("54")) ]) ] in
   let x1 = elem ("114") in
   let x2 =
     constr4
       [ (inv (elem ("117"))); (inv (elem ("109")));
         (constr4 [ (elem ("7")); (elem ("56")); (elem ("7")) ]) ] in
   let x3 = elem ("114") in
   let x4 = elem ("55") in
   constr3 [ x0; (constr3 [ x1; x2 ]); (constr3 [ x3; x4 ]) ] =
   constr3 [ x0; x1; x2; x3; x4 ])
;;

testi
  (51)
  (let x0 =
     constr1
       [ (constr1 [ neutral; (elem ("115")); (elem ("32")) ]);
         (elem ("109"));
         (constr5 [ (elem ("76")); (elem ("56")); (elem ("117")) ]) ] in
   let x1 =
     constr3
       [ (constr1 [ (elem ("95")); (elem ("108")); (elem ("35")) ]);
         (constr2 [ (elem ("122")); neutral; (elem ("111")) ]);
         (constr1 [ (elem ("24")); (elem ("32")); (elem ("71")) ]) ] in
   let x2 = elem ("34") in
   let x3 =
     constr3
       [ (inv (elem ("108")));
         (constr6 [ nil; (elem ("40")); (elem ("7")) ]);
         (constr2 [ (elem ("31")); (elem ("0")); (elem ("65")) ]) ] in
   let x4 =
     constr3
       [ (constr1 [ (elem ("110")); neutral; (elem ("2")) ]);
         (inv (elem ("1")));
         (constr3 [ (elem ("82")); (elem ("85")); (elem ("19")) ]) ] in
   constr3 [ x0; (constr3 [ x1; x2 ]); (constr3 [ x3; x4 ]) ] =
   constr3 [ x0; x1; x2; x3; x4 ])
;;

testi
  (52)
  (let x0 = inv (constr5 [ nil; (elem ("77")); (elem ("5")) ]) in
   let x1 =
     constr5
       [ (constr3 [ (elem ("46")); (elem ("120")); neutral ]);
         (constr5 [ (elem ("23")); (elem ("11")); (elem ("54")) ]);
         (constr3 [ (elem ("2")); (elem ("111")); neutral ]) ] in
   let x2 =
     constr4
       [ (elem ("80"));
         (constr3 [ (elem ("104")); (elem ("106")); (elem ("51")) ]);
         (constr2 [ (elem ("110")); (elem ("69")); (elem ("5")) ]) ] in
   let x3 =
     constr4
       [ (constr1 [ (elem ("37")); (elem ("72")); (elem ("71")) ]);
         (constr3 [ (elem ("75")); (elem ("108")); (elem ("51")) ]);
         (constr4 [ (elem ("7")); (elem ("56")); (elem ("7")) ]) ] in
   let x4 =
     constr5
       [ (constr1 [ (elem ("102")); (elem ("112")); (elem ("40")) ]);
         (constr6 [ (elem ("71")); (elem ("72")); (elem ("55")) ]);
         (constr4 [ (elem ("42")); (elem ("91")); (elem ("20")) ]) ] in
   constr3 [ x0; (constr3 [ x1; x2 ]); (constr3 [ x3; x4 ]) ] =
   constr3 [ x0; x1; x2; x3; x4 ])
;;

testi
  (53)
  (let x0 =
     constr4
       [ (constr3 [ (elem ("26")); (elem ("44")); (elem ("100")) ]);
         (constr2 [ (elem ("9")); (elem ("42")); (elem ("37")) ]);
         (constr6 [ (elem ("59")); (elem ("103")); (elem ("56")) ]) ] in
   let x1 =
     constr2
       [ (constr4 [ (elem ("10")); (elem ("61")); (elem ("83")) ]);
         (constr1 [ (elem ("113")); (elem ("41")); (elem ("38")) ]);
         (constr5 [ (elem ("30")); (elem ("106")); (elem ("107")) ]) ] in
   let x2 =
     constr6
       [ (inv (elem ("2")));
         (constr3 [ (elem ("25")); (elem ("92")); (elem ("103")) ]);
         (elem ("100")) ] in
   let x3 =
     constr1
       [ (constr2 [ (elem ("67")); (elem ("21")); (elem ("89")) ]);
         (elem ("109"));
         (constr5 [ (elem ("76")); (elem ("56")); (elem ("117")) ]) ] in
   let x4 =
     constr3
       [ (constr1 [ (elem ("95")); (elem ("108")); (elem ("35")) ]);
         (constr2 [ (elem ("122")); neutral; (elem ("111")) ]);
         (constr1 [ (elem ("24")); (elem ("32")); (elem ("71")) ]) ] in
   constr3 [ x0; (constr3 [ x1; x2 ]); (constr3 [ x3; x4 ]) ] =
   constr3 [ x0; x1; x2; x3; x4 ])
;;

testi
  (54)
  (let x0 =
     constr5
       [ (elem ("113"));
         (constr5 [ (elem ("23")); (elem ("11")); (elem ("54")) ]);
         (constr3 [ (elem ("34")); (elem ("50")); (elem ("87")) ]) ] in
   let x1 =
     constr3
       [ (constr4 [ (elem ("55")); (elem ("79")); (elem ("75")) ]);
         (constr4 [ (elem ("99")); (elem ("97")); (elem ("35")) ]);
         (elem ("10")) ] in
   let x2 = elem ("114") in
   let x3 =
     constr6
       [ (elem ("20"));
         (constr2 [ (elem ("114")); (elem ("10")); (elem ("64")) ]);
         (inv (elem ("4"))) ] in
   let x4 = inv (constr5 [ (elem ("124")); (elem ("8")); (elem ("85")) ]) in
   constr3 [ x0; (constr3 [ x1; x2 ]); (constr3 [ x3; x4 ]) ] =
   constr3 [ x0; x1; x2; x3; x4 ])
;;

testi
  (55)
  (let x0 =
     constr5
       [ (constr5 [ (elem ("93")); (elem ("35")); neutral ]);
         (constr6 [ (elem ("24")); (elem ("81")); (elem ("76")) ]);
         (constr3 [ (elem ("10")); (elem ("71")); (elem ("32")) ]) ] in
   let x1 =
     constr2
       [ (constr6 [ nil; (elem ("47")); (elem ("51")) ]);
         (constr1 [ (elem ("66")); (elem ("22")); (elem ("56")) ]);
         (constr1 [ (elem ("50")); (elem ("57")); (elem ("60")) ]) ] in
   let x2 =
     constr4
       [ (inv (elem ("67"))); (inv (elem ("99")));
         (constr5 [ neutral; (elem ("26")); nil ]) ] in
   let x3 =
     constr4
       [ (constr1 [ (elem ("32")); (elem ("3")); (elem ("20")) ]);
         (constr2 [ (elem ("80")); (elem ("38")); (elem ("69")) ]);
         (constr2 [ (elem ("0")); (elem ("37")); neutral ]) ] in
   constr3 [ (constr3 [ x0; x1; x2 ]); x3 ] = constr3 [ x0; x1; x2; x3 ])
;;

testi
  (56)
  (let x0 =
     constr3
       [ (constr6 [ (elem ("90")); neutral; (elem ("75")) ]);
         (constr3 [ (elem ("67")); (elem ("68")); (elem ("74")) ]);
         (inv neutral) ] in
   let x1 =
     constr5
       [ (constr4 [ (elem ("16")); (elem ("90")); (elem ("54")) ]);
         (constr2 [ (elem ("82")); (elem ("81")); (elem ("90")) ]);
         (constr1 [ (elem ("43")); neutral; (elem ("87")) ]) ] in
   let x2 = inv (elem ("90")) in
   let x3 = elem ("69") in
   constr3 [ (constr3 [ x0; x1; x2 ]); x3 ] = constr3 [ x0; x1; x2; x3 ])
;;

testi
  (57)
  (let x0 = elem ("45") in
   let x1 =
     constr5
       [ (constr3 [ (elem ("67")); (elem ("34")); (elem ("43")) ]);
         (elem ("5"));
         (constr2 [ (elem ("77")); (elem ("58")); (elem ("52")) ]) ] in
   let x2 = elem ("8") in
   let x3 =
     constr5
       [ (constr5 [ (elem ("93")); (elem ("35")); neutral ]);
         (constr2 [ neutral; (elem ("81")); (elem ("13")) ]);
         (inv (elem ("68"))) ] in
   constr3 [ (constr3 [ x0; x1; x2 ]); x3 ] = constr3 [ x0; x1; x2; x3 ])
;;

testi
  (58)
  (let x0 =
     constr5
       [ (constr1 [ (elem ("77")); (elem ("61")); (elem ("93")) ]);
         (constr3 [ (elem ("1")); nil; (elem ("19")) ]); (inv nil) ] in
   let x1 =
     constr6
       [ (constr6 [ (elem ("47")); (elem ("53")); (elem ("57")) ]);
         (constr2 [ (elem ("89")); (elem ("81")); (elem ("76")) ]);
         (inv (elem ("90"))) ] in
   let x2 =
     constr1
       [ (constr1 [ (elem ("52")); (elem ("14")); (elem ("94")) ]);
         (inv neutral); (elem ("59")) ] in
   let x3 =
     constr1
       [ (constr4 [ (elem ("15")); neutral; (elem ("32")) ]);
         (inv (elem ("42"))); (inv (elem ("27"))) ] in
   constr3 [ (constr3 [ x0; x1; x2 ]); x3 ] = constr3 [ x0; x1; x2; x3 ])
;;

testi
  (59)
  (let x0 =
     constr5
       [ (constr4 [ (elem ("16")); (elem ("90")); (elem ("54")) ]);
         (constr2 [ (elem ("82")); (elem ("81")); (elem ("90")) ]);
         (constr1 [ (elem ("43")); neutral; (elem ("87")) ]) ] in
   let x1 = nil in
   let x2 =
     constr1
       [ (constr3 [ neutral; (elem ("83")); (elem ("83")) ]);
         (constr3 [ (elem ("81")); (elem ("71")); neutral ]);
         (constr6 [ (elem ("71")); (elem ("30")); (elem ("63")) ]) ] in
   let x3 = elem ("71") in
   constr3 [ (constr3 [ x0; x1; x2 ]); x3 ] = constr3 [ x0; x1; x2; x3 ])
;;

testi
  (60)
  (let x1 = inv (constr6 [ (elem ("23")); (elem ("25")); neutral ]) in
   let x0 =
     constr2
       [ (constr5 [ (elem ("44")); (elem ("13")); (elem ("5")) ]); (inv nil);
         (elem ("0")) ] in
   constr3 [ x1; x0; x0 ] = constr3 [ x1; x0 ])
;;

testi
  (61)
  (let x1 = inv (constr4 [ (elem ("38")); (elem ("31")); (elem ("9")) ]) in
   let x0 =
     constr5
       [ (constr1 [ (elem ("39")); (elem ("0")); (elem ("12")) ]);
         (elem ("45"));
         (constr6 [ (elem ("33")); (elem ("34")); (elem ("10")) ]) ] in
   constr3 [ x1; x0; x0 ] = constr3 [ x1; x0 ])
;;

testi
  (62)
  (let x1 =
     constr4
       [ (constr1 [ (elem ("47")); (elem ("41")); (elem ("31")) ]);
         (constr4 [ neutral; (elem ("35")); (elem ("28")) ]);
         (constr3 [ (elem ("27")); (elem ("42")); (elem ("49")) ]) ] in
   let x0 = inv (constr1 [ (elem ("48")); (elem ("31")); (elem ("26")) ]) in
   constr3 [ x1; x0; x0 ] = constr3 [ x1; x0 ])
;;

testi
  (63)
  (let x1 =
     constr1
       [ (constr1 [ nil; nil; (elem ("8")) ]);
         (constr3 [ (elem ("39")); (elem ("19")); (elem ("10")) ]);
         (constr3 [ (elem ("19")); neutral; (elem ("33")) ]) ] in
   let x0 = inv (constr1 [ (elem ("48")); (elem ("31")); (elem ("26")) ]) in
   constr3 [ x1; x0; x0 ] = constr3 [ x1; x0 ])
;;

testi
  (64)
  (let x1 = constr6 [ (elem ("13")); (elem ("39")); (elem ("46")) ] in
   let x0 = inv (constr1 [ (elem ("48")); (elem ("31")); (elem ("26")) ]) in
   constr3 [ x1; x0; x0 ] = constr3 [ x1; x0 ])
;;

testi
  (65)
  (let x0 = elem ("37") in
   let x1 = elem ("40") in
   let x2 =
     constr4
       [ (elem ("3"));
         (constr6 [ (elem ("9")); (elem ("47")); (elem ("53")) ]);
         (constr5 [ (elem ("5")); (elem ("63")); (elem ("64")) ]) ] in
   constr3 [ x0; x1; x1; x2 ] = constr3 [ x0; x1; x2 ])
;;

testi
  (66)
  (let x0 = elem ("26") in
   let x1 = elem ("21") in
   let x2 = inv (constr3 [ (elem ("55")); (elem ("37")); (elem ("23")) ]) in
   constr3 [ x0; x1; x1; x2 ] = constr3 [ x0; x1; x2 ])
;;

testi
  (67)
  (let x0 =
     constr3
       [ (elem ("62")); (constr2 [ (elem ("61")); nil; (elem ("14")) ]);
         (constr6 [ (elem ("30")); neutral; (elem ("22")) ]) ] in
   let x1 =
     constr4
       [ (elem ("56")); (constr4 [ (elem ("3")); (elem ("58")); nil ]);
         (constr3 [ (elem ("9")); (elem ("52")); (elem ("68")) ]) ] in
   let x2 =
     constr3
       [ (elem ("62")); (constr3 [ (elem ("63")); nil; nil ]);
         (inv (elem ("57"))) ] in
   constr3 [ x0; x1; x1; x2 ] = constr3 [ x0; x1; x2 ])
;;

testi
  (68)
  (let x0 =
     constr2
       [ (constr6 [ (elem ("58")); (elem ("6")); (elem ("42")) ]);
         (constr1 [ (elem ("36")); (elem ("53")); (elem ("67")) ]);
         (constr1 [ (elem ("54")); (elem ("1")); (elem ("43")) ]) ] in
   let x1 = inv (elem ("6")) in
   let x2 = inv (inv (elem ("71"))) in
   constr3 [ x0; x1; x1; x2 ] = constr3 [ x0; x1; x2 ])
;;

testi
  (69)
  (let x0 = elem ("40") in
   let x1 =
     constr2
       [ (constr3 [ (elem ("43")); neutral; (elem ("43")) ]);
         (constr4 [ nil; neutral; (elem ("17")) ]);
         (constr4 [ (elem ("4")); (elem ("22")); (elem ("4")) ]) ] in
   let x2 =
     constr2
       [ (elem ("63")); (constr4 [ nil; neutral; (elem ("17")) ]);
         (constr2 [ nil; (elem ("6")); (elem ("15")) ]) ] in
   constr3 [ x0; x1; x1; x2 ] = constr3 [ x0; x1; x2 ])
;;

testi
  (70)
  (let x0 = inv (constr4 [ (elem ("16")); neutral; (elem ("23")) ]) in
   constr4 [ x0; x0 ] = nil)
;;

testi
  (71)
  (let x0 =
     constr6
       [ (inv (elem ("9"))); (inv (elem ("19")));
         (constr2 [ (elem ("23")); (elem ("24")); (elem ("21")) ]) ] in
   constr4 [ x0; x0 ] = nil)
;;

testi
  (72)
  (let x0 =
     constr6
       [ (constr5 [ (elem ("5")); (elem ("6")); (elem ("20")) ]);
         (constr1 [ (elem ("0")); neutral; neutral ]);
         (constr2 [ (elem ("23")); (elem ("24")); (elem ("21")) ]) ] in
   constr4 [ x0; x0 ] = nil)
;;

testi
  (73)
  (let x0 = inv (constr5 [ nil; (elem ("20")); (elem ("12")) ]) in
   constr4 [ x0; x0 ] = nil)
;;

testi
  (74)
  (let x0 =
     constr1
       [ (constr2 [ (elem ("2")); (elem ("18")); (elem ("5")) ]); neutral;
         (constr3 [ (elem ("15")); (elem ("10")); (elem ("11")) ]) ] in
   constr4 [ x0; x0 ] = nil)
;;

testi
  (75)
  (let x0 = elem ("36") in
   let x1 =
     constr3
       [ (constr1 [ (elem ("7")); (elem ("26")); (elem ("29")) ]);
         (constr3 [ (elem ("70")); (elem ("74")); (elem ("6")) ]);
         (constr3 [ (elem ("63")); nil; (elem ("60")) ]) ] in
   let x2 = inv (inv (elem ("24"))) in
   constr4 [ x0; x1; x1; x2 ] = constr4 [ x0; nil; x2 ])
;;

testi
  (76)
  (let x0 = inv (inv (elem ("24"))) in
   let x1 =
     constr3
       [ (constr2 [ (elem ("15")); (elem ("3")); (elem ("19")) ]);
         (constr1 [ neutral; (elem ("10")); (elem ("16")) ]);
         (constr5 [ (elem ("9")); (elem ("0")); (elem ("46")) ]) ] in
   let x2 =
     constr2
       [ (constr6 [ (elem ("23")); (elem ("34")); (elem ("25")) ]);
         (constr3 [ (elem ("2")); (elem ("74")); (elem ("19")) ]);
         (constr2 [ (elem ("39")); (elem ("21")); (elem ("27")) ]) ] in
   constr4 [ x0; x1; x1; x2 ] = constr4 [ x0; nil; x2 ])
;;

testi
  (77)
  (let x0 =
     constr6
       [ (constr2 [ (elem ("1")); (elem ("71")); (elem ("59")) ]);
         (constr3 [ (elem ("5")); (elem ("73")); (elem ("20")) ]);
         (constr4 [ (elem ("24")); (elem ("28")); (elem ("7")) ]) ] in
   let x1 =
     constr4
       [ (constr6 [ (elem ("64")); (elem ("59")); (elem ("0")) ]);
         (constr2 [ (elem ("74")); (elem ("50")); (elem ("7")) ]);
         (inv (elem ("40"))) ] in
   let x2 =
     constr4
       [ (constr5 [ (elem ("36")); (elem ("69")); (elem ("13")) ]);
         (constr5 [ (elem ("30")); (elem ("64")); (elem ("32")) ]);
         (constr1 [ (elem ("3")); (elem ("31")); (elem ("11")) ]) ] in
   constr4 [ x0; x1; x1; x2 ] = constr4 [ x0; nil; x2 ])
;;

testi
  (78)
  (let x0 =
     constr2
       [ (constr6 [ (elem ("23")); (elem ("34")); (elem ("25")) ]);
         (constr6 [ (elem ("23")); (elem ("36")); (elem ("2")) ]);
         (constr4 [ (elem ("36")); (elem ("26")); (elem ("62")) ]) ] in
   let x1 =
     constr6
       [ (constr2 [ (elem ("1")); (elem ("71")); (elem ("59")) ]);
         (constr1 [ (elem ("62")); (elem ("70")); (elem ("20")) ]);
         (constr4 [ (elem ("15")); (elem ("60")); (elem ("3")) ]) ] in
   let x2 =
     constr5
       [ (constr5 [ neutral; (elem ("28")); (elem ("60")) ]); (elem ("55"));
         (constr1 [ (elem ("57")); (elem ("42")); (elem ("21")) ]) ] in
   constr4 [ x0; x1; x1; x2 ] = constr4 [ x0; nil; x2 ])
;;

testi
  (79)
  (let x0 =
     constr4
       [ (constr6 [ (elem ("64")); (elem ("59")); (elem ("0")) ]);
         (constr2 [ (elem ("74")); (elem ("50")); (elem ("7")) ]);
         (inv (elem ("40"))) ] in
   let x1 = inv (constr1 [ nil; (elem ("33")); (elem ("4")) ]) in
   let x2 =
     constr1
       [ (constr1 [ (elem ("12")); (elem ("66")); (elem ("31")) ]);
         (constr6 [ (elem ("47")); (elem ("4")); nil ]);
         (constr4 [ (elem ("37")); nil; (elem ("57")) ]) ] in
   constr4 [ x0; x1; x1; x2 ] = constr4 [ x0; nil; x2 ])
;;

testi
  (80)
  (let x0 =
     constr3
       [ (elem ("31"));
         (constr6 [ (elem ("62")); (elem ("9")); (elem ("71")) ]);
         (constr2 [ (elem ("61")); neutral; (elem ("10")) ]) ] in
   let x1 =
     constr6
       [ (constr3 [ (elem ("25")); (elem ("13")); (elem ("56")) ]);
         (constr5 [ (elem ("5")); (elem ("56")); (elem ("37")) ]);
         (constr5 [ (elem ("66")); (elem ("71")); (elem ("37")) ]) ] in
   let x2 =
     constr1
       [ (constr5 [ (elem ("9")); (elem ("8")); (elem ("12")) ]);
         (constr3 [ (elem ("48")); neutral; (elem ("61")) ]);
         (constr3 [ (elem ("66")); (elem ("38")); (elem ("14")) ]) ] in
   constr5 [ (constr5 [ x0; x1 ]); x2 ] = constr5 [ x0; x1; x2 ])
;;

testi
  (81)
  (let x0 =
     constr6
       [ (constr5 [ (elem ("73")); (elem ("25")); (elem ("7")) ]);
         (constr4 [ (elem ("15")); (elem ("69")); (elem ("47")) ]);
         (constr2 [ (elem ("28")); (elem ("19")); (elem ("20")) ]) ] in
   let x1 = elem ("40") in
   let x2 =
     constr4
       [ (elem ("37")); (constr2 [ (elem ("65")); neutral; (elem ("69")) ]);
         (inv (elem ("73"))) ] in
   constr5 [ (constr5 [ x0; x1 ]); x2 ] = constr5 [ x0; x1; x2 ])
;;

testi
  (82)
  (let x0 =
     constr4
       [ (constr2 [ (elem ("26")); (elem ("65")); (elem ("61")) ]);
         (constr5 [ (elem ("74")); (elem ("67")); (elem ("71")) ]);
         (inv neutral) ] in
   let x1 =
     constr5
       [ (constr1 [ (elem ("31")); (elem ("62")); (elem ("36")) ]);
         (constr4 [ (elem ("4")); nil; (elem ("66")) ]);
         (constr1 [ (elem ("11")); (elem ("33")); (elem ("36")) ]) ] in
   let x2 =
     constr5
       [ (constr1 [ (elem ("66")); (elem ("7")); (elem ("58")) ]);
         (constr2 [ (elem ("42")); (elem ("11")); (elem ("3")) ]);
         (constr3 [ (elem ("20")); (elem ("16")); (elem ("67")) ]) ] in
   constr5 [ (constr5 [ x0; x1 ]); x2 ] = constr5 [ x0; x1; x2 ])
;;

testi
  (83)
  (let x0 =
     constr3
       [ (constr5 [ (elem ("61")); (elem ("7")); (elem ("5")) ]);
         (constr3 [ neutral; (elem ("27")); (elem ("66")) ]);
         (constr6 [ (elem ("38")); nil; (elem ("24")) ]) ] in
   let x1 =
     constr2
       [ (inv (elem ("16")));
         (constr4 [ (elem ("72")); (elem ("51")); (elem ("15")) ]);
         (constr4 [ (elem ("23")); (elem ("44")); (elem ("1")) ]) ] in
   let x2 =
     constr2
       [ (constr2 [ (elem ("7")); (elem ("72")); (elem ("4")) ]); nil;
         (constr2 [ (elem ("71")); (elem ("72")); (elem ("31")) ]) ] in
   constr5 [ (constr5 [ x0; x1 ]); x2 ] = constr5 [ x0; x1; x2 ])
;;

testi
  (84)
  (let x0 =
     constr1
       [ (constr2 [ (elem ("33")); (elem ("65")); (elem ("51")) ]);
         (constr5 [ (elem ("70")); (elem ("23")); (elem ("28")) ]);
         (elem ("41")) ] in
   let x1 = elem ("1") in
   let x2 =
     constr5
       [ (constr1 [ (elem ("31")); (elem ("62")); (elem ("36")) ]);
         (constr4 [ (elem ("4")); nil; (elem ("66")) ]);
         (constr1 [ (elem ("11")); (elem ("33")); (elem ("36")) ]) ] in
   constr5 [ (constr5 [ x0; x1 ]); x2 ] = constr5 [ x0; x1; x2 ])
;;

testi
  (85)
  (let x0 = inv (elem ("37")) in
   let x1 =
     constr2
       [ (inv (elem ("118"))); (elem ("103"));
         (constr2 [ (elem ("5")); (elem ("114")); (elem ("70")) ]) ] in
   let x2 =
     constr5
       [ (constr2 [ (elem ("52")); (elem ("29")); (elem ("73")) ]);
         (constr4 [ (elem ("78")); (elem ("104")); (elem ("48")) ]);
         (constr6 [ (elem ("36")); (elem ("98")); (elem ("35")) ]) ] in
   let x3 =
     constr3
       [ (constr2 [ (elem ("105")); (elem ("68")); (elem ("33")) ]);
         (constr4 [ (elem ("2")); (elem ("47")); neutral ]); (elem ("51")) ] in
   let x4 =
     constr1
       [ (inv (elem ("71")));
         (constr1 [ (elem ("71")); (elem ("95")); (elem ("53")) ]);
         (constr2 [ (elem ("75")); (elem ("13")); (elem ("51")) ]) ] in
   constr5 [ x0; (constr5 [ x1; x2 ]); (constr5 [ x3; x4 ]) ] =
   constr5 [ x0; x1; x2; x3; x4 ])
;;

testi
  (86)
  (let x0 =
     constr1
       [ (constr2 [ (elem ("99")); (elem ("17")); (elem ("37")) ]);
         (constr1 [ (elem ("71")); (elem ("50")); nil ]);
         (constr4 [ (elem ("29")); (elem ("34")); (elem ("35")) ]) ] in
   let x1 =
     constr6
       [ (constr4 [ nil; (elem ("58")); (elem ("97")) ]);
         (inv (elem ("116")));
         (constr4 [ (elem ("83")); (elem ("4")); (elem ("0")) ]) ] in
   let x2 =
     constr6
       [ (constr4 [ (elem ("32")); (elem ("78")); (elem ("36")) ]);
         (inv (elem ("116"))); (inv (elem ("102"))) ] in
   let x3 =
     constr2
       [ (constr6 [ (elem ("122")); (elem ("29")); (elem ("56")) ]);
         (constr5 [ (elem ("77")); (elem ("83")); (elem ("103")) ]);
         (constr5 [ (elem ("49")); (elem ("67")); (elem ("23")) ]) ] in
   let x4 =
     constr6
       [ (elem ("1"));
         (constr5 [ (elem ("0")); (elem ("74")); (elem ("79")) ]);
         (constr6 [ (elem ("64")); (elem ("57")); (elem ("65")) ]) ] in
   constr5 [ x0; (constr5 [ x1; x2 ]); (constr5 [ x3; x4 ]) ] =
   constr5 [ x0; x1; x2; x3; x4 ])
;;

testi
  (87)
  (let x0 =
     constr3
       [ (constr4 [ (elem ("75")); (elem ("90")); nil ]);
         (constr4 [ (elem ("46")); (elem ("27")); (elem ("0")) ]);
         (constr1 [ (elem ("58")); (elem ("6")); (elem ("28")) ]) ] in
   let x1 =
     constr3
       [ (elem ("40"));
         (constr1 [ (elem ("47")); (elem ("79")); (elem ("80")) ]);
         (constr5 [ (elem ("37")); (elem ("82")); (elem ("26")) ]) ] in
   let x2 =
     constr4
       [ (constr4 [ (elem ("80")); (elem ("13")); (elem ("35")) ]);
         (inv (elem ("96"))); (elem ("114")) ] in
   let x3 =
     constr5
       [ (inv (elem ("29")));
         (constr1 [ (elem ("16")); (elem ("36")); (elem ("57")) ]);
         (elem ("50")) ] in
   let x4 =
     constr4
       [ (constr2 [ (elem ("12")); (elem ("20")); (elem ("29")) ]);
         (constr4 [ (elem ("101")); (elem ("47")); (elem ("73")) ]);
         (constr1 [ (elem ("18")); (elem ("118")); (elem ("63")) ]) ] in
   constr5 [ x0; (constr5 [ x1; x2 ]); (constr5 [ x3; x4 ]) ] =
   constr5 [ x0; x1; x2; x3; x4 ])
;;

testi
  (88)
  (let x0 = inv (constr5 [ (elem ("24")); (elem ("20")); (elem ("43")) ]) in
   let x1 =
     constr2
       [ (constr1 [ (elem ("35")); (elem ("103")); (elem ("29")) ]);
         (elem ("103")); (elem ("87")) ] in
   let x2 =
     constr6
       [ (constr4 [ (elem ("32")); (elem ("78")); (elem ("36")) ]);
         (constr1 [ (elem ("80")); (elem ("86")); (elem ("104")) ]);
         (constr6 [ (elem ("55")); (elem ("110")); (elem ("92")) ]) ] in
   let x3 =
     constr5
       [ (inv (elem ("15")));
         (constr4 [ (elem ("17")); (elem ("4")); (elem ("23")) ]);
         (constr2 [ (elem ("119")); (elem ("85")); (elem ("30")) ]) ] in
   let x4 = elem ("46") in
   constr5 [ x0; (constr5 [ x1; x2 ]); (constr5 [ x3; x4 ]) ] =
   constr5 [ x0; x1; x2; x3; x4 ])
;;

testi
  (89)
  (let x0 =
     constr1
       [ (constr5 [ (elem ("93")); (elem ("23")); (elem ("72")) ]);
         (constr5 [ (elem ("60")); (elem ("70")); (elem ("68")) ]);
         (constr5 [ (elem ("65")); (elem ("5")); (elem ("23")) ]) ] in
   let x1 = inv (constr5 [ (elem ("24")); (elem ("20")); (elem ("43")) ]) in
   let x2 =
     constr3
       [ (constr5 [ (elem ("117")); (elem ("15")); (elem ("25")) ]);
         (constr4 [ (elem ("17")); (elem ("11")); (elem ("30")) ]);
         (constr2 [ (elem ("68")); (elem ("96")); (elem ("86")) ]) ] in
   let x3 =
     constr5
       [ (inv (elem ("118")));
         (constr1 [ (elem ("22")); (elem ("15")); (elem ("85")) ]);
         (constr1 [ (elem ("104")); (elem ("25")); (elem ("121")) ]) ] in
   let x4 = elem ("57") in
   constr5 [ x0; (constr5 [ x1; x2 ]); (constr5 [ x3; x4 ]) ] =
   constr5 [ x0; x1; x2; x3; x4 ])
;;

testi
  (90)
  (let x0 = elem ("27") in
   let x1 =
     constr6
       [ (constr4 [ (elem ("41")); (elem ("33")); (elem ("53")) ]);
         (constr4 [ (elem ("34")); (elem ("48")); (elem ("16")) ]);
         (constr6 [ (elem ("49")); (elem ("91")); (elem ("5")) ]) ] in
   let x2 =
     constr6
       [ (constr4 [ (elem ("41")); (elem ("33")); (elem ("53")) ]);
         (constr4 [ (elem ("34")); (elem ("48")); (elem ("16")) ]);
         (constr6 [ (elem ("49")); (elem ("91")); (elem ("5")) ]) ] in
   let x3 =
     constr4
       [ (constr2 [ (elem ("86")); (elem ("32")); (elem ("52")) ]);
         (inv (elem ("8")));
         (constr3 [ (elem ("33")); (elem ("3")); (elem ("74")) ]) ] in
   constr5 [ (constr5 [ x0; x1; x2 ]); x3 ] = constr5 [ x0; x1; x2; x3 ])
;;

testi
  (91)
  (let x0 = elem ("37") in
   let x1 =
     constr6
       [ (constr4 [ (elem ("41")); (elem ("33")); (elem ("53")) ]);
         (constr4 [ (elem ("34")); (elem ("48")); (elem ("16")) ]);
         (constr6 [ (elem ("49")); (elem ("91")); (elem ("5")) ]) ] in
   let x2 =
     constr1
       [ (constr1 [ (elem ("34")); (elem ("95")); (elem ("25")) ]);
         (constr1 [ (elem ("39")); (elem ("90")); (elem ("79")) ]);
         (inv (elem ("10"))) ] in
   let x3 =
     constr1
       [ (inv (elem ("24")));
         (constr4 [ (elem ("45")); (elem ("47")); (elem ("75")) ]);
         (constr6 [ (elem ("49")); (elem ("69")); (elem ("14")) ]) ] in
   constr5 [ (constr5 [ x0; x1; x2 ]); x3 ] = constr5 [ x0; x1; x2; x3 ])
;;

testi
  (92)
  (let x0 = elem ("42") in
   let x1 =
     constr3
       [ (constr4 [ (elem ("46")); nil; (elem ("48")) ]);
         (constr2 [ nil; (elem ("58")); (elem ("7")) ]);
         (constr1 [ (elem ("9")); (elem ("55")); (elem ("80")) ]) ] in
   let x2 =
     constr6
       [ (constr4 [ (elem ("41")); (elem ("33")); (elem ("53")) ]);
         (constr4 [ (elem ("34")); (elem ("48")); (elem ("16")) ]);
         (constr6 [ (elem ("49")); (elem ("91")); (elem ("5")) ]) ] in
   let x3 = elem ("46") in
   constr5 [ (constr5 [ x0; x1; x2 ]); x3 ] = constr5 [ x0; x1; x2; x3 ])
;;

testi
  (93)
  (let x0 =
     constr6
       [ (constr6 [ (elem ("9")); (elem ("23")); (elem ("64")) ]);
         (constr1 [ (elem ("73")); (elem ("74")); neutral ]); (elem ("6")) ] in
   let x1 =
     constr1
       [ (constr6 [ (elem ("2")); (elem ("43")); (elem ("80")) ]);
         (constr5 [ neutral; (elem ("19")); (elem ("82")) ]);
         (constr1 [ (elem ("62")); (elem ("52")); nil ]) ] in
   let x2 =
     constr2
       [ (constr2 [ (elem ("51")); (elem ("97")); (elem ("89")) ]);
         (constr4 [ (elem ("46")); (elem ("15")); (elem ("30")) ]);
         (constr5 [ (elem ("67")); (elem ("13")); (elem ("21")) ]) ] in
   let x3 =
     constr3
       [ (constr2 [ (elem ("67")); (elem ("50")); (elem ("32")) ]);
         (constr3 [ (elem ("47")); nil; (elem ("81")) ]);
         (constr2 [ (elem ("89")); (elem ("0")); (elem ("26")) ]) ] in
   constr5 [ (constr5 [ x0; x1; x2 ]); x3 ] = constr5 [ x0; x1; x2; x3 ])
;;

testi
  (94)
  (let x0 =
     constr3
       [ (constr5 [ (elem ("27")); (elem ("38")); (elem ("78")) ]);
         (constr1 [ (elem ("26")); neutral; (elem ("51")) ]); neutral ] in
   let x1 =
     constr4
       [ (constr2 [ (elem ("86")); (elem ("32")); (elem ("52")) ]);
         (inv (elem ("8")));
         (constr3 [ (elem ("33")); (elem ("3")); (elem ("74")) ]) ] in
   let x2 =
     constr1
       [ (constr1 [ (elem ("78")); (elem ("21")); (elem ("81")) ]);
         (constr5 [ (elem ("25")); (elem ("44")); (elem ("39")) ]);
         (constr4 [ (elem ("1")); neutral; (elem ("54")) ]) ] in
   let x3 = elem ("58") in
   constr5 [ (constr5 [ x0; x1; x2 ]); x3 ] = constr5 [ x0; x1; x2; x3 ])
;;

testi
  (95)
  (let x0 =
     constr5
       [ (constr5 [ neutral; (elem ("9")); (elem ("20")) ]);
         (constr2 [ neutral; (elem ("23")); (elem ("23")) ]);
         (constr4 [ (elem ("21")); (elem ("6")); (elem ("11")) ]) ] in
   constr5 [ x0; x0 ] = nil)
;;

testi
  (96)
  (let x0 =
     constr3
       [ neutral; (constr5 [ (elem ("6")); neutral; nil ]);
         (constr6 [ nil; nil; (elem ("10")) ]) ] in
   constr5 [ x0; x0 ] = nil)
;;

testi
  (97)
  (let x0 =
     constr2
       [ (constr4 [ (elem ("15")); neutral; (elem ("4")) ]);
         (constr4 [ (elem ("15")); (elem ("13")); (elem ("23")) ]);
         (constr2 [ neutral; neutral; (elem ("11")) ]) ] in
   constr5 [ x0; x0 ] = nil)
;;

testi
  (98)
  (let x0 = inv (constr3 [ (elem ("21")); nil; (elem ("16")) ]) in
   constr5 [ x0; x0 ] = nil)
;;

testi
  (99)
  (let x0 =
     constr4
       [ (constr4 [ nil; nil; (elem ("7")) ]); (elem ("18")); (inv nil) ] in
   constr5 [ x0; x0 ] = nil)
;;

testi
  (100)
  (let x0 =
     constr5
       [ (constr3 [ (elem ("14")); (elem ("19")); (elem ("36")) ]);
         (constr4 [ (elem ("61")); (elem ("47")); (elem ("16")) ]);
         (constr3 [ (elem ("53")); (elem ("49")); (elem ("24")) ]) ] in
   let x1 =
     constr5
       [ (constr6 [ (elem ("8")); (elem ("73")); neutral ]);
         (constr1 [ (elem ("14")); (elem ("46")); (elem ("7")) ]);
         (inv (elem ("13"))) ] in
   let x2 = nil in constr5 [ x0; x1; x1; x2 ] = constr5 [ x0; nil; x2 ])
;;

testi
  (101)
  (let x0 =
     constr3
       [ (elem ("19"));
         (constr1 [ (elem ("14")); (elem ("56")); (elem ("67")) ]);
         (constr3 [ (elem ("60")); (elem ("40")); (elem ("62")) ]) ] in
   let x1 =
     constr3
       [ (elem ("19"));
         (constr1 [ (elem ("14")); (elem ("56")); (elem ("67")) ]);
         (constr3 [ (elem ("60")); (elem ("40")); (elem ("62")) ]) ] in
   let x2 =
     constr2
       [ (constr2 [ (elem ("10")); nil; (elem ("44")) ]);
         (constr2 [ nil; (elem ("51")); (elem ("8")) ]);
         (constr2 [ (elem ("70")); (elem ("54")); (elem ("48")) ]) ] in
   constr5 [ x0; x1; x1; x2 ] = constr5 [ x0; nil; x2 ])
;;

testi
  (102)
  (let x0 =
     constr4
       [ (constr6 [ (elem ("33")); (elem ("23")); (elem ("4")) ]);
         (constr4 [ neutral; (elem ("43")); (elem ("6")) ]);
         (constr1 [ (elem ("52")); (elem ("34")); (elem ("28")) ]) ] in
   let x1 =
     constr4
       [ (constr1 [ (elem ("60")); (elem ("70")); (elem ("73")) ]);
         (constr2 [ nil; (elem ("32")); (elem ("61")) ]);
         (constr2 [ (elem ("57")); nil; (elem ("43")) ]) ] in
   let x2 =
     constr2
       [ (inv (elem ("67")));
         (constr4 [ (elem ("8")); (elem ("56")); (elem ("61")) ]);
         (constr2 [ (elem ("70")); (elem ("54")); (elem ("48")) ]) ] in
   constr5 [ x0; x1; x1; x2 ] = constr5 [ x0; nil; x2 ])
;;

testi
  (103)
  (let x0 = elem ("47") in
   let x1 = elem ("47") in
   let x2 =
     constr3
       [ (constr6 [ (elem ("32")); (elem ("16")); (elem ("36")) ]);
         (constr3 [ (elem ("5")); (elem ("55")); neutral ]);
         (inv (elem ("36"))) ] in
   constr5 [ x0; x1; x1; x2 ] = constr5 [ x0; nil; x2 ])
;;

testi
  (104)
  (let x0 =
     constr1
       [ (elem ("27")); (inv (elem ("66")));
         (constr6 [ (elem ("66")); (elem ("6")); (elem ("56")) ]) ] in
   let x1 =
     constr1
       [ (constr1 [ (elem ("11")); (elem ("54")); (elem ("29")) ]);
         (constr3 [ (elem ("74")); (elem ("10")); (elem ("0")) ]);
         (constr3 [ (elem ("23")); (elem ("11")); (elem ("6")) ]) ] in
   let x2 =
     constr4
       [ (constr1 [ (elem ("60")); (elem ("70")); (elem ("73")) ]);
         (constr2 [ nil; (elem ("32")); (elem ("61")) ]);
         (constr2 [ (elem ("57")); nil; (elem ("43")) ]) ] in
   constr5 [ x0; x1; x1; x2 ] = constr5 [ x0; nil; x2 ])
;;

testi
  (105)
  (let x0 = elem ("12") in
   let x1 = elem ("35") in constr6 [ x0; neutral; x1 ] = constr6 [ x0; x1 ])
;;

testi
  (106)
  (let x0 =
     constr6
       [ (constr5 [ (elem ("2")); (elem ("32")); (elem ("37")) ]);
         (inv (elem ("19")));
         (constr5 [ (elem ("38")); (elem ("42")); (elem ("32")) ]) ] in
   let x1 =
     constr6
       [ (constr5 [ (elem ("2")); (elem ("32")); (elem ("37")) ]);
         (inv (elem ("19")));
         (constr5 [ (elem ("38")); (elem ("42")); (elem ("32")) ]) ] in
   constr6 [ x0; neutral; x1 ] = constr6 [ x0; x1 ])
;;

testi
  (107)
  (let x0 =
     constr5
       [ (constr4 [ (elem ("12")); nil; neutral ]);
         (constr5 [ (elem ("11")); nil; (elem ("27")) ]);
         (constr1 [ (elem ("30")); (elem ("24")); (elem ("38")) ]) ] in
   let x1 = inv (elem ("30")) in
   constr6 [ x0; neutral; x1 ] = constr6 [ x0; x1 ])
;;

testi
  (108)
  (let x0 =
     constr3
       [ (constr5 [ (elem ("22")); (elem ("0")); nil ]);
         (constr2 [ (elem ("5")); (elem ("10")); (elem ("23")) ]);
         (constr2 [ (elem ("45")); (elem ("27")); (elem ("34")) ]) ] in
   let x1 =
     constr6
       [ (constr5 [ (elem ("2")); (elem ("24")); neutral ]);
         (inv (elem ("19")));
         (constr5 [ (elem ("38")); (elem ("42")); (elem ("32")) ]) ] in
   constr6 [ x0; neutral; x1 ] = constr6 [ x0; x1 ])
;;

testi
  (109)
  (let x0 =
     constr3
       [ (constr5 [ (elem ("16")); (elem ("36")); (elem ("20")) ]);
         (constr5 [ (elem ("44")); (elem ("8")); (elem ("18")) ]);
         (elem ("46")) ] in
   let x1 =
     constr1
       [ (inv (elem ("44"))); (inv (elem ("11"))); (inv (elem ("38"))) ] in
   constr6 [ x0; neutral; x1 ] = constr6 [ x0; x1 ])
;;

testi (110) (let x0 = nil in constr6 [ neutral; x0 ] = x0)
;;

testi
  (111)
  (let x0 =
     constr1
       [ (constr1 [ (elem ("23")); (elem ("0")); (elem ("22")) ]);
         (inv (elem ("6"))); (elem ("24")) ] in
   constr6 [ neutral; x0 ] = x0)
;;

testi
  (112)
  (let x0 =
     constr3
       [ (constr2 [ (elem ("5")); nil; neutral ]); (elem ("0"));
         (constr5 [ (elem ("21")); (elem ("23")); (elem ("21")) ]) ] in
   constr6 [ neutral; x0 ] = x0)
;;

testi
  (113)
  (let x0 = inv (constr3 [ (elem ("24")); (elem ("12")); neutral ]) in
   constr6 [ neutral; x0 ] = x0)
;;

testi
  (114)
  (let x0 =
     constr2
       [ (constr6 [ neutral; neutral; neutral ]);
         (constr4 [ (elem ("8")); neutral; (elem ("16")) ]); (elem ("5")) ] in
   constr6 [ neutral; x0 ] = x0)
;;

testi
  (115)
  (let x0 =
     constr6
       [ (constr4 [ nil; (elem ("17")); (elem ("5")) ]);
         (constr6 [ nil; (elem ("0")); (elem ("0")) ]);
         (constr4 [ (elem ("14")); (elem ("15")); nil ]) ] in
   constr6 [ x0; neutral; neutral ] = x0)
;;

testi
  (116)
  (let x0 =
     constr5
       [ (constr2 [ (elem ("20")); neutral; (elem ("16")) ]);
         (inv (elem ("23"))); (constr5 [ neutral; neutral; (elem ("17")) ]) ] in
   constr6 [ x0; neutral; neutral ] = x0)
;;

testi
  (117)
  (let x0 =
     constr1
       [ (constr6 [ (elem ("14")); nil; nil ]);
         (constr1 [ (elem ("19")); neutral; (elem ("6")) ]); (elem ("16")) ] in
   constr6 [ x0; neutral; neutral ] = x0)
;;

testi
  (118)
  (let x0 =
     constr3
       [ (constr2 [ (elem ("21")); (elem ("10")); (elem ("1")) ]); nil;
         (constr4 [ (elem ("21")); neutral; (elem ("16")) ]) ] in
   constr6 [ x0; neutral; neutral ] = x0)
;;

testi
  (119)
  (let x0 =
     constr3
       [ (constr2 [ (elem ("21")); (elem ("10")); (elem ("1")) ]); nil;
         (constr4 [ (elem ("21")); neutral; (elem ("16")) ]) ] in
   constr6 [ x0; neutral; neutral ] = x0)
;;

