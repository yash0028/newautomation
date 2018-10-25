# Last updated on 
@US1396746
@2018.PI05
@MVP
@Maintenance
@F236509
@releaseFuture
@iterationUnknown
Feature: US1396746 - Create Duplicate Edit 2 for Draft

  @TC619293
  @Manual
  @Functional
  @US1396746
  @2018.PI05
  Scenario: TC619293 - [RL0]
    Given I invoke a MPIN/TIN Duplicate Edit on a migrated contract
    When if other MPIN/TIN Duplicates exist on the Active contracts in which I am performing maintenance
    Then I do not receive a Duplicate Edit on contracts that meet the criteria logic

