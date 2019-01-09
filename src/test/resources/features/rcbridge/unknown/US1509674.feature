# Last updated on 
@US1509674
@releaseUnknown
@iterationUnknown
Feature: US1509674 - Read Negotiator

  @TC690137
  @Manual
  @Functional
  Scenario: TC690137 - [RL0]
    Given I am a User with access to view or maintain Entity information
    When I view the Negotiator role on an Entity
    Then I can see the first and last name of each person in the Negotiator role on the Entity
    And I see the email address of each person in the Negotiator role on the Entity
    And I can see the telephone number of each person in the Negotiator role on the Entity
    And I can see the Assignment Level of each person in the Negotiator role on the Entity

