import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean

structure PerturbationSolution where
  steadyState : ℝ
  firstOrderApprox : ℝ → ℝ
  secondOrderApprox : ℝ → ℝ
  accuracyCondition : Prop

def PerturbationSolutionClosed (P : PerturbationSolution) : Prop :=
  P.accuracyCondition

end DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean
end HautevilleHouse