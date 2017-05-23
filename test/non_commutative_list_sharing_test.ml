open Non_commutative_list_sharing
;;

open Gentest
;;

testing ("Non_commutative_list_sharing (automatic) - seed: 853413018")
;;

testi
  (0)
  (let x0 = elem ("5") in
   let x1 =
     constr1
       [ (elem ("30"));
         (constr1 [ (elem ("64")); (elem ("71")); (elem ("21")) ]);
         (inv (elem ("48"))) ] in
   let x2 =
     constr5
       [ (constr2 [ (elem ("63")); (elem ("0")); (elem ("36")) ]);
         (constr5 [ (elem ("10")); (elem ("51")); (elem ("31")) ]);
         (constr1 [ (elem ("42")); (elem ("42")); neutral ]) ] in
   constr1 [ (constr1 [ x0; x1 ]); x2 ] = constr1 [ x0; x1; x2 ])
;;

testi
  (1)
  (let x0 =
     constr4
       [ (constr5 [ (elem ("40")); (elem ("21")); (elem ("49")) ]);
         (inv (elem ("15"))); (inv (elem ("59"))) ] in
   let x1 =
     constr5
       [ (elem ("61"));
         (constr4 [ (elem ("26")); (elem ("64")); (elem ("44")) ]);
         (inv (elem ("56"))) ] in
   let x2 =
     constr5
       [ (constr4 [ (elem ("62")); (elem ("29")); (elem ("64")) ]);
         (constr5 [ (elem ("71")); (elem ("51")); (elem ("18")) ]);
         (constr4 [ (elem ("3")); (elem ("47")); (elem ("34")) ]) ] in
   constr1 [ (constr1 [ x0; x1 ]); x2 ] = constr1 [ x0; x1; x2 ])
;;

testi
  (2)
  (let x0 =
     constr6
       [ (constr3 [ neutral; (elem ("31")); (elem ("10")) ]);
         (constr2 [ (elem ("38")); (elem ("29")); (elem ("69")) ]);
         (constr3 [ (elem ("71")); (elem ("19")); (elem ("18")) ]) ] in
   let x1 = elem ("3") in
   let x2 =
     constr5
       [ (elem ("61"));
         (constr4 [ (elem ("26")); (elem ("64")); (elem ("44")) ]);
         (inv (elem ("56"))) ] in
   constr1 [ (constr1 [ x0; x1 ]); x2 ] = constr1 [ x0; x1; x2 ])
;;

testi
  (3)
  (let x0 = elem ("3") in
   let x1 =
     constr2
       [ (constr3 [ (elem ("43")); (elem ("43")); (elem ("54")) ]);
         (inv neutral); (constr1 [ nil; (elem ("33")); nil ]) ] in
   let x2 = inv (constr1 [ (elem ("13")); (elem ("27")); (elem ("26")) ]) in
   constr1 [ (constr1 [ x0; x1 ]); x2 ] = constr1 [ x0; x1; x2 ])
;;

testi
  (4)
  (let x0 =
     constr6
       [ (constr4 [ neutral; neutral; (elem ("63")) ]);
         (constr1 [ (elem ("56")); (elem ("57")); (elem ("59")) ]);
         (constr3 [ (elem ("6")); (elem ("29")); (elem ("18")) ]) ] in
   let x1 =
     constr6
       [ (constr3 [ neutral; (elem ("31")); (elem ("10")) ]);
         (constr1 [ (elem ("35")); (elem ("72")); (elem ("50")) ]);
         (constr2 [ (elem ("39")); (elem ("35")); (elem ("2")) ]) ] in
   let x2 = inv (constr3 [ (elem ("15")); (elem ("73")); (elem ("8")) ]) in
   constr1 [ (constr1 [ x0; x1 ]); x2 ] = constr1 [ x0; x1; x2 ])
;;

testi
  (5)
  (let x0 =
     constr5
       [ (elem ("87"));
         (constr1 [ (elem ("76")); (elem ("109")); (elem ("49")) ]);
         (constr6 [ (elem ("96")); (elem ("103")); (elem ("77")) ]) ] in
   let x1 =
     constr1
       [ (elem ("49"));
         (constr4 [ (elem ("70")); (elem ("120")); (elem ("72")) ]);
         (constr1 [ (elem ("95")); (elem ("88")); (elem ("77")) ]) ] in
   let x2 =
     constr2
       [ (elem ("68"));
         (constr5 [ (elem ("79")); (elem ("121")); (elem ("49")) ]);
         (constr6 [ (elem ("51")); (elem ("69")); (elem ("110")) ]) ] in
   let x3 =
     constr1
       [ (constr2 [ (elem ("21")); (elem ("46")); (elem ("27")) ]);
         (constr1 [ (elem ("112")); (elem ("68")); neutral ]);
         (constr5 [ (elem ("7")); (elem ("10")); (elem ("83")) ]) ] in
   let x4 =
     constr2
       [ (constr1 [ (elem ("91")); (elem ("89")); (elem ("105")) ]);
         (elem ("111"));
         (constr4 [ (elem ("21")); (elem ("55")); (elem ("11")) ]) ] in
   constr1 [ x0; (constr1 [ x1; x2 ]); (constr1 [ x3; x4 ]) ] =
   constr1 [ x0; x1; x2; x3; x4 ])
;;

testi
  (6)
  (let x0 =
     constr6
       [ (constr5 [ (elem ("86")); (elem ("58")); (elem ("65")) ]);
         (constr3 [ (elem ("104")); (elem ("63")); neutral ]);
         (constr3 [ (elem ("82")); (elem ("31")); (elem ("87")) ]) ] in
   let x1 =
     constr4
       [ (constr6 [ (elem ("63")); (elem ("108")); (elem ("105")) ]);
         (constr1 [ (elem ("84")); nil; (elem ("93")) ]);
         (inv (elem ("107"))) ] in
   let x2 = elem ("59") in
   let x3 =
     constr1
       [ (constr1 [ (elem ("30")); (elem ("85")); (elem ("99")) ]);
         (constr5 [ (elem ("94")); (elem ("61")); (elem ("51")) ]);
         (constr1 [ (elem ("95")); (elem ("24")); (elem ("70")) ]) ] in
   let x4 =
     constr1
       [ (inv (elem ("85")));
         (constr4 [ (elem ("100")); (elem ("22")); (elem ("9")) ]);
         (elem ("91")) ] in
   constr1 [ x0; (constr1 [ x1; x2 ]); (constr1 [ x3; x4 ]) ] =
   constr1 [ x0; x1; x2; x3; x4 ])
;;

testi
  (7)
  (let x0 = elem ("59") in
   let x1 =
     constr1
       [ (constr6 [ (elem ("32")); (elem ("19")); (elem ("40")) ]);
         (constr1 [ (elem ("112")); (elem ("68")); neutral ]);
         (constr1 [ (elem ("52")); (elem ("42")); (elem ("108")) ]) ] in
   let x2 = inv (constr1 [ (elem ("10")); (elem ("84")); (elem ("96")) ]) in
   let x3 =
     constr1
       [ (constr1 [ (elem ("77")); (elem ("33")); (elem ("45")) ]);
         (inv (elem ("46")));
         (constr1 [ (elem ("52")); (elem ("42")); (elem ("108")) ]) ] in
   let x4 =
     constr2
       [ (constr1 [ (elem ("91")); (elem ("89")); (elem ("105")) ]);
         (elem ("111"));
         (constr4 [ (elem ("21")); (elem ("55")); (elem ("11")) ]) ] in
   constr1 [ x0; (constr1 [ x1; x2 ]); (constr1 [ x3; x4 ]) ] =
   constr1 [ x0; x1; x2; x3; x4 ])
;;

testi
  (8)
  (let x0 =
     constr2
       [ (constr4 [ (elem ("16")); (elem ("98")); (elem ("22")) ]);
         (constr4 [ (elem ("73")); (elem ("86")); (elem ("38")) ]);
         (constr2 [ (elem ("19")); (elem ("47")); (elem ("119")) ]) ] in
   let x1 = elem ("18") in
   let x2 = inv (inv (elem ("108"))) in
   let x3 = inv (constr1 [ (elem ("10")); (elem ("84")); (elem ("96")) ]) in
   let x4 =
     constr5
       [ (constr5 [ (elem ("67")); (elem ("32")); (elem ("10")) ]);
         (constr3 [ (elem ("29")); (elem ("55")); neutral ]);
         (constr5 [ (elem ("109")); (elem ("41")); (elem ("94")) ]) ] in
   constr1 [ x0; (constr1 [ x1; x2 ]); (constr1 [ x3; x4 ]) ] =
   constr1 [ x0; x1; x2; x3; x4 ])
;;

testi
  (9)
  (let x0 =
     constr1
       [ (constr2 [ (elem ("21")); (elem ("46")); (elem ("27")) ]);
         (constr1 [ (elem ("112")); (elem ("68")); neutral ]);
         (constr5 [ (elem ("7")); (elem ("10")); (elem ("83")) ]) ] in
   let x1 = inv (constr4 [ (elem ("94")); (elem ("47")); (elem ("50")) ]) in
   let x2 =
     constr1
       [ (constr5 [ (elem ("12")); (elem ("39")); (elem ("44")) ]);
         (inv (elem ("46"))); (inv (elem ("23"))) ] in
   let x3 =
     constr4
       [ (constr5 [ (elem ("105")); (elem ("33")); (elem ("62")) ]);
         (constr5 [ (elem ("85")); (elem ("42")); (elem ("85")) ]);
         (elem ("121")) ] in
   let x4 =
     constr1
       [ (constr6 [ (elem ("32")); (elem ("19")); (elem ("40")) ]);
         (constr1 [ (elem ("112")); (elem ("68")); neutral ]);
         (constr1 [ (elem ("52")); (elem ("42")); (elem ("108")) ]) ] in
   constr1 [ x0; (constr1 [ x1; x2 ]); (constr1 [ x3; x4 ]) ] =
   constr1 [ x0; x1; x2; x3; x4 ])
;;

