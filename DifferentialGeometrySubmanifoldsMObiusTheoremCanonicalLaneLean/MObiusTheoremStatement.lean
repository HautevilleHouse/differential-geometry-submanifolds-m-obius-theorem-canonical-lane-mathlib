import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometrySubmanifoldsMObiusTheoremCanonicalLaneLean.SubmanifoldGeometry
import DifferentialGeometrySubmanifoldsMObiusTheoremCanonicalLaneLean.MObiusInvariant

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusTheoremCanonicalLaneLean

structure MObiusTheoremPackage where
  submanifold : SubmanifoldGeometryPackage
  mobiusInvariant : MObiusInvariantPackage
  submanifoldIsCodimensionTwo : Prop
  ambientIsSpaceForm : Prop
  theoremStatement : Prop

structure MObiusTheoremEvidence (T : MObiusTheoremPackage) where
  submanifoldIsCodimensionTwoClosed : T.submanifoldIsCodimensionTwo
  ambientIsSpaceFormClosed : T.ambientIsSpaceForm
  theoremStatementClosed : T.theoremStatement

def MObiusTheoremClosed (T : MObiusTheoremPackage) : Prop :=
  T.submanifoldIsCodimensionTwo ∧ T.ambientIsSpaceForm ∧ T.theoremStatement

theorem mobius_theorem_closed_from_evidence
    (T : MObiusTheoremPackage) (E : MObiusTheoremEvidence T) :
    MObiusTheoremClosed T := by
  exact And.intro E.submanifoldIsCodimensionTwoClosed
    (And.intro E.ambientIsSpaceFormClosed E.theoremStatementClosed)

end DifferentialGeometrySubmanifoldsMObiusTheoremCanonicalLaneLean
end HautevilleHouse