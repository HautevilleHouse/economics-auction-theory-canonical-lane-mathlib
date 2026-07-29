import EconomicsAuctionTheoryCanonicalLaneLean.AuctionGateLemmas

namespace HautevilleHouse
namespace EconomicsAuctionTheoryCanonicalLaneLean

def ConstrainedAuctionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_auction_endgame (A : AdmissibleClass) :
    ConstrainedAuctionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EconomicsAuctionTheoryCanonicalLaneLean
end HautevilleHouse
