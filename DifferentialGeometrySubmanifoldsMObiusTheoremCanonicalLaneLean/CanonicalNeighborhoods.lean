import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusTheoremCanonicalLaneLean

structure MObiusCurvaturePackage where
  manifold : Type u
  submanifold : Type v
  curvature : Type w
  gaussMap : Type u
  mObiusInvariant : Prop
  shapeOperator : Prop

structure MObiusCurvatureEvidence (M : MObiusCurvaturePackage) where
  mObiusInvariantClosed : M.mObiusInvariant
  shapeOperatorClosed : M.shapeOperator

def MObiusCurvatureClosed (M : MObiusCurvaturePackage) : Prop :=
  M.mObiusInvariant ∧ M.shapeOperator

theorem m_obius_curvature_closed_from_evidence (M : MObiusCurvaturePackage) (E : MObiusCurvatureEvidence M) :
    MObiusCurvatureClosed M := by
  exact And.intro E.mObiusInvariantClosed E.shapeOperatorClosed

end DifferentialGeometrySubmanifoldsMObiusTheoremCanonicalLaneLean
end HautevilleHouse
