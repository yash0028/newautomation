# Last updated on 
@US1183610
@2019.PI07
@releasePresent
@iterationUnknown
Feature: US1183610 - Identify agreement with an escalator via Compliance Manager

  @TC564970
  @Manual
  @Functional
  Scenario: TC564970 - [RL0]
    Given an executed or active agreement
    When it has a
    Then it is identified as having an escalaorcomponent
    And it is 120 calendars days before the anticipated escalator date.

