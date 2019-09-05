# Last updated on 
@Arvind
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
  @Adele_R
  Scenario: TC967054 - [RL0]
    Given language change request exists with the pricing team member decision
    When the pricing team member selects "Deny Locked Language Request" outcome button on the request
    Then the language change request is assigned back to the contractor with the comments added by pricing team member
    And the contractor sees the original form in edit mode, submitted along with the additional comments provided by pricing team member
    And the contractor receives a mail about the denial.

  @TC967066
  @Manual
  @Functional
  @Arvind
  @Adele_R
  Scenario: TC967066 - [RL1]
    Given language change request is denied by pricing team member
    When contractor opens the task assigned "Locked Language Request Denied"
    Then the contractor is able to modify the request as per the comments provided by the pricing team member
    And once contractor completes, the process must re-route to the same pricing team member
    And comments are still shown on the form

