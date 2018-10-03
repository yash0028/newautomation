# Last updated on 
@US1183610
@Configuration_for_12/1/18
@MVP
@PI04
@Plus
@F165531
Feature: US1183610 - Identify agreement with an escalator via Compliance Manager

  @TC564970
  @Automated
  @Functional
  @US1183610
  @Configuration_for_12/1/18
  Scenario: TC564970 - [RL0]
    Given an executed or active agreement
    When it has a
    Then it is identified as having an escalaorcomponentAnd it is 120 calendars days before the anticipated escalator date.

