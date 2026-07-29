import EconomicsAuctionTheoryCanonicalLaneLean.AuctionAdmissibleClass

namespace HautevilleHouse
namespace EconomicsAuctionTheoryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  AuctionWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EconomicsAuctionTheoryCanonicalLaneLean
end HautevilleHouse
