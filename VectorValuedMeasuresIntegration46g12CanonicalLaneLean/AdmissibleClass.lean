import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorValuedMeasuresIntegration46g12CanonicalLaneLean

structure VectorAdmissibleClass where
  object : PoincareAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def vectorAdmittedClosure (A : VectorAdmissibleClass) : Prop :=
  PoincareWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end VectorValuedMeasuresIntegration46g12CanonicalLaneLean
end HautevilleHouse