namespace HautevilleHouse
namespace DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean

structure DSGEStateSpace where
  capital : Type
  productivity : Type
  expectations : Type

structure DSGEPolicyFunction where
  consumption : Type
  investment : Type
  labor : Type

structure DSGEEquilibriumCondition where
  marketClearing : Prop
  rationalExpectations : Prop
  transversality : Prop
  marketClearingTerm : marketClearing
  rationalExpectationsTerm : rationalExpectations
  transversalityTerm : transversality

end DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean
end HautevilleHouse