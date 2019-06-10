# Last updated on 
@US1234062
@2019.PI08
@releaseUnknown
@iterationUnknown
Feature: US1234062 - Billing Entity TIN

  @TC701695
  @Manual
  @Functional
  Scenario: TC701695 - [RL0]
    Given an Exari contract is active
    When the contract require a means to identify an individual legal entity (TIN) or group of legal entities (TINs) in order to administer the terms of the agreement
    Then a CMD set is available to identify and store the TIN or TINs that identify the group

  @TC701714
  @Manual
  @Functional
  Scenario: TC701714 - [RL1]
    Given an Exari contract is active
    When the contract does not require a means to identify individual legal entity (TIN) or group of legal entities (TINs) in order to administer the terms of the agreement
    Then a CMD set based on TIN category is not required

