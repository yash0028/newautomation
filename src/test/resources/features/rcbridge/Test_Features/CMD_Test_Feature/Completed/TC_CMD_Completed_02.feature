# Last updated on
@CMDTest

Feature: CMD - [Continued] CMD


  @TC_CMD_Completed_02
  @User_Interface


  Scenario: CMD Completed validation - [RL0]
      #CMD Completed Search Contract  Validation

    Given I have entered the CMD dashboard URL
    And The dashboard page loads
    And I clicked on completed
    And I search contract by contract Id
    And I click search button
    Then I should be able to see searched contract


