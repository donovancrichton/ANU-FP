%default total

interface VerifiedFunctor (f : Type -> Type) where
  -- our map function.
  map : (a -> b) -> f a -> f b
  -- what about our laws?
  -- recall map id = id and map (f . g) = map f . map g
  mapIdLaw : map {b = a} Prelude.id = Prelude.id -- what is this type? Why Prelude?
  mapComposeLaw : map {a} (f . g) = map f . map g -- the implicits?

implementation VerifiedFunctor List where
  map = ?wait
  mapIdLaw = ?wait2
  mapComposeLaw = ?wait3
