import HautevilleHouse.DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean.AdmissibleClass

/-!
# Household Problem Package
-/

namespace HautevilleHouse
namespace DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean

structure HouseholdProblemPackage where
  utilityFunction : Type u
  discountFactor : Prop
  budgetConstraint : Prop
  laborSupply : Prop
  consumptionSaving : Prop

structure HouseholdProblemEvidence (H : HouseholdProblemPackage) where
  utilityFunctionClosed : H.utilityFunction
  discountFactorClosed : H.discountFactor
  budgetConstraintClosed : H.budgetConstraint
  laborSupplyClosed : H.laborSupply
  consumptionSavingClosed : H.consumptionSaving

def HouseholdProblemClosed (H : HouseholdProblemPackage) : Prop :=
  H.utilityFunction ∧ H.discountFactor ∧ H.budgetConstraint ∧ H.laborSupply ∧ H.consumptionSaving

theorem household_problem_closed_from_evidence (H : HouseholdProblemPackage) (E : HouseholdProblemEvidence H) :
    HouseholdProblemClosed H := by
  exact And.intro E.utilityFunctionClosed
    (And.intro E.discountFactorClosed
      (And.intro E.budgetConstraintClosed
        (And.intro E.laborSupplyClosed E.consumptionSavingClosed)))

end DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean
end HautevilleHouse
