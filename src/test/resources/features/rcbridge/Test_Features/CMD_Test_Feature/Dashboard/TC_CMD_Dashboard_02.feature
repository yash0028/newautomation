# Last updated on
@CMDTest

Feature: CMD - [Continued] CMD


  @TC_CMD_Dashboard_02
  @User_Interface


  Scenario: CMD dashboard validation - [RL0]
      #CMD Dashboard  Search Contract  Validation

    Given I have entered the CMD dashboard URL
    And The dashboard page loads
    And I search contract by contract Id
    And I click search button
    Then I should able to see contract details in contract Summary page