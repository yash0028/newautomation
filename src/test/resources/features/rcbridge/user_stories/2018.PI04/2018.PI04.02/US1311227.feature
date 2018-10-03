# Last updated on 
@US1311227
@2018.PI04
@2018.PI04.02
@CMD2
@#MVP
@10/1_Physician
@CMD
@F205772
Feature: US1311227 - Identify ProductGroup Rate Conditions - Provider Category

  @TC572222
  @Automated
  @Functional
  @US1311227
  @2018.PI04
  @2018.PI04.02
  Scenario: TC572222 - [RL1]
    Given Contract [ProductGroupRate.name] is available in the CMD contract record
    When 'contractDetails.storageNode.properties.UHG_[ProductGroupRate.name]_Fee_Schedule_ID' does have value
    And value IS present in any 'contractDetails.storageNode.properties.'UHG_[same ProductGroupRate.name]_Fee_Schedule_ID_NPPA', 'UHG_[same ProductGroupRate.name]_Specialty_Sched_ID', 'UHG_[same ProductGroupRate.name]_All_Spec_Sched_ID', 'UHG_ [same ProductGroupRate.name]_Specialty_Sched_ID_NPPA', 'UHG_[same ProductGroupRate.name]_All_Spec_Sched_ID_NPPA'
    Then Provider Rate Conditions do apply to the ProductGroup
    And no rate information would be recorded in the CMD contract record
    # NOTE: we continue the process by identifying product rate group conditions - physician and profession rates

  @TC572221
  @Automated
  @Functional
  @US1311227
  @2018.PI04
  @2018.PI04.02
  Scenario: TC572221 - [RL0]
    Given Contract [ProductGroupRate.name] is available in the CMD contract record
    When 'contractDetails.storageNode.properties.UHG_[ProductGroupRate.name]_Fee_Schedule_ID' does have value
    And value IS NOT present in any 'contractDetails.storageNode.properties.'UHG_[same ProductGroupRate.name]_Fee_Schedule_ID_NPPA', 'UHG_[same ProductGroupRate.name]_Specialty_Sched_ID', 'UHG_[same ProductGroupRate.name]_All_Spec_Sched_ID', 'UHG_ [same ProductGroupRate.name]_Specialty_Sched_ID_NPPA', 'UHG_[same ProductGroupRate.name]_All_Spec_Sched_ID_NPPA'
    Then Provider Rate Conditions do not apply to the ProductGroup
    And the value for 'UHG_[ProductGroupRate.name]_Fee_Schedule_ID' is recorded in the CMD contract record as the ProductGroup Provider Rate
    And the capture process is complete for the ProductGroup

