# Last updated on 
@Optum
@Go_Live
@US1356609
@2019.PI09
@releasePresent
@iterationUnknown
Feature: US1356609 - Connect a manual workflow to an agreement

  @TC596329
  @Manual
  @Functional
  @Optum
  @Go_Live
  Scenario: TC596329 - [RL0]
    Given a workflow was started without a deal ID
    When the "Is there a counter offer?" task is completed
    Then the contractor can input the deal ID that was created.

