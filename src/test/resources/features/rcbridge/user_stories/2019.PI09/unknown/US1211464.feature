# Last updated on 
@CMD2
@US1211464
@2019.PI09
@releaseFuture
@iterationUnknown
Feature: US1211464 - Contract Master search based on Service Location Market Number

  @TC701684
  @Manual
  @Functional
  @CMD2
  Scenario: TC701684 - [RL0]
    Given a valid contract record exists in Exari
    When all service locations and billing addresses applicable to the contract have been identified
    And the address details made available in the Location Appendix contract record
    And the zip code of each service location address is available
    Then the zip code(s) will be used to determine service location market number

  @TC701702
  @Manual
  @Functional
  @CMD2
  Scenario: TC701702 - [RL1]
    Given service location market numbers have been identified
    When all market numbers are the same as the contract market number
    Then the contract market number assigned is used for contract configuration processes

  @TC701715
  @Manual
  @Functional
  @CMD2
  Scenario: TC701715 - [RL2]
    Given service location market numbers have been identified
    When all market numbers ARE NOT the same as the contract market numbers
    Then the contract market number assigned can not be used for contract configuration processes
    And the service address for each roster provider record is used for contract configuration processes

  @TC701721
  @Manual
  @Functional
  @CMD2
  Scenario: TC701721 - [RL3]
    Given service location market number is used for contract configuration processes
    When provider service location address market number is used
    Then an information message is generated and logged in the database

