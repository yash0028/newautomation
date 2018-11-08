# Last updated on 
@US1425656
@2018.PI05
@2018.PI05.01
@MVP
@Priority_2
@NDB
@CMD
@releaseFuture
@iterationFuture
Feature: US1425656 - (Copy of) UI/UX- Populate Resolution button and comments on CMD errror page

  @TC634359
  @Manual
  @Functional
  Scenario: TC634359 - [RL1]
    ### Scenario 2 (Resolution button and resolution text box validation)
    Given I am on the CMD Error modal window
    When I enter in at least one character in the resolution text box
    Then The Resolution Button is active

  @TC634366
  @Manual
  @Functional
  Scenario: TC634366 - [RL2]
    ###Scenario 4 (Add resolution text field in transaction database):
    Given I have entered information in the resolution text box for a contract master type 2 or 3 error
    When I have clicked the Resolution button
    And The error is removed from the CMD error UI
    Then The information I have entered in the resolution text box is added to the Resolution Text box in the TBD (need name) database.

  @TC634353
  @Manual
  @Functional
  Scenario: TC634353 - [RL0]
    ### Scenario 1 (Resolution button and resolution text box on CMD error modal)
    Given I am on the CMD Error page
    When I click on an error row on the page
    Then I can see a Resolution Button and Resolution text box in the modal window

