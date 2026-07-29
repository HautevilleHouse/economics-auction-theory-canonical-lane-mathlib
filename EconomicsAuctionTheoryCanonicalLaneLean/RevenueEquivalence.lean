import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAuctionTheoryCanonicalLaneLean

structure RevenueEquivalencePackage (P : AuctionMechanismPackage) where
  symmetricBidders : Prop
  independentPrivateValues : Prop
  monotoneAllocation : Prop
  revenueFormula : Prop

structure RevenueEquivalenceEvidence {P : AuctionMechanismPackage} (R : RevenueEquivalencePackage P) where
  symmetricBiddersClosed : R.symmetricBidders
  independentPrivateValuesClosed : R.independentPrivateValues
  monotoneAllocationClosed : R.monotoneAllocation
  revenueFormulaClosed : R.revenueFormula

def RevenueEquivalenceClosed {P : AuctionMechanismPackage} (R : RevenueEquivalencePackage P) : Prop :=
  R.symmetricBidders ∧ R.independentPrivateValues ∧ R.monotoneAllocation ∧ R.revenueFormula

theorem revenue_equivalence_closed_from_evidence
    {P : AuctionMechanismPackage} (R : RevenueEquivalencePackage P)
    (E : RevenueEquivalenceEvidence R) : RevenueEquivalenceClosed R := by
  exact And.intro E.symmetricBiddersClosed
    (And.intro E.independentPrivateValuesClosed
      (And.intro E.monotoneAllocationClosed E.revenueFormulaClosed))

end EconomicsAuctionTheoryCanonicalLaneLean
end HautevilleHouse