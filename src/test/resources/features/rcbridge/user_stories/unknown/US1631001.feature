# Last updated on 
@US1631001
@releaseUnknown
@iterationUnknown
Feature: US1631001 - Removal of Duplicative Fields

  @TC760618
  @Manual
  @Functional
  Scenario: TC760618 - [RL0]
    #Scenario 1: Degree
    Given I am in the RFP work object
    When I am reviewing the 'Degree' information that is fed from the new SmartForm
    Then I will now ONLY see the 'drop-down' field and no longer see the 'free-form' field

  @TC760629
  @Manual
  @Functional
  Scenario: TC760629 - [RL1]
    #Scenario 2: Practitioner Specialties
    Given I am in the RFP work object
    When I am reviewing the 'Practitioner Specialties' information that is fed from the new SmartForm
    Then I will now ONLY see the 'drop-down' field and no longer see the 'free-form' field

