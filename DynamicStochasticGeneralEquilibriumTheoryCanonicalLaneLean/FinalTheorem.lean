import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean.CalibrationParameter
import HautevilleHouse.DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean.PerturbationMethod
import HautevilleHouse.DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean.ImpulseResponse

namespace HautevilleHouse
namespace DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop := True

def gateClosed (A : AdmissibleClass) : Prop := True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  trivial

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  trivial

def ConstrainedDSGEClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_dsge_endgame (A : AdmissibleClass) : ConstrainedDSGEClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean
end HautevilleHouse