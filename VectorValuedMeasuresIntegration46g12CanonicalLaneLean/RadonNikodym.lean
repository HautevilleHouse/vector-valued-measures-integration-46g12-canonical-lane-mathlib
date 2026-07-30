import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorValuedMeasuresIntegration46g12CanonicalLaneLean

structure RadonNikodymPackage {V : VectorMeasureSpace} where
  referenceMeasure : VectorValuedMeasure
  absoluteContinuity : Prop
  densityFunction : (Set carrier) → VectorValuedMeasure
  radonNikodymDerivative : Prop

structure RadonNikodymEvidence {V : VectorMeasureSpace} (R : RadonNikodymPackage V) where
  absoluteContinuityClosed : R.absoluteContinuity
  radonNikodymDerivativeClosed : R.radonNikodymDerivative

def RadonNikodymClosed {V : VectorMeasureSpace} (R : RadonNikodymPackage V) : Prop :=
  R.absoluteContinuity ∧ R.radonNikodymDerivative

theorem radon_nikodym_closed_from_evidence {V : VectorMeasureSpace} (R : RadonNikodymPackage V) (E : RadonNikodymEvidence R) : RadonNikodymClosed R := by
  exact And.intro E.absoluteContinuityClosed E.radonNikodymDerivativeClosed

end VectorValuedMeasuresIntegration46g12CanonicalLaneLean
end HautevilleHouse