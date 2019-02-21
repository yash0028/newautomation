# Last updated on 
@RC_invalid
@US1301880
@2018.PI04
@2018.PI04.03
@releasePast
@iterationPast
Feature: US1301880 - [Continued] CMD - User Input Required Page - Populate rows of data

  @TC678783
  @Automated
  @User_Interface
  @RC_invalid
  Scenario: TC678783 - [RL0]
    # Scenario 1 (Action required information in database)
    Given I have clicked on Action Required button on the CMD dashboard
    When there are no Action required transactions
    Then display the following message: There are currently no contracts that require user review and input at this time

  @TC678784
  @Automated
  @User_Interface
  @RC_invalid
  Scenario: TC678784 - [RL1]
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

  @TC678785
  @Automated
  @User_Interface
  @RC_invalid
  Scenario: TC678785 - [RL2]
    # Scenario 3 (Action required information in database-Default sort order)
    Given I have clicked on Action Required button on the CMD dashboard
    When there are Action Required transactions
    Then the default sort of the data should be oldest submission date to newest submission date

