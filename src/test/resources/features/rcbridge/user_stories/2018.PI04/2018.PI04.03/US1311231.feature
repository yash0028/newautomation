# Last updated on 
@US1311231
@2018.PI04
@2018.PI04.03
@CMD2
@#MVP
@10/1_Physician
@CMD
@F232004
Feature: US1311231 - Identify Rate Process rule during roster event process

  @TC572199
  @Automated
  @Functional
  @US1311231
  @2018.PI04
  @2018.PI04.03
  Scenario: TC572199 - [RL0]
    Given 'UHG_ProviderRoster_GeneratedRosterEvent' has value 'Add' or 'Cancel'
    When 'ProductGroup' has a Rate available from the CMD Contract database for the contract
    Then a Rate Process rule will be used for each ProductGroup applicable to the contract for the provider record

