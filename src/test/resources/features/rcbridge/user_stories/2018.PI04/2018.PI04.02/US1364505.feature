# Last updated on 
@US1364505
@2018.PI04
@2018.PI04.02
@Priority_1
@Scrum_Team_1
@F232041
Feature: US1364505 - PES Results Enhancements

  @TC599658
  @Manual
  @Functional
  @US1364505
  @2018.PI04
  @2018.PI04.02
  Scenario: TC599658 - [RL0]
    # For Roster
    Given a user wants to do a search for Roster
    When a "tin" of "222534389" is passed to roster
    And the search results give back more than 50 providers
    Then the user can see up to 150 providers

  @TC608270
  @Manual
  @Functional
  @US1364505
  @2018.PI04
  @2018.PI04.02
  Scenario: TC608270 - [RL1]
    #For appendix
    Given a user wants to populate appendix 1 with addresses
    When a "tin" of "222534389" is passed to appendix 1
    And the search results give back more than 50 providers
    Then the user can see up to 150 providers

