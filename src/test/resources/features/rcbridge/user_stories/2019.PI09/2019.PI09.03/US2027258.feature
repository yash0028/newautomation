# Last updated on 
@Arvind
@Suman
@Go_Live
@Adele_R
@US2027258
@2019.PI09
@2019.PI09.03
@releasePresent
@iterationPresent
Feature: US2027258 - Locked Language Request - Pricing

  @TC967052
  @Manual
  @Functional
  @Arvind
  @Suman
  @Go_Live
  @Adele_R
  Scenario: TC967052 - [RL1]
    Given market lead approves the language change request
    When Pricing team member opens "Locked Language Request - Pricing"
    Then the form contains "Should this be pursued with legal?"* with 2 radio buttons* - "Approve Locked Language Request" and "Deny Locked Language Request"
    And a comments field to write in user input - "Comments" field will be mandatory only if "Deny Locked Language Request" is selected.

  @TC968849
  @Manual
  @Functional
  @Arvind
  @Suman
  @Go_Live
  @Adele_R
  Scenario: TC968849 - [RL2]
    Given "Locked Language Request - Pricing" exists
    When the radio button "Approve Locked Language Request" is used
    Then the "Locked Language Request - UHN Legal" is created

  @TC968858
  @Manual
  @Functional
  @Arvind
  @Suman
  @Go_Live
  @Adele_R
  Scenario: TC968858 - [RL3]
    Given "Locked Language Request - Pricing" exists
    When the radio button "Deny Locked Language Request" is used
    Then the "Locked Language Request – Pricing team Denied" task is created

