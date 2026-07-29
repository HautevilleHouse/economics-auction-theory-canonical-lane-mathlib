import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAuctionTheoryCanonicalLaneLean

structure AuctionAdmittedObject where
  bidderTypes : Type
  valuations : Nat
  allocationRule : Prop
  paymentRule : Prop
  equilibriumExists : Prop
  conclusion : equilibriumExists

structure AdmissibleAuctionClass where
  object : AuctionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedAuctionClosure (A : AdmissibleAuctionClass) : Prop :=
  AuctionWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EconomicsAuctionTheoryCanonicalLaneLean
end HautevilleHouse