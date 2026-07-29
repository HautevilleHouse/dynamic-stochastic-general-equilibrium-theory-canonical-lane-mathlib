import HautevilleHouse.DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean.StabilityAnalysis

/-!
# Estimation Package
-/

namespace HautevilleHouse
namespace DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean

structure EstimationPackage {H : HouseholdProblemPackage} {F : FirmProblemPackage H}
    {E : EquilibriumDefinitionPackage F} (S : StabilityAnalysisPackage E) where
  likelihoodFunction : Prop
  priorDistribution : Prop
  posteriorSimulation : Prop
  modelFit : Prop

structure EstimationEvidence {H : HouseholdProblemPackage} {F : FirmProblemPackage H}
    {E : EquilibriumDefinitionPackage F} {S : StabilityAnalysisPackage E}
    (Est : EstimationPackage S) where
  likelihoodFunctionClosed : Est.likelihoodFunction
  priorDistributionClosed : Est.priorDistribution
  posteriorSimulationClosed : Est.posteriorSimulation
  modelFitClosed : Est.modelFit

def EstimationClosed {H : HouseholdProblemPackage} {F : FirmProblemPackage H}
    {E : EquilibriumDefinitionPackage F} {S : StabilityAnalysisPackage E}
    (Est : EstimationPackage S) : Prop :=
  Est.likelihoodFunction ∧ Est.priorDistribution ∧ Est.posteriorSimulation ∧ Est.modelFit

theorem estimation_closed_from_evidence {H : HouseholdProblemPackage} {F : FirmProblemPackage H}
    {E : EquilibriumDefinitionPackage F} {S : StabilityAnalysisPackage E}
    (Est : EstimationPackage S) (Ev : EstimationEvidence Est) : EstimationClosed Est := by
  exact And.intro Ev.likelihoodFunctionClosed
    (And.intro Ev.priorDistributionClosed
      (And.intro Ev.posteriorSimulationClosed Ev.modelFitClosed))

end DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean
end HautevilleHouse
