# Last updated on 
@US1898754
@2019.PI09
@2019.PI09.01
@releaseFuture
@iterationFuture
Feature: US1898754 - MAHP GHMO - VIRGINIA Exception Provider (LAB RAD EXCEPTION tollgate 2)

  @TC877723
  @Manual
  @Functional
  Scenario: TC877723 - [RL0]
    Given Product Group MAHP GHMO applies to a contract
    And MAHP GHMO Exception Provider check has completed
    When MAHP GHMO Exception Provider == TRUE
    And Exception CategoryType == LAB or RAD Exception
    Then the Exception Type value also stored
    And values of LAB, RAD or LAB RAD permissible

  @RC_unlinked
  @TC877730
  @Manual
  @Functional
  Scenario: TC877730 - [RL1]
    Given MAHP GHMO Exception Provider conditions have been met
    And the contract market number 45592 <> 45597
    When the Exception Category Type assigned = Lab or Rad Exception
    Then the Lab Rad Exception table will be used to gather the Market Number+Market IPA details
    And the Market Number+Market IPA from the exception table records are used for OCM contract master processes
    And the Market Number+Market IPA from the CMD Product Group Description table are not used for OCM contract master processes

