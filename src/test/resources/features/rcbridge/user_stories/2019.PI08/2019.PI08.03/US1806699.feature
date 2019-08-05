# Last updated on 
@US1806699
@2019.PI08
@2019.PI08.03
@releasePresent
@iterationPresent
Feature: US1806699 - CMD Determine PCP Indicator for each Provider on Roster Based on Market

  @TC925277
  @Manual
  @Acceptance
  Scenario Outline: TC925277 - Validate Bad Path
    Given a request to the PCP Indicator Lookup endpoint:
      | state                 | "<state>"                |
      | providerSpecialtyCode | "<providerSpeciatyCode>" |
      | degreeCode            | "<degreeCode>"           |
      | hbpOnlyContract       | "<hbpOnlyContract>"      |
    When sending the request to the PCP Indicator Lookup endpoint
    Then we get a responseErrorMessage stating "Default to 'S', NO MATCH FOUND"
    Examples:
      | state    | providerSpecialtyCode | degreeCode | hbpOnlyContract |
      | Indiana  | null                  | null       | true            |
      | Arkansas | 389                   | null       | false           |
      | Indiana  | 273                   | null       | false           |

  @TC925276
  @Manual
  @Acceptance
  Scenario Outline: TC925276 - Validate Happy Path
    Given a request to the PCP Indicator Lookup endpoint:
      | state                 | "<state>"                |
      | providerSpecialtyCode | "<providerSpeciatyCode>" |
      | degreeCode            | "<degreeCode>"           |
      | hbpOnlyContract       | "<hbpOnlyContract>"      |
    When sending the request to the PCP Indicator Lookup endpoint
    Then we get a response indicating that the provider is "<pcpIndicatorCMD>"
    Examples:
      | state    | providerSpecialtyCode | degreeCode | pcpIndicatorCMD | hbpOnlyContract |
      | Indiana  | 011                   | MD         | P               | false           |
      | Indiana  | 001                   | DO         | P               | false           |
      | Virginia | 037                   | MD         | P               | false           |
      | Oregon   | 274                   | POD        | P               | false           |
      | Oregon   | null                  | null       | S               | false           |
      | Oregon   | null                  | null       | S               | true            |

  @TC909546
  @Manual
  @Functional
  Scenario: TC909546 - [RL0]
    Given a contract record exists in Exari UCM
    When Provider NetworkRole is needed in the OCM record
    Then the PCP designation table is used

  @TC909553
  @Manual
  @Functional
  Scenario: TC909553 - [RL1]
    Given Provider NetworkRole designation table is called
    When the roster provider record matches a record on the table
    Then the Provider NetworkRole has been determined
    And the Provider NetworkRole value from is stored as part of the provider OCM record

