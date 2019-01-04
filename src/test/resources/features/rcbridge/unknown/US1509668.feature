# Last updated on 
@US1509668
@releaseUnknown
@iterationUnknown
Feature: US1509668 - Set Strategic Contracting Director

  @TC690146
  @Manual
  @Functional
  Scenario: TC690146 - [RL0]
    Given I am a User with access to maintain Entity information
    When I want to assign a User to a Strategic Contracting Director role in an Entity
    Then I have the ability to search the entire United directory to find the User
    And I can assign that User to the Strategic Contracting Director role
    And I can set the Assignment Level for the User

