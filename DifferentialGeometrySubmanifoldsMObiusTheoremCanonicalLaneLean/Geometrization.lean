import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusTheoremCanonicalLaneLean

structure MGeometrizationPackage where
  submanifoldDecomposition : Prop
  mObiusStratification : Prop
  normalBundleDecomposition : Prop
  geometricDataComplete : Prop

structure MGeometrizationEvidence (G : MGeometrizationPackage) where
  submanifoldDecompositionClosed : G.submanifoldDecomposition
  mObiusStratificationClosed : G.mObiusStratification
  normalBundleDecompositionClosed : G.normalBundleDecomposition
  geometricDataCompleteClosed : G.geometricDataComplete

def MGeometrizationClosed (G : MGeometrizationPackage) : Prop :=
  G.submanifoldDecomposition ∧ G.mObiusStratification ∧
  G.normalBundleDecomposition ∧ G.geometricDataComplete

theorem m_geometrization_closed_from_evidence (G : MGeometrizationPackage) (E : MGeometrizationEvidence G) :
    MGeometrizationClosed G := by
  exact And.intro E.submanifoldDecompositionClosed
    (And.intro E.mObiusStratificationClosed
      (And.intro E.normalBundleDecompositionClosed E.geometricDataCompleteClosed))

end DifferentialGeometrySubmanifoldsMObiusTheoremCanonicalLaneLean
end HautevilleHouse
