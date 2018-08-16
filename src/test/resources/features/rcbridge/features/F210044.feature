# Last updated on 
@Priority_1
@CMD2
@F210044
Feature: F210044 - Contract Meta Data (CMD) Category Set values - TIN or Provider Network

  @US1209261
  Scenario: US1209261::0 - Provider Network Group
    Given an Exari contract is active
    When the contract requires a method to identify a group of individuals and/or organizations in order to administer the terms
    Then a CMD set is available to identify and store the means used to identify the provider group

  @US1209261
  Scenario: US1209261::1 - Provider Network Group
    Given an Exari contract is active
    When the contract requires a method to identify a group of individuals and/or organizations in order to administer the terms
    Then a list of permissible identification code values is available from which to use

  @US1209266
  Scenario: US1209266::0 - Provider Network Group Role
    Given an Exari contract is active
    When the contract requires a means to identify conditions based on provider role in context of their affiliation with a group of individuals and/or organizations in order to administer the terms
    Then a CMD set is available to identify and store the Role and affiliated means used to identify the provider group

  @US1209266
  Scenario: US1209266::1 - Provider Network Group Role
    Given an Exari contract is active
    When the contract requires a means to dientify conditions based on provider role in context of their affiliation with a group of individuals and/or organizations in order to administer the terms
    Then a list of role type values of P (PCP) or S (Specialist) is available to select from
    And a list of permissible identification codes to identify the provider group is available

  @US1234062
  Scenario: US1234062::0 - Provider TIN
    Given an Exari contract is active
    When the contract require a means to identify an individual legal entity (TIN) or group of legal entities (TINs) in order to administer the terms of the agreement
    Then a CMD set is available to identify and store the TIN or TINs that identify the group

  @US1234062
  Scenario: US1234062::1 - Provider TIN
    Given an Exari contract is active
    When the contract does not require a means to identify individual legal entity (TIN) or group of legal entities (TINs) in order to administer the terms of the agreement
    Then a CMD set based on TIN category is not required

