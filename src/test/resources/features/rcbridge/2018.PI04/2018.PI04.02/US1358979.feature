# Last updated on 
@PES
@US1358979
@2018.PI04
@2018.PI04.02
@Priority_1
@Scrum_Team_1
@F232041
@releasePresent
@iterationPast
Feature: US1358979 - PES - TPSM Indicator(UHC_AgreementAcct_PlatniumAcctField) Exari/OptumOptum/Exari

  @TC597195
  @Automated
  @Functional
  @PES
  @US1358979
  @2018.PI04
  @2018.PI04.02
  Scenario: TC597195 - [RL0] Verify TPSM Indicator fields added
    When I search for a Counterparty using MPIN of "12345"
    Then PES returns the following information:
      | tpsmInd           |
      | tpsmDescription   |
      | tpsmEffectiveDate |
      | tpsmCancelDate    |

