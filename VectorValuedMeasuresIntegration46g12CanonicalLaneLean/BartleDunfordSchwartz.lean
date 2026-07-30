import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VectorValuedMeasuresIntegration46g12CanonicalLaneLean.VectorValuedMeasure

namespace HautevilleHouse
namespace VectorValuedMeasuresIntegration46g12CanonicalLaneLean

structure BartleDunfordSchwartzPackage {α : Type u} [MeasurableSpace α] {X : Type v} [NormedAddCommGroup X] [NormedSpace ℝ X]
  (μ : VectorValuedMeasurePackage α X) where
  integrationOperator : (α → ℝ) → X
  linearContinuous : Prop
  dominatedConvergence : Prop
  linearContinuousClosed : linearContinuous
  dominatedConvergenceClosed : dominatedConvergence

structure BartleDunfordSchwartzEvidence {α : Type u} [MeasurableSpace α] {X : Type v} [NormedAddCommGroup X] [NormedSpace ℝ X]
  {μ : VectorValuedMeasurePackage α X} (B : BartleDunfordSchwartzPackage μ) where
  linearContinuousClosed : B.linearContinuous
  dominatedConvergenceClosed : B.dominatedConvergence

def BartleDunfordSchwartzClosed {α : Type u} [MeasurableSpace α] {X : Type v} [NormedAddCommGroup X] [NormedSpace ℝ X]
  {μ : VectorValuedMeasurePackage α X} (B : BartleDunfordSchwartzPackage μ) : Prop :=
  B.linearContinuous ∧ B.dominatedConvergence

theorem bartle_dunford_schwartz_closed_from_evidence {α : Type u} [MeasurableSpace α] {X : Type v} [NormedAddCommGroup X] [NormedSpace ℝ X]
  {μ : VectorValuedMeasurePackage α X} (B : BartleDunfordSchwartzPackage μ) (E : BartleDunfordSchwartzEvidence B) :
  BartleDunfordSchwartzClosed B := by
  exact And.intro E.linearContinuousClosed E.dominatedConvergenceClosed

end VectorValuedMeasuresIntegration46g12CanonicalLaneLean
end HautevilleHouse