testi
  (10)
  (let x0 = elem ("41") in
   let x1 =
     constr1
       [ (constr3 [ (elem ("9")); (elem ("15")); (elem ("36")) ]);
         (constr4 [ (elem ("31")); (elem ("40")); (elem ("87")) ]);
         (constr5 [ (elem ("76")); (elem ("70")); (elem ("43")) ]) ] in
   let x2 =
     constr6
       [ (constr1 [ (elem ("84")); (elem ("6")); (elem ("56")) ]);
         (elem ("58")); (inv (elem ("43"))) ] in
   let x3 =
     constr3
       [ (constr4 [ (elem ("20")); (elem ("49")); (elem ("77")) ]);
         (elem ("58"));
         (constr1 [ (elem ("88")); (elem ("40")); (elem ("64")) ]) ] in
   constr1 [ (constr1 [ x0; x1; x2 ]); x3 ] = constr1 [ x0; x1; x2; x3 ])
;;

testi
  (11)
  (let x0 = inv (constr5 [ (elem ("71")); (elem ("88")); (elem ("72")) ]) in
   let x1 =
     constr1 [ (inv (elem ("22"))); (inv (elem ("34"))); (inv neutral) ] in
   let x2 =
     constr3
       [ (inv (elem ("42")));
         (constr3 [ (elem ("50")); (elem ("66")); (elem ("71")) ]);
         (constr2 [ (elem ("4")); (elem ("68")); (elem ("44")) ]) ] in
   let x3 = elem ("10") in
   constr1 [ (constr1 [ x0; x1; x2 ]); x3 ] = constr1 [ x0; x1; x2; x3 ])
;;

testi
  (12)
  (let x0 = elem ("71") in
   let x1 =
     constr1
       [ (elem ("63"));
         (constr4 [ (elem ("31")); (elem ("40")); (elem ("87")) ]);
         (constr1 [ (elem ("90")); (elem ("40")); (elem ("77")) ]) ] in
   let x2 =
     constr1 [ (inv (elem ("65"))); (inv (elem ("35"))); (elem ("46")) ] in
   let x3 =
     constr1
       [ neutral; (constr4 [ (elem ("31")); (elem ("40")); (elem ("87")) ]);
         (constr5 [ (elem ("24")); (elem ("11")); (elem ("28")) ]) ] in
   constr1 [ (constr1 [ x0; x1; x2 ]); x3 ] = constr1 [ x0; x1; x2; x3 ])
;;

testi
  (13)
  (let x0 = inv (constr1 [ (elem ("78")); (elem ("91")); (elem ("98")) ]) in
   let x1 =
     constr4
       [ (constr2 [ (elem ("35")); neutral; (elem ("27")) ]);
         (constr3 [ (elem ("93")); (elem ("86")); (elem ("2")) ]);
         (constr6 [ (elem ("7")); (elem ("47")); (elem ("1")) ]) ] in
   let x2 =
     constr1
       [ (inv (elem ("65")));
         (constr6 [ (elem ("23")); neutral; (elem ("79")) ]);
         (inv (elem ("19"))) ] in
   let x3 = inv (constr6 [ (elem ("20")); (elem ("81")); (elem ("49")) ]) in
   constr1 [ (constr1 [ x0; x1; x2 ]); x3 ] = constr1 [ x0; x1; x2; x3 ])
;;

testi
  (14)
  (let x0 =
     constr6
       [ (constr1 [ (elem ("84")); (elem ("6")); (elem ("56")) ]);
         (elem ("58")); (inv (elem ("43"))) ] in
   let x1 = elem ("23") in
   let x2 =
     constr4
       [ (constr3 [ (elem ("6")); (elem ("43")); (elem ("61")) ]);
         (constr3 [ (elem ("24")); (elem ("87")); (elem ("11")) ]);
         (constr6 [ (elem ("33")); (elem ("71")); (elem ("11")) ]) ] in
   let x3 =
     constr1
       [ (constr2 [ (elem ("5")); (elem ("43")); neutral ]);
         (constr5 [ (elem ("30")); (elem ("48")); (elem ("50")) ]);
         (constr1 [ (elem ("27")); (elem ("40")); (elem ("63")) ]) ] in
   constr1 [ (constr1 [ x0; x1; x2 ]); x3 ] = constr1 [ x0; x1; x2; x3 ])
;;

testi
  (15)
  (let x0 =
     constr4
       [ (constr1 [ (elem ("44")); (elem ("14")); nil ]);
         (constr2 [ nil; (elem ("24")); neutral ]);
         (constr5 [ (elem ("46")); (elem ("37")); (elem ("34")) ]) ] in
   let x1 =
     constr6
       [ (constr1 [ (elem ("39")); (elem ("34")); (elem ("31")) ]);
         (constr4 [ (elem ("20")); (elem ("44")); (elem ("29")) ]);
         (constr2 [ (elem ("30")); (elem ("6")); (elem ("33")) ]) ] in
   constr1 [ x0; neutral; x1 ] = constr1 [ x0; x1 ])
;;

testi
  (16)
  (let x0 =
     constr2
       [ (constr3 [ (elem ("0")); (elem ("23")); (elem ("37")) ]);
         (constr2 [ (elem ("10")); (elem ("46")); (elem ("32")) ]);
         (constr2 [ (elem ("47")); (elem ("37")); (elem ("31")) ]) ] in
   let x1 =
     constr1
       [ (constr1 [ (elem ("6")); (elem ("17")); nil ]);
         (constr5 [ (elem ("49")); (elem ("41")); (elem ("27")) ]);
         (elem ("44")) ] in
   constr1 [ x0; neutral; x1 ] = constr1 [ x0; x1 ])
;;

testi
  (17)
  (let x0 =
     constr4
       [ (constr4 [ (elem ("24")); (elem ("30")); (elem ("17")) ]);
         (constr4 [ (elem ("19")); (elem ("10")); nil ]);
         (constr5 [ (elem ("30")); (elem ("43")); (elem ("27")) ]) ] in
   let x1 = inv (inv (elem ("39"))) in
   constr1 [ x0; neutral; x1 ] = constr1 [ x0; x1 ])
;;

testi
  (18)
  (let x0 =
     constr2
       [ (elem ("2")); (elem ("19"));
         (constr2 [ (elem ("47")); (elem ("37")); (elem ("31")) ]) ] in
   let x1 =
     constr5
       [ (constr4 [ neutral; nil; (elem ("49")) ]);
         (constr4 [ neutral; (elem ("8")); (elem ("5")) ]);
         (constr4 [ (elem ("34")); (elem ("22")); (elem ("29")) ]) ] in
   constr1 [ x0; neutral; x1 ] = constr1 [ x0; x1 ])
;;

testi
  (19)
  (let x0 =
     constr1
       [ (constr1 [ (elem ("36")); (elem ("37")); (elem ("47")) ]);
         (constr2 [ (elem ("36")); (elem ("7")); neutral ]);
         (constr2 [ (elem ("17")); neutral; neutral ]) ] in
   let x1 =
     constr1
       [ (constr6 [ neutral; (elem ("48")); (elem ("21")) ]);
         (inv (elem ("17")));
         (constr5 [ (elem ("15")); (elem ("8")); (elem ("28")) ]) ] in
   constr1 [ x0; neutral; x1 ] = constr1 [ x0; x1 ])
;;

testi
  (20)
  (let x0 = inv (constr1 [ neutral; neutral; (elem ("16")) ]) in
   constr1 [ neutral; x0 ] = x0)
;;

testi
  (21)
  (let x0 =
     constr1
       [ (constr3 [ (elem ("24")); (elem ("12")); nil ]);
         (constr1 [ (elem ("9")); (elem ("10")); (elem ("5")) ]);
         (constr3 [ neutral; (elem ("11")); (elem ("4")) ]) ] in
   constr1 [ neutral; x0 ] = x0)
;;

testi
  (22)
  (let x0 =
     constr4
       [ (constr3 [ (elem ("12")); nil; neutral ]);
         (constr6 [ nil; neutral; neutral ]); (elem ("16")) ] in
   constr1 [ neutral; x0 ] = x0)
;;

testi
  (23)
  (let x0 =
     constr6
       [ neutral; (constr5 [ (elem ("0")); (elem ("12")); neutral ]);
         (constr1 [ (elem ("1")); neutral; (elem ("7")) ]) ] in
   constr1 [ neutral; x0 ] = x0)
;;

testi
  (24)
  (let x0 =
     constr2
       [ (constr5 [ (elem ("10")); neutral; neutral ]);
         (constr2 [ (elem ("20")); (elem ("7")); neutral ]);
         (constr4 [ (elem ("23")); (elem ("10")); (elem ("8")) ]) ] in
   constr1 [ neutral; x0 ] = x0)
;;

testi
  (25)
  (let x0 =
     constr2
       [ (constr3 [ (elem ("22")); (elem ("11")); (elem ("3")) ]);
         (constr6 [ (elem ("6")); (elem ("9")); (elem ("14")) ]);
         (constr2 [ (elem ("12")); (elem ("19")); (elem ("13")) ]) ] in
   constr1 [ x0; neutral; neutral ] = constr1 [ x0; neutral ])
;;

testi
  (26)
  (let x0 = elem ("23") in
   constr1 [ x0; neutral; neutral ] = constr1 [ x0; neutral ])
;;

testi
  (27)
  (let x0 =
     constr2
       [ (elem ("1"));
         (constr6 [ (elem ("6")); (elem ("9")); (elem ("14")) ]);
         (constr4 [ nil; (elem ("18")); (elem ("21")) ]) ] in
   constr1 [ x0; neutral; neutral ] = constr1 [ x0; neutral ])
;;

testi
  (28)
  (let x0 =
     constr2
       [ (inv nil); (constr1 [ (elem ("22")); (elem ("2")); (elem ("14")) ]);
         (elem ("7")) ] in
   constr1 [ x0; neutral; neutral ] = constr1 [ x0; neutral ])
;;

testi
  (29)
  (let x0 =
     constr5
       [ (elem ("22")); (constr6 [ neutral; (elem ("21")); (elem ("21")) ]);
         (elem ("1")) ] in
   constr1 [ x0; neutral; neutral ] = constr1 [ x0; neutral ])
