import HautevilleHouse.DifferentialGeometrySubmanifoldsMObiusTheoremCanonicalLaneLean.CurvatureInvariants

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusTheoremCanonicalLaneLean

structure DupinHypersurfacePackage (M : MobiusSubmanifoldPackage) where
  principalCurvatures : Type u
  multiplicities : Type v
  curvatureSpheres : Type w
  dupinCyclidesProperties : Prop
  lieInvariance : Prop
  mobiusInvariance : Prop

def DupinHypersurfaceEvidence (M : MobiusSubmanifoldPackage)
    (D : DupinHypersurfacePackage M) where
  dupinCyclidesPropertiesClosed : D.dupinCyclidesProperties
  lieInvarianceClosed : D.lieInvariance
  mobiusInvarianceClosed : D.mobiusInvariance

def DupinHypersurfaceClosed (M : MobiusSubmanifoldPackage)
    (D : DupinHypersurfacePackage M) : Prop :=
  D.dupinCyclidesProperties ∧ D.lieInvariance ∧ D.mobiusInvariance

theorem dupin_hypersurface_closed_from_evidence (M : MobiusSubmanifoldPackage)
    (D : DupinHypersurfacePackage M) (E : DupinHypersurfaceEvidence M D) :
    DupinHypersurfaceClosed M D := by
  exact And.intro E.dupinCyclidesPropertiesClosed
    (And.intro E.lieInvarianceClosed E.mobiusInvarianceClosed)

end DifferentialGeometrySubmanifoldsMObiusTheoremCanonicalLaneLean
end HautevilleHouse