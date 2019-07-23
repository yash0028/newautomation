# Last updated on 
@US1930492
@2019.PI08
@releasePresent
@iterationUnknown
Feature: US1930492 - Multiple agreements on physician requiring retro

  @TC905910
  @Manual
  @Functional
  Scenario: TC905910 - [RL0]
    Given a physician negotiation exists with more than one agreement
    When retro is required
    Then a separate retro process is started for each agreement

