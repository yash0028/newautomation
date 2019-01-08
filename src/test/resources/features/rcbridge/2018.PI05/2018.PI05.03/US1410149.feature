# Last updated on 
@PES
@US1410149
@2018.PI05
@2018.PI05.03
@Scrum_Team_1
@releasePresent
@iterationPresent
Feature: US1410149 - Bulk provider Roster EXTRACT from PES to Exari - Optum Work

  @TC692784
  @Manual
  @Functional
  @PES
  Scenario Outline: TC692784 - [RL0] Verify pagination of demographics Roster
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

