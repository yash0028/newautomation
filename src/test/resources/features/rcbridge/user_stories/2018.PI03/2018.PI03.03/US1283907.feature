# Last updated on 
@MVP
@US1283907
@2018.PI03
@2018.PI03.03
@releaseUnknown
@iterationUnknown
Feature: US1283907 - Markets table microservice

  @TC552579
  @Automated
  @Functional
  @MVP
  Scenario: TC552579 - Invalid market number
    Given the market number "1" is not listed in the Market UHC table
    When a query to the table is initiated
    Then the query response does not return the market record information
    And a record not found message is returned

  @TC552578
  @Automated
  @Functional
  @MVP
  Scenario Outline: TC552578 - Valid market number
    Given the market number <marketNumber> is listed in the Market UHC table
    When a query to the table is initiated
    Then the query response includes the market record information
    Examples:
      | marketNumber |
      | "1402"       |
      | "1403"       |
      | "1404"       |
      | "2407"       |
      | "2408"       |
      | "2409"       |
      | "3413"       |
      | "4420"       |
      | "4421"       |
      | "4422"       |
      | "4423"       |
      | "4430"       |
      | "4431"       |

  @TC565430
  @Automated
  @Functional
  @MVP
  Scenario Outline: TC565430 - [RL0]
    Given the market number <marketNumber> is listed in the Market UHC table
    When a query to the table is initiated
    Then the query response includes the market record information
    Examples:
      | marketNumber |
      | "1402"       |
      | "1403"       |
      | "1404"       |
      | "2407"       |
      | "2408"       |
      | "2409"       |
      | "3413"       |
      | "4420"       |
      | "4421"       |
      | "4422"       |
      | "4423"       |
      | "4430"       |
      | "4431"       |

  @TC565431
  @Automated
  @Functional
  @MVP
  Scenario: TC565431 - [RL1]
    Given the market number "1" is not listed in the Market UHC table
    When a query to the table is initiated
    Then the query response does not return the market record information
    And a record not found message is returned

