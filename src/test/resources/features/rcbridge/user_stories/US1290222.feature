# Last updated on 
@US1290222
@2018.PI03
Feature: US1290222 - CMD Integration with Exari - SSO (Reference Table Admin)

  @TC565019
  @Automated
  @Functional
  Scenario: TC565019 - [RL1]
    Given a CMD error record does not exist
    When the user navigates to the CMD from within Exari contract record
    Then a message is returned to the user stating CMD record does not exist
    And user returned to the Exari contract record session from which they

  @TC565018
  @Automated
  @Functional
  Scenario: TC565018 - [RL0]
    Given a CMD error record exists
    When the user navigates to the CMD from within Exari contract record
    Then the user is able to view the CMD for that contract record error

  @TC565020
  @Automated
  @Functional
  Scenario: TC565020 - [RL2]
    Given an CMD error record exists
    When the user navigates to Exari from within the CMD contract record
    Then the user returns to Exari contract record

