# Last updated on 
@US1919622
@2019.PI08
@2019.PI08.04
@releasePresent
@iterationFuture
Feature: US1919622 - OCM TRANSACTION DB ACCESS  FOR REPORTING

  @TC905913
  @Manual
  @Functional
  Scenario: TC905913 - [RL0]
    Given data exists in the transaction database
    When data from the database is needed
    And the data will be used for purposes that support reporting
    Then data is made available
    ###

