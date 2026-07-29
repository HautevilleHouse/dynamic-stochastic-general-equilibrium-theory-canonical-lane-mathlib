import HautevilleHouse.DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean

structure DSGESpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure DSGEAdmittedObject where
  space : DSGESpace
  equilibriumExists : Prop
  unique : Prop
  stable : Prop
  conclusion : equilibriumExists ∧ unique ∧ stable

def DSGEWitnessClosed (O : DSGEAdmittedObject) : Prop :=
  O.conclusion

end DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean
end HautevilleHouse
