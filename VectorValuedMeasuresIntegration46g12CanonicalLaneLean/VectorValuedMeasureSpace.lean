import canonicalLaneMathlib.AdmissibleClass
import Mathlib.MeasureTheory.Measure.MeasureSpace

namespace HautevilleHouse
namespace VectorValuedMeasuresIntegration46g12CanonicalLaneLean

structure VectorValuedMeasureSpace (α : Type u) [inst : MeasurableSpace α] where
  targetBanachSpace : Type v
  normedAddCommGroup : NormedAddCommGroup targetBanachSpace
  normedSpace : NormedSpace ℝ targetBanachSpace
  measure : Set α → targetBanachSpace
  sigmaAdditive : Prop
  stronglyAdditive : Prop

def VectorValuedMeasureSpaceClosed {α : Type u} [MeasurableSpace α]
    (V : VectorValuedMeasureSpace α) : Prop :=
  V.sigmaAdditive ∧ V.stronglyAdditive

structure VectorValuedMeasureEvidence {α : Type u} [MeasurableSpace α]
    (V : VectorValuedMeasureSpace α) where
  sigmaAdditiveClosed : V.sigmaAdditive
  stronglyAdditiveClosed : V.stronglyAdditive

theorem vector_valued_measure_space_closed_from_evidence
    {α : Type u} [MeasurableSpace α] (V : VectorValuedMeasureSpace α)
    (E : VectorValuedMeasureEvidence V) : VectorValuedMeasureSpaceClosed V := by
  exact And.intro E.sigmaAdditiveClosed E.stronglyAdditiveClosed

end HautevilleHouse
end VectorValuedMeasuresIntegration46g12CanonicalLaneLean