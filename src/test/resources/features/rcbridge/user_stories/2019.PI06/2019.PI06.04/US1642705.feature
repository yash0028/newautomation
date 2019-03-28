# Last updated on 
@Visio
@Shiva
@Suman
@US1642705
@2019.PI06
@2019.PI06.04
@releasePresent
@iterationPresent
Feature: US1642705 - LOB must be selected

  @TC755355
  @Manual
  @Functional
  @Visio
  @Shiva
  @Suman
  Scenario: TC755355 - [RL0]
    Given a user is starting a retro approval request
    When all LOBs are 'No'
    Then the user is informed that at least one LOB must be "Yes" (Please select 'Yes' for at least one LOB.)
    And the form can not be completed if one LOB is not selected as "Yes"

