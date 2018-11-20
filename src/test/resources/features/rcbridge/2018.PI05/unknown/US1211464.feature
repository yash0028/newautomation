# Last updated on 
@CMD2
@US1211464
@2018.PI05
@MVP
@CMD_UI
@releaseFuture
@iterationUnknown
Feature: US1211464 - Contract Master search based on Service Location Market Number

  @TC565709
  @Automated
  @Functional
  @CMD2
  Scenario: TC565709 - [RL0]
    Given an healthcare provider is party to an Exari contract record
    When all service location addresses are contained in the contract record
    Then the zip code of the each service location address used to determine service location market number

  @TC565710
  @Automated
  @Functional
  @CMD2
  Scenario: TC565710 - [RL1]
    Given service location market numbers have been identified
    When all market numbers are the same as the contract market number
    Then the contract market number assigned is used for contract configuration processes

  @TC565711
  @Automated
  @Functional
  @CMD2
  Scenario: TC565711 - [RL2]
    Given service location market numbers have been identified
    When all market numbers ARE NOT the same as the contract market numbers
    Then the contract market number assigned can not be used for contract configuration processes
    And the service address for each roster provider record is used for contract configuration processes

  @TC565712
  @Automated
  @Functional
  @CMD2
  Scenario: TC565712 - [RL3]
    Given service location market number is used for contract configuration processes
    When provider service location address market number is used
    Then an information message is generated and logged in the database

