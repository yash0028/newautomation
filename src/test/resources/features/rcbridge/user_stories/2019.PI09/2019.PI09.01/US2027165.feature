# Last updated on 
@Arvind
@Suman
@Go_Live
@Adele_R
@US2027165
@2019.PI09
@2019.PI09.01
@releasePresent
@iterationPast
Feature: US2027165 - Locked Language Request – Market Lead

  @TC967069
  @Manual
  @Functional
  @Arvind
  @Suman
  @Go_Live
  @Adele_R
  Scenario: TC967069 - [RL1]
    Given "Locked Language Request – Market Lead" exists
    When Market Lead opens "Locked Language Request – Market Lead"
    Then Market lead has 2 radio buttons - "Approve Locked Language Request" and "Deny Locked Language Request"
    And a comments field to write in user input - "Comments" field will be mandatory if "Deny Locked Language Request" is selected.

  @TC967076
  @Manual
  @Functional
  @Arvind
  @Suman
  @Go_Live
  @Adele_R
  Scenario: TC967076 - [RL2]
    Given "Locked Language Request - Market Lead" exists
    When the radio button "Approve Locked Language Request" is used
    Then the Locked Language Request - Pricing" is created

  @TC967082
  @Manual
  @Functional
  @Arvind
  @Suman
  @Go_Live
  @Adele_R
  Scenario: TC967082 - [RL3]
    Given "Locked Language Request - Market Lead" exists
    When the radio button "Deny Locked Language Request" is used
    Then the "Locked Language Request – Market Lead Denied" task is created

