# Last updated on
#@A_UI_Story
@US1301880
@2018.PI04
@2018.PI04.01
Feature: US1301880 - CMD- User Input Required Page- Populate rows of data

  @TC593157
  @Manual
  @Functional
  Scenario: TC593157 - [RL2]
    # Scenario 3 (Action required information in database-Default sort order)
    Given I have clicked on Action Required button on the CMD dashboard
    When there are Action Required transactions
    Then the default sort of the data should be oldest submission date to newest submission date

  @TC593156
  @Manual
  @Functional
  Scenario: TC593156 - [RL1]
    # Scenario 2 (Action required information in database)
    Given I have clicked on Action Required button on the CMD dashboard
    When there are Action Required transactions
    Then for each transaction that requires input I can see data populated for each one of the fields
      | Site |
      | State |
      | Market |
      | User |
      | Contract ID |
      | Product Group Name |
      | Paper Type |
      | Contract Name |
      | Status |
      | Action Required |
      | Date |

  @TC564483
  @Automated
  @Functional
  Scenario: TC564483 - [RL0]
    # Scenario 1 (Action required information in database)Given I am on the CMD User Review and Input page
    When there are no Action required transactions
    Then the following message "There are currently no contact installation errors that require review at this time." appears on the page

