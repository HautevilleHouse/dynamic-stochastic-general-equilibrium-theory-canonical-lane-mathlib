import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean

structure FirmProductionPackage where
  productionFunction : Type u
  capitalStock : Prop
  laborDemand : Prop
  profitMaximization : Prop
  factorDemandEquations : Prop

structure FirmProductionEvidence (F : FirmProductionPackage) where
  productionFunctionDefined : F.productionFunction
  capitalStockClosed : F.capitalStock
  laborDemandClosed : F.laborDemand
  profitMaximizationClosed : F.profitMaximization
  factorDemandEquationsClosed : F.factorDemandEquations

def FirmProductionClosed (F : FirmProductionPackage) : Prop :=
  F.capitalStock ∧ F.laborDemand ∧ F.profitMaximization ∧ F.factorDemandEquations

theorem firm_production_closed_from_evidence (F : FirmProductionPackage) (E : FirmProductionEvidence F) :
    FirmProductionClosed F := by
  exact And.intro E.capitalStockClosed
    (And.intro E.laborDemandClosed
      (And.intro E.profitMaximizationClosed E.factorDemandEquationsClosed))

end DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean
end HautevilleHouse
