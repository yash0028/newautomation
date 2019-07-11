# Last updated on 
@Sachin
@US1852057
@2019.PI08
@2019.PI08.02
@releasePresent
@iterationPresent
Feature: US1852057 - Planned effective date changes in Physician workflow - reactivate withdrawn retro

  @TC868371
  @Manual
  @Functional
  @Sachin
  Scenario: TC868371 - [RL0]
    Given a physician process had a withdrawn retro
    When the retro is required again
    Then details (associated workflow type, request type, Is this negotiation favorable to uhn, scenario, retro root cause, reason why the effective date cannot be moved, root cause comments, is this regulatory or non-regulatory, what remediation has been put in place to be assured this issue will not occur in the future) from the original retro are pre-populated on the new Retro Initiation Request

