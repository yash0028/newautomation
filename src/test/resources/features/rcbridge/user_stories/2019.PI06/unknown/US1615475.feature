# Last updated on 
@Visio
@US1615475
@2019.PI06
@releasePresent
@iterationUnknown
Feature: US1615475 - New Search Field on Retro Form

  @TC755353
  @Manual
  @Functional
  @Visio
  Scenario: TC755353 - [RL0]
    Given I am on the initiate retro form
    When I am on the top of the form
    Then I must see the following two new optional search fields along with the existing Contract ID
    Then I can search by Counterparty Name
    And I can search by TIN
    And I can search by MPIN
    And I can search by NPI
    And I can search by Contract ID

