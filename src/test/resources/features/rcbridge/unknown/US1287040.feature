# Last updated on 
@US1287040
@releaseUnknown
@iterationUnknown
Feature: US1287040 - Contract Config SSO Integration with Exari - SSO RBA

  @TC701690
  @Manual
  @Functional
  Scenario: TC701690 - [RL0]
    Given a CMD record exists for a contract
    When the user navigates to the CMD from within Exari
    Then the user is able to access the contract metadata details within CMD

  @TC701704
  @Manual
  @Functional
  Scenario: TC701704 - [RL1]
    Given a CMD record does not exist
    When the user navigates to the CMD from within Exari contract record
    Then a message is returned to the user stating CMD record does not exist
    And the user returned to the Exari contract record session from which they originated

  @TC701717
  @Manual
  @Functional
  Scenario: TC701717 - [RL2]
    Given an CMD record exists
    When the user navigates to Exari from within the CMD contract record
    Then the user returns to Exari contract record

