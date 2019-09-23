# Last updated on 
@Arvind
@Adele_R
@Go_Live
@US2027396
@2019.PI09
@2019.PI09.02
@releasePresent
@iterationPresent
Feature: US2027396 - Locked Language Request – UHN Legal

  @TC967051
  @Manual
  @Functional
  @Arvind
  @Adele_R
  @Go_Live
  Scenario: TC967051 - [RL0]
    Given language change need is identified in Physician workflow
    When Pricing team approves the "Locked Language Request - Pricing task
    Then "Locked Language Request – UHN Legal" task is assigned to the UHN Legal team member
    And all of the data in fields about locked language from the "Language Changes are displayed in read only format

  @TC967065
  @Manual
  @Functional
  @Arvind
  @Adele_R
  @Go_Live
  Scenario: TC967065 - [RL1]
    Given "Locked Language Request – UHN Legal" exists
    When UHN Legal team member opens "Locked Language Request – UHN Legal"
    Then UHN Legal team member has 3 radio buttons - *"Approve Locked Language Request", "Deny Locked Language Request" and "Modify Locked Language Request"
    And a comments field to write in user input - "Comments" field will be mandatory only if "Deny Locked Language Request" is selected.
    And the form contains, "Will this language need to be filed and approved?" (Yes/No)

  @TC967073
  @Manual
  @Functional
  @Arvind
  @Adele_R
  @Go_Live
  Scenario: TC967073 - [RL2]
    Given "Locked Language Request - UHN Legal" exists
    When the radio button "Modify Locked Language Request" is selected
    Then the "Locked Language Counter" task is created

  @TC967079
  @Manual
  @Functional
  @Arvind
  @Adele_R
  @Go_Live
  Scenario: TC967079 - [RL3]
    Given "Locked Language Request - UHN Legal" exists
    When the radio button "Approve Locked Language Request" is used
    Then the "Locked Language Request - Operations" is created

  @TC967086
  @Manual
  @Functional
  @Arvind
  @Adele_R
  @Go_Live
  Scenario: TC967086 - [RL4]
    Given "Locked Language Request - UHN Legal" exists
    When the radio button "Deny Locked Language Request" is used
    Then the "Locked Language Request – UHN Legal Denied" task is created

