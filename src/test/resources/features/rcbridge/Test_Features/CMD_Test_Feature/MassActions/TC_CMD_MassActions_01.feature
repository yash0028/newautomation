# Last updated on
@CMDTest

Feature: CMD - [Continued] CMD


  @TC_CMD_MassActions_01
  @User_Interface


  Scenario: CMD - Mass Actions Functionality  - [RL0]


    Given I have entered the CMD dashboard URL
    And The dashboard page loads
    And I click Mass Actions
    Then I am on Mass Actions Page
    And I click view tab
    And I clicked on Action Required
    And I am in contract master override page
    And I click on contract sort button
    And I click site in contract master override
    And I click to expand product group
    And I click edit tab in product group