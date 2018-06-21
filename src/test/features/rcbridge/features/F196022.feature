# Last updated on 2018-06-21T16:04:54.921Z
@MVP
@Parity
@7.5_Release
Feature: F196022 - Feature for Exari Sprint #3 (Mass Actions)

  @MVP
  @Plus
  @EXARI-11525
  @7.5_Release
  @2018.PI02
  @2018.PI02.03
  Scenario: US1156990
    Given I am a Mass Actions Administrator
    When a new Mass Action Definition is needed
    Then I can create a new Mass Action Definition
    And associate the applicable templates
    And input definition details

  @MVP
  @7.5_Release
  @2018.PI02
  @2018.PI02.03
  Scenario: US1156991
    Given I am a Mass Action Administrator
    When a Mass Action Definition is found to be unnecessary
    Then I can delete the Mass Action Definition
    And any Mass Action with the deleted Definition will retain the Definition
    And the Definition will be retained in history

  @MVP
  @Parity
  @EXARI-11545
  @7.5_Release
  @2018.PI02
  @2018.PI02.03
  Scenario: US1156992
    Given I am a user with access to the Mass Actions widget
    When I access the Mass Actions widget
    Then I should see the active projects within my access/permissions
    And I should see the closed/completed projects within my access/permissions
    And I should see an overall project status (draft, in progress, complete)

  @MVP
  @EXARI-11470
  @Parity
  @7.5_Release
  @2018.PI02
  @2018.PI02.03
  Scenario: US1156976::0
    Given I have access to the Mass Actions UI
    When I need to navigate the Mass Action Definitions
    Then I can create a new Mass Action Definition

  @MVP
  @EXARI-11470
  @Parity
  @7.5_Release
  @2018.PI02
  @2018.PI02.03
  Scenario: US1156976::1
    Given I have access to the Mass Actions UI
    When I need to navigate the Mass Action Definitions
    Then I can update a new Mass Action Definition

  @MVP
  @EXARI-11470
  @Parity
  @7.5_Release
  @2018.PI02
  @2018.PI02.03
  Scenario: US1156976::2
    Given I have access to the Mass Actions UI
    When I need to navigate the Mass Action Definitions
    Then I can search a new Mass Action Definition

  @MVP
  @EXARI-11476
  @Parity
  @7.5_Release
  @2018.PI02
  @2018.PI02.03
  Scenario: US1156984
    Given I have access to the Mass Actions software
    Then I can access the Contracts User Guide for Mass Actions

