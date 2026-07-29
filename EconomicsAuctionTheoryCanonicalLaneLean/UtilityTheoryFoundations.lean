import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAuctionTheoryCanonicalLaneLean

structure UtilityPreferencesPackage where
  agentCount : Nat
  goodCount : Nat
  preferenceRelation : Type u
  completeness : Prop
  transitivity : Prop
  continuity : Prop
  nonsatiation : Prop
  convexity : Prop

structure UtilityFunctionPackage (U : UtilityPreferencesPackage) where
  utilityType : Type v
  representation : Prop
  monotonicTransformation : Prop
  expectedUtilityForm : Prop

structure UtilityPreferencesEvidence (U : UtilityPreferencesPackage) where
  completenessClosed : U.completeness
  transitivityClosed : U.transitivity
  continuityClosed : U.continuity
  nonsatiationClosed : U.nonsatiation
  convexityClosed : U.convexity

def UtilityPreferencesClosed (U : UtilityPreferencesPackage) : Prop :=
  U.completeness ∧ U.transitivity ∧ U.continuity ∧ U.nonsatiation ∧ U.convexity

theorem utility_preferences_closed_from_evidence (U : UtilityPreferencesPackage)
    (E : UtilityPreferencesEvidence U) : UtilityPreferencesClosed U := by
  exact And.intro E.completenessClosed
    (And.intro E.transitivityClosed
      (And.intro E.continuityClosed
        (And.intro E.nonsatiationClosed E.convexityClosed)))

end EconomicsAuctionTheoryCanonicalLaneLean
end HautevilleHouse