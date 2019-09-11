# Last updated on 
@Go_Live
@US2027298
@2019.PI09
@2019.PI09.02
@releasePresent
@iterationFuture
Feature: US2027298 - Locked Language Request - Operations

  @TC967057
  @Manual
  @Functional
  @Go_Live
  Scenario: TC967057 - [RL0]
    Given language change need is identified in Physician workflow
    When the task "Locked Language Request - Operations" is created
    Then the assignee is the Process Initiator or the Contractor
    And the form "Locked Language Request - Operations"* has a question "Have you discussed this request with operations and can it be supported on our platforms?"* with radio buttons Yes and No

  @TC967068
  @Manual
  @Functional
  @Go_Live
  Scenario: TC967068 - [RL1]
    Given "Locked Language Request - Operations" is assigned to the contractor
    When "Yes" is the answer for "Have you discussed this request with operations and can it be supported on our platforms?"
    Then the "Locked Language: Unlock template & Insert Language" task is created

  @TC967074
  @Manual
  @Functional
  @Go_Live
  Scenario: TC967074 - [RL2]
    Given "Locked Language Request - Operations" is assigned to the contractor
    When "No" is the answer for "Have you discussed this request with operations and can it be supported on our platforms?"
    Then Market Lead, Pricing, UHN Legal are notified via email that it can't be supported
    And the contractor is assigned a task "Locked Language Denied by Operations"

  @TC967080
  @Manual
  @Functional
  @Go_Live
  Scenario: TC967080 - [RL3]
    Given the "Locked Language Denied by Operations" is created
    When it is assigned
    Then it is assigned to the contractor

  @TC974929
  @Manual
  @Functional
  @Go_Live
  Scenario: TC974929 - [RL4]
    Given the contractor is assigned the "Locked Language Denied by Operations"
    When they view the task
    Then they have to determine if the request should be modified or ended
    And the form contains, "Please have discussions to determine if this Locked Language request should continue or end." (Continue/End)
    And if Continue is chosen, the question, "What is the new language agreed upon by UHN Legal, the provider, the Market Lead and Pricing?" (multi line text box)

  @TC974930
  @Manual
  @Functional
  @Go_Live
  Scenario: TC974930 - [RL5]
    Given the contractor is on the "Locked Language Denied by Operations"
    When "Please have discussions to determine if this Locked Language request should continue or end." (Continue/End) is answered End
    Then no new tasks are created

  @TC974931
  @Manual
  @Functional
  @Go_Live
  Scenario: TC974931 - [RL6]
    Given the contractor is on the "Locked Language Denied by Operations"
    When Please have discussions to determine if this Locked Language request should continue or end." is answered Continue
    Then the same Locked Language Request - Operations is created

