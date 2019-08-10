# Last updated on 
@US1955056
@2019.PI08
@2019.PI08.04
@releasePresent
@iterationPresent
Feature: US1955056 - Amendment and Cancel transactions - Effective Date - 1 calendar day when sending downstream

  @TC921996
  @Manual
  @Functional
  Scenario: TC921996 - [RL0]
    Given a ContractAmended transaction
    When the diff tool identifies the need to cancel a product
    And the DateEffectiveAmendment equals the DateEffective
    Then the date to send downstream should equal the DateEffectiveAmendment

  @TC921999
  @Manual
  @Functional
  Scenario: TC921999 - [RL1]
    Given a ContractAmended transaction
    When the diff tool identifies the need to cancel a product
    And the DateEffectiveAmendment greater than the DateEffective
    Then the date to send downstream should equal the DateEffectiveAmendment minus 1 calendar day

  @TC932353
  @Manual
  @Functional
  Scenario: TC932353 - [RL2]
    Given a UpdateContract transaction
    When the diff tool identifies the need to cancel a provider from the UHG_ProviderRoster_Changes_JSON: "{\"Cancelations
    And the DateEffectiveAmendment equals the DateEffective
    Then the date to send downstream should equal the DateEffectiveAmendment

  @TC932355
  @Manual
  @Functional
  Scenario: TC932355 - [RL3]
    Given a UpdateContract transaction
    When the diff tool identifies the need to cancel a provider from the UHG_ProviderRoster_Changes_JSON: "{\"Cancelations
    And the DateEffectiveAmendment greater than the DateEffective
    Then the date to send downstream should equal the DateEffectiveAmendment minus 1 calendar day

  @TC932357
  @Manual
  @Functional
  Scenario: TC932357 - [RL4]
    Given a Terminate transaction
    When the ExpiryDate equals the DateEffective
    Then the date to send downstream should equal the DateEffectiveAmendment

  @TC932359
  @Manual
  @Functional
  Scenario: TC932359 - [RL5]
    Given a Terminate transaction
    When the ExpiryDate greater than the DateEffective
    Then the date to send downstream should equal the DateEffectiveAmendment minus 1 calendar day

