# Last updated on 
@US1509680
@releaseUnknown
@iterationUnknown
Feature: US1509680 - Read Market Lead

  @TC690156
  @Manual
  @Functional
  Scenario: TC690156 - [RL0]
    Given I am a User with access to view or maintain Entity information
    When I view the Market Lead role on an Entity
    Then I can see the first and last name of each person in the Market Lead role on the Entity
    And I see the email address of each person in the Market Lead role on the Entity
    And I can see the telephone number of each person in the Market Lead role on the Entity
    And I can see the Assignment Level of each person in the Market Lead role on the Entity

