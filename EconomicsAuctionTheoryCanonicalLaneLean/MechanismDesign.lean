import EconomicsAuctionTheoryCanonicalLaneLean.AuctionEquilibrium

/-!
# Mechanism Design Package
-/

namespace HautevilleHouse
namespace EconomicsAuctionTheoryCanonicalLaneLean

structure MechanismDesignPackage where
  dominantStrategyImplementation : Prop
  bayesianImplementation : Prop
  optimalMechanism : Prop
  revenueMaximization : Prop

structure MechanismDesignEvidence (M : MechanismDesignPackage) where
  dominantStrategyImplementationClosed : M.dominantStrategyImplementation
  bayesianImplementationClosed : M.bayesianImplementation
  optimalMechanismClosed : M.optimalMechanism
  revenueMaximizationClosed : M.revenueMaximization

def MechanismDesignClosed (M : MechanismDesignPackage) : Prop :=
  M.dominantStrategyImplementation ∧ M.bayesianImplementation ∧
  M.optimalMechanism ∧ M.revenueMaximization

theorem mechanism_design_closed_from_evidence (M : MechanismDesignPackage)
    (Ev : MechanismDesignEvidence M) : MechanismDesignClosed M := by
  exact And.intro Ev.dominantStrategyImplementationClosed
    (And.intro Ev.bayesianImplementationClosed
      (And.intro Ev.optimalMechanismClosed Ev.revenueMaximizationClosed))

end EconomicsAuctionTheoryCanonicalLaneLean
end HautevilleHouse
