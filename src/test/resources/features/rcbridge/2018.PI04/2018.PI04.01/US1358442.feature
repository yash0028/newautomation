# Last updated on 
@A_UI_Story
@US1358442
@2018.PI04
@2018.PI04.01
@MVP
@Madhur
@Priority_1
@CMD
@F218723
@releasePresent
@iterationPast
Feature: US1358442 - [Unfinished] CMD Single Sign On - UHG Enterprise SSO (MSid and Password )

  @TC597164
  @Manual
  @Functional
  @A_UI_Story
  @US1358442
  @2018.PI04
  @2018.PI04.01
  Scenario: TC597164 - [RL1]
    Given a CMD record does not exist
    When the user navigates to the CMD from within Exari contract record
    Then a message is returned to the user stating CMD record does not exist
    And user returned to the Exari contract record session from which they

  @TC597163
  @Manual
  @Functional
  @A_UI_Story
  @US1358442
  @2018.PI04
  @2018.PI04.01
  Scenario: TC597163 - [RL0]
    Given a CMD record exists
    When the user navigates to the CMD from within Exari contract record
    Then the user is able to view the CMD for that contract record

  @TC597165
  @Manual
  @Functional
  @A_UI_Story
  @US1358442
  @2018.PI04
  @2018.PI04.01
  Scenario: TC597165 - [RL2]
    Given an CMD record exists
    When the user navigates to Exari from within the CMD contract record
    Then the user returns to Exari contract record

