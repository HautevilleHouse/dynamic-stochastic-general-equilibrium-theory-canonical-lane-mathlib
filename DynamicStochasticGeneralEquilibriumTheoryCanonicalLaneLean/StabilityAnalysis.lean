import HautevilleHouse.DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean.EquilibriumDefinition

/-!
# Stability Analysis Package
-/

namespace HautevilleHouse
namespace DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean

structure StabilityAnalysisPackage {H : HouseholdProblemPackage} {F : FirmProblemPackage H}
    (E : EquilibriumDefinitionPackage F) where
  linearization : Prop
  eigenvalueCondition : Prop
  determinacy : Prop
  impulseResponse : Prop

structure StabilityAnalysisEvidence {H : HouseholdProblemPackage} {F : FirmProblemPackage H}
    {E : EquilibriumDefinitionPackage F} (S : StabilityAnalysisPackage E) where
  linearizationClosed : S.linearization
  eigenvalueConditionClosed : S.eigenvalueCondition
  determinacyClosed : S.determinacy
  impulseResponseClosed : S.impulseResponse

def StabilityAnalysisClosed {H : HouseholdProblemPackage} {F : FirmProblemPackage H}
    {E : EquilibriumDefinitionPackage F} (S : StabilityAnalysisPackage E) : Prop :=
  S.linearization ∧ S.eigenvalueCondition ∧ S.determinacy ∧ S.impulseResponse

theorem stability_analysis_closed_from_evidence {H : HouseholdProblemPackage} {F : FirmProblemPackage H}
    {E : EquilibriumDefinitionPackage F} (S : StabilityAnalysisPackage E)
    (Ev : StabilityAnalysisEvidence S) : StabilityAnalysisClosed S := by
  exact And.intro Ev.linearizationClosed
    (And.intro Ev.eigenvalueConditionClosed
      (And.intro Ev.determinacyClosed Ev.impulseResponseClosed))

end DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean
end HautevilleHouse
