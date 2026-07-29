import EconomicsAuctionTheoryCanonicalLaneLean.RevenueEquivalence

namespace HautevilleHouse
namespace EconomicsAuctionTheoryCanonicalLaneLean

structure VCGMechanismPackage where
  allocationRule : Prop
  paymentRule : Prop
  incentiveCompatibility : Prop
  efficiency : Prop

def VCGMechanismClosed (V : VCGMechanismPackage) : Prop :=
  V.incentiveCompatibility ∧ V.efficiency ∧ V.allocationRule ∧ V.paymentRule

theorem vcg_closed (V : VCGMechanismPackage) (h : V.incentiveCompatibility) :
    VCGMechanismClosed V := by
  exact And.intro h (And.intro V.efficiency (And.intro V.allocationRule V.paymentRule))

end EconomicsAuctionTheoryCanonicalLaneLean
end HautevilleHouse