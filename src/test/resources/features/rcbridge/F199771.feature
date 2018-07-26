# Last updated on 2018-06-21T16:18:44.162Z
@MVP
@Parity
@7.5_Release
Feature: F199771 - Unscheduled for 7.5 Release (Mass Actions)

  @MVP
  @EXARI-10227
  @Parity
  @7.5_Release
  @2018.PI03
  Scenario: US1177396
    Given I have access to the Mass Actions widget
    Then I can perform contracting actions in mass

  @MVP
  @Plus
  @EXAR-11456
  @7.5_Release
  @2018.PI03
  Scenario: US1177404
    Given I am a Mass Actions administrator
    When I view the Mass Action Definitions
    Then I can see the full template details
    And I can amend the details, as necessary

