# Last updated on
@US1285441
@2018.PI03
@2018.PI03.05
@MVP
@10/1_Physician
@Crosswalk
@Priority_1
@CMD
@F201371
@releasePast
@iterationPast
Feature: US1285441 - [Continued]Identify new Product Codes

  @TC574135
  @Automated
  @Functional
  @US1285441
  @2018.PI03
  @2018.PI03.05
  Scenario: TC574135 - [RL1]
    When an invalid contract details are called from the crosswalk tables
    Then the service returns an error

  @TC564951
  @Automated
  @Functional
  @US1285441
  @2018.PI03
  @2018.PI03.05
  Scenario: TC564951 - [RL0]
    When the product codes are called from the crosswalk tables
    Then the correct product codes are returned.

