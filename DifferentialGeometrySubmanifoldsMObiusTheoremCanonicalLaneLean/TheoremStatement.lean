import DifferentialGeometrySubmanifoldsMObiusTheoremCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusTheoremCanonicalLaneLean

structure MObiusSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure MObiusAdmittedObject where
  space : MObiusSpace
  submanifoldCondition : Prop
  mobiusInvariant : Prop
  conclusion : Prop

structure MObiusEndgameState where
  object : MObiusAdmittedObject

def MObiusWitnessClosed (O : MObiusAdmittedObject) : Prop :=
  O.conclusion

end DifferentialGeometrySubmanifoldsMObiusTheoremCanonicalLaneLean
end HautevilleHouse