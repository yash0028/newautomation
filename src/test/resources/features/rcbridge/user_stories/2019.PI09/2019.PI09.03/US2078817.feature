# Last updated on 
@US2078817
@2019.PI09
@2019.PI09.03
@releasePresent
@iterationFuture
Feature: US2078817 - CMD and OCM Alignment - Add 'PCP REQUIRED' column to Market Product Network table

  @TC997016
  @Manual
  @Functional
  Scenario: TC997016 - [RL0]
    Given the Market Product Network table exists
    When the table has been stored in the database
    Thenthe table includes a column PCP REQ

  @TC997019
  @Manual
  @Functional
  Scenario: TC997019 - [RL1]
    Given the Market Product Network table exists
    When UCM property 'PRODUCT SERVICES' contains value 'Commercial Products Requiring PCP'
    Then only table records containing value of 'Y' n the PCP REQ column are eligible for use

  @TC997021
  @Manual
  @Functional
  Scenario: TC997021 - [RL2]
    Given the Market Product Network table exists
    When UCM property PRODUCT SERVICES contains value 'Commercial Products Not Requiring PCP'
    Then only table records containing value of 'N' n the PCP REQ column are eligible for use
    ###

