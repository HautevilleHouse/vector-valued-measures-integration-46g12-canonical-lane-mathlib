import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VectorValuedMeasuresIntegration46g12CanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace VectorValuedMeasuresIntegration46g12CanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end VectorValuedMeasuresIntegration46g12CanonicalLaneLean
end HautevilleHouse
