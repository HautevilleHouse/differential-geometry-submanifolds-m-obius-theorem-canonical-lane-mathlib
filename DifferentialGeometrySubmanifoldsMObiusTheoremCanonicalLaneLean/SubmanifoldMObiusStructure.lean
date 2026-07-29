import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusTheoremCanonicalLaneLean

structure SubmanifoldStructure (M : Type u) [TopologicalSpace M] [Manifold M] where
  submanifoldType : Type v
  embedding : submanifoldType → M
  inducedTopology : TopologicalSpace submanifoldType
  embeddedSubmanifold : Prop
  secondFundamentalForm : Prop
  shapeOperator : Prop
  gaussCodazziEquations : Prop
  curvatureInvariants : Prop

structure SecondFundamentalForm (S : SubmanifoldStructure M) where
  bilinearForm : S.submanifoldType → S.submanifoldType → ℝ
  symmetry : ∀ x y, bilinearForm x y = bilinearForm y x
  normalComponent : Prop

structure ShapeOperator (S : SubmanifoldStructure M) (g : RiemannianMetric M) where
  operator : ∀ (p : S.submanifoldType), TangentSpace (S.embedding p) → TangentSpace (S.embedding p)
  selfAdjoint : Prop
  eigenvalues : List ℝ

structure GaussCodazziPackage (S : SubmanifoldStructure M) where
  gaussEquation : Prop
  codazziEquation : Prop
  ricciIdentity : Prop
  curvatureCompatibility : Prop

structure SubmanifoldEvidence (S : SubmanifoldStructure M) where
  secondFundamentalFormClosed : S.secondFundamentalForm
  shapeOperatorClosed : S.shapeOperator
  gaussCodazziEquationsClosed : S.gaussCodazziEquations
  curvatureInvariantsClosed : S.curvatureInvariants

def SubmanifoldClosed {M : Type u} [TopologicalSpace M] [Manifold M] (S : SubmanifoldStructure M) : Prop :=
  S.secondFundamentalForm ∧ S.shapeOperator ∧ S.gaussCodazziEquations ∧ S.curvatureInvariants

theorem submanifold_closed_from_evidence {M : Type u} [TopologicalSpace M] [Manifold M]
  (S : SubmanifoldStructure M) (E : SubmanifoldEvidence S) : SubmanifoldClosed S := by
  exact And.intro E.secondFundamentalFormClosed (And.intro E.shapeOperatorClosed
    (And.intro E.gaussCodazziEquationsClosed E.curvatureInvariantsClosed))

end DifferentialGeometrySubmanifoldsMObiusTheoremCanonicalLaneLean
end HautevilleHouse
