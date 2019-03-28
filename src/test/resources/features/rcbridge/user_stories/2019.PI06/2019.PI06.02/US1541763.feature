# Last updated on 
@US1541763
@2019.PI06
@2019.PI06.02
@releasePresent
@iterationPast
Feature: US1541763 - Market Lead Denies or Requests More Info on Retro

  @TC709183
  @Manual
  @Functional
  Scenario: TC709183 - [RL0]Verify Market Lead Denies or Requests More Info on Retro
    Given a retro approval request exists with the market lead
    When the market lead selects "Deny" or "Request Info." on the retro request
    Then the retro approval request is assigned and routed back to the retro request initiator with the selected denial reasons, if applicable, and comments (applicable for both Denial or request more info.) added by Market lead
    And the requestor sees the original form, edit mode, submitted along with the additional fields provided by Market Lead

