# Last updated on 
@US1509684
@releaseUnknown
@iterationUnknown
Feature: US1509684 - Read Strategic Account Manager

  @TC690138
  @Manual
  @Functional
  Scenario: TC690138 - [RL0]
    Given I am a User with access to view or maintain Entity information
    When I view the Strategic Account Manager role on an Entity
    Then I can see the first and last name of each person in the Strategic Account Manager role on the Entity
    And I see the email address of each person in the Strategic Account Manager role on the Entity
    And I can see the telephone number of each person in the Strategic Account Manager role on the Entity
    And I can see the Assignment Level of each person in the Strategic Account Manager role on the Entity

