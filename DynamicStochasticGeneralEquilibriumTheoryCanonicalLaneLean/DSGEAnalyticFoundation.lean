import HautevilleHouse.DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean.AdmissibleClass

/-!
# DSGE Analytic Foundation

This module assembles the DSGE analytic route as a chain of closed evidence
packages. Every major component is an explicit field whose evidence must be
supplied before the route closes.
-/

namespace HautevilleHouse
namespace DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean

structure DSGEAnalyticFoundation where
  householdProblem : HouseholdProblemPackage
  householdEvidence : HouseholdProblemEvidence householdProblem
  firmProblem : FirmProblemPackage householdProblem
  firmEvidence : FirmProblemEvidence firmProblem
  equilibriumDefinition : EquilibriumDefinitionPackage firmProblem
  equilibriumEvidence : EquilibriumDefinitionEvidence equilibriumDefinition
  stabilityAnalysis : StabilityAnalysisPackage equilibriumDefinition
  stabilityEvidence : StabilityAnalysisEvidence stabilityAnalysis
  estimation : EstimationPackage stabilityAnalysis
  estimationEvidence : EstimationEvidence estimation

end DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean
end HautevilleHouse
