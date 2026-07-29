import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Real.Basic

namespace HautevilleHouse
namespace EconomicsAuctionTheoryCanonicalLaneLean

structure OptimalAuctionDesign where
  sellerOptimalReserve : ℝ
  virtualValuation : ℝ → ℝ
  monotoneLikelihoodRatio : Prop
  optimalAllocationRule : ℝ → ℝ
  optimalRevenue : ℝ

def OptimalAuctionClosed (O : OptimalAuctionDesign) : Prop :=
  O.monotoneLikelihoodRatio ∧ O.optimalRevenue > 0

end EconomicsAuctionTheoryCanonicalLaneLean
end HautevilleHouse