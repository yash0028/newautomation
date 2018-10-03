# Last updated on 
@MVP+1
@US1211464
@F205008
Feature: US1211464 - Identify contract provider Market Number

  @TC565711
  @Automated
  @Functional
  @MVP+1
  @US1211464
  Scenario: TC565711 - [RL2]
    Given the market number of the provider record has been compared to the market number assigned to the contract
    When the market numbers are identical
    Then the contract market number is used

  @TC565709
  @Automated
  @Functional
  @MVP+1
  @US1211464
  Scenario: TC565709 - [RL0]
    Given an healthcare provider is party to an Exari contract record
    When a primary or additional service location address is associated to the provider record
    Then the zip code of the each service location is identified
    And used to identify the market number via NDB zip to market number table crosswalk

  @TC565710
  @Automated
  @Functional
  @MVP+1
  @US1211464
  Scenario: TC565710 - [RL1]
    Given an healthcare provider is party to an Exari contract record
    When the market number has been identified via the zip to market number crosswalk
    Then the market number of the provider address is compared to the market number assigned to the contract

  @TC565712
  @Automated
  @Functional
  @MVP+1
  @US1211464
  Scenario: TC565712 - [RL3]
    Given the market number of the provider record has been compared to the market number assigned to the contract
    When the market numbers are not identical
    Then the provider market number is used
    And a warning message is generated or logged

