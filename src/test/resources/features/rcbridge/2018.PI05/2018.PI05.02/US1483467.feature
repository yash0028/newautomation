# Last updated on 
@CMD
@US1483467
@2018.PI05
@2018.PI05.02
@MVP
@Maintenance
@releasePresent
@iterationPresent
Feature: US1483467 - Implement contract config api “providerproductstatus” with contractID,TIN,MPIN and productgroup parameters.

  @TC674586
  @Manual
  @Functional
  @CMD
  Scenario: TC674586 - [RL0]
    Given a valid contract installation transaction has been received from Exari
    When the contract configuration api is envoked
    Then the contract configuration api includes provider product status data
    ###

