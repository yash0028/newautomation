# Last updated on 
@ETMA
@US1103648
@2018.PI02
Feature: US1103648 - [Continued] Retro Active Reason Code - Contract Level (ETMA)

  @TC493887
  @Automated
  @Acceptance
  Scenario: TC493887 - Validate return of reason codes
    When ETMA is queried for the retro reason code
    Then all of the retro reason codes are returned

