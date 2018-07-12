# Last updated on 2018-07-11T05:31:26.643Z
@MVP
@Priority_1
@Parity
Feature: F177166 - Establish Corporate User Access and Security - Optum

  @MVP
  @2018.PI03
  @2018.PI03.02
  Scenario: US860744
    # Given I am an individual who needs to gain access to the Exari Dev Application environment
    # When I log into Secure
    # Then I can request access to the Exari Dev Application environment and the appropriate Role(s) that I need
    # And my Secure request is submitted through the appropriate approval chain
    # And based on the approval decisions, it will be approved or declined
    # And if approved, then I can successfully log into the Exari Dev Application environment
    # And I have access to the Role(s) I requested in Secure

  @2018.PI03
  @2018.PI03.03
  Scenario: US1036069
    Given a user
    When user sign into Exari Dev
    Then ensure user have the roles that were approved in Secure.

  @2018.PI03
  @2018.PI03.01
  Scenario: US1207145
    Given we meet with the Exari Dev and Optum Architect Teams
    When we discuss the end to end components for User Access and Security within the Exari Application and UHG Secure Application
    Then we understand the code and process impacts to all User Stories in this Feature

