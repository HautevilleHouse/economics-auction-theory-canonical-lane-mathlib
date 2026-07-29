import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAuctionTheoryCanonicalLaneLean

structure Good where
  idx : Type
  description : String

type
structure Bidder where
  idx : Type
  valuation : Good → ℝ

type
structure Allocation where
  assignment : Good → Bidder
  payment : Bidder → ℝ

type

structure Mechanism where
  allocationRule : Allocation
  paymentRule : Bidder → ℝ
  strategySpace : Type

structure AuctionAdmittedObject where
  goods : List Good
  bidders : List Bidder
  mechanism : Mechanism
  conclusion : Prop
  equilibriumExists : conclusion

structure AuctionEndgameState where
  object : AuctionAdmittedObject

def AuctionWitnessClosed (O : AuctionAdmittedObject) : Prop :=
  O.equilibriumExists

end EconomicsAuctionTheoryCanonicalLaneLean
end HautevilleHouse
