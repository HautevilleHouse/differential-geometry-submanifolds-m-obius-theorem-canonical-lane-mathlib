import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusTheoremCanonicalLaneLean

structure SubmanifoldConnectionPackage where
  ambientManifold : Type u
  submanifold : Type v
  immersion : submanifold → ambientManifold
  inducedConnection : Type w
  secondFundamentalForm : Type x
  gaussCodazziEquations : Prop

structure SubmanifoldConnectionEvidence (C : SubmanifoldConnectionPackage) where
  gaussCodazziEquationsClosed : C.gaussCodazziEquations

def SubmanifoldConnectionClosed (C : SubmanifoldConnectionPackage) : Prop :=
  C.gaussCodazziEquations

theorem submanifold_connection_closed_from_evidence
    (C : SubmanifoldConnectionPackage) (E : SubmanifoldConnectionEvidence C) :
    SubmanifoldConnectionClosed C := by
  exact E.gaussCodazziEquationsClosed

end DifferentialGeometrySubmanifoldsMObiusTheoremCanonicalLaneLean
end HautevilleHouse