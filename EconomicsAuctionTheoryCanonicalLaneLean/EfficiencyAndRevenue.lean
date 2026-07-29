import EconomicsAuctionTheoryCanonicalLaneLean.AuctionMechanismDesign

namespace HautevilleHouse
namespace EconomicsAuctionTheoryCanonicalLaneLean

structure EfficiencyPackage {M : AuctionMechanismPackage} where
  allocativeEfficiency : Prop
  revenueMaximization : Prop
  paretoOptimality : Prop

structure EfficiencyEvidence {M : AuctionMechanismPackage}
    (E : EfficiencyPackage M) where
  allocativeEfficiencyClosed : E.allocativeEfficiency
  revenueMaximizationClosed : E.revenueMaximization
  paretoOptimalityClosed : E.paretoOptimality

def EfficiencyClosed {M : AuctionMechanismPackage} (E : EfficiencyPackage M) : Prop :=
  E.allocativeEfficiency ∧ E.revenueMaximization ∧ E.paretoOptimality

theorem efficiency_closed_from_evidence {M : AuctionMechanismPackage}
    (E : EfficiencyPackage M) (Ev : EfficiencyEvidence E) : EfficiencyClosed E := by
  exact And.intro Ev.allocativeEfficiencyClosed
    (And.intro Ev.revenueMaximizationClosed Ev.paretoOptimalityClosed)

end EconomicsAuctionTheoryCanonicalLaneLean
end HautevilleHouse
