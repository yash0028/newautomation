# Last updated on 
@A_UI_Story
@US1401523
@2019.PI06
@2019.PI06.01
@releasePast
@iterationPast
Feature: US1401523 - UI/UX- Populate Resolution button and comments on CMD page displaying Type 2 errors

  @TC622440
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC622440 - [RL0] Resolution button and resolution text box on CMD error modal
    # Scenario 1 (Resolution button and resolution text box on CMD error modal)
    Given I am on the CMD Error page
    When I click on an error row on the page
    Then I can see a Resolve as 'Installed' and a Resolve as 'Cancelled' Button and Resolution text box in the modal window

  @TC622442
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC622442 - [RL1]
    # Scenario 2 (Resolution button and resolution text box validation)
    Given I am on the CMD Error modal window
    When I enter in at least one character in the resolution text box
    Then Then both Resolution Buttons are active

  @TC622444
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC622444 - [RL2]
    # Scenario 4 (Add resolution text field in transaction database):
    Given I have entered information in the resolution text box for a contract master type 2 or 3 error
    When I have clicked the Resolve as 'Install' button
    And The error is removed from the CMD error UI
    Then The information I have entered in the resolution text box and the manual action to resolve the Type 2 as 'Installed' is added to the transaction record for that contract line
    And That Contract Line is marked as 'Installed' in the Contract's Configuration record.

  @TC627893
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC627893 - [RL3]
    # Scenario 5 (Add resolution text field in transaction database):
    Given I have entered information in the resolution text box for a contract master type 2 or 3 error
    When I have clicked the Resolve as 'Cancelled' button
    And The error is removed from the CMD error UI
    Then The information I have entered in the resolution text box and the manual action to resolve the Type 2 as 'Installed' is added to the transaction record for that contract line
    And That Contract Line is marked as 'Installed' in the Contract's Configuration record.

