# Last updated on 
@A_UI_Story
@US1301880
@2018.PI04
@2018.PI04.01
Feature: US1301880 - CMD- User Input Required Page- Populate rows of data

  @TC564483
  @Automated
  @Functional
  Scenario: TC564483 - [RL0]
    # Scenario 1 Action required information in database
    Given I am on the CMD User Review and Input page
    When there are no Action required transactions
    Then the following message "There are currently no contact installation errors that require review at this time." appears on the page

