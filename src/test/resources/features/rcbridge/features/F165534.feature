# Last updated on 
@MVP
@PI04
@Plus
@F165534
Feature: F165534 - Setup Retro Approval

  @US1039748
  @Configuration_for_10/1/18
  Scenario: US1039748::0 - Prevent execution of contract if retro and no approval
    Given a FAC/ANC contract and the planned effective date is within 15 calendar days or in the past
    When it is being executed
    And no retro approval exists
    Then tell user that they need to obtain retro approval

  @US1039748
  @Configuration_for_10/1/18
  Scenario: US1039748::1 - Prevent execution of contract if retro and no approval
    Given a Physician contract and the planned effective date is within 15 calendar days or in the past
    When it is being executed
    And no retro approval exists
    Then tell user that they need to obtain retro approval

  @Retro
  @US972034
  @Configuration_for_10/1/18
  Scenario: US972034 - Retro Why can't move effective date
    Given: A retro approval has been triggered.
    When: I click on "Why can't the effective date be moved?"
    Then: A free form long text box is available for input.
    And: The information input into the field can be saved.

