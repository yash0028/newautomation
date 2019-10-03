# Last updated on 
@US2087897
@2019.PI09.02
@releaseUnknown
@iterationPast
Feature: US2087897 - MAHP GHMO - Determine ConArr for PCP and SPEC Contracts VIRGINIA (038 , 040, 010)

  @TC1004338
  @Manual
  @Functional
  Scenario: TC1004338 - [RL0]
    Given the ConArr changes are deployed
    When a contract is created for PCP with IPA 038
    Then the ConArr value 7 is used to get the contract masters

  @TC1004341
  @Manual
  @Functional
  Scenario: TC1004341 - [RL1]
    Given the ConArr changes are deployed
    When a contract is created for PCP with IPA 040
    Then the ConArr value 7 is used to get the contract masters

  @TC1004342
  @Manual
  @Functional
  Scenario: TC1004342 - [RL2]
    Given the ConArr changes are deployed
    When a contract is created for SPEC with IPA 010
    Then the ConArr value 0 is used to get the contract masters

