# Last updated on 
@Optum
@AM-Terminations
@US1469142
@2019.PI09
@releasePresent
@iterationUnknown
Feature: US1469142 - Integration - Calculate "Term Eff Date" field

  @TC720261
  @Manual
  @Functional
  @Optum
  @AM-Terminations
  Scenario: TC720261 - [RL0]
    Given that I have started a termination workflow and identified all the contracts associated with this term event
    When I move to the Initiate Termination task/form
    Then for each contract identified in the previous step, I need the "Term Eff Date" field auto-calculated and populated within the "Agreements Impacted by this Termination" Table OR if the "Next Renewal Date" fields becomes available, I need that field pulled into my table and the header in the table changed to "Next Renewal Date"

