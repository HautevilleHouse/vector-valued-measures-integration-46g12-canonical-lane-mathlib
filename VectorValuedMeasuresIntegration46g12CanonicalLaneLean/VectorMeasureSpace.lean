import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorValuedMeasuresIntegration46g12CanonicalLaneLean

structure VectorMeasureSpace where
  carrier : Type u
  measurableSpace : MeasurableSpace carrier
  targetBanachSpace : Type v
  normedAddCommGroup : NormedAddCommGroup targetBanachSpace
  normedSpace : NormedSpace ℝ targetBanachSpace
  completeSpace : CompleteSpace targetBanachSpace

def VectorMeasureSpaceClosed (V : VectorMeasureSpace) : Prop :=
  True

end VectorValuedMeasuresIntegration46g12CanonicalLaneLean
end HautevilleHouse
