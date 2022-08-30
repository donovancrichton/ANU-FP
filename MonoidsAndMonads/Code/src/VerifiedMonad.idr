module VerifiedMonad

import VerifiedApplicative

%default total
%hide Prelude.(>>=)
%hide Prelude.join

public export
interface VerifiedApplicative m => VerifiedMonad (m : Type -> Type) where
  -- functions
  (>>=) : m a -> (a -> m b) -> m b
  join : m (m a) -> m a

  -- laws 
  pureIdLeft : {f : a -> m b} -> VerifiedApplicative.pure x >>= f = f x
  pureIdRight : {x : m a} -> x >>= VerifiedApplicative.pure = x
  assoc : {x : m a} -> {f : a -> m b} -> {g : b -> m b}
       -> x >>= (\x => f x >>= g) = (x >>= f) >>= g

public export
implementation VerifiedMonad List where
  (>>=) = ?wait1
  join = ?wait2

  pureIdLeft = ?wait3
  pureIdRight = ?wait4
  assoc = ?wait5
