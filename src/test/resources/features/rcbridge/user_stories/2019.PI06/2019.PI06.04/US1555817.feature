# Last updated on 
@RC_invalid
@US1555817
@2019.PI06
@2019.PI06.04
@releasePresent
@iterationFuture
Feature: US1555817 - 10 & 5 Day Warning Before Approval Expiration

  @RC_unlinked
  @TC713746
  @Manual
  @Functional
  @RC_invalid
  Scenario: TC713746 - [RL1]
    Given a 60-day timer exists on a retro approval request
    When it is 5 days before the expiration
    Then the retro request initiator is informed within Activity Manager of the upcoming expiration
    And all "NPPP Users" are informed within Activity Manager of the upcoming expiration

