# Last updated on 
@MVP
@F182690
Feature: F182690 - Add Exari's PowerAuthor to AppStore

  @US1085951
  Scenario: US1085951 - Add PowerAuthor to the Appstore
    Given a person is in the AppStore
    When they search for Exari PowerAuthor
    Then they can request to install the software

