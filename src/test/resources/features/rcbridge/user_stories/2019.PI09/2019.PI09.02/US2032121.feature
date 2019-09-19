# Last updated on 
@Sachin
@US2032121
@2019.PI09
@2019.PI09.02
@releasePresent
@iterationPresent
Feature: US2032121 - Integration - Fee Schedule: Summary

  @TC970898
  @Manual
  @Functional
  @Sachin
  Scenario: TC970898 - [RL0]
    Given a contractor is on the "Fee Schedule: Summary" task
    When they know the Fee Schedules to be used
    Then they can input the proposed Fee Schedule Numbers (MSPS #)
    And they can manually input the product
    And the Name, Original Build Year and CMS are automatically populated

