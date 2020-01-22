# Last updated on
@CMDTest

Feature: CMD - [Continued] CMD

  @TC_CMD_ActionRequired_05
  @User_Interface
  Feature: CMD Action Required PCP Reassignment - [Continued] CMD
  Scenario: CMD Action Required PCP Reassignment - [RL0]
     # CMD Action Required --PCP Reassignment

    Given I have entered the CMD dashboard URL
    And The dashboard page loads
    And I clicked on Action Required
    And I select PCP reassignment tab
    #And I search contract by contract Id
    #And I click search button
    #And I click on contract sort button
    And I click state tab to open PCP Reassignment Window
    Then I enter MPIN for Provider Reassignment
    And I enter Address Sequence ID
    And I click save
    Then I click Final Load button
    Then I click Back button