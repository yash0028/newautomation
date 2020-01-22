# Last updated on
@CMDTest

Feature: CMD - [Continued] CMD


  @TC_CMD_Errors_01
  @User_Interface


  Scenario: CMD Erros validation - [RL0]
      #CMD Errors Status Failed Validation

    Given I have entered the CMD dashboard URL
    And The dashboard page loads
    And I clicked on error
    And I search contract by contract Id
    And I click search button
    And I click failed tab



