# Last updated on 
@US1311228
@2018.PI04
@2018.PI04.03
@CMD2
@#MVP
@10/1_Physician
@CMD
@F205772
Feature: US1311228 - Identify Product Rate Group Conditions - Physician and Professional Rates

  @TC573539
  @Automated
  @Functional
  @US1311228
  @2018.PI04
  @2018.PI04.03
  Scenario: TC573539 - [RL1]
    Given Contract [ProductGroupRate.name] is available in the CMD contract record
    When 'contractDetails.storageNode.properties.UHG_[ProductGroupRate.name]_Fee_Schedule_ID' DOES have value
    And value IS present in 'contractDetails.storageNode.properties.'UHG_[same ProductGroupRate.name]_Fee_Schedule_ID_NPPA',
    And value IS present for any 'contractDetails.storageNode.properties.'UHG_[same ProductGroupRate.name]_Specialty_Sched_ID', 'UHG_[same ProductGroupRate.name]_All_Spec_Sched_ID', 'UHG_ [same ProductGroupRate.name]_Specialty_Sched_ID_NPPA', 'UHG_[same ProductGroupRate.name]_All_Spec_Sched_ID_NPPA'
    Then additional Provider Rate Conditions may apply to the ProductGroup
    And the value for 'UHG_[ProductGroupRate.name]_Fee_Schedule_ID' is recorded in the CMD contract record as the ProductGroup Physician Rate
    And 'UHG_[ProductGroupRate.name]_Fee_Schedule_ID_NPPA' is recorded in the CMD contract record as the ProductGroup Professional Rate
    NOTE: process continues to Identify Product Rate Group Conditions - Physician Specialty and Physician Other Specialty Rate

  @TC572187
  @Automated
  @Functional
  @US1311228
  @2018.PI04
  @2018.PI04.03
  Scenario: TC572187 - [RL0]
    Given Contract [ProductGroupRate.name] is available in the CMD contract record
    When 'contractDetails.storageNode.properties.UHG_[ProductGroupRate.name]_Fee_Schedule_ID' DOES have value
    And value IS present in 'contractDetails.storageNode.properties.'UHG_[same ProductGroupRate.name]_Fee_Schedule_ID_NPPA',
    And value IS NOT present for any 'contractDetails.storageNode.properties.'UHG_[same ProductGroupRate.name]_Specialty_Sched_ID', 'UHG_[same ProductGroupRate.name]_All_Spec_Sched_ID', 'UHG_ [same ProductGroupRate.name]_Specialty_Sched_ID_NPPA', 'UHG_[same ProductGroupRate.name]_All_Spec_Sched_ID_NPPA'
    Then Physician and Professional Rate Conditions apply to the ProductGroup
    And the value for 'UHG_[ProductGroupRate.name]_Fee_Schedule_ID' is recorded in the CMD contract record as the ProductGroup Physician Rate
    And 'UHG_[ProductGroupRate.name]_Fee_Schedule_ID_NPPA' is recorded in the CMD contract record as the ProductGroup Professional Rate
    And the capture process is complete for the ProductGroup

