import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean

structure HouseholdOptimizationPackage where
  utilityFunction : Type u
  budgetConstraint : Prop
  laborSupplyChoice : Prop
  consumptionSavingChoice : Prop
  intertemporalEulerEquation : Prop

structure HouseholdOptimizationEvidence (H : HouseholdOptimizationPackage) where
  utilityFunctionDefined : H.utilityFunction
  budgetConstraintClosed : H.budgetConstraint
  laborSupplyChoiceClosed : H.laborSupplyChoice
  consumptionSavingChoiceClosed : H.consumptionSavingChoice
  intertemporalEulerEquationClosed : H.intertemporalEulerEquation

def HouseholdOptimizationClosed (H : HouseholdOptimizationPackage) : Prop :=
  H.budgetConstraint ∧ H.laborSupplyChoice ∧ H.consumptionSavingChoice ∧ H.intertemporalEulerEquation

theorem household_optimization_closed_from_evidence (H : HouseholdOptimizationPackage) (E : HouseholdOptimizationEvidence H) :
    HouseholdOptimizationClosed H := by
  exact And.intro E.budgetConstraintClosed
    (And.intro E.laborSupplyChoiceClosed
      (And.intro E.consumptionSavingChoiceClosed E.intertemporalEulerEquationClosed))

end DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean
end HautevilleHouse
