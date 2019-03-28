# Last updated on 
@US1539063
@releaseUnknown
@iterationUnknown
Feature: US1539063 - Remove RFP Workflow Rules

  @TC760607
  @Manual
  @Functional
  Scenario: TC760607 - [RL0]
    #Scenario 1: RFP Cred Req, Cycle Status 170 - Send Initial Fax, RFP Cred Req, Cycle Status 170 - Send Initial Fax (MN), RFP Cred Req, Cycle Status 170 - Send Initial Fax (WA)
    Given I am a Salesforce System Admin
    When I am reviewing the workflow rules
    Then I will no longer see the RFP Cred Req, Cycle Status 170 - Send Initial Fax, RFP Cred Req, Cycle Status 170 - Send Initial Fax (MN), RFP Cred Req, Cycle Status 170 - Send Initial Fax (WA) workflow rules, as they will be completely removed from the system

  @TC760695
  @Manual
  @Functional
  Scenario: TC760695 - [RL10]
    #Scenario 11: RFP Cred Rqd with with CAQH ID (RFP09 to 170) send initial fax
    Given I am a Salesforce System Admin
    When I am reviewing the workflow rules
    Then I will no longer see the RFP Cred Rqd with with CAQH ID (RFP09 to 170) send initial fax workflow rule, as it will be completely removed from the system

  @TC760699
  @Manual
  @Functional
  Scenario: TC760699 - [RL11]
    #Scenario 12: RFP Post CAQH 3 days after 1st FU resolved Edu End Date Passed, RFP Post CAQH 3 days after 1st FU resolved Edu End Date Passed (MD), and RFP Post CAQH 3 days after 1st FU resolved Edu End Date Passed (TN)
    Given I am a Salesforce System Admin
    When I am reviewing the workflow rules
    Then I will no longer see the RFP Post CAQH 3 days after 1st FU resolved Edu End Date Passed, RFP Post CAQH 3 days after 1st FU resolved Edu End Date Passed (MD), and RFP Post CAQH 3 days after 1st FU resolved Edu End Date Passed (TN) workflow rules, as they will be completely removed from the system

  @TC760704
  @Manual
  @Functional
  Scenario: TC760704 - [RL12]
    #Scenario 13: RFP Post CAQH 3 days after 1st FU resolved Edu End Date not Passed no Contract Initial
    Given I am a Salesforce System Admin
    When I am reviewing the workflow rules
    Then I will no longer see the RFP Post CAQH 3 days after 1st FU resolved Edu End Date not Passed no Contract Initial workflow rule, as it will be completely removed from the system

  @TC760709
  @Manual
  @Functional
  Scenario: TC760709 - [RL13]
    #Scenario 14: RFP Post CAQH 3 days after 2nd FU resolved
    Given I am a Salesforce System Admin
    When I am reviewing the workflow rules
    Then I will no longer see the RFP Post CAQH 3 days after 2nd FU resolved workflow rule, as it will be completely removed from the system

  @TC760710
  @Manual
  @Functional
  Scenario: TC760710 - [RL14]
    #Scenario 15: RFP Post CAQH App Completed Edu End Date Not Passed
    Given I am a Salesforce System Admin
    When I am reviewing the workflow rules
    Then I will no longer see the RFP Post CAQH 3 App Completed Edu End Date Not Passed workflow rule, as it will be completely removed from the system

  @TC760711
  @Manual
  @Functional
  Scenario: TC760711 - [RL15]
    #Scenario 16: RFP Post CAQH App Completed Edu End Date Passed, RFP Post CAQH App Completed Edu End Date Passed (AR), RFP Post CAQH App Completed Edu End Date Passed (MD), and RFP Post CAQH App Completed Edu End Date Passed (TN)
    Given I am a Salesforce System Admin
    When I am reviewing the workflow rules
    Then I will no longer see the RFP Post CAQH App Completed Edu End Date Passed, RFP Post CAQH App Completed Edu End Date Passed (AR), RFP Post CAQH App Completed Edu End Date Passed (MD), and RFP Post CAQH App Completed Edu End Date Passed (TN) workflow rules, as they will be completely removed from the system

  @TC760712
  @Manual
  @Functional
  Scenario: TC760712 - [RL16]
    #Scenario 17: Update RFP TAT Stop Date
    Given I am a Salesforce System Admin
    When I am reviewing the workflow rules
    Then I will no longer see the Update RFP TAT Stop Date workflow rule, as it will be completely removed from the system

  @TC760624
  @Manual
  @Functional
  Scenario: TC760624 - [RL1]
    #Scenario 2: RFP Move to Interim Verification
    Given I am a Salesforce System Admin
    When I am reviewing the workflow rules
    Then I will no longer see the RFP Move to Interim Verification workflow rule, as it will be completely removed from the system

  @TC760638
  @Manual
  @Functional
  Scenario: TC760638 - [RL2]
    #Scenario 3: RFP Move to Specialty Change
    Given I am a Salesforce System Admin
    When I am reviewing the workflow rules
    Then I will no longer see the RFP Move to Specialty Change workflow rule, as it will be completely removed from the system

  @TC760652
  @Manual
  @Functional
  Scenario: TC760652 - [RL3]
    #Scenario 4: RFP Already Cred - Send Email - RFP25
    Given I am a Salesforce System Admin
    When I am reviewing the workflow rules
    Then I will no longer see the RFP Already Cred - Send Email - RFP25 workflow rule, as it will be completely removed from the system

  @TC760663
  @Manual
  @Functional
  Scenario: TC760663 - [RL4]
    #Scenario 5: RFP Cred Not Reqd - Send Email - RFP23
    Given I am a Salesforce System Admin
    When I am reviewing the workflow rules
    Then I will no longer see the RFP Cred Not Reqd - Send Email - RFP23 workflow rule, as it will be completely removed from the system

  @TC760671
  @Manual
  @Functional
  Scenario: TC760671 - [RL6]
    #Scenario 7: RFP_after_CAQH_Assigned
    Given I am a Salesforce System Admin
    When I am reviewing the workflow rules
    Then I will no longer see the RFP_after_CAQH_Assigned workflow rule, as it will be completely removed from the system

  @TC760677
  @Manual
  @Functional
  Scenario: TC760677 - [RL7]
    #Scenario 8: RFP Cred Reqd Product Add
    Given I am a Salesforce System Admin
    When I am reviewing the workflow rules
    Then I will no longer see the RFP Cred Reqd Product Add workflow rule, as it will be completely removed from the system

  @TC760683
  @Manual
  @Functional
  Scenario: TC760683 - [RL8]
    #Scenario 9: RFP Cred Rqd not PA with no contract with CAQH ID no app comp, send initial fax
    Given I am a Salesforce System Admin
    When I am reviewing the workflow rules
    Then I will no longer see the RFP Cred Rqd not PA with no contract with CAQH ID no app comp, send initial fax workflow rule, as it will be completely removed from the system

  @TC760689
  @Manual
  @Functional
  Scenario: TC760689 - [RL9]
    #Scenario 10: RFP Cred Rqd not Product Add with no contract with CAQH ID send initial fax, RFP Cred Rqd not Product Add with no contract with CAQH ID send initial fax (AR)
    Given I am a Salesforce System Admin
    When I am reviewing the workflow rules
    Then I will no longer see the RFP Cred Rqd not Product Add with no contract with CAQH ID send initial fax and RFP Cred Rqd not Product Add with no contract with CAQH ID send initial fax (AR) workflow rules, as they will be completely removed from the system

