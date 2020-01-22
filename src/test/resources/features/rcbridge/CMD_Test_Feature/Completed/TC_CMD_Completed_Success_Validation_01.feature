# Last updated on
@CMDTest

Feature: CMD - [Continued] CMD


  @TC_CMD_Completed_01
  @User_Interface


  Scenario: CMD Completed validation - [RL0]
      #CMD Completed Success Validation

    Given I have entered the CMD dashboard URL
    And The dashboard page loads
    And I clicked on completed
    And I search contract by contract Id
    And I click search button
    And I click Success tab
    And I select Message Type all