;;

testi
  (30)
  (let x0 =
     constr1
       [ (constr5 [ (elem ("17")); (elem ("29")); (elem ("28")) ]);
         (constr6 [ (elem ("4")); (elem ("32")); (elem ("5")) ]);
         (constr6 [ (elem ("45")); nil; (elem ("38")) ]) ] in
   let x1 =
     constr1
       [ (inv neutral); (constr2 [ neutral; (elem ("28")); (elem ("29")) ]);
         (elem ("39")) ] in
   constr1 [ x0; neutral; neutral; x1 ] = constr1 [ x0; x1 ])
;;

testi
  (31)
  (let x0 = inv (constr5 [ (elem ("47")); neutral; (elem ("28")) ]) in
   let x1 =
     constr4
       [ (constr4 [ (elem ("9")); (elem ("33")); (elem ("16")) ]);
         (constr5 [ (elem ("17")); (elem ("0")); (elem ("0")) ]);
         (constr6 [ (elem ("12")); (elem ("49")); (elem ("25")) ]) ] in
   constr1 [ x0; neutral; neutral; x1 ] = constr1 [ x0; x1 ])
;;

testi
  (32)
  (let x0 =
     constr3
       [ (constr2 [ (elem ("4")); (elem ("44")); (elem ("14")) ]);
         (constr5 [ (elem ("48")); (elem ("34")); neutral ]);
         (constr2 [ (elem ("42")); (elem ("28")); neutral ]) ] in
   let x1 =
     constr4
       [ (constr2 [ (elem ("46")); nil; (elem ("38")) ]);
         (constr5 [ (elem ("17")); (elem ("0")); (elem ("0")) ]);
         (constr5 [ neutral; (elem ("8")); (elem ("41")) ]) ] in
   constr1 [ x0; neutral; neutral; x1 ] = constr1 [ x0; x1 ])
;;

testi
  (33)
  (let x0 =
     constr6
       [ (constr5 [ (elem ("6")); (elem ("9")); (elem ("42")) ]);
         (constr4 [ (elem ("5")); (elem ("3")); (elem ("20")) ]);
         (inv neutral) ] in
   let x1 =
     constr5
       [ (constr5 [ (elem ("6")); (elem ("25")); (elem ("32")) ]);
         (constr3 [ (elem ("34")); (elem ("13")); nil ]);
         (constr4 [ nil; (elem ("32")); (elem ("13")) ]) ] in
   constr1 [ x0; neutral; neutral; x1 ] = constr1 [ x0; x1 ])
;;

testi
  (34)
  (let x0 =
     constr2
       [ (constr3 [ (elem ("35")); (elem ("29")); (elem ("16")) ]); neutral;
         (elem ("10")) ] in
   let x1 =
     constr6
       [ (inv (elem ("16")));
         (constr6 [ (elem ("13")); (elem ("5")); (elem ("27")) ]);
         (inv neutral) ] in
   constr1 [ x0; neutral; neutral; x1 ] = constr1 [ x0; x1 ])
;;

testi
  (35)
  (let x1 =
     constr6
       [ (constr4 [ (elem ("44")); (elem ("43")); neutral ]);
         (constr2 [ nil; (elem ("6")); (elem ("6")) ]);
         (constr5 [ (elem ("6")); (elem ("15")); (elem ("28")) ]) ] in
   let x0 =
     constr1
       [ (constr1 [ (elem ("34")); (elem ("49")); neutral ]);
         (constr5 [ (elem ("45")); (elem ("13")); (elem ("20")) ]);
         (constr3 [ (elem ("19")); (elem ("21")); (elem ("3")) ]) ] in
   constr2 [ x1; x0; x0 ] = constr2 [ x1; x0 ])
;;

testi
  (36)
  (let x1 = constr5 [ (elem ("7")); (elem ("13")); (elem ("17")) ] in
   let x0 =
     constr1
       [ (constr6 [ (elem ("0")); (elem ("44")); (elem ("45")) ]);
         (constr5 [ (elem ("45")); (elem ("13")); (elem ("20")) ]);
         (constr6 [ nil; neutral; (elem ("38")) ]) ] in
   constr2 [ x1; x0; x0 ] = constr2 [ x1; x0 ])
;;

testi
  (37)
  (let x1 = inv (constr5 [ (elem ("1")); (elem ("36")); (elem ("45")) ]) in
   let x0 =
     constr6
       [ (inv (elem ("25")));
         (constr5 [ (elem ("32")); (elem ("30")); (elem ("41")) ]);
         (constr6 [ (elem ("2")); (elem ("12")); (elem ("27")) ]) ] in
   constr2 [ x1; x0; x0 ] = constr2 [ x1; x0 ])
;;

testi
  (38)
  (let x1 = inv (constr1 [ (elem ("20")); (elem ("19")); (elem ("1")) ]) in
   let x0 =
     constr4
       [ (constr1 [ (elem ("0")); (elem ("1")); neutral ]);
         (inv (elem ("12")));
         (constr2 [ (elem ("14")); (elem ("23")); (elem ("35")) ]) ] in
   constr2 [ x1; x0; x0 ] = constr2 [ x1; x0 ])
;;

testi
  (39)
  (let x1 =
     constr4
       [ (constr6 [ (elem ("22")); (elem ("10")); (elem ("17")) ]);
         (constr6 [ (elem ("15")); (elem ("35")); nil ]); (inv (elem ("36"))) ] in
   let x0 = inv (inv (elem ("22"))) in
   constr2 [ x1; x0; x0 ] = constr2 [ x1; x0 ])
;;

testi
  (40)
  (let x0 =
     constr5
       [ (constr6 [ (elem ("37")); (elem ("14")); (elem ("43")) ]);
         (constr6 [ (elem ("4")); (elem ("14")); (elem ("14")) ]);
         (elem ("42")) ] in
   let x1 =
     constr1
       [ (constr1 [ nil; (elem ("57")); (elem ("40")) ]);
         (constr2 [ (elem ("22")); (elem ("42")); (elem ("59")) ]);
         (constr5 [ neutral; (elem ("74")); (elem ("71")) ]) ] in
   let x2 =
     constr4
       [ (constr1 [ (elem ("36")); (elem ("50")); (elem ("20")) ]);
         (constr2 [ (elem ("53")); (elem ("57")); (elem ("16")) ]);
         (constr1 [ (elem ("35")); nil; (elem ("17")) ]) ] in
   constr2 [ x0; x1; x1; x2 ] = constr2 [ x0; x1; x2 ])
;;

testi
  (41)
  (let x0 = inv (constr3 [ (elem ("61")); neutral; (elem ("43")) ]) in
   let x1 = inv (constr1 [ (elem ("62")); (elem ("54")); (elem ("62")) ]) in
   let x2 =
     constr3
       [ (constr5 [ (elem ("12")); (elem ("47")); (elem ("35")) ]);
         (constr4 [ (elem ("1")); (elem ("35")); (elem ("20")) ]);
         (inv (elem ("47"))) ] in
   constr2 [ x0; x1; x1; x2 ] = constr2 [ x0; x1; x2 ])
;;

testi
  (42)
  (let x0 =
     constr5
       [ (constr6 [ (elem ("37")); (elem ("14")); (elem ("43")) ]);
         (constr6 [ (elem ("4")); (elem ("14")); (elem ("14")) ]);
         (elem ("42")) ] in
   let x1 = inv (elem ("14")) in
   let x2 =
     constr2
       [ (constr3 [ (elem ("2")); (elem ("57")); nil ]);
         (constr1 [ (elem ("11")); (elem ("72")); (elem ("32")) ]);
         (inv (elem ("27"))) ] in
   constr2 [ x0; x1; x1; x2 ] = constr2 [ x0; x1; x2 ])
;;

testi
  (43)
  (let x0 = neutral in
   let x1 =
     constr6
       [ (constr2 [ (elem ("62")); (elem ("74")); (elem ("17")) ]);
         (constr6 [ (elem ("74")); (elem ("7")); nil ]);
         (constr4 [ (elem ("57")); (elem ("27")); (elem ("71")) ]) ] in
   let x2 = inv (constr5 [ (elem ("46")); (elem ("52")); nil ]) in
   constr2 [ x0; x1; x1; x2 ] = constr2 [ x0; x1; x2 ])
;;

testi
  (44)
  (let x0 =
     constr6
       [ (constr2 [ (elem ("62")); (elem ("74")); (elem ("17")) ]);
         (constr6 [ (elem ("74")); (elem ("7")); nil ]);
         (constr4 [ (elem ("57")); (elem ("27")); (elem ("71")) ]) ] in
   let x1 =
     constr2
       [ (constr6 [ (elem ("57")); (elem ("66")); nil ]);
         (constr5 [ (elem ("43")); (elem ("58")); (elem ("12")) ]); nil ] in
   let x2 = elem ("15") in
   constr2 [ x0; x1; x1; x2 ] = constr2 [ x0; x1; x2 ])
;;

testi
  (45)
  (let x0 = inv (constr6 [ (elem ("1")); (elem ("53")); (elem ("9")) ]) in
   let x1 =
     constr2
       [ (constr2 [ (elem ("6")); (elem ("62")); (elem ("7")) ]);
         (constr5 [ (elem ("73")); (elem ("10")); neutral ]);
         (constr6 [ (elem ("56")); (elem ("24")); (elem ("48")) ]) ] in
   let x2 =
     constr6
       [ (elem ("41")); (elem ("63"));
         (constr3 [ (elem ("67")); (elem ("31")); (elem ("64")) ]) ] in
   constr3 [ (constr3 [ x0; x1 ]); x2 ] = constr3 [ x0; x1; x2 ])
;;

testi
  (46)
  (let x0 =
     constr3
       [ (constr1 [ (elem ("71")); (elem ("17")); (elem ("71")) ]);
         (elem ("54")); (inv (elem ("33"))) ] in
   let x1 =
     constr6
       [ (elem ("41")); (elem ("63"));
         (constr3 [ (elem ("67")); (elem ("31")); (elem ("64")) ]) ] in
   let x2 = elem ("33") in
   constr3 [ (constr3 [ x0; x1 ]); x2 ] = constr3 [ x0; x1; x2 ])
