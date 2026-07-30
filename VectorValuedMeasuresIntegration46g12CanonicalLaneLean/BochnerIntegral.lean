import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorValuedMeasuresIntegration46g12CanonicalLaneLean

structure BochnerIntegral (V : VectorMeasureSpace) where
  stronglyMeasurable : V.carrier → V.vectorSpace → Prop
  integrable : (f : V.carrier → V.vectorSpace) → Prop
  integralValue : (f : V.carrier → V.vectorSpace) → (h : integrable f) → V.vectorSpace
  dominatedConvergence : Prop
  completeness : Prop

end VectorValuedMeasuresIntegration46g12CanonicalLaneLean
end HautevilleHouse