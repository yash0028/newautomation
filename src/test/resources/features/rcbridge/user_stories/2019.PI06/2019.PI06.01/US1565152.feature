# Last updated on 
@MVP
@Scrum_Team_1
@US1565152
@2019.PI06
@2019.PI06.01
@releasePresent
@iterationPresent
Feature: US1565152 - Adjust existing API to include attributes added by PES Team

  @TC729026
  @Manual
  @Functional
  @MVP
  @Scrum_Team_1
  Scenario: TC729026 - [RL0]
    # Scenario 1 - For Counterpary
    Given a user wants to do a search for Counterparty
    When I search for a Counterparty using "mpin" of "55408"
    Then PES returns the following information:
      | county           |
      | credStatusCode   |
      | currentCycleDate |
      | ptiGroupId       |

  @TC729027
  @Manual
  @Functional
  @MVP
  @Scrum_Team_1
  Scenario: TC729027 - [RL1]
    # Scenario 2 - For Roster
    Given a user wants to do a search for Roster
    When I search for a Roster using "mpin" of "55408"
    Then PES returns the following information:
      | credStatusCode   |
      | currentCycleDate |

