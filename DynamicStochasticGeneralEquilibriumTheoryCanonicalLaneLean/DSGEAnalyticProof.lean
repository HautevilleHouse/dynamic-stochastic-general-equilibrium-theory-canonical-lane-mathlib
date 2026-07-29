import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean.DSGEModelObjects

namespace HautevilleHouse
namespace DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean

structure EquilibriumCertificate where
  equilibriumExists : Prop
  uniqueness : Prop
  stability : Prop
  equilibriumExistsClosed : equilibriumExists
  uniquenessClosed : uniqueness
  stabilityClosed : stability

def EquilibriumCertificateClosed (C : EquilibriumCertificate) : Prop :=
  C.equilibriumExists ∧ C.uniqueness ∧ C.stability

theorem equilibrium_certificate_closed (C : EquilibriumCertificate) : EquilibriumCertificateClosed C := by
  exact And.intro C.equilibriumExistsClosed (And.intro C.uniquenessClosed C.stabilityClosed)

end DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean
end HautevilleHouse