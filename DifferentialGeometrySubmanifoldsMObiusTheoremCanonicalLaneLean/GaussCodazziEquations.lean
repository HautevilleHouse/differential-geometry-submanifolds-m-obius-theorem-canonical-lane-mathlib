import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusTheoremCanonicalLaneLean

structure GaussCodazziEquationsPackage where
  ambientCurvatureTensor : Type u
  secondFundamentalForm : Type v
  normalCurvature : Type w
  gaussEquation : Prop
  codazziEquation : Prop
  normalCurvatureCompatibility : Prop

structure GaussCodazziEquationsEvidence (G : GaussCodazziEquationsPackage) where
  gaussEquationClosed : G.gaussEquation
  codazziEquationClosed : G.codazziEquation
  normalCurvatureCompatibilityClosed : G.normalCurvatureCompatibility

def GaussCodazziEquationsClosed (G : GaussCodazziEquationsPackage) : Prop :=
  G.gaussEquation ∧ G.codazziEquation ∧ G.normalCurvatureCompatibility

theorem gauss_codazzi_equations_closed_from_evidence (G : GaussCodazziEquationsPackage) (E : GaussCodazziEquationsEvidence G) :
    GaussCodazziEquationsClosed G := by
  exact And.intro E.gaussEquationClosed
    (And.intro E.codazziEquationClosed E.normalCurvatureCompatibilityClosed)

end DifferentialGeometrySubmanifoldsMObiusTheoremCanonicalLaneLean
end HautevilleHouse