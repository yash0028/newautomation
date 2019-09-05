# Last updated on 
@Arvind
@Adele_R
@US2027271
@2019.PI09
@2019.PI09.01
@releasePresent
@iterationPresent
Feature: US2027271 - Locked Language Request – Market Lead Denied

  @TC967063
  @Manual
  @Functional
  @Arvind
  @Adele_R
  Scenario: TC967063 - [RL0]
    Given the "Locked Language Request – Market Lead Denied" task is created
    When it is assigned an owner
    Then the task is assigned back to the contractor with the comments added by Market Lead
    And the contractor sees the original form in edit mode, submitted along with the additional comments provided by Market Lead
    And the contractor receives an email about the denial.

  @TC967071
  @Manual
  @Functional
  @Arvind
  @Adele_R
  Scenario: TC967071 - [RL1]
    Given language change request is denied by Market Lead
    When contractor opens the task assigned "Locked Language Request Denied"
    Then the contractor is able to modify the request as per the comments provided by the Market Lead
    And once contractor completes, the process must re-route to the same Market Lead
    And comments are still shown on the form

  @TC967078
  @Manual
  @Functional
  @Arvind
  @Adele_R
  Scenario: TC967078 - [RL2]
    Given "Are changes to locked language needed?" is answered YES
    When the task is completed
    Then the process must re-route to the same Market Lead
    And the task "Locked Language Request - Market Lead" is created

  @TC967085
  @Manual
  @Functional
  @Arvind
  @Adele_R
  Scenario: TC967085 - [RL3]
    Given "Are changes to locked language needed?" is answered NO
    When the task is completed
    Then no new tasks are created

