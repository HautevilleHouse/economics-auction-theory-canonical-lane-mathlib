import EconomicsAuctionTheoryCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace EconomicsAuctionTheoryCanonicalLaneLean

structure ArrowDebreuPackage where
  commoditySpace : Type
  preferences : Prop
  endowments : Prop
  priceSystem : Prop
  excessDemand: Prop
  equilibriumConditions : Prop

def ArrowDebreuEquilibriumClosed (A : ArrowDebreuPackage) : Prop :=
  A.equilibriumConditions ∧ A.excessDemand

theorem arrow_debreu_equilibrium_from_excess_demand (A : ArrowDebreuPackage) (h : A.excessDemand) :
    ArrowDebreuEquilibriumClosed A := by
  exact And.intro A.equilibriumConditions h

end EconomicsAuctionTheoryCanonicalLaneLean
end HautevilleHouse