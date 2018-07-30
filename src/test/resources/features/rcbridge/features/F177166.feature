# Last updated on 2018-07-26T08:47:49.362Z
@MVP
@10/1_Physician
@Priority_1
@Parity
Feature: F177166 - Establish Corporate User Access and Security - Optum

  @MVP
  @2018.PI03
  @2018.PI03.03
  Scenario: US860744
    # Given I am an individual who needs to gain access to the Exari Dev Application environment
    # When I log into Secure
    # Then I can request access to the Exari Dev Application environment and the appropriate Role(s) that I need
    # And my Secure request is submitted through the appropriate approval chain
    # And based on the approval decisions, it will be approved or declined
    # And if approved, then I can successfully log into the Exari Dev Application environment
    # And I have access to the Role(s) I requested in Secure

  @MVP
  @2018.PI03
  @2018.PI03.03
  Scenario: US1225809
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

