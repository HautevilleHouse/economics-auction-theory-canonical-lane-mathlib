import EconomicsAuctionTheoryCanonicalLaneLean.EfficiencyAndRevenue

namespace HautevilleHouse
namespace EconomicsAuctionTheoryCanonicalLaneLean

structure MyersonSatterthwaitePackage where
  privateValues : Prop
  efficiencyImpossible : Prop
  budgetBalanceTradeoff : Prop

structure MyersonSatterthwaiteEvidence (M : MyersonSatterthwaitePackage) where
  privateValuesClosed : M.privateValues
  efficiencyImpossibleClosed : M.efficiencyImpossible
  budgetBalanceTradeoffClosed : M.budgetBalanceTradeoff

def MyersonSatterthwaiteClosed (M : MyersonSatterthwaitePackage) : Prop :=
  M.privateValues ∧ M.efficiencyImpossible ∧ M.budgetBalanceTradeoff

theorem myerson_satterthwaite_closed_from_evidence
    (M : MyersonSatterthwaitePackage) (E : MyersonSatterthwaiteEvidence M) :
    MyersonSatterthwaiteClosed M := by
  exact And.intro E.privateValuesClosed
    (And.intro E.efficiencyImpossibleClosed E.budgetBalanceTradeoffClosed)

end EconomicsAuctionTheoryCanonicalLaneLean
end HautevilleHouse
