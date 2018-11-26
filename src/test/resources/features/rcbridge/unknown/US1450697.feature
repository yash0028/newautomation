# Last updated on 
@US1450697
@MVP
@Exari
@releaseUnknown
@iterationUnknown
Feature: US1450697 - Calculate disposition

  @TC651738
  @Manual
  @Functional
  Scenario Outline: TC651738 - [RL0]
    Given a workflow exists
    When it is submitted for load
    Then the "Timeliness Disposition" is calculated
    Examples:
      |
      |

