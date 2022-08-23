module VerifiedApplicative

import VerifiedFunctor

%default total
%hide Prelude.Interfaces.(<*>)
%hide Prelude.Interfaces.pure
%ambiguity_depth 10

infixl 3 <*>

interface VerifiedApplicative (f : Type -> Type) where
  pure : a -> f a
  (<*>) : f (a -> b) -> f a -> f b
  idLaw : {x : f a} -> pure Prelude.Basics.id <*> x = x
--  comLaw : {f : Type -> Type} -> {a, b : Type} 
--  -> {x : f a} -> {g : f (a -> b)} -> {h : f (b -> c)} 
--  -> (((pure (.)) <*> h) <*> g) <*> x = (<*>) h (g <*> x)
--  homLaw : ?test
--  intLaw : ?test2

implementation VerifiedApplicative List where
  pure = ?waiting
  (<*>) = ?waiting2
  idLaw = ?waiting3
--  comLaw = ?waiting4
--  homLaw = ?waiting5
--  intLaw = ?waiting6

  
