# Last updated on 
@US1555817
@2019.PI06
@2019.PI06.04
@releaseFuture
@iterationFuture
Feature: US1555817 - 10 & 5 day warning - retro

  @TC713741
  @Manual
  @Functional
  Scenario: TC713741 - [RL0]
    Given a 60-day timer exists on a retro approval request
    When it is 10 days before the expiration
    Then the retro request initiator is informed within Activity Manager of the upcoming expiration
    And all "NPPP Users" are informed within Activity Manager of the upcoming expiration

  @TC713746
  @Manual
  @Functional
  Scenario: TC713746 - [RL1]
    Given a 60-day timer exists on a retro approval request
    When it is 5 days before the expiration
    Then the retro request initiator is informed within Activity Manager of the upcoming expiration
    And all "NPPP Users" are informed within Activity Manager of the upcoming expiration

