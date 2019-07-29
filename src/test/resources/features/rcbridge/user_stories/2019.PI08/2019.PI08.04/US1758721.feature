# Last updated on 
@Arvind
@US1758721
@2019.PI08
@2019.PI08.04
@releasePresent
@iterationFuture
Feature: US1758721 - Modify denied by Network COO and Operations COO with physician workflow

  @RC_unlinked
  @TC869972
  @Manual
  @Functional
  @Arvind
  Scenario: TC869972 - [RL2]
    Given a retro approval request is denied
    When the Change the Planned Effective Date is selected
    Then I am able to change the Planned Effective Date" on this screen (FYI - once the integration is done with the physician process, we'd like to feed it back into it)

