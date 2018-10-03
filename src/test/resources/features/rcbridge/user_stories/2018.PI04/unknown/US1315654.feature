# Last updated on 
@US1315654
@2018.PI04
@CMD2
@#MVP
@10/1_Physician
@CMD
@F232004
Feature: US1315654 - Identify Rate Process rule during roster event process - Exceptions

  @TC573548
  @Automated
  @Functional
  @US1315654
  @2018.PI04
  Scenario: TC573548 - [RL0]
    Given 'UHG_ProviderRoster_GeneratedRosterEvent' has value 'Add' or 'Cancel'
    When 'ProductGroup' has a Rate available from the CMD Contract database for the contract
    Then a Rate Process rule will be used for each ProductGroup applicable to the contract for the provider record

