import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAuctionTheoryCanonicalLaneLean

structure AuctionFormatPackage where
  formatType : String
  allocationRule : Prop
  paymentRule : Prop
  dominantStrategyIncentiveCompatible : Prop
  efficiency : Prop

structure SealedBidPackage (A : AuctionFormatPackage) where
  privateValuation : Prop
  symmetricBidFunction : Prop
  equilibriumExistence : Prop

structure AuctionFormatEvidence (A : AuctionFormatPackage) where
  allocationRuleClosed : A.allocationRule
  paymentRuleClosed : A.paymentRule
  dominantStrategyIncentiveCompatibleClosed : A.dominantStrategyIncentiveCompatible
  efficiencyClosed : A.efficiency

def AuctionFormatClosed (A : AuctionFormatPackage) : Prop :=
  A.allocationRule ∧ A.paymentRule ∧ A.dominantStrategyIncentiveCompatible ∧ A.efficiency

theorem auction_format_closed_from_evidence (A : AuctionFormatPackage)
    (E : AuctionFormatEvidence A) : AuctionFormatClosed A := by
  exact And.intro E.allocationRuleClosed
    (And.intro E.paymentRuleClosed
      (And.intro E.dominantStrategyIncentiveCompatibleClosed E.efficiencyClosed))

end EconomicsAuctionTheoryCanonicalLaneLean
end HautevilleHouse