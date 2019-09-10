# Last updated on 
@Exari
@Go_Live
@US1469831
@2019.PI09
@releasePresent
@iterationUnknown
Feature: US1469831 - Calculate disposition - NAR Physician using AM, Non-1/1 effective date

  @TC666354
  @Manual
  @Functional
  @Exari
  @Go_Live
  Scenario Outline: TC666354 - [RL0]
    Given a workflow exists
    When it is submitted for load
    Then the "Timeliness Disposition" is calculated
    Examples:
      |   |   |
      |   |   |

