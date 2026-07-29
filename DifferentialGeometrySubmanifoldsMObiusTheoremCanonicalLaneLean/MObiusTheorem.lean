import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusTheoremCanonicalLaneLean

structure MObiusTheoremPackage where
  submanifold : Type u
  embedding : Type v
  secondFundamentalForm : Type w
  shapeOperator : Type x
  normalBundle : Type y
  gaussCodazziEquations : Prop
  mObiusInvariant : Prop
  conformalStructure : Prop

structure MObiusTheoremEvidence (P : MObiusTheoremPackage) where
  gaussCodazziEquationsClosed : P.gaussCodazziEquations
  mObiusInvariantClosed : P.mObiusInvariant
  conformalStructureClosed : P.conformalStructure

def MObiusTheoremClosed (P : MObiusTheoremPackage) : Prop :=
  P.gaussCodazziEquations ∧ P.mObiusInvariant ∧ P.conformalStructure

theorem mobius_theorem_closed_from_evidence (P : MObiusTheoremPackage) (E : MObiusTheoremEvidence P) :
    MObiusTheoremClosed P := by
  exact And.intro E.gaussCodazziEquationsClosed
    (And.intro E.mObiusInvariantClosed E.conformalStructureClosed)

end DifferentialGeometrySubmanifoldsMObiusTheoremCanonicalLaneLean
end HautevilleHouse