import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorValuedMeasuresIntegration46g12CanonicalLaneLean

structure SimpleFunction {V : VectorMeasureSpace} (A : Set V.carrier) where
  measurable : A ∈ V.sigmaAlgebra
  image : Finset V.vectorSpace
  preimages : V.vectorSpace → Set V.carrier

structure Integral (V : VectorMeasureSpace) where
  simpleIntegral : (A : Set V.carrier) → SimpleFunction A → V.vectorSpace
  dominatedConvergence : Prop
  linearity : Prop

end VectorValuedMeasuresIntegration46g12CanonicalLaneLean
end HautevilleHouse