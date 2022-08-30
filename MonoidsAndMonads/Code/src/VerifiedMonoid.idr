module Verified Monoid

%default total
%hide Prelude.(<+>)

interface VerifiedMonoid (m : Type) where
  -- operations
  neutral : m
  (<+>) : m -> m -> m

  -- laws
  leftId : {x : m} -> neutral <+> x = x
  rightId : {x : m} -> x <+> neutral = x
  assoc : {x, y, z : m} -> x <+> (y <+> z) = (x <+> y) <+> z

implementation {a : Type} -> VerifiedMonoid (List a) where
  neutral = ?hole1
  (<+>) = ?hole2

  leftId = ?hole3
  rightId = ?hole4
  assoc = ?hole5







