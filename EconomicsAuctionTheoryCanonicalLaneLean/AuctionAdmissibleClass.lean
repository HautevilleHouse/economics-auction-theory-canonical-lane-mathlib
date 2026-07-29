import canonicalLaneMathlib.AdmissibleClass
import EconomicsAuctionTheoryCanonicalLaneLean.AuctionTheoryObjects

namespace HautevilleHouse
namespace EconomicsAuctionTheoryCanonicalLaneLean

structure AdmissibleClass where
  object : AuctionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  AuctionWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EconomicsAuctionTheoryCanonicalLaneLean
end HautevilleHouse
