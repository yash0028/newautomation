# Last updated on 
@A_UI_Story
@US1453733
@2018.PI05
@2018.PI05.02
@MVP
@Maintenance
@releaseFuture
@iterationFuture
Feature: US1453733 - UI/UX- New web Page for CMD error page and related activities

  @TC652718
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC652718 - [RL0]
    ### Scenario 1 (Resolution button and resolution text box on CMD error modal)
    Given I am on the CMD Error page
    When I click on an error row on the page
    Then I can see a Resolution Button and Resolution text box in the modal window

  @TC652720
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC652720 - [RL1]
    ### Scenario 2 (Resolution button and resolution text box validation)
    Given I am on the CMD Error modal window
    When I enter in at least one character in the resolution text box
    Then The Resolution Button is active

  @TC652722
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC652722 - [RL2]
    ###Scenario 4 (Add resolution text field in transaction database):
    Given I have entered information in the resolution text box for a contract master type 2 or 3 error
    When I have clicked the Resolution button
    And The error is removed from the CMD error UI
    Then The information I have entered in the resolution text box is added to the Resolution Text box in the TBD (need name) database.

