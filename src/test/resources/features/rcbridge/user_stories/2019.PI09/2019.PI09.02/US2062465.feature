# Last updated on 
@US2062465
@2019.PI09
@2019.PI09.02
@releasePresent
@iterationPast
Feature: US2062465 - Contracts Domain messages handling and code refactor

  @TC1004339
  @Manual
  @Functional
  Scenario: TC1004339 - [RL0]
    Given the hardcoded messages from domain are removed and updated in message catalog
    When a contract created for the hard coded messages
    Then the messages are displayed in the CMD UI
    ### ##

