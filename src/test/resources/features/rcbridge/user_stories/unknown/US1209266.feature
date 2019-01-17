# Last updated on 
@US1209266
@releaseUnknown
@iterationUnknown
Feature: US1209266 - Provider Network Group Role

  @TC701672
  @Manual
  @Functional
  Scenario: TC701672 - [RL0]
    Given an Exari contract is active
    When the contract requires a means to identify conditions based on provider role in context of their affiliation with a group of individuals and/or organizations in order to administer the terms
    Then a CMD set is available to identify and store the Role and affiliated means used to identify the provider group

  @TC701703
  @Manual
  @Functional
  Scenario: TC701703 - [RL1]
    Given an Exari contract is active
    When the contract requires a means to dientify conditions based on provider role in context of their affiliation with a group of individuals and/or organizations in order to administer the terms
    Then a list of role type values of P (PCP) or S (Specialist) is available to select from
    And a list of permissible identification codes to identify the provider group is available

