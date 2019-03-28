# Last updated on 
@US1518050
@2019.PI06
@2019.PI06.01
@releasePresent
@iterationPast
Feature: US1518050 - CMD UTILITY -Affiliation Type code list CMD UI maintenance work

  @TC693620
  @Manual
  @Functional
  Scenario: TC693620 - [RL0]
    Given I have access to the Admin UI page
    When I click on the reference data link
    And I click on the Affiliation Type code values list from the drop down menu
    And I click on the show table button
    Then I can see all the versions of table available.
    ####