;;

testi
  (47)
  (let x0 =
     constr6
       [ (constr3 [ (elem ("63")); (elem ("33")); neutral ]);
         (constr5 [ (elem ("47")); (elem ("4")); (elem ("6")) ]);
         (constr2 [ (elem ("57")); (elem ("41")); (elem ("64")) ]) ] in
   let x1 = elem ("55") in
   let x2 = elem ("33") in
   constr3 [ (constr3 [ x0; x1 ]); x2 ] = constr3 [ x0; x1; x2 ])
;;

testi
  (48)
  (let x0 = elem ("70") in
   let x1 =
     constr1
       [ (constr5 [ (elem ("22")); neutral; (elem ("38")) ]);
         (constr1 [ (elem ("43")); (elem ("53")); neutral ]);
         (constr5 [ (elem ("36")); (elem ("72")); (elem ("39")) ]) ] in
   let x2 =
     constr2
       [ (constr2 [ (elem ("6")); (elem ("62")); (elem ("7")) ]); (inv nil);
         (constr6 [ (elem ("56")); (elem ("24")); (elem ("48")) ]) ] in
   constr3 [ (constr3 [ x0; x1 ]); x2 ] = constr3 [ x0; x1; x2 ])
;;

testi
  (49)
  (let x0 =
     constr2
       [ (constr5 [ (elem ("65")); (elem ("73")); neutral ]);
         (constr6 [ (elem ("12")); (elem ("62")); (elem ("35")) ]);
         (inv (elem ("7"))) ] in
   let x1 =
     constr6
       [ (elem ("41")); (elem ("63"));
         (constr3 [ (elem ("67")); (elem ("31")); (elem ("64")) ]) ] in
   let x2 =
     constr2
       [ (constr5 [ (elem ("65")); (elem ("73")); neutral ]);
         (constr6 [ (elem ("12")); (elem ("62")); (elem ("35")) ]);
         (inv (elem ("7"))) ] in
   constr3 [ (constr3 [ x0; x1 ]); x2 ] = constr3 [ x0; x1; x2 ])
;;

testi
  (50)
  (let x0 =
     constr6
       [ (constr3 [ (elem ("72")); (elem ("4")); nil ]);
         (constr6 [ (elem ("123")); (elem ("73")); (elem ("124")) ]);
         (constr2 [ (elem ("87")); neutral; (elem ("104")) ]) ] in
   let x1 = elem ("87") in
   let x2 =
     constr6
       [ (constr3 [ (elem ("72")); (elem ("4")); nil ]);
         (constr6 [ (elem ("123")); (elem ("73")); (elem ("124")) ]);
         (constr2 [ (elem ("87")); neutral; (elem ("104")) ]) ] in
   let x3 =
     constr2
       [ (constr6 [ (elem ("3")); (elem ("80")); (elem ("18")) ]);
         (constr3 [ (elem ("9")); (elem ("35")); (elem ("85")) ]);
         (constr1 [ (elem ("54")); (elem ("104")); (elem ("64")) ]) ] in
   let x4 =
     constr4
       [ (constr2 [ (elem ("85")); (elem ("105")); (elem ("123")) ]);
         (constr6 [ (elem ("10")); (elem ("30")); (elem ("53")) ]);
         (elem ("74")) ] in
   constr3 [ x0; (constr3 [ x1; x2 ]); (constr3 [ x3; x4 ]) ] =
   constr3 [ x0; x1; x2; x3; x4 ])
;;

testi
  (51)
  (let x0 =
     constr5
       [ (constr6 [ (elem ("67")); (elem ("6")); (elem ("89")) ]);
         (elem ("10")); (constr4 [ (elem ("72")); (elem ("84")); nil ]) ] in
   let x1 = elem ("101") in
   let x2 =
     constr6
       [ (constr3 [ (elem ("43")); (elem ("4")); (elem ("22")) ]);
         (constr6 [ (elem ("82")); (elem ("122")); (elem ("19")) ]);
         (constr3 [ (elem ("99")); (elem ("67")); (elem ("82")) ]) ] in
   let x3 = elem ("72") in
   let x4 =
     constr1
       [ (constr2 [ (elem ("122")); (elem ("11")); nil ]);
         (constr1 [ (elem ("81")); neutral; (elem ("101")) ]);
         (constr4 [ (elem ("74")); (elem ("24")); (elem ("113")) ]) ] in
   constr3 [ x0; (constr3 [ x1; x2 ]); (constr3 [ x3; x4 ]) ] =
   constr3 [ x0; x1; x2; x3; x4 ])
;;

testi
  (52)
  (let x0 =
     constr6
       [ (constr3 [ (elem ("43")); (elem ("4")); (elem ("22")) ]);
         (constr6 [ (elem ("82")); (elem ("122")); (elem ("19")) ]);
         (constr3 [ (elem ("99")); (elem ("67")); (elem ("82")) ]) ] in
   let x1 = elem ("3") in
   let x2 =
     constr5
       [ (elem ("84"));
         (constr5 [ (elem ("95")); (elem ("59")); (elem ("58")) ]);
         (constr1 [ (elem ("114")); (elem ("70")); (elem ("23")) ]) ] in
   let x3 =
     constr1
       [ (elem ("113"));
         (constr6 [ (elem ("81")); (elem ("120")); (elem ("49")) ]);
         (constr4 [ (elem ("109")); (elem ("85")); (elem ("113")) ]) ] in
   let x4 =
     constr3
       [ (constr5 [ (elem ("34")); (elem ("120")); (elem ("118")) ]);
         (inv (elem ("44")));
         (constr3 [ (elem ("75")); (elem ("64")); (elem ("105")) ]) ] in
   constr3 [ x0; (constr3 [ x1; x2 ]); (constr3 [ x3; x4 ]) ] =
   constr3 [ x0; x1; x2; x3; x4 ])
;;

testi
  (53)
  (let x0 =
     constr5
       [ (constr3 [ (elem ("59")); (elem ("36")); (elem ("60")) ]);
         (constr1 [ (elem ("76")); (elem ("39")); (elem ("26")) ]);
         (constr4 [ (elem ("42")); nil; (elem ("17")) ]) ] in
   let x1 =
     constr5
       [ (constr5 [ (elem ("7")); (elem ("51")); (elem ("39")) ]);
         (constr5 [ (elem ("8")); (elem ("57")); (elem ("9")) ]);
         (constr5 [ (elem ("14")); nil; (elem ("78")) ]) ] in
   let x2 =
     constr2
       [ (elem ("50"));
         (constr3 [ (elem ("117")); (elem ("88")); (elem ("33")) ]);
         (constr6 [ (elem ("121")); (elem ("98")); (elem ("24")) ]) ] in
   let x3 =
     constr3
       [ (inv (elem ("89"))); (inv (elem ("44")));
         (constr6 [ (elem ("82")); (elem ("22")); (elem ("99")) ]) ] in
   let x4 =
     constr6
       [ (constr5 [ (elem ("116")); (elem ("42")); nil ]);
         (constr5 [ (elem ("70")); (elem ("61")); nil ]);
         (constr5 [ (elem ("83")); (elem ("57")); (elem ("18")) ]) ] in
   constr3 [ x0; (constr3 [ x1; x2 ]); (constr3 [ x3; x4 ]) ] =
   constr3 [ x0; x1; x2; x3; x4 ])
;;

testi
  (54)
  (let x0 =
     constr4
       [ (inv (elem ("52")));
         (constr4 [ (elem ("39")); (elem ("7")); (elem ("0")) ]);
         (inv (elem ("104"))) ] in
   let x1 =
     constr3
       [ (constr2 [ (elem ("15")); (elem ("58")); (elem ("66")) ]);
         (constr2 [ (elem ("2")); (elem ("76")); (elem ("3")) ]);
         (constr1 [ (elem ("34")); (elem ("28")); (elem ("93")) ]) ] in
   let x2 = inv (inv (elem ("61"))) in
   let x3 =
     constr4
       [ (elem ("111"));
         (constr4 [ (elem ("39")); (elem ("7")); (elem ("0")) ]);
         (constr4 [ (elem ("78")); (elem ("63")); (elem ("25")) ]) ] in
   let x4 =
     constr3
       [ (constr6 [ (elem ("118")); (elem ("74")); (elem ("82")) ]);
         (constr6 [ (elem ("21")); (elem ("69")); (elem ("54")) ]);
         (constr3 [ (elem ("57")); (elem ("91")); (elem ("103")) ]) ] in
   constr3 [ x0; (constr3 [ x1; x2 ]); (constr3 [ x3; x4 ]) ] =
   constr3 [ x0; x1; x2; x3; x4 ])
;;

testi
  (55)
  (let x0 =
     constr4
       [ (inv (elem ("77")));
         (constr1 [ (elem ("8")); (elem ("91")); (elem ("19")) ]);
         (inv (elem ("77"))) ] in
   let x1 =
     constr3
       [ (constr4 [ (elem ("71")); (elem ("93")); (elem ("12")) ]);
         (constr2 [ (elem ("1")); (elem ("88")); nil ]); (inv (elem ("7"))) ] in
   let x2 =
     constr4
       [ (constr3 [ neutral; (elem ("9")); (elem ("38")) ]);
         (constr1 [ nil; (elem ("55")); (elem ("19")) ]); (elem ("83")) ] in
   let x3 = elem ("73") in
   constr3 [ (constr3 [ x0; x1; x2 ]); x3 ] = constr3 [ x0; x1; x2; x3 ])
;;

