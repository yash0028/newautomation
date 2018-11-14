# Last updated on 
@CLM_UAT
@US1193405
@2018.PI02
@2018.PI02.05
@MVP
@PI02_Top3
@Parity
@releasePast
@iterationPast
Feature: US1193405 - NDB Driver Module – NDB Cross Functional Team - Contract Master - Cancel Transactions (UNET / COSMOS)

  @TC564413
  @Automated
  @Functional
  @CLM_UAT
  Scenario: TC564413 - [RL0]
    Given The Physician contract is complete and correct within Exari
    When The contract is included in the Exari Physician Contract micro-service to NDB with cancel date and rsn code
    Then NDB should cancel the contract in the 'E' PNC contract screen successfully within NDB and should also cancel the panel in W screen for cosmos

