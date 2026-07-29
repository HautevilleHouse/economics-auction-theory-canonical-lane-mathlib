import EconomicsAuctionTheoryCanonicalLaneLean.AuctionTheoryObjects

/-!
# Auction Equilibrium Package
-/

namespace HautevilleHouse
namespace EconomicsAuctionTheoryCanonicalLaneLean

structure AuctionEquilibriumPackage where
  equilibriumPrice : ℝ
  allocationEfficient : Prop
  incentiveCompatible : Prop
  individualRational : Prop

structure AuctionEquilibriumEvidence (E : AuctionEquilibriumPackage) where
  equilibriumPriceClosed : E.equilibriumPrice = 0
  allocationEfficientClosed : E.allocationEfficient
  incentiveCompatibleClosed : E.incentiveCompatible
  individualRationalClosed : E.individualRational

def AuctionEquilibriumClosed (E : AuctionEquilibriumPackage) : Prop :=
  (E.equilibriumPrice = 0) ∧ E.allocationEfficient ∧ E.incentiveCompatible ∧ E.individualRational

theorem auction_equilibrium_closed_from_evidence (E : AuctionEquilibriumPackage)
    (Ev : AuctionEquilibriumEvidence E) : AuctionEquilibriumClosed E := by
  exact And.intro Ev.equilibriumPriceClosed
    (And.intro Ev.allocationEfficientClosed
      (And.intro Ev.incentiveCompatibleClosed Ev.individualRationalClosed))

end EconomicsAuctionTheoryCanonicalLaneLean
end HautevilleHouse