testi
  (56)
  (let x0 = inv (constr1 [ (elem ("96")); (elem ("13")); (elem ("4")) ]) in
   let x1 =
     constr4
       [ (constr3 [ neutral; (elem ("9")); (elem ("38")) ]);
         (constr1 [ nil; (elem ("55")); (elem ("19")) ]); (elem ("83")) ] in
   let x2 = elem ("73") in
   let x3 =
     constr5
       [ (constr1 [ (elem ("39")); (elem ("39")); (elem ("13")) ]);
         (constr1 [ (elem ("30")); (elem ("68")); neutral ]);
         (constr2 [ (elem ("52")); (elem ("0")); neutral ]) ] in
   constr3 [ (constr3 [ x0; x1; x2 ]); x3 ] = constr3 [ x0; x1; x2; x3 ])
;;

testi
  (57)
  (let x0 =
     constr5
       [ (constr1 [ (elem ("97")); (elem ("65")); (elem ("13")) ]);
         (constr6 [ (elem ("41")); neutral; (elem ("5")) ]);
         (constr3 [ (elem ("50")); (elem ("91")); (elem ("80")) ]) ] in
   let x1 = elem ("83") in
   let x2 =
     constr5
       [ (constr1 [ (elem ("97")); (elem ("65")); (elem ("13")) ]);
         (constr6 [ (elem ("41")); neutral; (elem ("5")) ]);
         (constr3 [ (elem ("50")); (elem ("91")); (elem ("80")) ]) ] in
   let x3 = inv (constr3 [ (elem ("95")); (elem ("22")); (elem ("51")) ]) in
   constr3 [ (constr3 [ x0; x1; x2 ]); x3 ] = constr3 [ x0; x1; x2; x3 ])
;;

testi
  (58)
  (let x0 =
     constr3
       [ (constr2 [ (elem ("88")); (elem ("39")); (elem ("79")) ]);
         (constr1 [ nil; (elem ("60")); (elem ("62")) ]); (elem ("69")) ] in
   let x1 =
     constr6
       [ (constr3 [ (elem ("44")); (elem ("13")); (elem ("78")) ]);
         (elem ("83")); (constr5 [ (elem ("2")); (elem ("78")); nil ]) ] in
   let x2 =
     constr5
       [ (constr1 [ (elem ("39")); (elem ("39")); (elem ("13")) ]);
         (constr1 [ (elem ("30")); (elem ("68")); neutral ]);
         (constr2 [ (elem ("52")); (elem ("0")); neutral ]) ] in
   let x3 = nil in
   constr3 [ (constr3 [ x0; x1; x2 ]); x3 ] = constr3 [ x0; x1; x2; x3 ])
;;

testi
  (59)
  (let x0 =
     constr3
       [ (constr4 [ (elem ("71")); (elem ("93")); (elem ("12")) ]);
         (constr2 [ (elem ("1")); (elem ("88")); nil ]); (inv (elem ("7"))) ] in
   let x1 = inv (constr3 [ (elem ("95")); (elem ("22")); (elem ("51")) ]) in
   let x2 =
     constr3
       [ (constr2 [ (elem ("88")); (elem ("85")); (elem ("49")) ]);
         (constr6 [ (elem ("33")); (elem ("92")); (elem ("64")) ]);
         (constr2 [ (elem ("95")); (elem ("19")); (elem ("54")) ]) ] in
   let x3 =
     constr1
       [ (elem ("66"));
         (constr2 [ (elem ("98")); (elem ("46")); (elem ("8")) ]);
         (elem ("26")) ] in
   constr3 [ (constr3 [ x0; x1; x2 ]); x3 ] = constr3 [ x0; x1; x2; x3 ])
;;

testi
  (60)
  (let x1 = inv (elem ("49")) in
   let x0 =
     constr1
       [ (constr2 [ (elem ("2")); (elem ("8")); neutral ]);
         (constr3 [ (elem ("37")); (elem ("31")); neutral ]);
         (constr5 [ (elem ("15")); (elem ("36")); (elem ("2")) ]) ] in
   constr3 [ x1; x0; x0 ] = constr3 [ x1; x0 ])
;;

testi
  (61)
  (let x1 =
     constr1
       [ (constr2 [ (elem ("2")); (elem ("8")); neutral ]);
         (constr3 [ (elem ("37")); (elem ("31")); neutral ]);
         (constr5 [ (elem ("15")); (elem ("36")); (elem ("2")) ]) ] in
   let x0 =
     constr3
       [ (constr6 [ neutral; (elem ("21")); (elem ("6")) ]);
         (constr3 [ (elem ("42")); (elem ("22")); (elem ("15")) ]);
         (constr4 [ (elem ("18")); (elem ("45")); nil ]) ] in
   constr3 [ x1; x0; x0 ] = constr3 [ x1; x0 ])
;;

testi
  (62)
  (let x1 =
     constr4
       [ (constr2 [ (elem ("43")); (elem ("18")); (elem ("30")) ]);
         (constr2 [ (elem ("49")); (elem ("23")); neutral ]);
         (constr3 [ (elem ("29")); (elem ("48")); neutral ]) ] in
   let x0 =
     constr2
       [ (constr6 [ (elem ("49")); (elem ("16")); (elem ("35")) ]);
         (constr5 [ (elem ("1")); (elem ("28")); (elem ("12")) ]);
         (constr2 [ neutral; nil; (elem ("42")) ]) ] in
   constr3 [ x1; x0; x0 ] = constr3 [ x1; x0 ])
;;

testi
  (63)
  (let x1 =
     constr2
       [ (inv (elem ("15")));
         (constr2 [ (elem ("47")); (elem ("5")); (elem ("17")) ]);
         (constr4 [ (elem ("24")); neutral; (elem ("40")) ]) ] in
   let x0 =
     constr1
       [ (constr2 [ (elem ("2")); (elem ("36")); neutral ]);
         (constr3 [ (elem ("37")); (elem ("31")); neutral ]);
         (constr5 [ (elem ("15")); (elem ("36")); (elem ("2")) ]) ] in
   constr3 [ x1; x0; x0 ] = constr3 [ x1; x0 ])
;;

testi
  (64)
  (let x1 =
     constr4
       [ (constr4 [ neutral; (elem ("44")); (elem ("48")) ]);
         (constr3 [ (elem ("26")); (elem ("49")); (elem ("45")) ]);
         (constr2 [ (elem ("37")); (elem ("18")); (elem ("12")) ]) ] in
   let x0 =
     constr1
       [ (constr2 [ (elem ("2")); (elem ("36")); neutral ]);
         (constr3 [ (elem ("37")); (elem ("31")); neutral ]);
         (constr5 [ (elem ("15")); (elem ("36")); (elem ("2")) ]) ] in
   constr3 [ x1; x0; x0 ] = constr3 [ x1; x0 ])
;;

testi
  (65)
  (let x0 =
     constr5
       [ (constr5 [ (elem ("19")); neutral; (elem ("6")) ]); (elem ("6"));
         (constr4 [ (elem ("4")); (elem ("48")); neutral ]) ] in
   let x1 =
     constr5
       [ (constr6 [ (elem ("25")); (elem ("5")); (elem ("43")) ]);
         (elem ("6")); (constr2 [ neutral; (elem ("29")); (elem ("66")) ]) ] in
   let x2 =
     constr1
       [ (constr4 [ (elem ("52")); (elem ("44")); (elem ("34")) ]);
         (constr1 [ (elem ("25")); (elem ("54")); (elem ("55")) ]);
         (inv (elem ("17"))) ] in
   constr3 [ x0; x1; x1; x2 ] = constr3 [ x0; x1; x2 ])
;;

testi
  (66)
  (let x0 = elem ("36") in
   let x1 = elem ("67") in
   let x2 =
     constr4
       [ (constr6 [ (elem ("62")); (elem ("34")); (elem ("41")) ]);
         (constr4 [ (elem ("21")); (elem ("28")); (elem ("64")) ]);
         (constr6 [ (elem ("37")); (elem ("57")); (elem ("21")) ]) ] in
   constr3 [ x0; x1; x1; x2 ] = constr3 [ x0; x1; x2 ])
;;

testi
  (67)
  (let x0 =
     constr6
       [ (constr5 [ (elem ("11")); nil; (elem ("6")) ]);
         (constr4 [ (elem ("56")); (elem ("32")); (elem ("55")) ]);
         (constr2 [ neutral; (elem ("34")); (elem ("29")) ]) ] in
   let x1 = nil in
   let x2 =
     constr3
       [ (constr4 [ (elem ("29")); (elem ("7")); neutral ]);
         (constr6 [ (elem ("70")); (elem ("6")); (elem ("62")) ]);
         (inv (elem ("44"))) ] in
   constr3 [ x0; x1; x1; x2 ] = constr3 [ x0; x1; x2 ])
;;

testi
  (68)
  (let x0 =
     constr4
       [ (constr4 [ (elem ("7")); (elem ("13")); (elem ("64")) ]);
         (constr5 [ (elem ("70")); (elem ("20")); (elem ("39")) ]);
         (constr2 [ (elem ("66")); (elem ("71")); (elem ("61")) ]) ] in
   let x1 =
     constr5
       [ (constr2 [ (elem ("65")); (elem ("2")); (elem ("51")) ]);
         (elem ("6"));
         (constr3 [ (elem ("46")); (elem ("46")); (elem ("67")) ]) ] in
   let x2 =
     constr4
       [ (constr2 [ (elem ("21")); (elem ("67")); (elem ("34")) ]);
         (constr6 [ (elem ("50")); (elem ("61")); (elem ("50")) ]);
         (constr3 [ (elem ("57")); (elem ("43")); (elem ("72")) ]) ] in
   constr3 [ x0; x1; x1; x2 ] = constr3 [ x0; x1; x2 ])
;;

testi
  (69)
  (let x0 =
     constr6
       [ (constr5 [ (elem ("11")); nil; (elem ("6")) ]);
         (constr4 [ (elem ("56")); (elem ("32")); (elem ("55")) ]);
         (constr2 [ neutral; (elem ("34")); (elem ("29")) ]) ] in
   let x1 =
     constr5
       [ (constr6 [ (elem ("25")); (elem ("5")); (elem ("43")) ]);
         (elem ("6")); (constr2 [ neutral; (elem ("29")); (elem ("66")) ]) ] in
   let x2 = elem ("42") in
   constr3 [ x0; x1; x1; x2 ] = constr3 [ x0; x1; x2 ])
