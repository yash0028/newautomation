# Last updated on 
@US1664321
@releaseUnknown
@iterationUnknown
Feature: US1664321 - Remove Queues

  @TC760612
  @Manual
  @Functional
  Scenario: TC760612 - [RL0]
    #Scenario 1: CAQH_Assigned
    Given I am a Salesforce User
    When I am 'viewing' the different queues where work can be moved to
    Then I will no longer see the work queue CAQH_Assigned

  @TC760636
  @Manual
  @Functional
  Scenario: TC760636 - [RL1]
    #Scenario 2: CAQH_Carryover
    Given I am a Salesforce User
    When I am 'viewing' the different queues where work can be moved to
    Then I will no longer see the work queue CAQH_Carryover

  @TC760648
  @Manual
  @Functional
  Scenario: TC760648 - [RL2]
    #Scenario 3: CAQH_UnAssigned
    Given I am a Salesforce User
    When I am 'viewing' the different queues where work can be moved to
    Then I will no longer see the work queue CAQH_UnAssigned

  @TC760659
  @Manual
  @Functional
  Scenario: TC760659 - [RL3]
    #Scenario 4: My_Assigned_Work_CAQH_Team
    Given I am a Salesforce User
    When I am 'viewing' the different queues where work can be moved to
    Then I will no longer see the work queue My_Assigned_Work_CAQH_Team

  @TC760670
  @Manual
  @Functional
  Scenario: TC760670 - [RL4]
    #Scenario 5: My_Assigned_Work_RFP_Team
    Given I am a Salesforce User
    When I am 'viewing' the different queues where work can be moved to
    Then I will no longer see the work queue My_Assigned_Work_RFP_Team

  @TC760679
  @Manual
  @Functional
  Scenario: TC760679 - [RL5]
    #Scenario 6: Pending_OHP_Application
    Given I am a Salesforce User
    When I am 'viewing' the different queues where work can be moved to
    Then I will no longer see the work queue Pending_OHP_Application

  @TC760688
  @Manual
  @Functional
  Scenario: TC760688 - [RL6]
    #Scenario 7: RFP_Assigned
    Given I am a Salesforce User
    When I am 'viewing' the different queues where work can be moved to
    Then I will no longer see the work queue RFP_Assigned

  @TC760694
  @Manual
  @Functional
  Scenario: TC760694 - [RL7]
    #Scenario 8: x170_Codes
    Given I am a Salesforce User
    When I am 'viewing' the different queues where work can be moved to
    Then I will no longer see the work queue x170_Codes

  @TC760700
  @Manual
  @Functional
  Scenario: TC760700 - [RL8]
    #Scenario 9: x170_wo_MPIN
    Given I am a Salesforce User
    When I am 'viewing' the different queues where work can be moved to
    Then I will no longer see the work queue x170_wo_MPIN

  @TC760707
  @Manual
  @Functional
  Scenario: TC760707 - [RL9]
    #Scenario 10: x201_RFP
    Given I am a Salesforce User
    When I am 'viewing' the different queues where work can be moved to
    Then I will no longer see the work queue x201_RFP

