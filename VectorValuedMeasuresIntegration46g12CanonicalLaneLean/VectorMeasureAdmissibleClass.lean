import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VectorValuedMeasuresIntegration46g12CanonicalLaneLean.VectorMeasureSpace

namespace HautevilleHouse
namespace VectorValuedMeasuresIntegration46g12CanonicalLaneLean

structure VectorMeasureAdmissibleObject where
  space : VectorMeasureSpace
  measureDefined : Prop
  variationFinite : Prop
  integralWellDefined : Prop
  conclusion : measureDefined ∧ variationFinite ∧ integralWellDefined

structure AdmissibleClass where
  object : VectorMeasureAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.measureDefined ∧ A.object.variationFinite ∧ A.object.integralWellDefined) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end VectorValuedMeasuresIntegration46g12CanonicalLaneLean
end HautevilleHouse
