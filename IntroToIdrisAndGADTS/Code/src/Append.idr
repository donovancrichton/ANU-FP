%default total 

-- data Nat : Type where
--   Z : Nat
--   S : Nat -> Nat

data Vect : Nat -> Type -> Type where
  Nil  : Vect Z a
  (::) : a -> Vect k a -> Vect (S k) a

-- What is going on here? (rewrite +)
(++) : Vect k a -> Vect j a -> Vect (k + j) a
