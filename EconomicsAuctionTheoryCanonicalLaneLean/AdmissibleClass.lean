import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAuctionTheoryCanonicalLaneLean

structure AdmissibleAuctionClass where
  object : AuctionAdmittedObject
  equilibriumSatisfied : Prop
  inefficiencyRecorded : Prop
  gateWitness : equilibriumSatisfied ∨ inefficiencyRecorded

def admittedAuctionClosure (A : AdmissibleAuctionClass) : Prop :=
  AuctionWitnessClosed A.object ∧ (A.equilibriumSatisfied ∨ A.inefficiencyRecorded)

end EconomicsAuctionTheoryCanonicalLaneLean
end HautevilleHouse
