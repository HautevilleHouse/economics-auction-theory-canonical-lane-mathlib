import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Real.Basic

namespace HautevilleHouse
namespace EconomicsAuctionTheoryCanonicalLaneLean

structure AuctionObject where
  bidders : Type u
  valuations : bidders → ℝ
  allocationRule : bidders → ℝ → ℝ
  paymentRule : bidders → ℝ → ℝ
  equilibriumSatisfied : Prop
  dominantStrategy : Prop

def AuctionWitnessClosed (A : AuctionObject) : Prop :=
  A.equilibriumSatisfied ∧ A.dominantStrategy

end EconomicsAuctionTheoryCanonicalLaneLean
end HautevilleHouse