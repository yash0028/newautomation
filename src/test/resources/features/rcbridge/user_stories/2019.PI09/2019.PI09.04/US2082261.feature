# Last updated on 
@Vineela
@David_huh
@US2082261
@2019.PI09
@2019.PI09.04
@releasePresent
@iterationPresent
Feature: US2082261 - UI/UX: Allow search within data columns in the CMD

  @TC1025757
  @Manual
  @Functional
  @Vineela
  @David_huh
  Scenario: TC1025757 - [RL0]
    Given a user has clicked to open the Completed view of the CMD
    When on the Contract Summary screen
    And the user wants to find a specific Contract
    Then the user can search within one or more of the columns visible within the UI

  @TC1025765
  @Manual
  @Functional
  @Vineela
  @David_huh
  Scenario: TC1025765 - [RL1]
    Given a user has clicked to open the In-Progress view of the CMD
    When on the Contract Summary screen
    And the user wants to find a specific Contract
    Then the user can search within one or more of the columns visible within the UI

  @TC1025770
  @Manual
  @Functional
  @Vineela
  @David_huh
  Scenario: TC1025770 - [RL2]
    Given a user has clicked to open the Error view of the CMD
    When on the Contract Summary screen
    And the user wants to find a specific Contract
    Then the user can search within one or more of the columns visible within the UI

  @TC1025773
  @Manual
  @Functional
  @Vineela
  @David_huh
  Scenario: TC1025773 - [RL3]
    Given a user has searched for a transaction using the onscreen search field in the CMD
    When on the Contract Summary screen
    And the user wants to find a specific transaction
    Then the user can search within one or more of the columns visible within the UI

