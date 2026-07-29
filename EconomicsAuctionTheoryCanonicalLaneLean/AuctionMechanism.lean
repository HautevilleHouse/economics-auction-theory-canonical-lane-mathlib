import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAuctionTheoryCanonicalLaneLean

structure AuctionMechanismPackage where
  bidders : Type u
  valuations : bidders → Type v
  allocationRule : (valuation : (b : bidders) → valuations b) → (b : bidders) → Prop
  paymentRule : (valuation : (b : bidders) → valuations b) → (b : bidders) → ℝ
  incentiveCompatibility : Prop
  individualRationality : Prop
  efficiency : Prop
  budgetBalance : Prop

structure AuctionMechanismEvidence (P : AuctionMechanismPackage) where
  incentiveCompatibilityClosed : P.incentiveCompatibility
  individualRationalityClosed : P.individualRationality
  efficiencyClosed : P.efficiency
  budgetBalanceClosed : P.budgetBalance

def AuctionMechanismClosed (P : AuctionMechanismPackage) : Prop :=
  P.incentiveCompatibility ∧ P.individualRationality ∧ P.efficiency ∧ P.budgetBalance

theorem auction_mechanism_closed_from_evidence (P : AuctionMechanismPackage) (E : AuctionMechanismEvidence P) :
    AuctionMechanismClosed P := by
  exact And.intro E.incentiveCompatibilityClosed
    (And.intro E.individualRationalityClosed
      (And.intro E.efficiencyClosed E.budgetBalanceClosed))

end EconomicsAuctionTheoryCanonicalLaneLean
end HautevilleHouse