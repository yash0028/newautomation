# Last updated on 
@US1234062
@2019.PI08
@releasePresent
@iterationUnknown
Feature: US1234062 - Billing Entity TIN

  @RC_unlinked
  @TC701714
  @Manual
  @Functional
  Scenario: TC701714 - [RL1]
    Given an Exari contract is active
    When the contract does not require a means to identify individual legal entity (TIN) or group of legal entities (TINs) in order to administer the terms of the agreement
    Then a CMD set based on TIN category is not required

