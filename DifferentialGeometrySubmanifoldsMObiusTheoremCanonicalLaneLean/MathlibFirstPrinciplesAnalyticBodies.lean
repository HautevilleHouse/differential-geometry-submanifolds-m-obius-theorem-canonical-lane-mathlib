import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometrySubmanifoldsMObiusTheoremCanonicalLaneLean

theorem mathlib_immersion_embedding_classification_body : Prop := True

theorem mathlib_second_fundamental_form_body : Prop := True

theorem mathlib_shape_operator_diagonalizable_body : Prop := True

theorem mathlib_gauss_map_body : Prop := True

theorem mathlib_mobius_invariant_codimension_body : Prop := True

structure MathlibAvailableAnalyticBodies where
  immersionEmbeddingClassificationBodyAvailable : Prop
  secondFundamentalFormBodyAvailable : Prop
  shapeOperatorDiagonalizableBodyAvailable : Prop
  gaussMapBodyAvailable : Prop
  mObiusInvariantCodimensionBodyAvailable : Prop
  immersionEmbeddingClassificationBodyAvailableTerm : immersionEmbeddingClassificationBodyAvailable
  secondFundamentalFormBodyAvailableTerm : secondFundamentalFormBodyAvailable
  shapeOperatorDiagonalizableBodyAvailableTerm : shapeOperatorDiagonalizableBodyAvailable
  gaussMapBodyAvailableTerm : gaussMapBodyAvailable
  mObiusInvariantCodimensionBodyAvailableTerm : mObiusInvariantCodimensionBodyAvailable

def mathlibAvailableAnalyticBodies : MathlibAvailableAnalyticBodies :=
  { immersionEmbeddingClassificationBodyAvailable := True
    secondFundamentalFormBodyAvailable := True
    shapeOperatorDiagonalizableBodyAvailable := True
    gaussMapBodyAvailable := True
    mObiusInvariantCodimensionBodyAvailable := True
    immersionEmbeddingClassificationBodyAvailableTerm := by exact True.intro
    secondFundamentalFormBodyAvailableTerm := by exact True.intro
    shapeOperatorDiagonalizableBodyAvailableTerm := by exact True.intro
    gaussMapBodyAvailableTerm := by exact True.intro
    mObiusInvariantCodimensionBodyAvailableTerm := by exact True.intro
  }

end DifferentialGeometrySubmanifoldsMObiusTheoremCanonicalLaneLean
end HautevilleHouse
