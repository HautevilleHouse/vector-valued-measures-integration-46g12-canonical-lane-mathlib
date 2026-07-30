import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace VectorValuedMeasuresIntegration46g12CanonicalLaneLean

structure VectorValuedExtensionPackage (X : VectorMeasureSpace) (μ : VectorMeasure X) where
  extensionMeasure : Set X.carrier → X.targetBanach
  extendsOnSigmaAlgebra : ∀ E ∈ X.sigmaAlgebra, extensionMeasure E = μ.measure E
  countablyAdditiveExtension : Prop
  totalVariation : Set X.carrier → ℝ
  totalVariationFinite : Prop
  extensionUnique : Prop

structure VectorValuedExtensionEvidence {X : VectorMeasureSpace} {μ : VectorMeasure X}
    (V : VectorValuedExtensionPackage X μ) where
  countablyAdditiveExtensionClosed : V.countablyAdditiveExtension
  totalVariationFiniteClosed : V.totalVariationFinite
  extensionUniqueClosed : V.extensionUnique

def VectorValuedExtensionClosed {X : VectorMeasureSpace} {μ : VectorMeasure X}
    (V : VectorValuedExtensionPackage X μ) : Prop :=
  V.countablyAdditiveExtension ∧ V.totalVariationFinite ∧ V.extensionUnique

theorem vector_valued_extension_closed_from_evidence {X : VectorMeasureSpace} {μ : VectorMeasure X}
    (V : VectorValuedExtensionPackage X μ) (E : VectorValuedExtensionEvidence V) :
    VectorValuedExtensionClosed V := by
  exact And.intro E.countablyAdditiveExtensionClosed
    (And.intro E.totalVariationFiniteClosed E.extensionUniqueClosed)

end VectorValuedMeasuresIntegration46g12CanonicalLaneLean
end HautevilleHouse