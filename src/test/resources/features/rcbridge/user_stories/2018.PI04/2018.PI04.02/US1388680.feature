# Last updated on 
@A_UI_Story
@US1388680
@2018.PI04
@2018.PI04.02
@releasePast
@iterationPast
Feature: US1388680 - [Unfinished] CMD- User Input Required Page- Populate rows of data

  @TC615269
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC615269 - [RL0]
    # Scenario 1 (Action required information in database)
    Given I am on the CMD User Review and Input page
    When there are no Action required transactions
    Then the following message: There are currently no contracts that require user review and input at this time

  @TC615270
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC615270 - [RL1]
    # Scenario 2 (Action required information in database)
    Given I have clicked on Action Required button on the CMD dashboard
    When there are Action Required transactions
    Then for each transaction that requires input I can see data populated for each one of the fields
      | Site                |
      | State               |
      | Market Number       |
      | User ID             |
      | Contract ID         |
      | Contract Paper Type |
      | Contract Name       |
      | Status              |
      | Action Required     |
      | Date                |

  @TC615271
  @Manual
  @Functional
  @A_UI_Story
  Scenario: TC615271 - [RL2]
    # Scenario 3 (Action required information in database-Default sort order)
    Given I have clicked on Action Required button on the CMD dashboard
    When there are Action Required transactions
    Then the default sort of the data should be oldest submission date to newest submission date

