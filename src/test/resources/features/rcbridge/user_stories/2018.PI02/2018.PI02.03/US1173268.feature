# Last updated on 
@RFP
@US1173268
@2018.PI02
@2018.PI02.03
@MVP
@PI02_Top3
@Plus
@10/1_Physician
@CLM_Exari
@Exari_Microservice
@F164312
Feature: US1173268 - [Unfinished] Error - Org type or Specialty is not found in RFP

  @TC565167
  @Automated
  @Functional
  @RFP
  @US1173268
  @2018.PI02
  @2018.PI02.03
  Scenario: TC565167 - [RL1] Bad Path Validation
    Given the provider's Org Type "abc123" is passed to the RFP service
    When finding the Org Type in RFP
    Then the RFP service will return a blank list

  @TC565166
  @Automated
  @Functional
  @RFP
  @US1173268
  @2018.PI02
  @2018.PI02.03
  Scenario: TC565166 - [RL0] Happy Path Validation
    Given the provider's Specialty "abc123" is passed to the RFP service
    When finding the Specialty in RFP
    Then the RFP service will return a blank list

