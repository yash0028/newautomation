# Last updated on 
@CMD2
@US1211464
@2019.PI09
@releasePresent
@iterationUnknown
Feature: US1211464 - Contract Master search based on Service Address Market Number

  @TC701684
  @Manual
  @Functional
  @CMD2
  Scenario: TC701684 - [RL0]
    Given a valid contract exists
    When the contract OCM is created
    Then the zip code from the CounterpartyAddressFull UCM property is retrieved
    And the zip code used to interrogate the Zip to Market table
    And the Market Number stored as part of the OCM

  @TC701702
  @Manual
  @Functional
  @CMD2
  Scenario: TC701702 - [RL1]
    Given a valid contract transaction event exists
    When the Market Number for the CounterpartyAddressFull has been stored in the OCM
    Then the zip code from each Service Location record from the UHG_CounterpartyAdditionalLocations UCM object are retrieved
    And the zip code used to interrogate the Zip to Market table
    And the process continues until all service Location records available in the UHG_CounterpartyAdditionalLocations object have completed

  @TC701715
  @Manual
  @Functional
  @CMD2
  Scenario: TC701715 - [RL2]
    Given service address market numbers have been gathered
    When slotting against the CMD Product Group Description table
    Then the service address market numbers are used

  @RC_unlinked
  @TC701721
  @Manual
  @Functional
  @CMD2
  Scenario: TC701721 - [RL3]
    Given service location market number is used for contract configuration processes
    When provider service location address market number is used
    Then an information message is generated and logged in the database

