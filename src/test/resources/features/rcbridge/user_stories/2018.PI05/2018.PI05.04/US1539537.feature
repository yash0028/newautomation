# Last updated on 
@PES
@US1539537
@2018.PI05
@2018.PI05.04
@releasePresent
@iterationPresent
Feature: US1539537 - Bulk provider Roster EXTRACT from PES to Exari - Deploy and Test

  @TC705159
  @Manual
  @Functional
  @PES
  Scenario Outline: TC705159 - [RL0]
    When I search for provider roster with "zip" of value "55421"
    And I search using query parameter "page" of value "<pageNum>"
    Then I see 50 results returned on each page
    Examples:
      | pageNum |
      | 1       |
      | 2       |
      | 3       |
      | 4       |
      | 5       |
      | 6       |

