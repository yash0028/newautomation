# Last updated on 
@Dushyant
@US2032121
@2019.PI09
@2019.PI09.04
@releasePresent
@iterationPresent
Feature: US2032121 - Integration - Fee Schedule: Summary

  @TC970898
  @Manual
  @Functional
  @Dushyant
  Scenario: TC970898 - [RL0]
    Given a contractor is on the "Fee Schedule: Summary" task
    When they know the Fee Schedules to be used and have selected that the Fee Schedules are standard
    Then they can input the proposed Fee Schedule Numbers (MSPS #)
    And they can manually input the product name
    And upon completion the task "Validate MSPS Fee Schedule Details" is created

  @TC1011008
  @Manual
  @Functional
  @Dushyant
  Scenario: TC1011008 - [RL2]
    Given the task "Validate MSPS Fee Schedule Details" is created
    When the initiator clicks Change "MSPS and Product"
    Then the task "Fee Schedule: Summary" opens

  @TC1011009
  @Manual
  @Functional
  @Dushyant
  Scenario: TC1011009 - [RL3]
    Given the task "Validate MSPS Fee Schedule Details" is created
    When the initiator clicks Change "Accept"
    Then the existing inclusive gateway functionality continues as is (Hoppers, MNSPS, Fee Schedule: Request Test Fee Schedule)

