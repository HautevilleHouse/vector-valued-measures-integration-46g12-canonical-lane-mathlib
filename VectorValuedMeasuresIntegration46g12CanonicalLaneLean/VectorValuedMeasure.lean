import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorValuedMeasuresIntegration46g12CanonicalLaneLean

structure VectorValuedMeasurePackage (α : Type u) [MeasurableSpace α] (X : Type v) [NormedAddCommGroup X] where
  measure : Set α → X
  countableAdditive : Prop
  countablyAdditiveClosed : countableAdditive

structure VectorValuedMeasureEvidence {α : Type u} [MeasurableSpace α] {X : Type v} [NormedAddCommGroup X]
  (P : VectorValuedMeasurePackage α X) where
  countableAdditiveClosed : P.countableAdditive

def VectorValuedMeasureClosed {α : Type u} [MeasurableSpace α] {X : Type v} [NormedAddCommGroup X]
  (P : VectorValuedMeasurePackage α X) : Prop :=
  P.countableAdditive

theorem vector_valued_measure_closed_from_evidence {α : Type u} [MeasurableSpace α] {X : Type v} [NormedAddCommGroup X]
  (P : VectorValuedMeasurePackage α X) (E : VectorValuedMeasureEvidence P) :
  VectorValuedMeasureClosed P := by
  exact E.countableAdditiveClosed

end VectorValuedMeasuresIntegration46g12CanonicalLaneLean
end HautevilleHouse