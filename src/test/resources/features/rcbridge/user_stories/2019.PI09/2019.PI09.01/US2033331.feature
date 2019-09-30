# Last updated on 
@US2033331
@2019.PI09
@2019.PI09.01
@releasePresent
@iterationPast
Feature: US2033331 - NDB Contracts Master api enhancement to include ConArr field

  @TC970895
  @Manual
  @Functional
  Scenario: TC970895 - [RL0]
    Given the NDB contract master api is enhanced and ready
    When the contract master api is called with additional request parameter ConArr
    Then the NDB contract master response is filtered with ConArr and response is returned

  @TC970902
  @Manual
  @Functional
  Scenario: TC970902 - [RL1]
    Given the NDB contract master api is enhanced and ready
    When the contract master api is called with out request parameter ConArr
    Then the NDB contract master response is not filtered with ConArr and response is returned

