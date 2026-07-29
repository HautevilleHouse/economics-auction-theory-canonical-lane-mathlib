import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAuctionTheoryCanonicalLaneLean

structure EquilibriumExistencePackage where
  auctionFormat : String
  valuationSpace : Type u
  strategySpace : Type v
  existenceCondition : Prop
  uniquenessCondition : Prop
  pureStrategyEquilibrium : Prop
  mixedStrategyEquilibrium : Prop

structure NashEquilibriumEvidence (E : EquilibriumExistencePackage) where
  existenceConditionClosed : E.existenceCondition
  pureStrategyEquilibriumClosed : E.pureStrategyEquilibrium

def EquilibriumExistenceClosed (E : EquilibriumExistencePackage) : Prop :=
  E.existenceCondition ∧ E.pureStrategyEquilibrium

theorem equilibrium_existence_closed_from_evidence (E : EquilibriumExistencePackage)
    (Ev : NashEquilibriumEvidence E) : EquilibriumExistenceClosed E := by
  exact And.intro Ev.existenceConditionClosed Ev.pureStrategyEquilibriumClosed

end EconomicsAuctionTheoryCanonicalLaneLean
end HautevilleHouse