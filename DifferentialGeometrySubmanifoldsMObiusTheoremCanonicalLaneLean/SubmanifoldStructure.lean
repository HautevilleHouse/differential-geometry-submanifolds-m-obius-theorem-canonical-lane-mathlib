import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusTheoremCanonicalLaneLean

structure SubmanifoldStructurePackage where
  ambientManifold : Type u
  submanifold : Type v
  inclusionMap : Type w
  inducedMetric : Type x
  secondFundamentalForm : Type y
  shapeOperator : Type z
  constantMeanCurvature : Prop
  isoparametricCondition : Prop
  embeddedClosed : Prop

structure SubmanifoldStructureEvidence (S : SubmanifoldStructurePackage) where
  constantMeanCurvatureClosed : S.constantMeanCurvature
  isoparametricConditionClosed : S.isoparametricCondition
  embeddedClosedClosed : S.embeddedClosed

def SubmanifoldStructureClosed (S : SubmanifoldStructurePackage) : Prop :=
  S.constantMeanCurvature ∧ S.isoparametricCondition ∧ S.embeddedClosed

theorem submanifold_structure_closed_from_evidence (S : SubmanifoldStructurePackage) (E : SubmanifoldStructureEvidence S) :
    SubmanifoldStructureClosed S := by
  exact And.intro E.constantMeanCurvatureClosed
    (And.intro E.isoparametricConditionClosed E.embeddedClosedClosed)

end DifferentialGeometrySubmanifoldsMObiusTheoremCanonicalLaneLean
end HautevilleHouse