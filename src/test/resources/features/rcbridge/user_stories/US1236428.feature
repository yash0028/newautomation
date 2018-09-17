# Last updated on 
@A_UI_Story
@US1236428
@2018.PI03
Feature: US1236428 - CMD Single Sign On - UHG Enterprise SSO (MSid and Password )

  @TC564532
  @Automated
  @Functional
  Scenario: TC564532 - [RL2]
    Given an CMD record exists
    When the user navigates to Exari from within the CMD contract record
    Then the user returns to Exari contract record

  @TC564530
  @Automated
  @Functional
  Scenario: TC564530 - [RL0]
    Given a CMD record exists
    When the user navigates to the CMD from within Exari contract record
    Then the user is able to view the CMD for that contract record

  @TC564531
  @Automated
  @Functional
  Scenario: TC564531 - [RL1]
    Given a CMD record does not exist
    When the user navigates to the CMD from within Exari contract record
    Then a message is returned to the user stating CMD record does not exist
    And user returned to the Exari contract record session from which they

