import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusTheoremCanonicalLaneLean

structure WillmoreSurfacePackage where
  surfaceType : Type u
  inducedMetric : Type v
  meanCurvature : Type w
  willmoreFunctional : Type x
  eulerLagrangeEquation : Prop
  criticalPoint : Prop
  willmoreConjectureCase : Prop

structure WillmoreSurfaceEvidence (W : WillmoreSurfacePackage) where
  eulerLagrangeEquationClosed : W.eulerLagrangeEquation
  criticalPointClosed : W.criticalPoint
  willmoreConjectureCaseClosed : W.willmoreConjectureCase

def WillmoreSurfaceClosed (W : WillmoreSurfacePackage) : Prop :=
  W.eulerLagrangeEquation ∧ W.criticalPoint ∧ W.willmoreConjectureCase

theorem willmore_surface_closed_from_evidence (W : WillmoreSurfacePackage) (E : WillmoreSurfaceEvidence W) :
    WillmoreSurfaceClosed W := by
  exact And.intro E.eulerLagrangeEquationClosed
    (And.intro E.criticalPointClosed E.willmoreConjectureCaseClosed)

end DifferentialGeometrySubmanifoldsMObiusTheoremCanonicalLaneLean
end HautevilleHouse