import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAuctionTheoryCanonicalLaneLean

structure OptimalAuctionDesignPackage (P : AuctionMechanismPackage) where
  reservePrice : ℝ
  virtualValuation : (b : P.bidders) → P.valuations b → ℝ
  regularityCondition : Prop
  optimalAllocation : Prop
  optimalPayment : Prop

structure OptimalAuctionDesignEvidence {P : AuctionMechanismPackage} (O : OptimalAuctionDesignPackage P) where
  regularityConditionClosed : O.regularityCondition
  optimalAllocationClosed : O.optimalAllocation
  optimalPaymentClosed : O.optimalPayment

def OptimalAuctionDesignClosed {P : AuctionMechanismPackage} (O : OptimalAuctionDesignPackage P) : Prop :=
  O.regularityCondition ∧ O.optimalAllocation ∧ O.optimalPayment

theorem optimal_auction_design_closed_from_evidence
    {P : AuctionMechanismPackage} (O : OptimalAuctionDesignPackage P)
    (E : OptimalAuctionDesignEvidence O) : OptimalAuctionDesignClosed O := by
  exact And.intro E.regularityConditionClosed
    (And.intro E.optimalAllocationClosed E.optimalPaymentClosed)

end EconomicsAuctionTheoryCanonicalLaneLean
end HautevilleHouse