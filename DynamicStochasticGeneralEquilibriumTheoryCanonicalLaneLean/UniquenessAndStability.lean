import DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean.EquilibriumExistence

namespace HautevilleHouse
namespace DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean

structure UniquenessStabilityPackage where
  uniquenessCondition : Prop
  localStability : Prop
  globalStability : Prop
  uniquenessProved : uniquenessCondition ∧ localStability ∧ globalStability

structure UniquenessStabilityEvidence (pkg : UniquenessStabilityPackage) where
  uniquenessConditionClosed : pkg.uniquenessCondition
  localStabilityClosed : pkg.localStability
  globalStabilityClosed : pkg.globalStability

def UniquenessStabilityClosed (pkg : UniquenessStabilityPackage) : Prop :=
  pkg.uniquenessProved

theorem uniqueness_stability_closed_from_evidence (pkg : UniquenessStabilityPackage)
    (ev : UniquenessStabilityEvidence pkg) : UniquenessStabilityClosed pkg := by
  exact And.intro ev.uniquenessConditionClosed
    (And.intro ev.localStabilityClosed ev.globalStabilityClosed)

end DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean
end HautevilleHouse
