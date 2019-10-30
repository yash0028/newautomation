# Last updated on 
@US1919622
@2019.PI09
@2019.PI09.01
@releasePresent
@iterationPast
Feature: US1919622 - Extract open inventory

  @TC905913
  @Manual
  @Functional
  Scenario: TC905913 - [RL0]
    Given data exists in the transaction database
    When there is unresolved/open transaction
    Then the transaction data will be extracted
    And the extract will be in a commonly used format (e.g. .csv, .xls)
    And the extract will include the minimum data elements
    And this process will repeat every day that there is open inventory

