# Last updated on 
@US1509681
@releaseUnknown
@iterationUnknown
Feature: US1509681 - Read Medical Director

  @TC690133
  @Manual
  @Functional
  Scenario: TC690133 - [RL0]
    Given I am a User with access to view or maintain Entity information
    When I view the Medical Director role on an Entity
    Then I can see the first and last name of each person in the Medical Director role on the Entity
    And I see the email address of each person in the Medical Director role on the Entity
    And I can see the telephone number of each person in the Medical Director role on the Entity
    And I can see the Assignment Level of each person in the Medical Director role on the Entity

