import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean

structure HansenJagannathanBound where
  stochasticDiscountFactor : ℝ → ℝ
  assetReturn : ℝ → ℝ
  boundInequality : Prop

def HJBoundClosed (HJ : HansenJagannathanBound) : Prop :=
  HJ.boundInequality

end DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean
end HautevilleHouse