import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  DSGEWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DynamicStochasticGeneralEquilibriumTheoryCanonicalLaneLean
end HautevilleHouse