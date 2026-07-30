import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VectorValuedMeasuresIntegration46g12CanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace VectorValuedMeasuresIntegration46g12CanonicalLaneLean

def ConstrainedVectorMeasureClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem vector_measure_endgame (A : AdmissibleClass) :
    ConstrainedVectorMeasureClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end VectorValuedMeasuresIntegration46g12CanonicalLaneLean
end HautevilleHouse
