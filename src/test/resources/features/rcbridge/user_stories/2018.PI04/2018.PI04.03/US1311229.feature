# Last updated on 
@US1311229
@2018.PI04
@2018.PI04.03
Feature: US1311229 - Identify Product Rate Group Conditions - Physician Specialty and Physician Other Specialty Rate

  @TC572188
  @Automated
  @Functional
  Scenario: TC572188 - [RL0]
    Given Contract [ProductGroupRate.name] is available in the CMD contract record
    When value is present in 'contractDetails.storageNode.properties.'UHG_[same ProductGroupRate.name]_Specialty_Sched_ID', 'UHG_[same ProductGroupRate.name]_All_Spec_Sched_ID'
    Then Physician Specialty Rate Conditions apply to the ProductGroup
    And the value for 'UHG_[ProductGroupRate.name]_Specialty_Sched_ID' is recorded in the CMD contract record as the ProductGroup Physician Specialty Rate
    And the value for 'UHG_[ProductGroupRate.name]_All_Spec_Sched_ID' is recorded in the CMD contract record as the ProductGroup Physician Other Specialty Rate
    And the capture process is not complete for Physician Specialty Rate conditions

  @TC572189
  @Automated
  @Functional
  Scenario: TC572189 - [RL1]
    Given Physician Specialty Rate Conditions apply to the ProductGroup
    When Product Group Physician Specialty Rate has been recorded
    Then the values for 'UHG_[ProductGroupRate.name]_Specialty' are recorded in the CMD contract record as the Product Group Physician Specialty Rate qualifiers
    And the capture process is complete for Physician Specialty Rate conditions

