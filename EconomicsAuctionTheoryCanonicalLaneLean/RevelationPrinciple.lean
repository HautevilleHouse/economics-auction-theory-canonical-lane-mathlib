import EconomicsAuctionTheoryCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAuctionTheoryCanonicalLaneLean

structure RevelationPrinciplePackage where
  directMechanism : Prop
  equilibriumEquivalent : Prop
  truthtellingEq : Prop

structure RevelationPrincipleEvidence (R : RevelationPrinciplePackage) where
  directMechanismClosed : R.directMechanism
  equilibriumEquivalentClosed : R.equilibriumEquivalent
  truthtellingEqClosed : R.truthtellingEq

def RevelationPrincipleClosed (R : RevelationPrinciplePackage) : Prop :=
  R.directMechanism ∧ R.equilibriumEquivalent ∧ R.truthtellingEq

theorem revelation_principle_closed_from_evidence (R : RevelationPrinciplePackage)
    (E : RevelationPrincipleEvidence R) : RevelationPrincipleClosed R := by
  exact And.intro E.directMechanismClosed
    (And.intro E.equilibriumEquivalentClosed E.truthtellingEqClosed)

end EconomicsAuctionTheoryCanonicalLaneLean
end HautevilleHouse
