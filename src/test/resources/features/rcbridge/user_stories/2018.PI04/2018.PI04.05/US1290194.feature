# Last updated on 
@US1290194
@2018.PI04
@2018.PI04.05
@releasePast
@iterationPast
Feature: US1290194 - Database schema for Type 1 errors

  @TC565560
  @Manual
  @Functional
  Scenario: TC565560 - [RL0]
    # Scenario 1 (Contract master look up errors- No response):
    Given A contract master error exists
    When The error identified has no contract master data
    Then The following data is available in the Work Object Item Contract Master Table
    # Transaction ID
    # Status = action required
    # Date/timestamp
    # id (Reference to one Contract master ID)
    And the following data is available in the Contract Master Table
    # Input data (Fee Schedule, Product code(s)
    # Scenario 2 (Contract master look up errors- multiple errors):
    Given A contract master error exists
    When The error identified has more than one contract master
    Then The following data is available in the Work Object Item Contract Master Table
    # Transaction ID
    # id (Reference to more than one Contract master ID's)
    # Status = action required
    # Date/timestamp
    And the following data is available in the Contract Master Table
    # Input data (Fee Schedule, Product code(s)

