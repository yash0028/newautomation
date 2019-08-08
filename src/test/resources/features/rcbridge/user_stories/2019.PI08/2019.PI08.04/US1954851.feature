# Last updated on 
@#MVP
@#UAT
@US1954851
@2019.PI08
@2019.PI08.04
@releasePresent
@iterationPresent
Feature: US1954851 - ANB productGroup Exclusion - ENW Indicator determination update

  @TC921994
  @Manual
  @Functional
  @#MVP
  @#UAT
  Scenario: TC921994 - [RL0]
    Given $UHG_Product_Services_Excluded doesContain: |CHARTER | COMPASS | CORE | NAVIGATE | DR PLAN |
    And $UHG_Product_Services doesnotContain: "ANB"
    Then conditions have been met for ANB productGroup Exclusion

  @TC921997
  @Manual
  @Functional
  @#MVP
  @#UAT
  Scenario: TC921997 - [RL1]
    Given conditions have been met for ANB productGroup Exclusion
    When ENW Indicator is needed for OCM contract record
    And the OCM contract configuration includes C2 product code
    Then ENW indicator will be "N"

  @RC_unlinked
  @TC922000
  @Manual
  @Functional
  @#MVP
  @#UAT
  Scenario: TC922000 - [RL2]
    When $PRODUCT DESCRIPTION GROUP table is accessed to identify OCM market products
    And $PILOT CONTRACT PRODUCT RATE GROUP (column J) record includes "ANB"
    And $PILOT CONTRACT PRODUCT RATE GROUP (column K) record also includes 'AllPayer01"
    Then ANB productGroup Exclusion should supersede the $PRODUCT DESCRIPTION GROUP table result
    And ANB does not apply to the contract
    And ANB should not be included in the OCM contract record

  @RC_unlinked
  @TC922001
  @Manual
  @Functional
  @#MVP
  @#UAT
  Scenario: TC922001 - [RL3]
    Given ANB productGroup Exclusion conditions have NOT been met
    And $UHG_Product_Services_Excluded doesNotContain: |CHARTER | COMPASS | CORE | NAVIGATE | DR PLAN | ANB | ERWRAP |
    When $PILOT CONTRACT PRODUCT RATE GROUP (column K) record for the market includes "ANB"
    And $PILOT CONTRACT PRODUCT RATE GROUP (column J) record for the market also includes 'AllPayer01"
    Then conditions have been met for ANB productGroup Inclusion
    And ANB productGroup should apply to the contract
    And ANB should be included in the OCM contract record