;;

testi
  (70)
  (let x0 =
     constr1
       [ (constr2 [ (elem ("23")); nil; (elem ("14")) ]);
         (constr3 [ (elem ("2")); (elem ("20")); (elem ("12")) ]);
         (inv (elem ("24"))) ] in
   constr4 [ x0; x0 ] = nil)
;;

testi
  (71)
  (let x0 =
     constr1
       [ (constr2 [ (elem ("23")); nil; (elem ("14")) ]);
         (constr3 [ (elem ("2")); (elem ("20")); (elem ("12")) ]);
         (inv (elem ("24"))) ] in
   constr4 [ x0; x0 ] = nil)
;;

testi
  (72)
  (let x0 =
     constr1
       [ (constr2 [ (elem ("23")); nil; (elem ("14")) ]);
         (constr3 [ (elem ("2")); (elem ("20")); (elem ("12")) ]);
         (inv (elem ("24"))) ] in
   constr4 [ x0; x0 ] = nil)
;;

testi
  (73)
  (let x0 =
     constr4
       [ (constr1 [ nil; (elem ("13")); (elem ("22")) ]);
         (constr3 [ (elem ("21")); (elem ("20")); (elem ("14")) ]);
         (constr1 [ (elem ("20")); (elem ("12")); nil ]) ] in
   constr4 [ x0; x0 ] = nil)
;;

testi (74) (let x0 = neutral in constr4 [ x0; x0 ] = nil)
;;

testi
  (75)
  (let x0 =
     constr3
       [ (constr5 [ (elem ("31")); nil; (elem ("51")) ]);
         (constr6 [ (elem ("66")); (elem ("32")); (elem ("41")) ]);
         (constr2 [ (elem ("31")); (elem ("8")); (elem ("60")) ]) ] in
   let x1 = inv (elem ("51")) in
   let x2 =
     constr5
       [ (constr1 [ (elem ("15")); (elem ("23")); neutral ]); neutral;
         (constr3 [ (elem ("20")); (elem ("11")); (elem ("69")) ]) ] in
   constr4 [ x0; x1; x1; x2 ] = constr4 [ x0; nil; x2 ])
;;

testi
  (76)
  (let x0 =
     constr1
       [ (inv (elem ("55")));
         (constr1 [ (elem ("65")); nil; (elem ("47")) ]);
         (constr2 [ (elem ("42")); (elem ("4")); (elem ("33")) ]) ] in
   let x1 = inv (constr3 [ (elem ("0")); (elem ("33")); (elem ("52")) ]) in
   let x2 = inv (constr3 [ (elem ("0")); (elem ("33")); (elem ("52")) ]) in
   constr4 [ x0; x1; x1; x2 ] = constr4 [ x0; nil; x2 ])
;;

testi
  (77)
  (let x0 =
     constr3
       [ (elem ("27")); (constr3 [ (elem ("12")); neutral; (elem ("59")) ]);
         (constr2 [ (elem ("70")); (elem ("61")); nil ]) ] in
   let x1 =
     constr6
       [ (constr6 [ (elem ("39")); (elem ("27")); (elem ("67")) ]);
         (elem ("0"));
         (constr6 [ (elem ("2")); (elem ("19")); (elem ("71")) ]) ] in
   let x2 = elem ("42") in
   constr4 [ x0; x1; x1; x2 ] = constr4 [ x0; nil; x2 ])
;;

testi
  (78)
  (let x0 =
     constr4
       [ (inv (elem ("49")));
         (constr6 [ (elem ("29")); (elem ("50")); (elem ("42")) ]);
         (constr5 [ (elem ("49")); (elem ("2")); (elem ("5")) ]) ] in
   let x1 = inv (constr6 [ (elem ("62")); (elem ("22")); (elem ("62")) ]) in
   let x2 =
     constr1
       [ (constr5 [ (elem ("36")); (elem ("66")); (elem ("22")) ]);
         (constr6 [ (elem ("20")); (elem ("42")); (elem ("68")) ]);
         (inv (elem ("62"))) ] in
   constr4 [ x0; x1; x1; x2 ] = constr4 [ x0; nil; x2 ])
;;

testi
  (79)
  (let x0 =
     constr4
       [ (constr3 [ (elem ("56")); neutral; (elem ("63")) ]);
         (inv (elem ("70"))); (constr3 [ nil; (elem ("53")); (elem ("33")) ]) ] in
   let x1 =
     constr6
       [ (constr1 [ (elem ("43")); (elem ("38")); (elem ("24")) ]);
         (inv (elem ("22"))); (elem ("13")) ] in
   let x2 =
     constr3
       [ (elem ("60"));
         (constr5 [ (elem ("57")); (elem ("70")); (elem ("38")) ]);
         (constr4 [ (elem ("10")); (elem ("35")); (elem ("48")) ]) ] in
   constr4 [ x0; x1; x1; x2 ] = constr4 [ x0; nil; x2 ])
;;

testi
  (80)
  (let x0 =
     constr5
       [ (constr5 [ (elem ("63")); (elem ("62")); (elem ("23")) ]);
         (constr6 [ (elem ("2")); (elem ("15")); neutral ]);
         (constr6 [ nil; (elem ("21")); (elem ("38")) ]) ] in
   let x1 =
     constr3
       [ (inv (elem ("38"))); (inv (elem ("19")));
         (constr5 [ (elem ("6")); (elem ("3")); nil ]) ] in
   let x2 =
     constr2
       [ (constr4 [ (elem ("33")); (elem ("9")); (elem ("7")) ]);
         (inv (elem ("31"))); (inv (elem ("71"))) ] in
   constr5 [ (constr5 [ x0; x1 ]); x2 ] = constr5 [ x0; x1; x2 ])
;;

testi
  (81)
  (let x0 =
     constr1
       [ (constr2 [ nil; (elem ("28")); (elem ("24")) ]);
         (constr5 [ (elem ("68")); (elem ("10")); (elem ("61")) ]);
         (constr2 [ (elem ("51")); (elem ("29")); (elem ("38")) ]) ] in
   let x1 =
     constr5
       [ (constr4 [ (elem ("35")); (elem ("11")); (elem ("12")) ]);
         (constr6 [ (elem ("2")); (elem ("36")); (elem ("15")) ]);
         (constr5 [ (elem ("53")); nil; (elem ("4")) ]) ] in
   let x2 =
     constr3
       [ (constr2 [ (elem ("15")); (elem ("49")); (elem ("22")) ]);
         (constr3 [ (elem ("8")); (elem ("36")); (elem ("0")) ]);
         (constr2 [ (elem ("15")); (elem ("23")); nil ]) ] in
   constr5 [ (constr5 [ x0; x1 ]); x2 ] = constr5 [ x0; x1; x2 ])
;;

testi
  (82)
  (let x0 =
     constr1
       [ (constr6 [ (elem ("73")); (elem ("22")); (elem ("40")) ]);
         (constr5 [ (elem ("68")); (elem ("10")); (elem ("61")) ]);
         (elem ("5")) ] in
   let x1 = inv (constr1 [ (elem ("54")); neutral; (elem ("12")) ]) in
   let x2 = elem ("46") in
   constr5 [ (constr5 [ x0; x1 ]); x2 ] = constr5 [ x0; x1; x2 ])
;;

testi
  (83)
  (let x0 = elem ("59") in
   let x1 = elem ("59") in
   let x2 =
     constr6
       [ (constr6 [ (elem ("51")); (elem ("49")); (elem ("48")) ]);
         (elem ("37"));
         (constr5 [ (elem ("3")); (elem ("30")); (elem ("48")) ]) ] in
   constr5 [ (constr5 [ x0; x1 ]); x2 ] = constr5 [ x0; x1; x2 ])
;;

testi
  (84)
  (let x0 = elem ("59") in
   let x1 =
     constr3
       [ (constr6 [ (elem ("2")); (elem ("13")); (elem ("51")) ]);
         (constr4 [ (elem ("33")); (elem ("3")); (elem ("25")) ]);
         (constr4 [ (elem ("60")); (elem ("61")); (elem ("9")) ]) ] in
   let x2 =
     constr6
       [ (constr6 [ (elem ("51")); (elem ("49")); (elem ("48")) ]);
         (elem ("37"));
         (constr5 [ (elem ("3")); (elem ("30")); (elem ("48")) ]) ] in
   constr5 [ (constr5 [ x0; x1 ]); x2 ] = constr5 [ x0; x1; x2 ])
;;

testi
  (85)
  (let x0 =
     constr3
       [ (constr2 [ (elem ("102")); (elem ("35")); (elem ("57")) ]);
         (constr5 [ (elem ("43")); (elem ("98")); neutral ]);
         (constr4 [ (elem ("69")); (elem ("75")); (elem ("101")) ]) ] in
   let x1 =
     constr5
       [ (constr1 [ (elem ("28")); (elem ("45")); (elem ("93")) ]);
         (constr5 [ nil; (elem ("17")); (elem ("48")) ]);
         (constr5 [ (elem ("46")); (elem ("76")); (elem ("52")) ]) ] in
   let x2 = inv (constr5 [ (elem ("45")); (elem ("35")); (elem ("109")) ]) in
   let x3 =
     constr2
       [ (constr5 [ neutral; (elem ("17")); (elem ("14")) ]);
         (constr1 [ (elem ("10")); neutral; (elem ("95")) ]);
         (constr6 [ (elem ("81")); (elem ("58")); (elem ("56")) ]) ] in
   let x4 = elem ("67") in
   constr5 [ x0; (constr5 [ x1; x2 ]); (constr5 [ x3; x4 ]) ] =
   constr5 [ x0; x1; x2; x3; x4 ])
;;

