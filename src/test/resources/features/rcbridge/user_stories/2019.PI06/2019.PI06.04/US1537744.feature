# Last updated on 
@US1537744
@2019.PI06
@2019.PI06.04
@releasePast
@iterationPast
Feature: US1537744 - [Dev] Validate contract data - fee schedule change

  @TC704158
  @Manual
  @Functional
  Scenario: TC704158 - [RL0]
    Given an RATEUPDATED TRANSACTION is received
    When the RATEUPDATED EVENT contains at least one FEE SCHEDULE / RATE
    Then the RATEUPDATED EVENT passes validation
    And the RATEUPDATED EVENT continues to next step

  @TC704159
  @Manual
  @Functional
  Scenario: TC704159 - [RL1]
    Given an RATEUPDATED TRANSACTION is received
    When the RATEUPDATED EVENT Does Not contain at least one FEE SCHEDULE / RATE
    Then the RATEUPDATED EVENT Does NOT pass validation
    And a Type 3 error generated and logged
    And a message generated 'RATEUPDATED EVENT MISSING FEE SCHEDULE / RATE '

  @TC704160
  @Manual
  @Functional
  Scenario: TC704160 - [RL2]
    Given a RATEUPDATED TRANSACTION event is received
    When the RATEUPDATED TRANSACTION record includes at least one DateEffectiveAmendment
    Then the RATEUPDATED TRANSACTION passes validation
    And the RATEUPDATED TRANSACTION continues to applicable next step in process

  @TC704161
  @Manual
  @Functional
  Scenario: TC704161 - [RL3]
    Given a RATEUPDATED TRANSACTION event is received
    When the RATEUPDATED TRANSACTION record does not contain one or more DateEffectiveAmendment
    Then the RATEUPDATED TRANSACTION does not pass validation
    And a Type 3 error generated and logged
    And a message generated 'RATEUPDATED TRANSACTION MISSING EFFECTIVE DATE'

  @TC757795
  @Manual
  @Functional
  Scenario: TC757795 - [RL4]
    Given a RATEUPDATED TRANSACTION event is received
    When the RATEUPDATED TRANSACTION includes at least one DateEffectiveAmendment
    And the DateEffectiveAmendment is greater than or equal to today
    Then the RATEUPDATED TRANSACTION passes validation
    And the RATEUPDATED TRANSACTION continues to applicable next step in process

  @TC757796
  @Manual
  @Functional
  Scenario: TC757796 - [RL5]
    Given a RATEUPDATED TRANSACTION event is received
    When the RATEUPDATED TRANSACTION includes at least one DateEffectiveAmendment
    And the DateEffectiveAmendment is less than today
    And a retroactiveReasonCode is included in the RATEUPDATED TRANSACTION data
    Then the RATEUPDATED TRANSACTION passes validation
    And the RATEUPDATED TRANSACTION continues to applicable next step in process

  @TC757797
  @Manual
  @Functional
  Scenario: TC757797 - [RL6]
    Given a RATEUPDATED TRANSACTION event is received
    When the RATEUPDATED TRANSACTION includes at least one DateEffectiveAmendment
    And the DateEffectiveAmendment is less than today
    And a retroactiveReasonCode is not included in the RATEUPDATED TRANSACTION data
    Then the RATEUPDATED TRANSACTION does not pass validation
    And a Type 3 error generated and logged
    And a message generated 'RATEUPDATED TRANSACTION MISSING Retroactive Reason Code'

