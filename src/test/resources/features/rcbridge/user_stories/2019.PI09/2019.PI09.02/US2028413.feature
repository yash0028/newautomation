# Last updated on 
@Arvind
@Adele_R
@Go_Live
@US2028413
@2019.PI09
@2019.PI09.02
@releasePresent
@iterationPresent
Feature: US2028413 - Locked Language Request – UHN Legal - Modified

  @TC967062
  @Manual
  @Functional
  @Arvind
  @Adele_R
  @Go_Live
  Scenario: TC967062 - [RL0]
    Given "Locked Language Request - UHN Legal" exists
    When the radio button "Modify Locked Language Request" is selected
    Then "New language to be used in the contract"* text field appears as a Multi line text box
    And "Comments" text field appears as a Multi line text box
    And "Should this language be sent to the provider as is?"* radio button exists with options as Yes or No

  @TC967070
  @Manual
  @Functional
  @Arvind
  @Adele_R
  @Go_Live
  Scenario: TC967070 - [RL1]
    Given "Should this language be sent to the provider as is?" exists
    When yes is selected
    Then the form contains "Should we meet with the provider to discuss the language?" radio button with options as Yes or No

  @TC967077
  @Manual
  @Functional
  @Arvind
  @Adele_R
  @Go_Live
  Scenario: TC967077 - [RL2]
    Given language change request is modified by UHN Legal team member
    When contractor opens the task assigned "Locked Language Counter"
    Then the form contains a text "The language change you requested has been modified. "
    And the form contains a radio button "Does the provider agree with the changes?"* with options as Yes and No
    And the contractor is not able to modify the existing details of the form
    And once contractor completes, the process must re-route to the same UHN Legal team member

  @TC967084
  @Manual
  @Functional
  @Arvind
  @Adele_R
  @Go_Live
  Scenario: TC967084 - [RL3]
    Given "Does the provider agree with the changes?" exists
    When No is selected
    Then the form contains "What does the provider want?" text field appears as a Multi line text box

  @TC967087
  @Manual
  @Functional
  @Arvind
  @Adele_R
  @Go_Live
  Scenario: TC967087 - [RL4]
    Given "Does the provider agree with the changes?" exists
    When Yes is selected
    Then the process must re-route to the same UHN Legal team member
    And the task "Locked Language Request - UHN Legal Contract offer" is created

