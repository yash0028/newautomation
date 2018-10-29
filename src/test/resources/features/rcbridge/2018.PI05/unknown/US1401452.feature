# Last updated on
@US1401452
@2018.PI05
@MVP
@Priority_2
@Amrutha
@Parity
@F205016
@releaseFuture
@iterationUnknown
Feature: US1401452 - Execute NDB PCP Reassignment API with PCP Reassignment information user entered in CMD UI

  @TC622674
  @Manual
  @Functional
  @US1401452
  @2018.PI05
  Scenario: TC622674 - [RL0]
    Given PCP reassignment information is needed for a cancel or term transaction
    When the reassignment information is populated by a user via the CMD UI
    Then use the information entered by the user in the payload
    And record the information in the OCM record

