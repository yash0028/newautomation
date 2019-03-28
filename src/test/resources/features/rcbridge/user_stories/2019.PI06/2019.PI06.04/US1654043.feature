# Last updated on 
@US1654043
@2019.PI06
@2019.PI06.04
@releasePresent
@iterationPresent
Feature: US1654043 - [QE] Validate contract data - fee schedule change

  @TC755354
  @Manual
  @Functional
  Scenario: TC755354 - [RL0]
    Given a Generic Amendment template has been selected in Exari
    When the Replace Payment Appendix transaction has been selected within the Exari UI
    And the Payment Appendix to Remove corresponds to the Payment Appendix to Add
    Then the ContractAmended Transaction will be passed through the microservices

  @TC755356
  @Manual
  @Functional
  Scenario: TC755356 - [RL1]
    Given an ContractAmended TRANSACTION is received
    When the ContractAmended EVENT contains at least one FEE SCHEDULE / RATE
    Then the ContractAmended EVENT passes validation
    And the ContractAmended EVENT continues to next step

  @TC755357
  @Manual
  @Functional
  Scenario: TC755357 - [RL2]
    Given an ContractAmended TRANSACTION is received
    When the ContractAmended EVENT Does Not contain at least one FEE SCHEDULE / RATE
    Then the ContractAmended EVENT Does NOT pass validation
    And a Type 3 error generated and logged
    And a message generated 'ContractAmended EVENT MISSING FEE SCHEDULE / RATE '

  @RC_unlinked
  @TC755358
  @Manual
  @Functional
  Scenario: TC755358 - [RL3]
    Given a RATEUPDATED TRANSACTION event is received
    When the FeeScheduleeffstartdate is less than today's date
    And the retroactiveReasonCode is null
    Then the RATEUPDATED TRANSACTION fails validation
    And a Type 3 error is generated and logged
    And a message is generated stating, "Rate Updated event missing Retroactive Reason Code."

  @RC_unlinked
  @TC759649
  @Manual
  @Functional
  Scenario: TC759649 - [RL4]
    Given a RATEUPDATED TRANSACTION event is received
    When the FeeScheduleeffstartdate is less than today's date
    And the retroactiveReasonCode is not null
    Then the RATEUPDATED TRANSACTION passes validation
    And the RATEUPDATED TRANSACTION continues to the next step

