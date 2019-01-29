# Last updated on 
@US1555817
@releaseUnknown
@iterationUnknown
Feature: US1555817 - 10 & 5 day warning - retro

  @TC713741
  @Manual
  @Functional
  Scenario: TC713741 - [RL0]
    Given a 60-day timer exists on a retro approval request
    When it is 10 days before the expiration
    Then the retro request initiator is informed of the upcoming expiration
    And all "Involved Users" are informed of the upcoming expiration

  @TC713746
  @Manual
  @Functional
  Scenario: TC713746 - [RL1]
    Given a 60-day timer exists on a retro approval request
    When it is 5 days before the expiration
    Then the retro request initiator is informed of the upcoming expiration
    And all "Involved Users" are informed of the upcoming expiration

