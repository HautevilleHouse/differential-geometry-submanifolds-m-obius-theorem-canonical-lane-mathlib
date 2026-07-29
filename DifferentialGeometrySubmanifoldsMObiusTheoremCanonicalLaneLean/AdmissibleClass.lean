import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusTheoremCanonicalLaneLean

structure SubmanifoldAdmittedObject where
  ambientManifold : Type
  submanifold : Type
  inclusion : submanifold → ambientManifold
  mObiusInvariantHolds : Prop
  conclusion : mObiusInvariantHolds

structure SubmanifoldAdmissibleClass where
  object : SubmanifoldAdmittedObject
  bridge : Prop
  gate : Prop
  gateWitness : bridge ∨ gate

end DifferentialGeometrySubmanifoldsMObiusTheoremCanonicalLaneLean
end HautevilleHouse
