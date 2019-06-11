# Last updated on 
@US1729195
@2019.PI07
@2019.PI07.02
@releasePresent
@iterationPast
Feature: US1729195 - Network/Ops COO User Group

  @TC804134
  @Manual
  @Functional
  Scenario: TC804134 - [RL0]Verify Network and operations COO groups
    Given a retro needs Network COO and Operations COO approval
    When the task is assigned
    Then the Network_COO user group must exist
    And the Operations_COO user group must exist

