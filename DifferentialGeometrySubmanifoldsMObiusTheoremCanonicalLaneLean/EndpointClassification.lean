import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusTheoremCanonicalLaneLean

structure MObiusClassificationPackage where
  targetManifold : Type u
  targetTopology : TopologicalSpace targetManifold
  immersed : Prop
  embedded : Prop
  mObiusClass : Prop

structure MObiusClassificationEvidence (C : MObiusClassificationPackage) where
  immersedClosed : C.immersed
  embeddedClosed : C.embedded
  mObiusClassClosed : C.mObiusClass

def MObiusClassificationClosed (C : MObiusClassificationPackage) : Prop :=
  C.immersed ∧ C.embedded ∧ C.mObiusClass

theorem m_obius_classification_closed_from_evidence (C : MObiusClassificationPackage) (E : MObiusClassificationEvidence C) :
    MObiusClassificationClosed C := by
  exact And.intro E.immersedClosed (And.intro E.embeddedClosed E.mObiusClassClosed)

end DifferentialGeometrySubmanifoldsMObiusTheoremCanonicalLaneLean
end HautevilleHouse
