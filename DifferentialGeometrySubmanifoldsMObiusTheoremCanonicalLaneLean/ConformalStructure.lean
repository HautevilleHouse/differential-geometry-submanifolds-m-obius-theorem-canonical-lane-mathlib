import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometrySubmanifoldsMObiusTheoremCanonicalLaneLean.SubmanifoldGeometry

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusTheoremCanonicalLaneLean

structure ConformalStructurePackage where
  ambientMetric : Type u
  conformalClass : Type v
  ambientConformalFlat : Prop
  stereographicProjectionDefined : Prop
  roundSphereMetric : Prop

structure ConformalStructureEvidence (C : ConformalStructurePackage) where
  ambientConformalFlatClosed : C.ambientConformalFlat
  stereographicProjectionDefinedClosed : C.stereographicProjectionDefined
  roundSphereMetricClosed : C.roundSphereMetric

def ConformalStructureClosed (C : ConformalStructurePackage) : Prop :=
  C.ambientConformalFlat ∧ C.stereographicProjectionDefined ∧ C.roundSphereMetric

theorem conformal_structure_closed_from_evidence
    (C : ConformalStructurePackage) (E : ConformalStructureEvidence C) :
    ConformalStructureClosed C := by
  exact And.intro E.ambientConformalFlatClosed
    (And.intro E.stereographicProjectionDefinedClosed E.roundSphereMetricClosed)

end DifferentialGeometrySubmanifoldsMObiusTheoremCanonicalLaneLean
end HautevilleHouse