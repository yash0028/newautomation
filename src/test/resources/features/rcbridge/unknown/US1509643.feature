# Last updated on 
@US1509643
@releaseUnknown
@iterationUnknown
Feature: US1509643 - Set Hospital Facility Advocate

  @TC690139
  @Manual
  @Functional
  Scenario: TC690139 - [RL0]
    Given I am a User with access to maintain Entity information
    When I want to assign a User to a Hospital Facility Advocate role in an Entity
    Then I have the ability to search the entire United directory to find the User
    And I can assign that User to the Hospital Facility Advocate role.
    And I can set the Assignment Level for the User

