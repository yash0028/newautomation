# Last updated on 
@US1311227
@2018.PI04
Feature: US1311227 - Identify ProductGroup Rate Conditions - Provider Rate

  @TC572221
  @Automated
  @Functional
  Scenario: TC572221 - [RL0]
    Given Contract [ProductGroupRate.name] is available in the CMD contract record
    When 'contractDetails.storageNode.properties.UHG_[ProductGroupRate.name]_Fee_Schedule_ID' does have value
    And value IS NOT present in any 'contractDetails.storageNode.properties.'UHG_[same ProductGroupRate.name]_Fee_Schedule_ID_NPPA', 'UHG_[same ProductGroupRate.name]_Specialty_Sched_ID', 'UHG_[same ProductGroupRate.name]_All_Spec_Sched_ID', 'UHG_ [same ProductGroupRate.name]_Specialty_Sched_ID_NPPA', 'UHG_[same ProductGroupRate.name]_All_Spec_Sched_ID_NPPA'
    Then Provider Rate Conditions do not apply to the ProductGroup
    And the value for 'UHG_[ProductGroupRate.name]_Fee_Schedule_ID' is recorded in the CMD contract record as the ProductGroup Provider Rate
    And the capture process is complete for the ProductGroup

