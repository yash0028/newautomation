# Last updated on 
@Exari
@Go_Live
@US1450697
@2019.PI09
@releasePresent
@iterationUnknown
Feature: US1450697 - Calculate disposition - NAR Physician using AM, 1/1 effective date

  @TC651738
  @Manual
  @Functional
  @Exari
  @Go_Live
  Scenario: TC651738 - [RL0]
    Given a workflow exists
    When it is submitted for load
    Then the "Timeliness Disposition" is calculated

