# Last updated on 
@Sachin
@US1955374
@2019.PI08
@2019.PI08.04
@releasePresent
@iterationPast
Feature: US1955374 - Start Retro process outcome button

  @TC921992
  @Manual
  @Functional
  @Sachin
  Scenario: TC921992 - [RL0]
    Given a user is on the "25 day retro reminder" task in the Physician Negotiation
    When the user clicks on "Start Retro Process"
    Then the Retro process is automatically started
    And the contract IDs from the Physician Negotiation are part of the Retro

