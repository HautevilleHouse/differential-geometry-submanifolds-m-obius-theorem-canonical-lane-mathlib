import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusTheoremCanonicalLaneLean

structure ConformalInvariantPackage where
  conformalMetric : Type u
  willmoreFunctional : Type v
  mObiusInvariant : Prop
  conformalGaussMap : Type w
  conformalArcLength : Type x
  conformalWillmoreEnergy : Prop
  criticalSurfaceCondition : Prop

structure ConformalInvariantEvidence (C : ConformalInvariantPackage) where
  conformalWillmoreEnergyClosed : C.conformalWillmoreEnergy
  criticalSurfaceConditionClosed : C.criticalSurfaceCondition
  mObiusInvariantClosed : C.mObiusInvariant

def ConformalInvariantClosed (C : ConformalInvariantPackage) : Prop :=
  C.conformalWillmoreEnergy ∧ C.criticalSurfaceCondition ∧ C.mObiusInvariant

theorem conformal_invariant_closed_from_evidence (C : ConformalInvariantPackage) (E : ConformalInvariantEvidence C) :
    ConformalInvariantClosed C := by
  exact And.intro E.conformalWillmoreEnergyClosed
    (And.intro E.criticalSurfaceConditionClosed E.mObiusInvariantClosed)

end DifferentialGeometrySubmanifoldsMObiusTheoremCanonicalLaneLean
end HautevilleHouse