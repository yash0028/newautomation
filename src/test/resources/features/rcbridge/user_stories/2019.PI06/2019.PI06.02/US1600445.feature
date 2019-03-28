# Last updated on 
@Arvind
@Visio
@US1600445
@2019.PI06
@2019.PI06.02
@releasePresent
@iterationPast
Feature: US1600445 - Remediation Field on the Retro Form

  @TC735828
  @Manual
  @Functional
  @Arvind
  @Visio
  Scenario: TC735828 - [RL0] Verify remidiation plan field
    Given I am on the retro initiation form
    When I am on the "Details" section
    Then I want to see a new mandatory 2000 characters text field labeled "What remediation has been put in place to be assured the issue will not occur in the future?*"
    # Note- please change characters limit for "root cause comments" to 2000

