# Last updated on 
@US1301880
@2018.PI04
@2018.PI04.03
@MVP
@Madhur
@Priority_1
@CMD
@releasePresent
@iterationPast
Feature: US1301880 - [Continued] CMD- User Input Required Page- Populate rows of data

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
    # Site
    # State
    # Market Number
    # User ID
    # Contract ID
    # Contract Paper Type
    # Contract Name
    # Status
    # Action Required
    # Date

  @TC564483
  @Manual
  @Functional
  Scenario: TC564483 - [RL0]
    # Scenario 1 (Action required information in database)
    Given I am on the CMD User Review and Input page
    When there are no Action required transactions
    Then the following message: There are currently no contracts that require user review and input at this time

