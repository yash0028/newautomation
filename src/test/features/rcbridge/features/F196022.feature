# Last updated on 2018-06-07T18:28:23.016Z
@MVP
@Parity
Feature: F196022 - Feature for Exari Sprint #3 (Mass Actions)

  @MVP
  @Plus
  @EXARI-11525
  @2018.PI02
  @2018.PI02.03
  Scenario: US1156990
    Given I am a Mass Actions Administrator
    When a new Mass Action Definition is needed
    Then I can create a new Mass Action Definition
    And associate the applicable templates
    And input definition details

  @MVP
  @Plus
  @EXARI-11504
  @2018.PI02
  @2018.PI02.03
  Scenario: US1156989
    Given I have created a Mass Action project
    Then I can select a Definition from the provided listing
    And additional details will be viewable

  @MVP
  @EXARI-11470
  @Parity
  @2018.PI02
  @2018.PI02.03
  Scenario: US1156976::0
    Given I have access to the Mass Actions UI
    When I need to navigate the Mass Action Definitions
    Then I can create a new Mass Action Definition

  @MVP
  @EXARI-11470
  @Parity
  @2018.PI02
  @2018.PI02.03
  Scenario: US1156976::1
    Given I have access to the Mass Actions UI
    When I need to navigate the Mass Action Definitions
    Then I can update a new Mass Action Definition

  @MVP
  @EXARI-11470
  @Parity
  @2018.PI02
  @2018.PI02.03
  Scenario: US1156976::2
    Given I have access to the Mass Actions UI
    When I need to navigate the Mass Action Definitions
    Then I can search a new Mass Action Definition

  @MVP
  @EXARI-11476
  @Parity
  @2018.PI02
  @2018.PI02.03
  Scenario: US1156984
    Given I have access to the Mass Actions software
    Then I can access the Contracts User Guide for Mass Actions

