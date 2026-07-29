import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean

structure DSGEModel where
  agentTypes : Nat
  horizon : Nat
  stateSpace : Type u
  policyRule : Set (stateSpace → stateSpace)
  rationality : Prop
  equilibriumDefined : Prop

structure DSGEAdmittedObject where
  model : DSGEModel
  equilibriumExists : model.equilibriumDefined
  uniqueness : Prop
  stability : Prop
  conclusion : equilibriumExists ∧ uniqueness ∧ stability

structure DSGEEndgameState where
  object : DSGEAdmittedObject

def DSGEWitnessClosed (O : DSGEAdmittedObject) : Prop :=
  O.conclusion

end DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean
end HautevilleHouse