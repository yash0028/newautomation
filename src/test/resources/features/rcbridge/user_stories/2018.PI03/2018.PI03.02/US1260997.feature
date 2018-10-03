# Last updated on 
@US1260997
@2018.PI03
@2018.PI03.02
@MVP
@10/1_Physician
@Crosswalk
@Priority_1
@CMD
@F201371
Feature: US1260997 - [Unfinished] [Continued] Download Crosswalk Template

  @TC565641
  @Automated
  @Functional
  @US1260997
  @2018.PI03
  @2018.PI03.02
  Scenario: TC565641 - [RL1]
    Given an update to the current version of the crosswalk table is needed
    When an administrator downloads a copy of the crosswalk template
    Then the product crosswalk template is made available to the administrator

  @TC565640
  @Automated
  @Functional
  @US1260997
  @2018.PI03
  @2018.PI03.02
  Scenario: TC565640 - [RL0]
    Given more than one product description crosswalk record exists in the database
    When access to a previous record version is needed
    Then the previous record versions are available

