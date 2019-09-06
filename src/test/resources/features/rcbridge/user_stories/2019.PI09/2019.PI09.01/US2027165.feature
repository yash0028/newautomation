# Last updated on 
@Arvind
@Adele_R
@US2027165
@2019.PI09
@2019.PI09.01
@releasePresent
@iterationPresent
Feature: US2027165 - Locked Language Request – Market Lead

  @TC967059
  @Manual
  @Functional
  @Arvind
  @Adele_R
  Scenario: TC967059 - [RL0]
    Given language change need is identified in Physician workflow
    When the "Locked Language Request - Market Lead" task is created
    Then "Locked Language Request – Market Lead" task is assigned to the market lead
    And the market lead is identified based on the market number of "Create Negotiation Record task" of physician flow
    And all of the data in fields about locked language from the "Language Change: UHC & Provider Agree" are displayed in read only format
    And the data from the help text, how close are we to agreement on language, and comments are not displayed

  @TC967069
  @Manual
  @Functional
  @Arvind
  @Adele_R
  Scenario: TC967069 - [RL1]
    Given "Locked Language Request – Market Lead" exists
    When Market Lead opens "Locked Language Request – Market Lead"
    Then Market lead has 2 radio buttons - "Approve Locked Language Request" and "Deny Locked Language Request"
    And a comments field to write in user input - "Comments" field will be optional only if "Deny Locked Language Request" is selected.

  @TC967076
  @Manual
  @Functional
  @Arvind
  @Adele_R
  Scenario: TC967076 - [RL2]
    Given "Locked Language Request - Market Lead" exists
    When the radio button "Approve Locked Language Request" is used
    Then the Locked Language Request - Pricing" is created

  @TC967082
  @Manual
  @Functional
  @Arvind
  @Adele_R
  Scenario: TC967082 - [RL3]
    Given "Locked Language Request - Market Lead" exists
    When the radio button "Deny Locked Language Request" is used
    Then the "Locked Language Request – Market Lead Denied" task is created