testi
  (86)
  (let x0 =
     constr6
       [ (elem ("11"));
         (constr5 [ (elem ("97")); (elem ("77")); (elem ("88")) ]);
         (constr5 [ (elem ("14")); (elem ("44")); (elem ("92")) ]) ] in
   let x1 =
     constr6
       [ (elem ("11"));
         (constr5 [ (elem ("97")); (elem ("77")); (elem ("88")) ]);
         (constr5 [ (elem ("14")); (elem ("44")); (elem ("92")) ]) ] in
   let x2 = inv (constr1 [ (elem ("4")); (elem ("19")); (elem ("15")) ]) in
   let x3 =
     constr3
       [ (inv (elem ("41")));
         (constr5 [ (elem ("10")); (elem ("54")); (elem ("124")) ]);
         (constr6 [ (elem ("101")); (elem ("100")); (elem ("45")) ]) ] in
   let x4 = inv (constr1 [ (elem ("93")); (elem ("19")); (elem ("120")) ]) in
   constr5 [ x0; (constr5 [ x1; x2 ]); (constr5 [ x3; x4 ]) ] =
   constr5 [ x0; x1; x2; x3; x4 ])
;;

testi
  (87)
  (let x0 =
     constr1
       [ (constr6 [ (elem ("47")); (elem ("99")); (elem ("63")) ]);
         (constr1 [ (elem ("105")); (elem ("35")); (elem ("69")) ]);
         (constr2 [ (elem ("5")); (elem ("111")); (elem ("80")) ]) ] in
   let x1 =
     constr4
       [ (constr5 [ (elem ("12")); (elem ("106")); (elem ("112")) ]);
         (constr6 [ (elem ("55")); (elem ("100")); (elem ("86")) ]);
         (constr6 [ neutral; (elem ("67")); (elem ("117")) ]) ] in
   let x2 =
     constr1
       [ (constr5 [ (elem ("56")); (elem ("45")); neutral ]);
         (constr1 [ (elem ("42")); (elem ("35")); (elem ("84")) ]);
         (constr3 [ (elem ("2")); neutral; (elem ("99")) ]) ] in
   let x3 =
     constr2
       [ (constr4 [ nil; (elem ("78")); (elem ("122")) ]);
         (constr1 [ (elem ("77")); (elem ("118")); (elem ("39")) ]);
         (inv (elem ("109"))) ] in
   let x4 =
     constr2
       [ (constr5 [ (elem ("102")); (elem ("62")); neutral ]);
         (constr3 [ (elem ("79")); (elem ("7")); (elem ("45")) ]);
         (constr3 [ (elem ("123")); (elem ("59")); (elem ("3")) ]) ] in
   constr5 [ x0; (constr5 [ x1; x2 ]); (constr5 [ x3; x4 ]) ] =
   constr5 [ x0; x1; x2; x3; x4 ])
;;

testi
  (88)
  (let x0 =
     constr3
       [ (inv (elem ("3")));
         (constr5 [ (elem ("10")); (elem ("54")); (elem ("124")) ]);
         (elem ("54")) ] in
   let x1 =
     constr5
       [ (inv (elem ("66")));
         (constr4 [ (elem ("42")); (elem ("33")); (elem ("7")) ]);
         (constr5 [ (elem ("46")); (elem ("76")); (elem ("52")) ]) ] in
   let x2 =
     constr2
       [ (constr4 [ nil; (elem ("78")); (elem ("122")) ]);
         (constr5 [ (elem ("75")); (elem ("99")); (elem ("115")) ]);
         (inv (elem ("78"))) ] in
   let x3 =
     constr4
       [ (constr1 [ (elem ("2")); (elem ("67")); (elem ("75")) ]);
         (constr4 [ (elem ("42")); (elem ("38")); (elem ("86")) ]);
         (constr1 [ (elem ("57")); (elem ("92")); (elem ("72")) ]) ] in
   let x4 =
     constr4
       [ (constr1 [ (elem ("38")); (elem ("49")); (elem ("34")) ]);
         (constr2 [ (elem ("96")); (elem ("1")); (elem ("32")) ]);
         (inv (elem ("47"))) ] in
   constr5 [ x0; (constr5 [ x1; x2 ]); (constr5 [ x3; x4 ]) ] =
   constr5 [ x0; x1; x2; x3; x4 ])
;;

testi
  (89)
  (let x0 =
     constr5
       [ (constr1 [ (elem ("120")); (elem ("10")); (elem ("46")) ]);
         (constr1 [ (elem ("81")); (elem ("49")); (elem ("120")) ]);
         (constr5 [ (elem ("26")); (elem ("104")); (elem ("21")) ]) ] in
   let x1 = elem ("70") in
   let x2 =
     constr1
       [ (constr5 [ (elem ("56")); (elem ("45")); neutral ]);
         (constr5 [ (elem ("93")); (elem ("14")); (elem ("100")) ]);
         (elem ("20")) ] in
   let x3 = elem ("58") in
   let x4 =
     constr5
       [ (constr3 [ (elem ("80")); (elem ("54")); (elem ("9")) ]);
         (constr6 [ (elem ("74")); (elem ("67")); (elem ("48")) ]);
         (constr1 [ (elem ("90")); (elem ("48")); (elem ("62")) ]) ] in
   constr5 [ x0; (constr5 [ x1; x2 ]); (constr5 [ x3; x4 ]) ] =
   constr5 [ x0; x1; x2; x3; x4 ])
;;

testi
  (90)
  (let x0 =
     constr5
       [ (constr6 [ (elem ("62")); (elem ("52")); (elem ("65")) ]);
         (inv (elem ("53"))); (inv (elem ("77"))) ] in
   let x1 =
     constr3
       [ (constr6 [ (elem ("12")); (elem ("59")); (elem ("17")) ]);
         (constr5 [ (elem ("56")); (elem ("78")); (elem ("74")) ]);
         (constr2 [ (elem ("20")); (elem ("13")); (elem ("82")) ]) ] in
   let x2 =
     constr3
       [ (constr2 [ (elem ("29")); (elem ("72")); (elem ("41")) ]);
         (constr6 [ nil; neutral; (elem ("6")) ]); (elem ("50")) ] in
   let x3 = elem ("61") in
   constr5 [ (constr5 [ x0; x1; x2 ]); x3 ] = constr5 [ x0; x1; x2; x3 ])
;;

testi
  (91)
  (let x0 =
     constr2
       [ (constr1 [ (elem ("49")); (elem ("62")); (elem ("88")) ]);
         (constr1 [ (elem ("77")); (elem ("89")); (elem ("36")) ]);
         (elem ("41")) ] in
   let x1 =
     constr2
       [ (constr3 [ (elem ("97")); (elem ("29")); nil ]);
         (constr3 [ (elem ("30")); (elem ("70")); (elem ("95")) ]);
         (constr4 [ neutral; nil; (elem ("21")) ]) ] in
   let x2 =
     constr1
       [ (elem ("39"));
         (constr3 [ (elem ("38")); (elem ("52")); (elem ("2")) ]);
         (constr6 [ (elem ("2")); (elem ("24")); (elem ("90")) ]) ] in
   let x3 =
     constr6
       [ (inv neutral);
         (constr3 [ (elem ("53")); (elem ("22")); (elem ("31")) ]);
         (constr4 [ (elem ("76")); nil; (elem ("1")) ]) ] in
   constr5 [ (constr5 [ x0; x1; x2 ]); x3 ] = constr5 [ x0; x1; x2; x3 ])
;;

testi
  (92)
  (let x0 =
     constr1
       [ (constr2 [ (elem ("94")); (elem ("14")); (elem ("52")) ]);
         (constr2 [ (elem ("5")); (elem ("0")); nil ]); (inv (elem ("36"))) ] in
   let x1 =
     constr1
       [ (inv (elem ("81"))); (constr2 [ (elem ("30")); nil; (elem ("7")) ]);
         (constr3 [ (elem ("47")); (elem ("65")); (elem ("57")) ]) ] in
   let x2 = inv (constr4 [ (elem ("4")); (elem ("5")); (elem ("79")) ]) in
   let x3 =
     constr5
       [ (constr2 [ (elem ("39")); neutral; (elem ("92")) ]); (elem ("17"));
         (elem ("54")) ] in
   constr5 [ (constr5 [ x0; x1; x2 ]); x3 ] = constr5 [ x0; x1; x2; x3 ])
;;

testi
  (93)
  (let x0 = elem ("97") in
   let x1 =
     constr4
       [ (elem ("44")); (constr5 [ (elem ("49")); neutral; (elem ("41")) ]);
         (constr4 [ (elem ("15")); (elem ("84")); (elem ("22")) ]) ] in
   let x2 =
     constr3
       [ (constr4 [ (elem ("79")); (elem ("43")); neutral ]); (elem ("52"));
         (constr6 [ (elem ("57")); (elem ("27")); (elem ("48")) ]) ] in
   let x3 =
     constr3
       [ (constr4 [ nil; (elem ("54")); (elem ("29")) ]);
         (constr5 [ (elem ("56")); (elem ("78")); (elem ("74")) ]);
         (constr2 [ neutral; (elem ("13")); (elem ("85")) ]) ] in
   constr5 [ (constr5 [ x0; x1; x2 ]); x3 ] = constr5 [ x0; x1; x2; x3 ])
;;

testi
  (94)
  (let x0 =
     constr2
       [ (constr1 [ (elem ("49")); (elem ("62")); (elem ("88")) ]);
         (constr1 [ (elem ("77")); (elem ("89")); (elem ("36")) ]);
         (elem ("41")) ] in
   let x1 =
     constr5
       [ (inv (elem ("73"))); (elem ("60"));
         (constr1 [ (elem ("25")); (elem ("96")); (elem ("10")) ]) ] in
   let x2 =
     constr1
       [ (constr2 [ (elem ("94")); (elem ("14")); (elem ("52")) ]);
         (constr1 [ (elem ("41")); (elem ("79")); (elem ("86")) ]);
         (constr5 [ (elem ("68")); (elem ("38")); (elem ("65")) ]) ] in
   let x3 =
     constr6
       [ (constr4 [ (elem ("97")); (elem ("6")); (elem ("39")) ]);
         (inv (elem ("22")));
         (constr3 [ (elem ("42")); (elem ("97")); (elem ("9")) ]) ] in
   constr5 [ (constr5 [ x0; x1; x2 ]); x3 ] = constr5 [ x0; x1; x2; x3 ])
