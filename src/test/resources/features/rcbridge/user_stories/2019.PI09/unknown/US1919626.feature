# Last updated on 
@US1919626
@2019.PI09
@releaseFuture
@iterationUnknown
Feature: US1919626 - OCM CONTRACT CONFIG DB ACCESS  FOR REPORTING

  @TC905909
  @Manual
  @Functional
  Scenario: TC905909 - [RL0]
    Given data exists in the configuration database
    When data from the database is needed
    And the data will be used for purposes that support reporting
    Then data is made available
    ###

