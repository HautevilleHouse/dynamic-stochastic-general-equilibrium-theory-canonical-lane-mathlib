import DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean.Core

namespace HautevilleHouse
namespace DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean

structure EquilibriumExistencePackage where
  utilityMaximization : Prop
  profitMaximization : Prop
  marketClearing : Prop
  fixedPointArgument : Prop
  existenceProved : utilityMaximization ∧ profitMaximization ∧ marketClearing ∧ fixedPointArgument

structure EquilibriumExistenceEvidence (pkg : EquilibriumExistencePackage) where
  utilityMaximizationClosed : pkg.utilityMaximization
  profitMaximizationClosed : pkg.profitMaximization
  marketClearingClosed : pkg.marketClearing
  fixedPointArgumentClosed : pkg.fixedPointArgument

def EquilibriumExistenceClosed (pkg : EquilibriumExistencePackage) : Prop :=
  pkg.existenceProved

theorem equilibrium_existence_closed_from_evidence (pkg : EquilibriumExistencePackage)
    (ev : EquilibriumExistenceEvidence pkg) : EquilibriumExistenceClosed pkg := by
  exact And.intro ev.utilityMaximizationClosed
    (And.intro ev.profitMaximizationClosed
      (And.intro ev.marketClearingClosed ev.fixedPointArgumentClosed))

end DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean
end HautevilleHouse
