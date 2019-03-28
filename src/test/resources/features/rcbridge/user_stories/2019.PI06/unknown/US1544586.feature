# Last updated on 
@US1544586
@2019.PI06
@releasePresent
@iterationUnknown
Feature: US1544586 - Email Trigger- NPPP Requires COO Decision

  @TC709186
  @Manual
  @Functional
  Scenario: TC709186 - [RL0]
    Given the task is completed and reviewed by NPPP
    When NPPP chooses "COO Approval Needed"
    Then the retro approval request email is sent to each impacted COO as contained within the "Initiate Retro Form"

