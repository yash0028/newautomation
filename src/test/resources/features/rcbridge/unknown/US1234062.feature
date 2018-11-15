# Last updated on 
@US1234062
@releaseUnknown
@iterationUnknown
Feature: US1234062 - Provider TIN

  @TC564931
  @Automated
  @Functional
  Scenario: TC564931 - [RL1]
    Given an Exari contract is active
    When the contract does not require a means to identify individual legal entity (TIN) or group of legal entities (TINs) in order to administer the terms of the agreement
    Then a CMD set based on TIN category is not required

  @TC564930
  @Automated
  @Functional
  Scenario: TC564930 - [RL0]
    Given an Exari contract is active
    When the contract require a means to identify an individual legal entity (TIN) or group of legal entities (TINs) in order to administer the terms of the agreement
    Then a CMD set is available to identify and store the TIN or TINs that identify the group

