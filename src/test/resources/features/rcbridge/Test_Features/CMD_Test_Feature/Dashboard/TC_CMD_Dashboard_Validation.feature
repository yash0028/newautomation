# Last updated on
@CMDTest

Feature: CMD - [Continued] CMD


  @TC_CMD_Dashboard_01
  @User_Interface


  Scenario: CMD dashboard validation - [RL0]
      #CMD Errors Status Failed Validation

    Given I have entered the CMD dashboard URL
    And The dashboard page loads
    Then I should be able to see CMD Dashboard with four buckets Completed,In-Progress, Action Required and Errors



