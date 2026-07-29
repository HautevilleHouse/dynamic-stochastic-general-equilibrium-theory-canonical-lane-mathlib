import HautevilleHouse.DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean

def dsgeProjection : Projection DSGEEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem dsge_projection_idempotent (x : DSGEEndgameState) :
    dsgeProjection.toFun (dsgeProjection.toFun x) = dsgeProjection.toFun x := by
  exact dsgeProjection.idempotent x

end DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean
end HautevilleHouse
