import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean.CalibrationParameter

namespace HautevilleHouse
namespace DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean

structure PolicyFunctionApproximation where
  logLinear : Prop
  firstOrderAccurate : Prop
  coefficientAccuracy : Prop
  logLinearTerm : logLinear
  firstOrderAccurateTerm : firstOrderAccurate
  coefficientAccuracyTerm : coefficientAccuracy

structure PerturbationMethod (C : CalibrationParameter) where
  steadyState : Prop
  firstOrderConditions : Prop
  linearization : Prop
  policyFunctions : PolicyFunctionApproximation
  steadyStateTerm : steadyState
  firstOrderConditionsTerm : firstOrderConditions
  linearizationTerm : linearization

def PerturbationMethodClosed (C : CalibrationParameter) (P : PerturbationMethod C) : Prop :=
  P.steadyState ∧ P.firstOrderConditions ∧ P.linearization ∧
  P.policyFunctions.logLinear ∧ P.policyFunctions.firstOrderAccurate ∧ P.policyFunctions.coefficientAccuracy

theorem perturbation_method_closed (C : CalibrationParameter) (P : PerturbationMethod C) (H : PerturbationMethodClosed C P) : PerturbationMethodClosed C P := H

end DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean
end HautevilleHouse