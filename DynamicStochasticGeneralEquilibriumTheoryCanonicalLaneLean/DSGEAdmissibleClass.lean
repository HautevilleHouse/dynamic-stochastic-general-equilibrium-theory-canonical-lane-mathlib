import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean

structure DSGEAdmittedObject where
  economyModel : Type
  parametersDefined : Prop
  equilibriumExists : Prop
  equilibriumUnique : Prop
  conclusion : equilibriumExists ∧ equilibriumUnique

structure DSGEAdmissibleClass where
  object : DSGEAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def DSGEAdmittedClosure (A : DSGEAdmissibleClass) : Prop :=
  DSGEWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean
end HautevilleHouse
