import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean

structure DSGEModel where
  structuralParameters : Type
  shockProcesses : Type
  equilibriumConditions : Prop
  policyFunction : Type

def DSGEWitnessClosed (M : DSGEModel) : Prop :=
  M.equilibriumConditions

end DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean
end HautevilleHouse