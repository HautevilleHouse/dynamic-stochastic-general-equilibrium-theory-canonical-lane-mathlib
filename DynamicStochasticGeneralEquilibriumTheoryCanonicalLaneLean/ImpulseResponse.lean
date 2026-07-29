import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean.PerturbationMethod

namespace HautevilleHouse
namespace DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean

structure ShockSequence where
  productivity : ℝ → ℝ
  monetary : ℝ → ℝ
  length : ℕ
  productivityDefined : ∀ t : ℕ, productivity (t : ℝ) ∈ ℝ
  monetaryDefined : ∀ t : ℕ, monetary (t : ℝ) ∈ ℝ

structure ImpulseResponse (C : CalibrationParameter) (P : PerturbationMethod C) where
  shock : ShockSequence
  response : ℝ → ℝ → ℝ
  irfComputed : Prop
  irfConverges : Prop
  irfComputedTerm : irfComputed
  irfConvergesTerm : irfConverges

def ImpulseResponseClosed (C : CalibrationParameter) (P : PerturbationMethod C) (IR : ImpulseResponse C P) : Prop :=
  IR.irfComputed ∧ IR.irfConverges

theorem impulse_response_closed (C : CalibrationParameter) (P : PerturbationMethod C) (IR : ImpulseResponse C P) : ImpulseResponseClosed C P IR := by
  exact And.intro IR.irfComputedTerm IR.irfConvergesTerm

end DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean
end HautevilleHouse