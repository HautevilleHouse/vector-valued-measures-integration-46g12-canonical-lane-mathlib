import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VectorValuedMeasuresIntegration46g12CanonicalLaneLean.VectorValuedMeasure

namespace HautevilleHouse
namespace VectorValuedMeasuresIntegration46g12CanonicalLaneLean

structure RadonNikodymVectorValuedPackage {α : Type u} [MeasurableSpace α] {X : Type v} [NormedAddCommGroup X] [NormedSpace ℝ X]
  (μ ν : VectorValuedMeasurePackage α X) where
  absoluteContinuity : Prop
  derivativeExists : Prop
  radonNikodymDerivative : α → X
  absoluteContinuityClosed : absoluteContinuity
  derivativeExistsClosed : derivativeExists

structure RadonNikodymVectorValuedEvidence {α : Type u} [MeasurableSpace α] {X : Type v} [NormedAddCommGroup X] [NormedSpace ℝ X]
  {μ ν : VectorValuedMeasurePackage α X} (R : RadonNikodymVectorValuedPackage μ ν) where
  absoluteContinuityClosed : R.absoluteContinuity
  derivativeExistsClosed : R.derivativeExists

def RadonNikodymVectorValuedClosed {α : Type u} [MeasurableSpace α] {X : Type v} [NormedAddCommGroup X] [NormedSpace ℝ X]
  {μ ν : VectorValuedMeasurePackage α X} (R : RadonNikodymVectorValuedPackage μ ν) : Prop :=
  R.absoluteContinuity ∧ R.derivativeExists

theorem radon_nikodym_vector_valued_closed_from_evidence {α : Type u} [MeasurableSpace α] {X : Type v} [NormedAddCommGroup X] [NormedSpace ℝ X]
  {μ ν : VectorValuedMeasurePackage α X} (R : RadonNikodymVectorValuedPackage μ ν) (E : RadonNikodymVectorValuedEvidence R) :
  RadonNikodymVectorValuedClosed R := by
  exact And.intro E.absoluteContinuityClosed E.derivativeExistsClosed

end VectorValuedMeasuresIntegration46g12CanonicalLaneLean
end HautevilleHouse