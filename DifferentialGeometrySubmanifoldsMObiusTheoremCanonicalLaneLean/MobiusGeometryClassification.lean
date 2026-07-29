import HautevilleHouse.DifferentialGeometrySubmanifoldsMObiusTheoremCanonicalLaneLean.DupinHypersurfaces

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusTheoremCanonicalLaneLean

structure MobiusClassificationPackage (M : MobiusSubmanifoldPackage) where
  isoparametricSubmanifolds : Prop
  homogeneousSubmanifolds : Prop
  mobiusEquivalentClasses : Prop
  classificationComplete : Prop

def MobiusClassificationEvidence (M : MobiusSubmanifoldPackage)
    (C : MobiusClassificationPackage M) where
  isoparametricSubmanifoldsClosed : C.isoparametricSubmanifolds
  homogeneousSubmanifoldsClosed : C.homogeneousSubmanifolds
  mobiusEquivalentClassesClosed : C.mobiusEquivalentClasses
  classificationCompleteClosed : C.classificationComplete

def MobiusClassificationClosed (M : MobiusSubmanifoldPackage)
    (C : MobiusClassificationPackage M) : Prop :=
  C.isoparametricSubmanifolds ∧ C.homogeneousSubmanifolds ∧
  C.mobiusEquivalentClasses ∧ C.classificationComplete

theorem mobius_classification_closed_from_evidence (M : MobiusSubmanifoldPackage)
    (C : MobiusClassificationPackage M) (E : MobiusClassificationEvidence M C) :
    MobiusClassificationClosed M C := by
  exact And.intro E.isoparametricSubmanifoldsClosed
    (And.intro E.homogeneousSubmanifoldsClosed
      (And.intro E.mobiusEquivalentClassesClosed E.classificationCompleteClosed))

end DifferentialGeometrySubmanifoldsMObiusTheoremCanonicalLaneLean
end HautevilleHouse