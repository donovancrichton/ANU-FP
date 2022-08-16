%default total 

-- data Nat : Type where
--   Z : Nat
--   S : Nat -> Nat

data Vect : Nat -> Type -> Type where
  Nil  : Vect Z a
  (::) : a -> Vect k a -> Vect (S k) a

lemmaAddZeroRightNeutral : (k : Nat) -> plus k 0 = k
lemmaAddZeroRightNeutral Z = Refl
lemmaAddZeroRightNeutral (S n) = 
  rewrite lemmaAddZeroRightNeutral n in Refl


-- What is going on here? (rewrite +)
(++) : {k : Nat} -> Vect k a -> Vect j a -> Vect (k + j) a
(++) [] ys = ys
(++) (x :: xs) [] = 
  rewrite lemmaAddZeroRightNeutral k in (x :: xs)
(++) (x :: xs) ys = x :: xs ++ ys


