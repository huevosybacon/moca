type 'a sequent_set = 
   | Trivial
   | Closed
   | Positive of 'a
   | Negative of 'a
   | Graft of 'a sequent_set * 'a sequent_set
     (*
       associative commutative neutral (Trivial) absorbent (Closed)
       distributive (Union)
       rule Graft (Positive p, Negative q) (* when p = q *) -> Closed
       rule Graft (Negative p, Positive q) (* when p = q *) -> Closed
       rule Graft (Positive p, Graft (Negative q, r)) (* when p = q *) -> Closed
       rule Graft (Negative p, Graft (Positive q, r)) (* when p = q *) -> Closed
     *)
   | Union of 'a sequent_set * 'a sequent_set
     (*
       associative commutative neutral (Closed) absorbent (Trivial)
(*       distributive (Graft) *)
    *)
;;

     let equal = 0;;
     let smaller = -1;;
     let greater = 1;;

     let rec compare_sequent_set s1 s2 =
       match s1, s2 with

       | Closed, Closed -> equal
       | Closed, _ -> smaller
       | _, Closed -> greater

       | Trivial, Trivial -> equal
       | Trivial, _ -> greater
       | _, Trivial -> smaller

       | Positive a, Positive b -> Pervasives.compare a b
       | Positive a, Negative b ->
         (* Positive x < Negative x *)
         let c = Pervasives.compare a b in
         if c = equal then smaller else c
       | Positive _, _ -> smaller

       | Negative a, Negative b -> Pervasives.compare a b
       | Negative a, Positive b ->
         let c = Pervasives.compare a b in
         (* Negative x > Positive x *)
         if c = equal then greater else c
       | Negative _, _ -> smaller

       | Graft (s3, s4), Graft (s5, _) ->
         let c = compare_sequent_set s3 s5 in
         if c = equal then compare_sequent_set s4 s5 else c
       | Graft (_, _), Union (_, _) -> smaller
       | Graft (_, _), _ -> greater

       | Union (s3, s4), Union (s5, _) ->
         let c = compare_sequent_set s3 s5 in
         if c = equal then compare_sequent_set s4 s5 else c
       | Union (_, _), Graft (_, _) -> greater
       | Union (_, _), _ -> smaller;;

let rec closed = (Closed)
and trivial = (Trivial)
and positive x = (Positive(x))
and graft z = 
(match z with
| ((Negative p), (Positive q)) when p = q -> Closed
| ((Positive p), (Negative q)) when p = q -> Closed
| ((Negative p), (Graft (Positive q, _))) when p = q -> Closed
| ((Positive p), (Graft (Negative q, _))) when p = q -> Closed
| (Closed, _) -> Closed
| (_, Closed) -> Closed
| (Trivial, y) -> y
| (x, Trivial) -> x
| ((Union(x, y)), z) -> (union ((graft (x, z)), (graft (y, z))))
| (x, (Union(y, z))) -> (union ((graft (x, y)), (graft (x, z))))
| ((Graft(x, y)), z) -> (graft (x, (graft (y, z))))
| (x, y) -> (insert_graft x y))

and is_redex_graft z = 
(match z with
| ((Negative p), (Positive q)) when p = q -> true
| ((Positive p), (Negative q)) when p = q -> true
| ((Negative p), (Graft (Positive q, _))) when p = q -> true
| ((Positive p), (Graft (Negative q, _))) when p = q -> true
| (Closed, _) -> true
| (_, Closed) -> true
| _ -> false)

and return_graft z = 
(match z with
| (x, y) -> if (is_redex_graft (x, y))
then (graft (x, y))
else (Graft(x, y))
)

and insert_graft x u = 
(match u with
| (Graft(y, _)) when (compare_sequent_set x y < 0) -> (return_graft (x, u))
| (Graft(y, t)) -> (return_graft (y, (insert_graft x t)))
| _ when (compare_sequent_set x u > 0) -> (return_graft (u, x))
| _ -> (return_graft (x, u)))

and negative x = (Negative(x))
and union z = 
(match z with
| (Trivial, _) -> Trivial
| (_, Trivial) -> Trivial
| (Closed, y) -> y
| (x, Closed) -> x
(*| ((Graft(x, y)), z) -> (graft ((union (x, z)), (union (y, z))))
| (x, (Graft(y, z))) -> (graft ((union (x, y)), (union (x, z))))*)
| ((Union(x, y)), z) -> (union (x, (union (y, z))))
| (x, y) -> (insert_union x y))

and is_redex_union z = 
(match z with
| (Closed, _) -> true
| (_, Closed) -> true
| _ -> false)

and return_union z = 
(match z with
| (x, y) -> if (is_redex_union (x, y))
then (union (x, y))
else (Union(x, y))
)

and insert_union x u = 
(match u with
| (Union(y, _)) when (compare_sequent_set x y < 0) -> (return_union (x, u))
| (Union(y, t)) -> (return_union (y, (insert_union x t)))
| _ when (compare_sequent_set x u > 0) -> (return_union (u, x))
| _ -> (return_union (x, u)))
;;

external eq_sequent_set : (('a) sequent_set -> (('a) sequent_set -> bool)) =
   "%equal";;

