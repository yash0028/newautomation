# Last updated on 
@MVP
@10/1_Physician
@Priority_1
@CMD
@F205820
Feature: F205820 - Contract Meta Data (CMD) App4 - Part 1

  @A_UI_Story
  @US1301716
  @2018.PI03
  Scenario: US1301716 - CMD Dashboard Navigation Bar
    Given I have entered the CMD dashboard URL
    And I am recognized as a contract administrator with access to CMD
    When The dashboard page loads
    Then I can see the following as a heading on the CMD page "Contract Metadata, Current Transactions, Reference Data, User Input Queue, PCP Reassign, FAQ, Administrative, Help"

  @A_UI_Story
  @US1301613
  @2018.PI03
  Scenario: US1301613 - CMD Dashboard buttons
    Given I have entered the CMD dashboard URL
    And I am recognized as a contract administrator with access to CMD
    When The dashboard page loads
    Then I can see the following buttons "Completed, In-Progress, Action Required, Errors"

