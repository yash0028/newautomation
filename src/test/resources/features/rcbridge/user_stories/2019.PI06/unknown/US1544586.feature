# Last updated on 
@US1544586
@2019.PI06
@releaseFuture
@iterationUnknown
Feature: US1544586 - Routing- NPPP Requires COO approval

  @TC709186
  @Manual
  @Functional
  Scenario: TC709186 - [RL0]
    Given a retro approval request exists with NPPP
    When NPPP chooses "COO Approval Needed"
    Then the retro approval request is routed to each impacted COO as contained within the "Initiate Retro Form"

