import EconomicsAuctionTheoryCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace EconomicsAuctionTheoryCanonicalLaneLean

def gateClosed (A : AdmissibleAuctionClass) : Prop :=
  A.equilibriumSatisfied ∨ A.inefficiencyRecorded

theorem gate_from_admissible_class (A : AdmissibleAuctionClass) :
    gateClosed A := by
  exact A.gateWitness

end EconomicsAuctionTheoryCanonicalLaneLean
end HautevilleHouse
