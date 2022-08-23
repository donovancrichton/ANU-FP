module VerifiedFunctor

%default total

infixr 8 <$>

interface VerifiedFunctor (f : Type -> Type) where
  -- our map function.
  (<$>) : (a -> b) -> f a -> f b
  -- what about our laws?
  -- recall map id = id and map (f . g) = map f . map g
  mapIdLaw : (<$>) {b = a} Prelude.id = Prelude.id -- what is this type? Why Prelude?
  mapComposeLaw : (<$>) {a} (f . g) = (<$>) f . (<$>) g -- the implicits?

implementation VerifiedFunctor List where
  (<$>) = ?wait
  mapIdLaw = ?wait2
  mapComposeLaw = ?wait3
