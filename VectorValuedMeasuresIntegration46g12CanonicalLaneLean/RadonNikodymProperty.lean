import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VectorValuedMeasuresIntegration46g12CanonicalLaneLean.VectorValuedMeasureSpace

namespace HautevilleHouse
namespace VectorValuedMeasuresIntegration46g12CanonicalLaneLean

structure RadonNikodymProperty {α : Type u} [MeasurableSpace α]
    (V : VectorValuedMeasureSpace α) where
  derivativeExists : Prop
  densityFunction : Prop
  absoluteContinuity : Prop

def RadonNikodymPropertyClosed {α : Type u} [MeasurableSpace α]
    {V : VectorValuedMeasureSpace α} (R : RadonNikodymProperty V) : Prop :=
  R.derivativeExists ∧ R.densityFunction ∧ R.absoluteContinuity

structure RadonNikodymEvidence {α : Type u} [MeasurableSpace α]
    {V : VectorValuedMeasureSpace α} (R : RadonNikodymProperty V) where
  derivativeExistsClosed : R.derivativeExists
  densityFunctionClosed : R.densityFunction
  absoluteContinuityClosed : R.absoluteContinuity

theorem radon_nikodym_property_closed_from_evidence
    {α : Type u} [MeasurableSpace α] {V : VectorValuedMeasureSpace α}
    (R : RadonNikodymProperty V) (E : RadonNikodymEvidence R) :
    RadonNikodymPropertyClosed R := by
  exact And.intro E.derivativeExistsClosed
    (And.intro E.densityFunctionClosed E.absoluteContinuityClosed)

end HautevilleHouse
end VectorValuedMeasuresIntegration46g12CanonicalLaneLean