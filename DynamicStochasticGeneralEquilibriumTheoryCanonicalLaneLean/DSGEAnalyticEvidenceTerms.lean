import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean.DSGEModelObjects

namespace HautevilleHouse
namespace DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean

structure EquilibriumEvidenceTerms where
  equilibriumExists : Prop
  uniqueness : Prop
  stability : Prop

def equilibrium_evidence_from_admitted (O : DSGEAdmittedObject) : EquilibriumEvidenceTerms :=
  { equilibriumExists := O.equilibriumExists,
    uniqueness := O.uniqueness,
    stability := O.stability
  }

theorem equilibrium_evidence_closed (O : DSGEAdmittedObject) : O.conclusion := O.conclusion

end DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean
end HautevilleHouse