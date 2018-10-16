# Last updated on 
@US1368000
@2018.PI04
@2018.PI04.03
@MVP
@10/1_Physician
@Priority_1
@kumar,_Sachin
@CMD
@F233635
Feature: US1368000 - ENW Indicator Determination

  @TC600518
  @Manual
  @Functional
  @US1368000
  @2018.PI04
  @2018.PI04.03
  Scenario: TC600518 - [RL0]
    Given the provider is active for one or more Employer & Individual products
    When one or more of the products (Charter, Compass, Core or Navigate) are below the line
    Then the ENW IND will be populated with "N" within the database

  @TC600519
  @Manual
  @Functional
  @US1368000
  @2018.PI04
  @2018.PI04.03
  Scenario: TC600519 - [RL1]
    Given the provider is active for one or more Employer & Individual products
    When there is w500 language is above the line
    And none of the products (Charter, Compass, Core or Navigate) are below the line
    Then the ENW IND will be populated with "Y" within the database

