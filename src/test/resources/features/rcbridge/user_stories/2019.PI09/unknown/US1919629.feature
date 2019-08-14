# Last updated on 
@US1919629
@2019.PI09
@releaseFuture
@iterationUnknown
Feature: US1919629 - OCM AUDIT DB ACCESS  FOR REPORTING

  @TC905914
  @Manual
  @Functional
  Scenario: TC905914 - [RL0]
    Given data exists in the audit database
    When data from the database is needed
    And the data will be used for purposes that support reporting
    Then data is made available
    ###

