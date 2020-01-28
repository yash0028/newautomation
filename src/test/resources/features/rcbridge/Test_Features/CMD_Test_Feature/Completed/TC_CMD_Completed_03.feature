# Last updated on
@CMDTest

Feature: CMD - [Continued] CMD


  @TC_CMD_Completed_03
  @User_Interface


  Scenario: CMD Completed validation - [RL0]
      #CMD Completed Summary Page  Validation

    Given I have entered the CMD dashboard URL
    And The dashboard page loads
    And I clicked on completed
    Then I should land on Contract Summary Page
