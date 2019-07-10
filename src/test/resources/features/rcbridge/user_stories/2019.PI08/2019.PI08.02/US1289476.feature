# Last updated on 
@A_UI_Story
@US1289476
@2019.PI08
@2019.PI08.02
@releasePresent
@iterationFuture
Feature: US1289476 - View OCM Provider contract record details web page

  @TC616491
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC616491 - [RL0]
    Given a service is available to retrieve provider details from the OCM
    When the provider record details are returned
    Then the details are viewable via the CMD web UI
    ###

  @RC_unlinked
  @TC616492
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC616492 - [RL1]
    Given an contract configuration detail record does not exist
    When a contract configuration request is initiatedi
    Then an error message is returned to the user
    And a web page is not made available

