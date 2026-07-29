import EconomicsAuctionTheoryCanonicalLaneLean.RevelationPrinciple

namespace HautevilleHouse
namespace EconomicsAuctionTheoryCanonicalLaneLean

structure AuctionMechanismPackage where
  allocationRule : Type
  paymentRule : Type
  incentiveCompatibility : Prop
  individualRationality : Prop
  budgetBalance : Prop

structure AuctionMechanismEvidence (M : AuctionMechanismPackage) where
  incentiveCompatibilityClosed : M.incentiveCompatibility
  individualRationalityClosed : M.individualRationality
  budgetBalanceClosed : M.budgetBalance

def AuctionMechanismClosed (M : AuctionMechanismPackage) : Prop :=
  M.incentiveCompatibility ∧ M.individualRationality ∧ M.budgetBalance

theorem auction_mechanism_closed_from_evidence (M : AuctionMechanismPackage)
    (E : AuctionMechanismEvidence M) : AuctionMechanismClosed M := by
  exact And.intro E.incentiveCompatibilityClosed
    (And.intro E.individualRationalityClosed E.budgetBalanceClosed)

end EconomicsAuctionTheoryCanonicalLaneLean
end HautevilleHouse
