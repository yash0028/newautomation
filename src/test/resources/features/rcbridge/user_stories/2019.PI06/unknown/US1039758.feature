# Last updated on 
@US1039758
@2019.PI06
@releaseFuture
@iterationUnknown
Feature: US1039758 - See Contract Retro Approval Status

  @TC716034
  @Manual
  @Functional
  Scenario: TC716034 - [RL0]
    Given I am a contractor
    When I open a contract that has been submitted for retro approval
    Then I must be able to see the status of the retro - Approved, Pending or Rejected

