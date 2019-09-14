# Last updated on 
@Arvind
@Suman
@Go_Live
@Adele_R
@US2027239
@2019.PI09
@2019.PI09.01
@releasePresent
@iterationPresent
Feature: US2027239 - Locked Language Request – Pricing team  Denied

  @TC967054
  @Manual
  @Functional
  @Arvind
  @Suman
  @Go_Live
  @Adele_R
  Scenario: TC967054 - [RL0]
    Given the "Locked Language Request – Pricing team Denied" task is created
    When it is assigned an owner
    Then the task is assigned back to the contractor with the comments added by Pricing Team member
    And the contractor sees the original form in edit mode, submitted along with the additional comments provided by Pricing Team member
    And the contractor receives an email about the denial.

  @TC967066
  @Manual
  @Functional
  @Arvind
  @Suman
  @Go_Live
  @Adele_R
  Scenario: TC967066 - [RL1]
    Given language change request is denied by pricing team member
    When contractor opens the task assigned "Locked Language Request Denied"
    Then the contractor is able to modify the request as per the comments provided by the pricing team member
    And once contractor completes, the process must re-route to the same pricing team member
    And comments are still shown on the form

  @TC968853
  @Manual
  @Functional
  @Arvind
  @Suman
  @Go_Live
  @Adele_R
  Scenario: TC968853 - [RL2]
    Given "Are changes to locked language needed?" is answered YES
    When the task is completed
    Then the process must re-route to the same Market Lead
    And the task "Locked Language Request - Pricing" is created

  @TC968859
  @Manual
  @Functional
  @Arvind
  @Suman
  @Go_Live
  @Adele_R
  Scenario: TC968859 - [RL3]
    Given "Are changes to locked language needed?" is answered NO
    When the task is completed
    Then no new tasks are created

