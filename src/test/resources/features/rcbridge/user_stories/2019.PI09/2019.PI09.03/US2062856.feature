# Last updated on 
@Suman
@US2062856
@2019.PI09
@2019.PI09.03
@releasePresent
@iterationFuture
Feature: US2062856 - Retro - Market Lead User Groups

  @TC987538
  @Manual
  @Functional
  @Suman
  Scenario: TC987538 - [RL0]
    Given a retro request is initiated
    When the system is determining which Market Lead user group to assign the task
    Then the system first looks for a Physician_Local_Approver_* user group and star is replaced by market number
    And if not found, the system looks for a Physician_Local_Approver_* user group and star is replaced by the state two digit abbreviation
    And if not found, the system creates a task for the initiator
    And the task is "Market Lead User Group not found"
    And the form contain "The system encountered an error. Please manually obtain the approval from the Market Lead and upload the email."
    And the form contains an upload box "Market Lead Approval"
    And upon completion of the task, the retro is routed to NPPP

