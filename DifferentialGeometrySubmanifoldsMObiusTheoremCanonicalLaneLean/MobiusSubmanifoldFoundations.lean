import HautevilleHouse.DifferentialGeometrySubmanifoldsMObiusTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusTheoremCanonicalLaneLean

structure MobiusSubmanifoldPackage where
  ambientManifold : Type u
  ambientTopology : TopologicalSpace ambientManifold
  ambientSmoothStructure : Prop
  submanifold : Type v
  subTopology : TopologicalSpace submanifold
  immersion : submanifold → ambientManifold
  dimensionM : Nat
  codimension : Nat
  mobiusInvariant : Prop
  willmoreFunctional : Prop
  umbilicCondition : Prop

structure MobiusSubmanifoldEvidence (M : MobiusSubmanifoldPackage) where
  ambientSmoothStructureClosed : M.ambientSmoothStructure
  mobiusInvariantClosed : M.mobiusInvariant
  willmoreFunctionalClosed : M.willmoreFunctional
  umbilicConditionClosed : M.umbilicCondition

def MobiusSubmanifoldClosed (M : MobiusSubmanifoldPackage) : Prop :=
  M.ambientSmoothStructure ∧ M.mobiusInvariant ∧ M.willmoreFunctional ∧ M.umbilicCondition

theorem mobius_submanifold_closed_from_evidence (M : MobiusSubmanifoldPackage)
    (E : MobiusSubmanifoldEvidence M) : MobiusSubmanifoldClosed M := by
  exact And.intro E.ambientSmoothStructureClosed
    (And.intro E.mobiusInvariantClosed
      (And.intro E.willmoreFunctionalClosed E.umbilicConditionClosed))

end DifferentialGeometrySubmanifoldsMObiusTheoremCanonicalLaneLean
end HautevilleHouse