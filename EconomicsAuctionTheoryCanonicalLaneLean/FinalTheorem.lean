import canonicalLaneMathlib.AdmissibleClass
import EconomicsAuctionTheoryCanonicalLaneLean.AuctionMechanism
import EconomicsAuctionTheoryCanonicalLaneLean.RevenueEquivalence
import EconomicsAuctionTheoryCanonicalLaneLean.OptimalAuctionDesign

namespace HautevilleHouse
namespace EconomicsAuctionTheoryCanonicalLaneLean

def ConstrainedAuctionTheoryClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_auction_theory_endgame (A : AdmissibleClass) :
    ConstrainedAuctionTheoryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EconomicsAuctionTheoryCanonicalLaneLean
end HautevilleHouse