# Last updated on 
@US1543577
@2019_PI01
@2019.PI01.02
@releasePresent
@iterationPast
Feature: US1543577 - Add Lightning components to the utility bar of Lightning console app

  @TC745889
  @Manual
  @Functional
  Scenario: TC745889 - [RL0] Verify creation of notes
    #Scenario 1: Notes
    Given I am on any page within the Salesforce Application
    When I review the Lightning Toolbar at the bottom of the page
    Then I will see a link that will allow me to easily create a note on the work object I am currently in

  @TC745890
  @Manual
  @Functional
  Scenario: TC745890 - [RL1] Verify recent items functionality
    #Scenario 2: Recent Items
    Given I am on any page within the Salesforce Application
    When I review the Lightning Toolbar at the bottom of the page
    Then I will see a link that will allow me to easily see my most 'Recent Items'

