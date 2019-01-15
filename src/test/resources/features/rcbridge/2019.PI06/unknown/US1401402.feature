# Last updated on 
@US1401402
@2019.PI06
@releaseFuture
@iterationUnknown
Feature: US1401402 - Check to see if terming PCP has an add transaction on roster contract

  @TC697431
  @Manual
  @Functional
  Scenario: TC697431 - [RL0]
    Given conditions have been met for MPIN of the PROVIDERROSTER_CANCELLATIONS_JSON record
    When MPIN of the PROVIDERROSTER_CANCELLATIONS_JSON record has a corresponding PROVIDER ADDITION record
    And effective start date on the PROVIDERROSTER_ADDITIONS_JSON record immediately follows the effective cancel date of the PROVIDERROSTER_CANCELLATION_JSON record
    Then conditions have not been met for PCP Reassignment processing
    And the PCP reassignment workflow ends

  @TC697438
  @Manual
  @Functional
  Scenario: TC697438 - [RL1]
    Given conditions have been met for MPIN of the PROVIDERROSTER_CANCELLATIONS_JSON record
    When MPIN of the PROVIDERROSTER_CANCELLATIONS_JSON record has a corresponding PROVIDER ADDITION record
    And effective start date on the PROVIDERROSTER_ADDITIONS_JSON record DOES NOT immediately follow the effective cancel date of the PROVIDERROSTER_CANCELLATION_JSON record
    Then conditions have been met for PCP Reassignment processsing
    And the PCP reassignment workflow continues to the next step in the process

