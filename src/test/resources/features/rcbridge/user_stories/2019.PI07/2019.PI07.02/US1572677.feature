# Last updated on 
@Sheham
@US1572677
@2019.PI07
@2019.PI07.02
@releasePresent
@iterationPast
Feature: US1572677 - Send retro email for "Approved"

  @TC743392
  @Manual
  @Functional
  @Sheham
  Scenario: TC743392 - [RL0]
    Given a retro request status is "Approved"
    When it is in the "Monitor" phase
    Then an email is sent to the initiator, market lead, regional lead, LOB COO
    And the subject is "Retro Approval Request for <Provider name> is Approved"
    And the body is "The Retro Approval Request for <Provider Name> is approved. Please send the agreement to the applicable downstream partner per the contracting process. This approval is valid for 60 days. The details of the Retro Approval Request are below."
    And the body contains all fields from the retro

