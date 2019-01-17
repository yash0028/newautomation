# Last updated on 
@A_UI_Story
@US1401523
@2019.PI06
@releaseFuture
@iterationUnknown
Feature: US1401523 - UI/UX- Populate Resolution button and comments on CMD page displaying Type 2 errors

  @TC622440
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC622440 - [RL0]
    ### Scenario 1 (Resolution button and resolution text box on CMD error modal)
    Given I am on the CMD Error page
    When I click on an error row on the page
    Then I can see a Resolve as 'Installed' and a Resolve as 'Cancelled' Button and Resolution text box in the modal window

  @TC622442
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC622442 - [RL1]
    ### Scenario 2 (Resolution button and resolution text box validation)
    Given I am on the CMD Error modal window
    When I enter in at least one character in the resolution text box
    Then Then both Resolution Buttons are active

