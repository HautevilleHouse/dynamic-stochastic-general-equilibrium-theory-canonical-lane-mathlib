import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean

structure CalibrationParameter where
  beta : ℝ
  sigma : ℝ
  phi : ℝ
  delta : ℝ
  rho : ℝ
  sigmaEps : ℝ
  validRange : Prop
  validRangeTerm : validRange

structure CalibrationParameterEvidence (C : CalibrationParameter) where
  betaInRange : C.beta > 0 ∧ C.beta < 1
  sigmaInRange : C.sigma > 0
  phiInRange : C.phi > 0
  deltaInRange : C.delta > 0 ∧ C.delta < 1
  rhoInRange : C.rho > 0 ∧ C.rho < 1
  sigmaEpsPositive : C.sigmaEps > 0
  validRangeClosed : C.validRange

def CalibrationParameterClosed (C : CalibrationParameter) : Prop :=
  C.beta > 0 ∧ C.beta < 1 ∧
  C.sigma > 0 ∧
  C.phi > 0 ∧
  C.delta > 0 ∧ C.delta < 1 ∧
  C.rho > 0 ∧ C.rho < 1 ∧
  C.sigmaEps > 0 ∧
  C.validRange

def calibration_parameter_closed_from_evidence (C : CalibrationParameter) (E : CalibrationParameterEvidence C) : CalibrationParameterClosed C := by
  exact And.intro E.betaInRange (And.intro E.sigmaInRange (And.intro E.phiInRange (And.intro E.deltaInRange (And.intro E.rhoInRange (And.intro E.sigmaEpsPositive E.validRangeClosed)))))

end DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean
end HautevilleHouse