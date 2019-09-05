# Last updated on 
@Arvind
@Adele_R
@US2027258
@2019.PI09
@2019.PI09.01
@releasePresent
@iterationPresent
Feature: US2027258 - Locked Language Request - Pricing

  @TC967052
  @Manual
  @Functional
  @Arvind
  @Adele_R
  Scenario: TC967052 - [RL1]
    Given market lead approves the language change request
    When Pricing team member opens "Locked Language Request - Pricing"
    Then the form contains "Should this be pursued with legal?"* with 2 outcome buttons - "Approve Locked Language Request" and "Deny Locked Language Request"
    And a comments field to write in user input - "Comments" field will be optional only if "Deny Locked Language Request" is selected.

