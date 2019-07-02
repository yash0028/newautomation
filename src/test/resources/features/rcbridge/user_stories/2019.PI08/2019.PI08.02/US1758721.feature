# Last updated on 
@US1758721
@2019.PI08
@2019.PI08.02
@releasePresent
@iterationFuture
Feature: US1758721 - Modify denied by Network COO and Operations COO

  @TC869970
  @Manual
  @Functional
  Scenario: TC869970 - [RL0]
    Given a retro approval request is denied by a Network COO or Operations COO
    When both have provided an answer
    Then the initiator has a new task, "Retro Approval Request is Denied" informing them of the denial
    And is informed that "This Retro Approval Request is denied. You must Withdraw the Retro Approval Request or change the Planned Effective Date."
    And there is a radio button for each option (Withdraw Retro Approval Request and Change the Planned Effective Date)
    And the changes can be executed on this screen.
    And this new information is located at the top of the screen

  @TC869971
  @Manual
  @Functional
  Scenario: TC869971 - [RL1]
    Given a retro approval request is denied
    When the "Withdraw Retro Approval Request' is selected
    Then the same choices as the Withdraw task appear
    And the comments box appears

  @TC869972
  @Manual
  @Functional
  Scenario: TC869972 - [RL2]
    Given a retro approval request is denied
    When the Change the Planned Effective Date is selected
    Then I am able to change the Planned Effective Date" on this screen (FYI - once the integration is done with the physician process, we'd like to feed it back into it)

