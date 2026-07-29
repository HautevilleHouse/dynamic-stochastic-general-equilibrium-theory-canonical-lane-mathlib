import HautevilleHouse.DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean.FirmProblem

/-!
# Equilibrium Definition Package
-/

namespace HautevilleHouse
namespace DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean

structure EquilibriumDefinitionPackage {H : HouseholdProblemPackage} (F : FirmProblemPackage H) where
  marketClearing : Prop
  resourceConstraint : Prop
  steadyState : Prop
  existenceCondition : Prop
  uniquenessCondition : Prop

structure EquilibriumDefinitionEvidence {H : HouseholdProblemPackage} {F : FirmProblemPackage H}
    (E : EquilibriumDefinitionPackage F) where
  marketClearingClosed : E.marketClearing
  resourceConstraintClosed : E.resourceConstraint
  steadyStateClosed : E.steadyState
  existenceConditionClosed : E.existenceCondition
  uniquenessConditionClosed : E.uniquenessCondition

def EquilibriumDefinitionClosed {H : HouseholdProblemPackage} {F : FirmProblemPackage H}
    (E : EquilibriumDefinitionPackage F) : Prop :=
  E.marketClearing ∧ E.resourceConstraint ∧ E.steadyState ∧
  E.existenceCondition ∧ E.uniquenessCondition

theorem equilibrium_definition_closed_from_evidence {H : HouseholdProblemPackage} {F : FirmProblemPackage H}
    (E : EquilibriumDefinitionPackage F) (Ev : EquilibriumDefinitionEvidence E) :
    EquilibriumDefinitionClosed E := by
  exact And.intro Ev.marketClearingClosed
    (And.intro Ev.resourceConstraintClosed
      (And.intro Ev.steadyStateClosed
        (And.intro Ev.existenceConditionClosed Ev.uniquenessConditionClosed)))

end DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean
end HautevilleHouse
