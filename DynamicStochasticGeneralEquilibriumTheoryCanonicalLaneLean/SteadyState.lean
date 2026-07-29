import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean

structure SteadyStatePackage where
  constantTechnology : Prop
  constantPolicy : Prop
  timeInvariantAllocations : Prop
  deterministicEquilibrium : Prop
  steadyStateEquations : Prop

structure SteadyStateEvidence (S : SteadyStatePackage) where
  constantTechnologyClosed : S.constantTechnology
  constantPolicyClosed : S.constantPolicy
  timeInvariantAllocationsClosed : S.timeInvariantAllocations
  deterministicEquilibriumClosed : S.deterministicEquilibrium
  steadyStateEquationsClosed : S.steadyStateEquations

def SteadyStateClosed (S : SteadyStatePackage) : Prop :=
  S.constantTechnology ∧ S.constantPolicy ∧ S.timeInvariantAllocations ∧ S.deterministicEquilibrium ∧ S.steadyStateEquations

theorem steady_state_closed_from_evidence (S : SteadyStatePackage) (E : SteadyStateEvidence S) :
    SteadyStateClosed S := by
  exact And.intro E.constantTechnologyClosed
    (And.intro E.constantPolicyClosed
      (And.intro E.timeInvariantAllocationsClosed
        (And.intro E.deterministicEquilibriumClosed E.steadyStateEquationsClosed)))

end DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean
end HautevilleHouse
