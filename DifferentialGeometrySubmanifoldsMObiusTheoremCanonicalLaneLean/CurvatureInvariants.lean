import HautevilleHouse.DifferentialGeometrySubmanifoldsMObiusTheoremCanonicalLaneLean.MobiusSubmanifoldFoundations

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusTheoremCanonicalLaneLean

structure CurvatureInvariantsPackage (M : MobiusSubmanifoldPackage) where
  secondFundamentalForm : Type u
  meanCurvature : Type v
  scalarCurvature : Type w
  gaussEquation : Prop
  codazziEquation : Prop
  ricciEquation : Prop

def CurvatureInvariantsEvidence (M : MobiusSubmanifoldPackage)
    (C : CurvatureInvariantsPackage M) where
  gaussEquationClosed : C.gaussEquation
  codazziEquationClosed : C.codazziEquation
  ricciEquationClosed : C.ricciEquation

def CurvatureInvariantsClosed (M : MobiusSubmanifoldPackage)
    (C : CurvatureInvariantsPackage M) : Prop :=
  C.gaussEquation ∧ C.codazziEquation ∧ C.ricciEquation

theorem curvature_invariants_closed_from_evidence (M : MobiusSubmanifoldPackage)
    (C : CurvatureInvariantsPackage M) (E : CurvatureInvariantsEvidence M C) :
    CurvatureInvariantsClosed M C := by
  exact And.intro E.gaussEquationClosed
    (And.intro E.codazziEquationClosed E.ricciEquationClosed)

end DifferentialGeometrySubmanifoldsMObiusTheoremCanonicalLaneLean
end HautevilleHouse