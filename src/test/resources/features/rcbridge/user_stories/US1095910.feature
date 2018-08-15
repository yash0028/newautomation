# Last updated on 
@RFP
@US1095910
@2018.PI02
Feature: US1095910 - External Data Query for RFP - Error Handling

  @TC493891
  @Manual
  @Functional
  Scenario: TC493891 - Catastrophic error validation
    Given a user needs to call RFP grid
    When a user incorrectly inputs data
    Then the user receives a bad input error message

  @TC493890
  @Manual
  @Functional
  Scenario: TC493890 - Incorrect data input error validation
    Given a user needs to call RFP grid
    When a user incorrectly inputs data
    Then the user receives a bad input error message

  @TC493892
  @Manual
  @Functional
  Scenario: TC493892 - System unavailable error validation
    Given a user needs to call RFP grid
    When the system goes down
    Then the user receives a system error message

