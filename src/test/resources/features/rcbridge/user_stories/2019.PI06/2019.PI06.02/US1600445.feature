# Last updated on 
@Arvind
@US1600445
@2019.PI06
@2019.PI06.02
@releasePresent
@iterationPresent
Feature: US1600445 - Remediation Field on the Retro Form

  @TC735828
  @Manual
  @Functional
  @Arvind
  Scenario: TC735828 - [RL0]
    Given I am on the retro initiation form
    When I am on the "Details" section
    Then I want to see a new mandatory 2000 characters text field (right below "root cause comments) labeled "Remediation Plan*" with the following note right below "What remediation has been put in place to be assured the issue will not occur in the future?"
    # Note- please change characters limit for "root cause comments" to 2000

