# Last updated on 
@Arvind
@Adele_R
@Go_Live
@US2027428
@2019.PI09
@2019.PI09.03
@releasePresent
@iterationPresent
Feature: US2027428 - Locked Language Request – UHN Legal Denied

  @TC967053
  @Manual
  @Functional
  @Arvind
  @Adele_R
  @Go_Live
  Scenario: TC967053 - [RL0]
    Given the "Locked Language Request – UHN Legal Denied" task is created
    When it is assigned an owner
    Then the task is assigned back to the contractor with the comments added by UHN Legal Team member
    And the contractor sees the original form in edit mode, submitted along with the additional comments provided by UHN Legal Team member
    And the contractor receives an email about the denial.

  @TC967067
  @Manual
  @Functional
  @Arvind
  @Adele_R
  @Go_Live
  Scenario: TC967067 - [RL1]
    Given language change request is denied by UHN Legal team member
    When contractor opens the task assigned "Locked Language Request Denied"
    Then the contractor is able to modify the request as per the comments provided by the UHN Legal team member
    And once contractor completes, the process must re-route to the same UHN Legal team member
    And comments are still shown on the form

  @TC967075
  @Manual
  @Functional
  @Arvind
  @Adele_R
  @Go_Live
  Scenario: TC967075 - [RL2]
    Given "Are changes to locked language needed?" is answered YES
    When the task is completed
    Then the process must re-route to the same UHN Legal team member
    And the task "Locked Language Request - UHN Legal" is created

  @TC967081
  @Manual
  @Functional
  @Arvind
  @Adele_R
  @Go_Live
  Scenario: TC967081 - [RL3]
    Given "Are changes to locked language needed?" is answered NO
    When the task is completed
    Then no new tasks are created

