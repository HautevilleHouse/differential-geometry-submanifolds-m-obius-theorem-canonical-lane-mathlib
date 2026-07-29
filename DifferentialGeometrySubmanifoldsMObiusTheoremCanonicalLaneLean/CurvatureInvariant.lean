import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusTheoremCanonicalLaneLean

structure CurvatureInvariantPackage where
  ambientCurvature : Type u
  sectionalCurvature : Type v
  flagCurvature : Type w
  holomorphicCurvature : Type x
  curvatureSignProp : Prop
  pinchingCondition : Prop

structure CurvatureInvariantEvidence (I : CurvatureInvariantPackage) where
  curvatureSignClosed : I.curvatureSignProp
  pinchingConditionClosed : I.pinchingCondition

def CurvatureInvariantClosed (I : CurvatureInvariantPackage) : Prop :=
  I.curvatureSignProp ∧ I.pinchingCondition

theorem curvature_invariant_closed_from_evidence
    (I : CurvatureInvariantPackage) (E : CurvatureInvariantEvidence I) :
    CurvatureInvariantClosed I := by
  exact And.intro E.curvatureSignClosed E.pinchingConditionClosed

end DifferentialGeometrySubmanifoldsMObiusTheoremCanonicalLaneLean
end HautevilleHouse