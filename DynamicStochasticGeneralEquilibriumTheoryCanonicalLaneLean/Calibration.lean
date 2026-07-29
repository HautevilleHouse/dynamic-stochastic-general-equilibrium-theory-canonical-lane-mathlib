import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean

structure Calibration where
  riskAversion : ℝ
  discountFactor : ℝ
  shockPersistence : ℝ
  calibrationMatchesData : Prop

def CalibrationClosed (C : Calibration) : Prop :=
  C.calibrationMatchesData

end DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean
end HautevilleHouse