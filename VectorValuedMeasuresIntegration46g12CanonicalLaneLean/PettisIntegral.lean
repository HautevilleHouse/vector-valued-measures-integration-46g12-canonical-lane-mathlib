import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorValuedMeasuresIntegration46g12CanonicalLaneLean

structure PettisIntegral (V : VectorMeasureSpace) where
  integrable : V.carrier → V.vectorSpace → Prop
  integralValue : (f : V.carrier → V.vectorSpace) → (h : integrable f) → V.vectorSpace
  weakMeasurability : Prop
  linearityAndBoundedness : Prop

end VectorValuedMeasuresIntegration46g12CanonicalLaneLean
end HautevilleHouse