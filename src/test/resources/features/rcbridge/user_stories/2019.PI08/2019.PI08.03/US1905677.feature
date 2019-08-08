# Last updated on 
@US1905677
@2019.PI08
@2019.PI08.03
@releasePresent
@iterationPast
Feature: US1905677 - API Enhancement to expand the scope of the query to include secondary address.

  @TC903968
  @Manual
  @Functional
  Scenario: TC903968 - [RL0]
    Given a user inputs a value at the PES Inputs query UI screen (TIN,MPIN,NPI, First, Last, City, State, Zip)
    When the user is in Exari UI we would return all address possibilities via API adjusted query.
    Then user would see expanded scope of results including all location address.

