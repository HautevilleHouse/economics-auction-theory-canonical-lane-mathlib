import EconomicsAuctionTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAuctionTheoryCanonicalLaneLean

def bridgeClosed (A : AdmissibleAuctionClass) : Prop :=
  AuctionWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleAuctionClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EconomicsAuctionTheoryCanonicalLaneLean
end HautevilleHouse
