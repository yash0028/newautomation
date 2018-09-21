# Last updated on 
@US1311228
@2018.PI04
Feature: US1311228 - Identify Product Rate Group Conditions - Physician and Professional Rates

  @TC572187
  @Automated
  @Functional
  Scenario: TC572187 - [RL0]
    Given Contract [ProductGroupRate.name] is available in the CMD contract record
    When 'contractDetails.storageNode.properties.UHG_[ProductGroupRate.name]_Fee_Schedule_ID' DOES have value
    And value IS present in 'contractDetails.storageNode.properties.'UHG_[same ProductGroupRate.name]_Fee_Schedule_ID_NPPA',
    And value IS NOT present for any 'contractDetails.storageNode.properties.'UHG_[same ProductGroupRate.name]_Specialty_Sched_ID', 'UHG_[same ProductGroupRate.name]_All_Spec_Sched_ID', 'UHG_ [same ProductGroupRate.name]_Specialty_Sched_ID_NPPA', 'UHG_[same ProductGroupRate.name]_All_Spec_Sched_ID_NPPA'
    Then Physician and Professional Rate Conditions apply to the ProductGroup
    And the value for 'UHG_[ProductGroupRate.name]_Fee_Schedule_ID' is recorded in the CMD contract record as the ProductGroup Physician Rate
    And 'UHG_[ProductGroupRate.name]_Fee_Schedule_ID_NPPA' is recorded in the CMD contract record as the ProductGroup Professional Rate
    And the capture process is complete for the ProductGroup

