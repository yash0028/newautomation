# Last updated on 
@US1573730
@2019.PI06
@releasePresent
@iterationUnknown
Feature: US1573730 - Network COO Deny or Request More info on  Retro Request

  @TC730582
  @Manual
  @Functional
  Scenario: TC730582 - [RL0]
    Given a task is assigned to the network COO
    When network COO selects 'Deny' or Request More Info'
    Then the retro task is routed back to the original requestor
    And a mandatory reason is provided for the denial or the more info needed

