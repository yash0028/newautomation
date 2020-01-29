# Last updated on
@CMDTest

Feature: CMD - [Continued] CMD


  @TC_CMD_In-Progress_01
  @User_Interface


  Scenario: CMD In-Progress bucket validation - [RL0]
      #CMD In-Progress Validation Test

    Given I have entered the CMD dashboard URL
    And The dashboard page loads
    And I clicked on In-progress
    And I should land on contract Summary Page