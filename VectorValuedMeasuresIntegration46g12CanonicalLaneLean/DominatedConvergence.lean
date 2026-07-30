import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorValuedMeasuresIntegration46g12CanonicalLaneLean

structure DominatedConvergenceTheorem where
  vectorMeasure : VectorMeasureSpace
  integrableSequence : ℕ → (VectorMeasureSpace.carrier vectorMeasure → VectorMeasureSpace.targetBanach vectorMeasure)
  pointwiseLimit : VectorMeasureSpace.carrier vectorMeasure → VectorMeasureSpace.targetBanach vectorMeasure
  dominatingFunction : VectorMeasureSpace.carrier vectorMeasure → ℝ
  convergenceAlmostEverywhere : Prop
  dominationCondition : Prop
  integrableLimit : Prop

structure DominatedConvergenceEvidence (D : DominatedConvergenceTheorem) where
  convergenceAlmostEverywhereClosed : D.convergenceAlmostEverywhere
  dominationConditionClosed : D.dominationCondition
  integrableLimitClosed : D.integrableLimit

def DominatedConvergenceClosed (D : DominatedConvergenceTheorem) : Prop :=
  D.convergenceAlmostEverywhere ∧ D.dominationCondition ∧ D.integrableLimit

theorem dominated_convergence_closed_from_evidence (D : DominatedConvergenceTheorem)
    (E : DominatedConvergenceEvidence D) : DominatedConvergenceClosed D := by
  exact And.intro E.convergenceAlmostEverywhereClosed
    (And.intro E.dominationConditionClosed E.integrableLimitClosed)

end VectorValuedMeasuresIntegration46g12CanonicalLaneLean
end HautevilleHouse