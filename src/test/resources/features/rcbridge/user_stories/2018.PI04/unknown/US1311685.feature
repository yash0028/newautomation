# Last updated on 
@MVP
@US1311685
@2018.PI04
@CMD2
@Priority_2
@F232444
Feature: US1311685 - Med Nec clause table update API to NDB  - Facility

  @TC572216
  @Automated
  @Functional
  @MVP
  @US1311685
  @2018.PI04
  Scenario: TC572216 - [RL0]
    Given the med nec clause code record has been updated in the table
    When the update has been recorded in CMD
    Then the API service is initiated to notify NDB of the update

