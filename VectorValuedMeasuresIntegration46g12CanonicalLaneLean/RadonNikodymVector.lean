import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorValuedMeasuresIntegration46g12CanonicalLaneLean

structure VectorValuedMeasure (V : VectorMeasureSpace) where
  mu : VectorMeasure V
  countablyAdditive : Prop
  variation : Prop

structure RadonNikodymDerivative (V : VectorMeasureSpace) (μ ν : VectorValuedMeasure V) where
  derivative : V.carrier → V.vectorSpace
  measurable : Prop
  integralRepresents : Prop

end VectorValuedMeasuresIntegration46g12CanonicalLaneLean
end HautevilleHouse