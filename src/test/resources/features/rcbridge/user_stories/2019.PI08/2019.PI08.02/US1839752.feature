# Last updated on 
@US1839752
@2019.PI08
@2019.PI08.02
@releasePast
@iterationPast
Feature: US1839752 - Mass Project UI Work - Mass Actions additional identifiers

  @TC904815
  @Manual
  @Acceptance
  Scenario: TC904815 - Open Mass Action Project in CMD
    Given an Exari Mass Action project has been created
    When I click on the Mass Action project id
    Then I see a filtered view of all Contracts associated with that project

  @TC879406
  @Automated
  @Acceptance
  Scenario Outline: TC879406 - Verify Mass Action Endpoint
    Given the mass action id "<massActionId>"
    When I send the mass action id to the endpoint
    Then I receive a valid query response
    Examples:
      | massActionId                         |
      | 3645f720-435a-4941-8b66-15c808b93805 |

  @TC879412
  @Manual
  @Functional
  Scenario: TC879412 - [RL0]
    Given a mass action project is triggered in Exari
    When the project details are needed within CMD
    And the project system UUID is made available in Exari JSON
    Then the project system UUID is used to initiate the Get API
    And the project details from the Get API response are available to the

