# Last updated on 
@US1469831
@2018.PI05
@MVP
@Optum
@Exari
@releasePresent
@iterationUnknown
Feature: US1469831 - Calculate disposition - NAR Physician using AM, Non-1/1 effective date

  @TC666354
  @Manual
  @Functional
  Scenario Outline: TC666354 - [RL0]
    Given a workflow exists
    When it is submitted for load
    Then the "Timeliness Disposition" is calculated
    Examples:
      |
      |

