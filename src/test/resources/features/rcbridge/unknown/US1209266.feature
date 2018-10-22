# Last updated on 
@US1209266
@Priority_1
@CMD2
@F210044
@releaseUnknown
@iterationUnknown
Feature: US1209266 - Provider Network Group Role

  @TC564673
  @Automated
  @Functional
  @US1209266
  Scenario: TC564673 - [RL1]
    Given an Exari contract is active
    When the contract requires a means to dientify conditions based on provider role in context of their affiliation with a group of individuals and/or organizations in order to administer the terms
    Then a list of role type values of P (PCP) or S (Specialist) is available to select from
    And a list of permissible identification codes to identify the provider group is available

  @TC564671
  @Automated
  @Functional
  @US1209266
  Scenario: TC564671 - [RL0]
    Given an Exari contract is active
    When the contract requires a means to identify conditions based on provider role in context of their affiliation with a group of individuals and/or organizations in order to administer the terms
    Then a CMD set is available to identify and store the Role and affiliated means used to identify the provider group

