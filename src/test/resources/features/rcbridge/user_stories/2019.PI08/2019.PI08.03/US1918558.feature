# Last updated on 
@#MVP
@#UAT
@US1918558
@2019.PI08
@2019.PI08.03
@releasePast
@iterationPast
Feature: US1918558 - ANB productGroup Exclusion - Contact-based conditions that supersede CMD PRODUCT DESCRIPTION GROUP table

  @TC902697
  @Manual
  @Functional
  @#MVP
  @#UAT
  Scenario: TC902697 - [RL0]
    Given $UHG_Product_Services_Excluded doesContain: |CHARTER | COMPASS | CORE | NAVIGATE | DR PLAN |
    And $UHG_Product_Services doesnotContain: "ANB"
    Then conditions have been met for ANB productGroup Exclusion

  @TC902706
  @Manual
  @Functional
  @#MVP
  @#UAT
  Scenario: TC902706 - [RL1]
    Given conditions have been met for ANB productGroup Exclusion
    When $PRODUCT DESCRIPTION GROUP table is accessed to identify OCM market products
    And $PILOT CONTRACT PRODUCT RATE GROUP (column J) record includes "ANB"
    And $PILOT CONTRACT PRODUCT RATE GROUP (column K) record also includes 'AllPayer01"
    Then ANB productGroup Exclusion should supersede the $PRODUCT DESCRIPTION GROUP table result
    And ANB does not apply to the contract
    And ANB should not be included in the OCM contract record

  @TC902712
  @Manual
  @Functional
  @#MVP
  @#UAT
  Scenario: TC902712 - [RL2]
    Given ANB productGroup Exclusion conditions have NOT been met
    And $UHG_Product_Services_Excluded doesNotContain: |CHARTER | COMPASS | CORE | NAVIGATE | DR PLAN | ANB | ERWRAP |
    When $PILOT CONTRACT PRODUCT RATE GROUP (column K) record for the market includes "ANB"
    And $PILOT CONTRACT PRODUCT RATE GROUP (column J) record for the market also includes 'AllPayer01"
    Then conditions have been met for ANB productGroup Inclusion
    And ANB productGroup should apply to the contract
    And ANB should be included in the OCM contract record

