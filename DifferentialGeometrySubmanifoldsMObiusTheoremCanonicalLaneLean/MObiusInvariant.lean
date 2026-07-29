import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DifferentialGeometrySubmanifoldsMObiusTheoremCanonicalLaneLean.SubmanifoldMObiusStructure

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusTheoremCanonicalLaneLean

structure MObiusInvariantPackage (M : Type u) [TopologicalSpace M] [Manifold M] where
  submanifold : SubmanifoldStructure M
  curvatureInvariant : Prop
  conformalInvariance : Prop
  meanCurvatureScaled : Prop
  willmoreEnergy : Prop

structure MObiusInvariantEvidence {M : Type u} [TopologicalSpace M] [Manifold M]
  (P : MObiusInvariantPackage M) where
  curvatureInvariantClosed : P.curvatureInvariant
  conformalInvarianceClosed : P.conformalInvariance
  meanCurvatureScaledClosed : P.meanCurvatureScaled
  willmoreEnergyClosed : P.willmoreEnergy

def MObiusInvariantClosed {M : Type u} [TopologicalSpace M] [Manifold M]
  (P : MObiusInvariantPackage M) : Prop :=
  P.curvatureInvariant ∧ P.conformalInvariance ∧ P.meanCurvatureScaled ∧ P.willmoreEnergy

theorem mobius_invariant_closed_from_evidence {M : Type u} [TopologicalSpace M] [Manifold M]
  (P : MObiusInvariantPackage M) (E : MObiusInvariantEvidence P) : MObiusInvariantClosed P := by
  exact And.intro E.curvatureInvariantClosed (And.intro E.conformalInvarianceClosed
    (And.intro E.meanCurvatureScaledClosed E.willmoreEnergyClosed))

end DifferentialGeometrySubmanifoldsMObiusTheoremCanonicalLaneLean
end HautevilleHouse
