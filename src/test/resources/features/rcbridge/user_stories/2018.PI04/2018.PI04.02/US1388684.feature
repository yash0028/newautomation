# Last updated on 
@A_UI_Story
@US1388684
@2018.PI04
@2018.PI04.02
@releasePast
@iterationPast
Feature: US1388684 - [Unfinished] [Continued] CMD- User Input Required Page- View & Edit contract detail information (no search results found)

  @TC615284
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC615284 - [RL2]
    # Scenario 4 (Select contract master- Use this once)
    Given I am on the CMD Action Required page
    When I entered in a contract master number, contract master name, contract system, contract master effective date
    And I selected user this contract master "once"
    And I have clicked on the submit button
    Then The modal window closes and I am brought back to the CMD action required page with the product grouping information I was editing displayed to me
    And The status of the contract master product grouping is changed to contract master selected

  @TC615285
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC615285 - [RL3]
    # Scenario 5 (Select contract master- Use this always)
    Given I am on the CMD Action Required page
    When I entered in a contract master number, contract master name, contract system, contract master effective date
    And I selected user this contract master "always"
    And I have clicked on the submit button
    Then The modal window closes and I am brought back to the CMD action required page with the product grouping information I was editing displayed to me
    And The status of the contract master product grouping is changed to contract master selected

  @TC615286
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC615286 - [RL4]
    # scenario 6 (contract load button)
    Given I have selected a contract master for a product grouping
    When The status of of the contract master product grouping is 'contract master selected"
    Then A proceed with contract load button appears

  @TC615287
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC615287 - [RL5]
    # Scenario 7 (click contract load button)
    Given I have selected a contract master for a product grouping
    When I click on the proceed with contract load button
    Then The following message is displayed to me "The contract master for this product grouping has been recorded"
    And The product grouping row is removed from the display

