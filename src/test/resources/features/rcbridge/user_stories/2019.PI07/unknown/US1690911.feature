# Last updated on 
@US1690911
@2019.PI07
@releasePresent
@iterationUnknown
Feature: US1690911 - LOB must be selected - handle change in field

  @TC776494
  @Manual
  @Functional
  Scenario: TC776494 - [RL0]
    Given a user is starting a retro approval request
    When all LOBs are 'No'
    Then the user is informed that at least one LOB must be "Yes" (Please select 'Yes' for at least one LOB.)
    And the form can not be completed if one LOB is not selected as "Yes".

