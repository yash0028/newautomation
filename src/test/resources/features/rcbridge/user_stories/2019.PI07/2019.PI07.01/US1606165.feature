# Last updated on 
@US1606165
@2019.PI07
@2019.PI07.01
@releasePresent
@iterationPresent
Feature: US1606165 - Update CMD application to leverage the additional roles (Supporting)

  @TC793509
  @Manual
  @Functional
  Scenario: TC793509 - [RL0]
    Given that the newly defined roles for CMD have been created and the older roles have removed
    When a user goes into Secure for CMD application has successfully obtained the new role (by environment) selected
    And SiteMinder has been updated to recognize the new roles for access to CMD
    Then the user can access the CMD application with these new roles and this user story will be considered complete.

