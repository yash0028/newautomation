# Last updated on 
@US1807893
@2019.PI08
@releasePresent
@iterationUnknown
Feature: US1807893 - Apply CMD Fallout Resolution to multiple targets

  @TC828083
  @Manual
  @Functional
  Scenario: TC828083 - [RL0]
    Given a type 1 error exists in CMD
    When a user has resolved the error in CMD
    Then the user has the ability to select other Type 1 errors objects
    And the resolved error resolution is applied to the selected objects
    And the originating and additional selected work objects status is updated

  @TC828086
  @Manual
  @Functional
  Scenario: TC828086 - [RL1]
    Given a type 2 error exists in CMD
    When a user has resolved the error in CMD
    Then the user has the ability to select other Type 2 errors/objects
    And the error resolution is applied to the selected objects
    And the originating and additional selected work objects status is updated

