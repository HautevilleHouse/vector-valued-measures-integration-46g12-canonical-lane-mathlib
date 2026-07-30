import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.VectorValuedMeasuresIntegration46g12CanonicalLaneLean.VectorMeasureAdmissibleClass

namespace HautevilleHouse
namespace VectorValuedMeasuresIntegration46g12CanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.measureDefined ∧ A.object.variationFinite ∧ A.object.integralWellDefined

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end VectorValuedMeasuresIntegration46g12CanonicalLaneLean
end HautevilleHouse
