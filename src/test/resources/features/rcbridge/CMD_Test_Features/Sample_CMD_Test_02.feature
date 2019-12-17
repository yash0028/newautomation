# Last updated on



  @SAMPLE
  @Sample_CMD_Test_02
  @User_Interface
  Feature: CMD Resolve Multiple - [Continued] CMD
  Scenario: CMD Action Required Downstream Error Resolution - [RL0]
     # CMD Action Required Downstream Error Resolution --Resolve Multiple

    Given I have entered the CMD dashboard URL
    And The dashboard page loads
    And I clicked on Action Required
    And I click Downstream Error Resolution
    #Then the default sort of the data should be oldest submission date to newest submission date
    #And I search  the Contract by Contract Id
    And I click the site
    Then I click the Resolve Multiple Tab
    And I Enter Resolution Text
    And I select Resolution Type
    And I check box the name
    Then I click submit button