;;

testi
  (95)
  (let x0 =
     constr5
       [ (constr3 [ neutral; (elem ("24")); (elem ("16")) ]); (elem ("1"));
         (constr3 [ (elem ("7")); (elem ("21")); (elem ("4")) ]) ] in
   constr5 [ x0; x0 ] = nil)
;;

testi
  (96)
  (let x0 =
     constr5
       [ (constr4 [ (elem ("12")); (elem ("1")); neutral ]);
         (constr1 [ (elem ("4")); (elem ("23")); nil ]);
         (constr3 [ (elem ("7")); (elem ("21")); (elem ("4")) ]) ] in
   constr5 [ x0; x0 ] = nil)
;;

testi
  (97)
  (let x0 =
     constr4
       [ (constr3 [ (elem ("7")); (elem ("14")); (elem ("20")) ]);
         (constr5 [ neutral; (elem ("9")); nil ]);
         (constr1 [ (elem ("20")); (elem ("5")); (elem ("8")) ]) ] in
   constr5 [ x0; x0 ] = nil)
;;

testi (98) (let x0 = neutral in constr5 [ x0; x0 ] = nil)
;;

testi
  (99)
  (let x0 = inv (constr4 [ (elem ("10")); nil; (elem ("5")) ]) in
   constr5 [ x0; x0 ] = nil)
;;

testi
  (100)
  (let x0 =
     constr5
       [ (elem ("71"));
         (constr1 [ (elem ("28")); (elem ("8")); (elem ("16")) ]);
         (constr2 [ (elem ("20")); (elem ("45")); (elem ("72")) ]) ] in
   let x1 =
     constr2
       [ (constr4 [ (elem ("45")); (elem ("37")); (elem ("74")) ]); neutral;
         (constr5 [ (elem ("23")); (elem ("44")); (elem ("67")) ]) ] in
   let x2 = elem ("62") in
   constr5 [ x0; x1; x1; x2 ] = constr5 [ x0; nil; x2 ])
;;

testi
  (101)
  (let x0 = elem ("49") in
   let x1 =
     constr2
       [ (inv (elem ("33")));
         (constr3 [ (elem ("51")); (elem ("20")); (elem ("72")) ]);
         (constr5 [ (elem ("54")); (elem ("37")); (elem ("34")) ]) ] in
   let x2 =
     constr3
       [ (elem ("15"));
         (constr4 [ (elem ("46")); (elem ("68")); (elem ("17")) ]);
         (constr3 [ nil; (elem ("21")); (elem ("22")) ]) ] in
   constr5 [ x0; x1; x1; x2 ] = constr5 [ x0; nil; x2 ])
;;

testi
  (102)
  (let x0 =
     constr4
       [ (constr3 [ (elem ("13")); (elem ("26")); (elem ("1")) ]);
         (constr1 [ (elem ("31")); (elem ("0")); (elem ("52")) ]);
         (inv (elem ("45"))) ] in
   let x1 = elem ("69") in
   let x2 =
     constr6
       [ (constr4 [ (elem ("43")); nil; (elem ("4")) ]);
         (constr1 [ (elem ("9")); (elem ("63")); (elem ("24")) ]);
         (constr4 [ (elem ("42")); (elem ("71")); (elem ("41")) ]) ] in
   constr5 [ x0; x1; x1; x2 ] = constr5 [ x0; nil; x2 ])
;;

testi
  (103)
  (let x0 =
     constr3
       [ (inv (elem ("5"))); (elem ("62"));
         (constr4 [ (elem ("42")); nil; (elem ("3")) ]) ] in
   let x1 =
     constr1
       [ (constr1 [ (elem ("37")); nil; (elem ("29")) ]);
         (inv (elem ("72")));
         (constr6 [ (elem ("72")); (elem ("74")); (elem ("71")) ]) ] in
   let x2 =
     constr1
       [ (constr2 [ (elem ("37")); (elem ("5")); (elem ("58")) ]);
         (inv (elem ("54")));
         (constr2 [ (elem ("5")); neutral; (elem ("4")) ]) ] in
   constr5 [ x0; x1; x1; x2 ] = constr5 [ x0; nil; x2 ])
;;

testi
  (104)
  (let x0 =
     constr3
       [ (constr3 [ (elem ("24")); (elem ("58")); (elem ("46")) ]);
         (constr2 [ (elem ("60")); nil; (elem ("36")) ]);
         (constr6 [ (elem ("9")); (elem ("16")); (elem ("11")) ]) ] in
   let x1 = inv (constr5 [ (elem ("26")); (elem ("33")); (elem ("36")) ]) in
   let x2 =
     constr5
       [ (constr2 [ (elem ("5")); (elem ("3")); (elem ("9")) ]);
         (constr5 [ (elem ("54")); (elem ("60")); (elem ("1")) ]);
         (constr3 [ (elem ("50")); (elem ("36")); (elem ("15")) ]) ] in
   constr5 [ x0; x1; x1; x2 ] = constr5 [ x0; nil; x2 ])
;;

testi
  (105)
  (let x0 =
     constr1
       [ (constr6 [ (elem ("45")); (elem ("26")); nil ]); (elem ("11"));
         (constr6 [ nil; neutral; (elem ("30")) ]) ] in
   let x1 =
     constr3
       [ (inv (elem ("13"))); (constr1 [ neutral; nil; (elem ("20")) ]);
         (inv (elem ("19"))) ] in
   constr6 [ x0; neutral; x1 ] = constr6 [ x0; x1 ])
;;

testi
  (106)
  (let x0 =
     constr3
       [ (constr6 [ (elem ("39")); (elem ("48")); neutral ]);
         (constr4 [ (elem ("43")); (elem ("6")); nil ]);
         (constr5 [ (elem ("30")); (elem ("20")); (elem ("33")) ]) ] in
   let x1 = neutral in constr6 [ x0; neutral; x1 ] = constr6 [ x0; x1 ])
;;

testi
  (107)
  (let x0 = inv (constr3 [ (elem ("4")); (elem ("21")); (elem ("21")) ]) in
   let x1 =
     constr5
       [ (constr2 [ (elem ("36")); (elem ("17")); (elem ("24")) ]);
         (constr1 [ (elem ("45")); (elem ("44")); (elem ("27")) ]);
         (elem ("36")) ] in
   constr6 [ x0; neutral; x1 ] = constr6 [ x0; x1 ])
;;

testi
  (108)
  (let x0 =
     constr2
       [ (constr1 [ (elem ("43")); (elem ("20")); (elem ("19")) ]);
         (inv (elem ("49")));
         (constr5 [ (elem ("13")); (elem ("3")); (elem ("27")) ]) ] in
   let x1 = elem ("6") in constr6 [ x0; neutral; x1 ] = constr6 [ x0; x1 ])
;;

testi
  (109)
  (let x0 = elem ("15") in
   let x1 =
     constr3
       [ (inv (elem ("13")));
         (constr2 [ (elem ("2")); (elem ("37")); (elem ("40")) ]);
         (constr3 [ nil; (elem ("27")); (elem ("35")) ]) ] in
   constr6 [ x0; neutral; x1 ] = constr6 [ x0; x1 ])
;;

testi
  (110)
  (let x0 =
     constr2
       [ (constr5 [ (elem ("11")); (elem ("14")); nil ]);
         (constr3 [ neutral; (elem ("18")); (elem ("8")) ]);
         (inv (elem ("24"))) ] in
   constr6 [ neutral; x0 ] = x0)
;;

testi
  (111)
  (let x0 =
     constr5
       [ (constr4 [ (elem ("12")); (elem ("20")); neutral ]);
         (constr1 [ nil; (elem ("19")); neutral ]);
         (constr2 [ (elem ("22")); neutral; (elem ("6")) ]) ] in
   constr6 [ neutral; x0 ] = x0)
;;

testi
  (112)
  (let x0 = inv (constr1 [ nil; nil; nil ]) in constr6 [ neutral; x0 ] = x0)
;;

testi
  (113)
  (let x0 =
     constr6
       [ nil; (constr1 [ (elem ("20")); (elem ("19")); (elem ("23")) ]);
         (constr6 [ (elem ("12")); (elem ("23")); neutral ]) ] in
   constr6 [ neutral; x0 ] = x0)
;;

testi (114) (let x0 = neutral in constr6 [ neutral; x0 ] = x0)
;;

testi
  (115)
  (let x0 =
     constr2
       [ (inv (elem ("11")));
         (constr3 [ (elem ("10")); (elem ("14")); (elem ("16")) ]);
         (constr3 [ (elem ("19")); (elem ("12")); (elem ("13")) ]) ] in
   constr6 [ x0; neutral; neutral ] = x0)
;;

testi
  (116)
  (let x0 =
     constr6
       [ (constr4 [ (elem ("21")); nil; (elem ("16")) ]);
         (constr1 [ (elem ("13")); nil; (elem ("14")) ]);
         (constr2 [ (elem ("19")); neutral; (elem ("14")) ]) ] in
   constr6 [ x0; neutral; neutral ] = x0)
;;

testi
  (117)
  (let x0 =
     constr1
       [ (constr2 [ (elem ("15")); (elem ("2")); (elem ("6")) ]);
         (constr1 [ nil; (elem ("13")); neutral ]);
         (constr6 [ (elem ("1")); (elem ("7")); nil ]) ] in
   constr6 [ x0; neutral; neutral ] = x0)
;;

testi
  (118)
  (let x0 =
     constr2
       [ (inv neutral); (constr6 [ (elem ("21")); (elem ("17")); neutral ]);
         (constr4 [ neutral; (elem ("13")); (elem ("4")) ]) ] in
   constr6 [ x0; neutral; neutral ] = x0)
;;

testi
  (119)
  (let x0 =
     constr6
       [ (constr6 [ (elem ("7")); (elem ("20")); neutral ]);
         (constr3 [ nil; (elem ("15")); neutral ]);
         (constr2 [ (elem ("19")); neutral; (elem ("14")) ]) ] in
   constr6 [ x0; neutral; neutral ] = x0)
;;

