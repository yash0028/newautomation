# Last updated on 
@US1663017
@releaseUnknown
@iterationUnknown
Feature: US1663017 - Add New Data Fields for Provider

  @TC760615
  @Manual
  @Functional
  Scenario: TC760615 - [RL0]
    #Scenario 1: Practice Setting
    Given I am receiving a new request for participation
    When I look at the Cred Cycle work object
    Then I will now see a new field labeled 'Practice Setting' under the 'Primary Practice Zip' field

  @TC760631
  @Manual
  @Functional
  Scenario: TC760631 - [RL1]
    #Scenario 2: Medicare ID
    Given I am receiving a new request for participation
    When I look at the Cred Cycle work object
    Then I will now see a new field labeled 'Medicare ID' under the 'NPI' field

  @TC760643
  @Manual
  @Functional
  Scenario: TC760643 - [RL2]
    #Scenario 3: Medicaid ID
    Given I am receiving a new request for participation
    When I look at the Cred Cycle work object
    Then I will now see a new field labeled 'Medicaid ID' under the new 'Medicaid ID' field

  @TC760654
  @Manual
  @Functional
  Scenario: TC760654 - [RL3]
    #Scenario 4: Practice Setting
    Given I am receiving a new request for participation
    When I look at the Practitioner work object
    Then I will now see a new field labeled 'Practice Setting' under the 'Practice Zip' field within the 'Primary Practice Information' section

  @TC760664
  @Manual
  @Functional
  Scenario: TC760664 - [RL4]
    #Scenario 5: Medicare ID
    Given I am receiving a new request for participation
    When I look at the Practitioner work object
    Then I will now see a new field labeled 'Medicare ID' under the 'NPI' field within the 'Practitioner Information' section

  @TC760672
  @Manual
  @Functional
  Scenario: TC760672 - [RL5]
    #Scenario 6: Medicaid ID
    Given I am receiving a new request for participation
    When I look at the Practitioner work object
    Then I will now see a new field labeled 'Medicaid ID' under the new 'Medicaid ID' field within the 'Practitioner Information' section

  @TC760678
  @Manual
  @Functional
  Scenario: TC760678 - [RL6]
    #Scenario 7: Practice Setting
    Given I am receiving a new request for participation
    When I look at the RFP work object
    Then I will now see a new field labeled 'Practice Setting' under the 'Practice Zip' field within the 'Practice Information' section

  @TC760684
  @Manual
  @Functional
  Scenario: TC760684 - [RL7]
    #Scenario 8: Medicare ID
    Given I am receiving a new request for participation
    When I look at the RFP work object
    Then I will now see a new field labeled 'Medicare ID' under the 'Individual NPI Number' field within the 'Practitioner Information' section

  @TC760690
  @Manual
  @Functional
  Scenario: TC760690 - [RL8]
    #Scenario 9: Medicaid ID
    Given I am receiving a new request for participation
    When I look at the RFP work object
    Then I will now see a new field labeled 'Medicaid ID' under the new 'Medicaid ID' field within the 'Practitioner Information' section

