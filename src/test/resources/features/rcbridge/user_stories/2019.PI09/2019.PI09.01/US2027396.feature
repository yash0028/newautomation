# Last updated on 
@Arvind
@Adele_R
@US2027396
@2019.PI09
@2019.PI09.01
@releasePresent
@iterationPresent
Feature: US2027396 - Locked Language Request – UHN Legal

  @TC967051
  @Manual
  @Functional
  @Arvind
  @Adele_R
  Scenario: TC967051 - [RL0]
    Given language change need is identified in Physician workflow
    When operations team approves the "Locked Language Request - Operations" task
    Then "Locked Language Request – UHN Legal" task is assigned to the UHN Legal team member
    And all of the data in fields about locked language from the "Language Change: UHC & Provider Agree" are displayed in read only format
    And the data from the help text, how close are we to agreement on language, and comments are not displayed

  @TC967065
  @Manual
  @Functional
  @Arvind
  @Adele_R
  Scenario: TC967065 - [RL1]
    Given "Locked Language Request – UHN Legal" exists
    When UHN Legal team member opens "Locked Language Request – UHN Legal"
    Then UHN Legal team member has 3 radio buttons - *"Approve Locked Language Request", "Deny Locked Language Request" and "Modify Locked Language Request"
    And a comments field to write in user input - "Comments" field will be optional only if "Deny Locked Language Request" is selected.

  @TC967073
  @Manual
  @Functional
  @Arvind
  @Adele_R
  Scenario: TC967073 - [RL2]
    Given "Locked Language Request - UHN Legal" exists
    When the radio button "Modify Locked Language Request" is selected
    Then he "Locked Language Counter" task is created

  @TC967079
  @Manual
  @Functional
  @Arvind
  @Adele_R
  Scenario: TC967079 - [RL3]
    Given "Locked Language Request - UHN Legal" exists
    When the radio button "Approve Locked Language Request" is used
    Then the Locked Language Request - Unlock Template" is created

  @TC967086
  @Manual
  @Functional
  @Arvind
  @Adele_R
  Scenario: TC967086 - [RL4]
    Given "Locked Language Request - UHN Legal" exists
    When the radio button "Deny Locked Language Request" is used
    Then the "Locked Language Request – UHN Legal Denied" task is created

