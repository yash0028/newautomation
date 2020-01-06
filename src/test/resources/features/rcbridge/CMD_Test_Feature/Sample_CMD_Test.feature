# Last updated on
@SAMPLETest

Feature: CMD - [Continued] CMD


  @User_Interface
  Scenario: CMD Action required validation - [RL0]


    Given I have entered the CMD dashboard URL
    And The dashboard page loads
      And I clicked on Action Required
     And I am in contract master override page
     And I click on contract sort button
      And I click site in contract master override
     And I click to expand product group
     And I click edit tab in product group


  @SAMPLETest1
  @User_Interface

  Scenario: CMD Completed validation - [RL0]

    Given I have entered the CMD dashboard URL
    And The dashboard page loads
    And I clicked on completed


  @SAMPLETest2
  @User_Interface
  Scenario: CMD In-progress validation - [RL0]

    Given I have entered the CMD dashboard URL
    And The dashboard page loads
    And I clicked on In-progress


  @SAMPLETest3
  @User_Interface
  Scenario: CMD error validation - [RL0]

    Given I have entered the CMD dashboard URL
    And The dashboard page loads
    And I clicked on error


  @SAMPLETest_Mass_Actions
  @User_Interface
  Scenario: CMD - Mass Actions Functionality  - [RL0]


    Given I have entered the CMD dashboard URL
    And The dashboard page loads
    And I click Mass Actions
   # And The Mass Actions Page Load
    And I click view tab
    And I clicked on Action Required
    And I am in contract master override page
    And I click on contract sort button
    And I click site in contract master override
    And I click to expand product group
    And I click edit tab in product group
