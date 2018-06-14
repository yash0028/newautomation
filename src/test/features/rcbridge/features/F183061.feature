# Last updated on 2018-06-14T14:22:23.063Z
@MVP
@PI02_Top3
@Parity
Feature: F183061 - Enhance Migration Logic from Emptoris to Exari

  @2018.PI02
  @2018.PI02.01
  Scenario: US1093329
    Given I run the migration process
    When I process a Filed contract as a base agreement
    Then all applicable metadata files and attachments are successfully generated and there are no errors due to no contract language file

  @2018.PI02
  @2018.PI02.02
  Scenario: US1088438
    Given when I run the Physician, Facility, Ancillary, FQHC/PHO or Exeption migration process for one/more market numbers
    When I read the contracts in order of Contract Class as defined in the Contract Class Order excel document
    Then I am able to build the metadata files and attachments, and write to the Base Driver Table, in the order specified

  @2018.PI02
  @2018.PI02.02
  Scenario: US1088519
    Given I run the Contract Attachments report for a given set of Market Numbers
    When I receive the data from the report
    Then I am able to send the report to Exari as part of the metadata migration delivery

  @2018.PI02
  @2018.PI02.01
  Scenario: US1100474
    Given the Sprint is complete and I review the User Stories detailed in the Sprint
    When I review the migration documentation
    Then I will find a reference to the pertinent detailed functionality from each User Story

  @2018.PI02
  @2018.PI02.02
  Scenario: US1096650
    Given the Sprint is complete and I review the User Stories detailed in the Sprint
    When I review the migration documentation
    Then I will find a reference to the pertinent detailed functionality from each User Story

  @2018.PI02
  @2018.PI02.01
  Scenario: US1100068
    Given when I receive the Base Driver Table data back from Exari
    When I read the Exari Loading Status column
    Then I am able to provide metrics that identify the success/failure rate of all contracts, for a given Market Number, into Exari

  @2018.PI02
  @2018.PI02.03
  Scenario: US1134952
    Given when I run the Physician, Facility, Ancillary, FQHC/PHO or Exeption migration process for one/more market numbers
    When I read the contracts in order of Contract Class as defined in the Contract Class Order excel document
    Then I am able to build the metadata files and attachments, and write to the Base Driver Table, in the order specified

  @2018.PI02
  @2018.PI02.01
  Scenario: US1096631
    Given when am populating the Base Driver Table
    When the contract is identified as processing an Exception contract
    Then a Yes is populated into the Base_Exception column

  @2018.PI02
  @2018.PI02.03
  Scenario: US1134949
    Given when I run the Physician, Facility, Ancillary, FQHC/PHO or Exeption migration process for one/more market numbers
    When I read the contracts in order of Contract Class as defined in the Contract Class Order excel document
    Then I am able to build the metadata files and attachments, and write to the Base Driver Table, in the order specified

  @2018.PI02
  @2018.PI02.02
  Scenario: US1096678
    Given I process a contract through the migration process and lock it in Emptoris
    When I attempt to open the contract in the Emptoris application
    Then I receive a contract is locked message in the Emptoris application

