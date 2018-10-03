# Last updated on 
@US1311230
@2018.PI04
@2018.PI04.03
Feature: US1311230 - Identify Product Rate Group Conditions - Professional Specialty and Professional Other Specialty Rate

  @TC572196
  @Automated
  @Functional
  Scenario: TC572196 - [RL1]
    Given Professional Specialty Rate Conditions apply to the ProductGroup
    When ProductGroup Professional Specialty Rate has been recorded
    Then the values for 'UHG_[ProductGroupRate.name]_Specialty_NPPA' are recorded in the CMD contract record as the ProductGroup Professional Specialty Rate qualifiers
    And the capture process is complete for Professional Specialty Rate conditions

  @TC572195
  @Automated
  @Functional
  Scenario: TC572195 - [RL0]
    Given Contract [ProductGroupRate.name] is available in the CMD contract record
    When value is present in 'contractDetails.storageNode.properties.'UHG_[same ProductGroupRate.name]_Specialty_Sched_ID_NPPA', 'UHG_[same ProductGroupRate.name]_All_Spec_Sched_ID_NPPA'
    Then Professional Specialty Rate Conditions apply to the ProductGroup
    And the value for 'UHG_[ProductGroupRate.name]_Specialty_Sched_ID_NPPA' is recorded in the CMD contract record as the ProductGroup Professional Specialty Rate
    And the value for 'UHG_[ProductGroupRate.name]_All_Spec_Sched_ID_NPPA' is recorded in the CMD contract record as the ProductGroup Professional Other Specialty Rate
    And the capture process is not complete for Professional Specialty Rate conditions

