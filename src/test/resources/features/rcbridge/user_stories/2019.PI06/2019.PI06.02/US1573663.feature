# Last updated on 
@US1573663
@2019.PI06
@2019.PI06.02
@releasePresent
@iterationPast
Feature: US1573663 - CMD UTILITY - Our Legal Entities list CMD UI maintenance work

  @TC720670
  @Manual
  @Functional
  Scenario: TC720670 - [RL0]
    Given I have access to the Admin UI page
    When I click on the reference data link
    And I click on the Our Legal Entities values list from the drop down menu
    And I click on the show table button
    Then I can see all the versions of table available
    ####

