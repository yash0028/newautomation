# Last updated on 
@US1401523
@2018.PI05
@2018.PI05.02
@MVP
@Maintenance
@releaseFuture
@iterationFuture
Feature: US1401523 - UI/UX- Populate Resolution button and comments on CMD error page

  @TC622440
  @Manual
  @Functional
  Scenario: TC622440 - [RL0]
    ### Scenario 1 (Resolution button and resolution text box on CMD error modal)
    Given I am on the CMD Error page
    When I click on an error row on the page
    Then I can see a Resolution Button and Resolution text box in the modal window

  @TC622442
  @Manual
  @Functional
  Scenario: TC622442 - [RL1]
    ### Scenario 2 (Resolution button and resolution text box validation)
    Given I am on the CMD Error modal window
    When I enter in at least one character in the resolution text box
    Then The Resolution Button is active

  @TC622444
  @Manual
  @Functional
  Scenario: TC622444 - [RL2]
    ###Scenario 4 (Add resolution text field in transaction database):
    Given I have entered information in the resolution text box for a contract master type 2 or 3 error
    When I have clicked the Resolution button
    And The error is removed from the CMD error UI
    Then The information I have entered in the resolution text box is added to the Resolution Text box in the TBD (need name) database.

