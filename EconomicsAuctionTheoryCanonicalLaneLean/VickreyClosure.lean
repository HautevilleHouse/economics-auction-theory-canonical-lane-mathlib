import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Real.Basic

namespace HautevilleHouse
namespace EconomicsAuctionTheoryCanonicalLaneLean

structure VickreyPackage where
  reservePrice : ℝ
  sealedBid : Bool
  secondPriceRule : Prop
  incentiveCompatibility : Prop
  efficiency : Prop

def VickreyClosed (V : VickreyPackage) : Prop :=
  V.secondPriceRule ∧ V.incentiveCompatibility ∧ V.efficiency

end EconomicsAuctionTheoryCanonicalLaneLean
end HautevilleHouse