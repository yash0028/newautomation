# Last updated on 
@US2009234
@2019.PI09
@2019.PI09.01
@releasePresent
@iterationPast
Feature: US2009234 - Systematically publish inventory report

  @TC1025760
  @Manual
  @Functional
  Scenario: TC1025760 - [RL0]
    Given data exists in the transaction database
    When there is unresolved/open transaction
    And an extract of the open inventory has been created
    Then the extract will be published to a central location

