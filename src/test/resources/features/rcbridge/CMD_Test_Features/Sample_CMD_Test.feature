# Last updated on
@Sample

Feature: Sample_CMD_Test


  Scenario: CMD - [RL0]

    Given I have clicked on Action Required button on the CMD dashboard
    When there are no Action required transactions
    Then display the following message: There are currently no contracts that require user review and input at this time



