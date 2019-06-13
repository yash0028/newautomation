# Last updated on 
@Visio
@US1849534
@2019.PI08
@releaseFuture
@iterationUnknown
Feature: US1849534 - Integrate search capability on Physician Process

  @TC846503
  @Manual
  @Functional
  @Visio
  Scenario: TC846503 - [RL0]
    Given I am on the input
    When I am on the top of the form
    Then I must see the following new optional search fields along with the existing Contract ID
    And I can search by Counterparty Name
    And I can search by TIN
    And I can search by MPIN
    And I can search by NPI
    And I can search by Contract ID
    And I can select the result(s) that I want to attach to the process

