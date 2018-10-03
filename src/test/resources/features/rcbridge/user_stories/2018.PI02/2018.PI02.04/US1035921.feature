# Last updated on 
@RFP
@US1035921
@2018.PI02
@2018.PI02.04
@MVP
@PI02_Top3
@Plus
@10/1_Physician
@CLM_Exari
@Exari_Microservice
@F164312
Feature: US1035921 - [Continued] Error - Org type or Specialty is not found in RFP

  @TC493885
  @Automated
  @Acceptance
  @RFP
  @US1035921
  @2018.PI02
  @2018.PI02.04
  Scenario: TC493885 - [RL1] Testing bad org type
    Given the provider's Org Type "abc123" is passed to the RFP service #org type that doesn't exist
    When finding the Org Type in RFP
    Then the RFP service will return a blank list

  @TC493884
  @Automated
  @Acceptance
  @RFP
  @US1035921
  @2018.PI02
  @2018.PI02.04
  Scenario: TC493884 - [RL0] Testing bad specialty code
    Given the provider's Specialty "abc123" is passed to the RFP service #specialty code that doesn't exist
    When finding the Specialty in RFP
    Then the RFP service will return a blank list

