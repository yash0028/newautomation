# Last updated on 
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
  Scenario Outline: TC692784 - [RL0]
    Given a search for provider roster
    When I search with provider "mpin" of value "12345"
    And I search with "page" of value "<pageNum>"
    Then I see "number" results returned on each page
    Examples:
      | pageNum |
      | 1       |
      | 2       |
      | 3       |
      | 4       |
      | 5       |
      | 6       |

