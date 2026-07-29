import HautevilleHouse.DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean.HouseholdProblem

/-!
# Firm Problem Package
-/

namespace HautevilleHouse
namespace DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean

structure FirmProblemPackage (H : HouseholdProblemPackage) where
  productionFunction : Prop
  profitMaximization : Prop
  factorDemands : Prop
  priceSetting : Prop

structure FirmProblemEvidence {H : HouseholdProblemPackage} (F : FirmProblemPackage H) where
  productionFunctionClosed : F.productionFunction
  profitMaximizationClosed : F.profitMaximization
  factorDemandsClosed : F.factorDemands
  priceSettingClosed : F.priceSetting

def FirmProblemClosed {H : HouseholdProblemPackage} (F : FirmProblemPackage H) : Prop :=
  F.productionFunction ∧ F.profitMaximization ∧ F.factorDemands ∧ F.priceSetting

theorem firm_problem_closed_from_evidence {H : HouseholdProblemPackage} (F : FirmProblemPackage H)
    (E : FirmProblemEvidence F) : FirmProblemClosed F := by
  exact And.intro E.productionFunctionClosed
    (And.intro E.profitMaximizationClosed
      (And.intro E.factorDemandsClosed E.priceSettingClosed))

end DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean
end HautevilleHouse
