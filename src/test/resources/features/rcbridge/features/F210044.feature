# Last updated on 2018-07-30T14:58:03.447Z
@Priority_1
@10/1_Physician
@CMD
Feature: F210044 - Contract Meta Data (CMD) Category Set values - TIN or Provider Network

  Scenario: US1209261::0
    Given an Exari contract is active
    When the contract requires a method to identify a group of individuals and/or organizations in order to administer the terms
    Then a CMD set is available to identify and store the means used to identify the provider group

  Scenario: US1209261::1
    Given an Exari contract is active
    When the contract requires a method to identify a group of individuals and/or organizations in order to administer the terms
    Then a list of permissible identification code values is available from which to use

  Scenario: US1209266::0
    Given an Exari contract is active
    When the contract requires a means to identify conditions based on provider role in context of their affiliation with a group of individuals and/or organizations in order to administer the terms
    Then a CMD set is available to identify and store the Role and affiliated means used to identify the provider group

  Scenario: US1209266::1
    Given an Exari contract is active
    When the contract requires a means to dientify conditions based on provider role in context of their affiliation with a group of individuals and/or organizations in order to administer the terms
    Then a list of role type values of P (PCP) or S (Specialist) is available to select from
    And a list of permissible identification codes to identify the provider group is available

