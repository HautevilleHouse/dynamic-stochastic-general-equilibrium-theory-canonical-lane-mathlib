import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean

structure MarketClearingPackage where
  goodsMarketClearing : Prop
  laborMarketClearing : Prop
  capitalMarketClearing : Prop
  resourceConstraint : Prop
  walrasLaw : Prop

structure MarketClearingEvidence (M : MarketClearingPackage) where
  goodsMarketClearingClosed : M.goodsMarketClearing
  laborMarketClearingClosed : M.laborMarketClearing
  capitalMarketClearingClosed : M.capitalMarketClearing
  resourceConstraintClosed : M.resourceConstraint
  walrasLawClosed : M.walrasLaw

def MarketClearingClosed (M : MarketClearingPackage) : Prop :=
  M.goodsMarketClearing ∧ M.laborMarketClearing ∧ M.capitalMarketClearing ∧ M.resourceConstraint ∧ M.walrasLaw

theorem market_clearing_closed_from_evidence (M : MarketClearingPackage) (E : MarketClearingEvidence M) :
    MarketClearingClosed M := by
  exact And.intro E.goodsMarketClearingClosed
    (And.intro E.laborMarketClearingClosed
      (And.intro E.capitalMarketClearingClosed
        (And.intro E.resourceConstraintClosed E.walrasLawClosed)))

end DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean
end HautevilleHouse
