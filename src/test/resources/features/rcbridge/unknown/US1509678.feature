# Last updated on 
@US1509678
@releaseUnknown
@iterationUnknown
Feature: US1509678 - Read IT Owner

  @TC690162
  @Manual
  @Functional
  Scenario: TC690162 - [RL0]
    Given I am a User with access to view or maintain Entity information
    When I view the IT Owner role on an Entity
    Then I can see the first and last name of each person in the IT Owner role on the Entity
    And I see the email address of each person in the IT Owner role on the Entity
    And I can see the telephone number of each person in the IT Owner role on the Entity
    And I can see the Assignment Level of each person in the IT Owner role on the Entity

