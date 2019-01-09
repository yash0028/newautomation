# Last updated on 
@US1509675
@releaseUnknown
@iterationUnknown
Feature: US1509675 - Read Health Care Economics

  @TC690147
  @Manual
  @Functional
  Scenario: TC690147 - [RL0]
    Given I am a User with access to view or maintain Entity information
    When I view the Health Care Economics role on an Entity
    Then I can see the first and last name of each person in the Health Care Economics role on the Entity
    And I see the email address of each person in the Health Care Economics role on the Entity
    And I can see the telephone number of each person in the Health Care Economics role on the Entity
    And I can see the Assignment Level of each person in the Health Care Economics role on the Entity

