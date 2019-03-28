# Last updated on 
@US1539069
@releaseUnknown
@iterationUnknown
Feature: US1539069 - Remove CAQH Workflow Rules and Associated Batch Feed (CAQH Extract Rcvd File)

  @TC760604
  @Manual
  @Functional
  Scenario: TC760604 - [RL0]
    #Scenario 1: CAQH Application Req Follow Up
    Given I am a Salesforce System Admin
    When I am reviewing the workflow rules
    Then I will no longer see the CAQH Application Req Follow up workflow rule, as it will be completely removed from the system

  @TC760697
  @Manual
  @Functional
  Scenario: TC760697 - [RL10]
    #Scenario 11: CAQH with contract
    Given I am a Salesforce System Admin
    When I am reviewing the workflow rules
    Then I will no longer see the CAQH with contract workflow rule, as it will be completely removed from the system

  @TC760702
  @Manual
  @Functional
  Scenario: TC760702 - [RL11]
    #Scenario 12: Remove update of CAQH Extract Rcvd field
    Given I am a Salesforce System Admin
    When I am reviewing batch job for CAQH
    Then I will no longer have the field 'CAQH Extract Rcvd' field updated as I will no longer perform the batch job

  @TC760705
  @Manual
  @Functional
  Scenario: TC760705 - [RL12]
    #Scenario 13: Remove Batch capability of CAQH file
    Given I am a Salesforce System Admin
    When I am reviewing batch job availability
    Then I will no longer have the ability to perform a 'CAQH File' batch job

  @TC760628
  @Manual
  @Functional
  Scenario: TC760628 - [RL1]
    #Scenario 2: CAQH Contract Initial move from 205 to 201
    Given I am a Salesforce System Admin
    When I am reviewing the workflow rules
    Then I will no longer see the CAQH Contract Initial move from 205 to 201 workflow rule, as it will be completely removed from the system

  @TC760640
  @Manual
  @Functional
  Scenario: TC760640 - [RL2]
    #Scenario 3: CAQH Inhouse 205 move to PSV 374
    Given I am a Salesforce System Admin
    When I am reviewing the workflow rules
    Then I will no longer see the CAQH Inhouse 205 move to PSV 374 workflow rule, as it will be completely removed from the system

  @TC760650
  @Manual
  @Functional
  Scenario: TC760650 - [RL3]
    #Scenario 4: CAQH Initial Cred Order Placed
    Given I am a Salesforce System Admin
    When I am reviewing the workflow rules
    Then I will no longer see the CAQH Initial Cred Order Placed workflow rule, as it will be completely removed from the system

  @TC760661
  @Manual
  @Functional
  Scenario: TC760661 - [RL4]
    #Scenario 5: CAQH Move to Product Add
    Given I am a Salesforce System Admin
    When I am reviewing the workflow rules
    Then I will no longer see the CAQH Move to Product Add workflow rule, as it will be completely removed from the system

  @TC760668
  @Manual
  @Functional
  Scenario: TC760668 - [RL5]
    #Scenario 6: CAQH after 2nd FU not resolved code 170, CAQH after 2nd FU not resolved code 170 (MN), and CAQH after 2nd FU not resolved code 170 (WA)
    Given I am a Salesforce System Admin
    When I am reviewing the workflow rules
    Then I will no longer see the CAQH after 2nd FU not resolved code 170, CAQH after 2nd FU not resolved code 170 (MN), and CAQH after 2nd FU not resolved code 170 (WA) workflow rules, as they will be completely removed from the system

  @TC760675
  @Manual
  @Functional
  Scenario: TC760675 - [RL6]
    #Scenario 7: CAQH 2 days after 1st FU not resolved
    Given I am a Salesforce System Admin
    When I am reviewing the workflow rules
    Then I will no longer see the CAQH 2 days after 1st FU not resolved workflow rule, as it will be completely removed from the system

  @TC760681
  @Manual
  @Functional
  Scenario: TC760681 - [RL7]
    #Scenario 8: CAQH 2 days after 2nd FU not resolved
    Given I am a Salesforce System Admin
    When I am reviewing the workflow rules
    Then I will no longer see the CAQH 2 days after 2nd FU not resolved workflow rule, as it will be completely removed from the system

  @TC760686
  @Manual
  @Functional
  Scenario: TC760686 - [RL8]
    #Scenario 9: CAQH MPIN Created
    Given I am a Salesforce System Admin
    When I am reviewing the workflow rules
    Then I will no longer see the CAQH MPIN Created workflow rule, as it will be completely removed from the system

  @TC760692
  @Manual
  @Functional
  Scenario: TC760692 - [RL9]
    #Scenario 10: CAQH Reach Edu End Date
    Given I am a Salesforce System Admin
    When I am reviewing the workflow rules
    Then I will no longer see the CAQH Reach Edu End Date workflow rule, as it will be completely removed from the system

