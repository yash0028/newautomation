# Last updated on 
@CMD
@US1474091
@2018.PI05
@2018.PI05.04
@releasePast
@iterationPast
Feature: US1474091 - CMD UTILITY - Provider Category Type table and microservice

  @TC672163
  @Manual
  @Functional
  @CMD
  Scenario: TC672163 - [RL0]
    Given a user needs to query the table
    When the user provides Specialty Code and Prov Type
    Then the query response provides the matching table records data

  @TC710989
  @Automated
  @Functional
  @CMD
  Scenario Outline: TC710989 - [RL10]
    ##Automation scenarios
    Given a user needs to query the table data
    When the user provides values
      | providerType           | <providerType>         |
      | specialityCode         | <specialityCode>       |
      | specialtyDescription   | <specialtyDescription> |
      | physCategory           | <physCategory>         |
      | physCategory2          | <physCategory2>        |
      | alliedCategory         | <alliedCategory>       |
      | alliedCategory2        | <alliedCategory2>      |
      | specialtyGrouping      | <specialtyGrouping>    |
      | response               | <response>             |
    Then the query "<response>" provides the matching table records data
    Examples:
      | providerType                                                                       | specialityCode                                                                     | specialtyDescription                                                               | physCategory                                                                       | physCategory2                                                                      | alliedCategory                                                                     | alliedCategory2                                                                    | specialtyGrouping                                                                  | response                                                                           |
      | P                                                                                  | EMPTY_STRING                                                                       | EMPTY_STRING                                                                       | EMPTY_STRING                                                                       | EMPTY_STRING                                                                       | EMPTY_STRING                                                                       | EMPTY_STRING                                                                       | EMPTY_STRING                                                                       | Please provide either speciality code or speciality description with provider type |
      | EMPTY_STRING                                                                       | 9                                                                                  | EMPTY_STRING                                                                       | EMPTY_STRING                                                                       | EMPTY_STRING                                                                       | EMPTY_STRING                                                                       | EMPTY_STRING                                                                       | EMPTY_STRING                                                                       | Provider type is mandatory with speciality code/speciality description             |
      | EMPTY_STRING                                                                       | EMPTY_STRING                                                                       | Psych Social Worker                                                                | EMPTY_STRING                                                                       | EMPTY_STRING                                                                       | EMPTY_STRING                                                                       | EMPTY_STRING                                                                       | EMPTY_STRING                                                                       | Provider type is mandatory with speciality code/speciality description             |
      | P                                                                                  | EMPTY_STRING                                                                       | Psych                                                                              | EMPTY_STRING                                                                       | EMPTY_STRING                                                                       | EMPTY_STRING                                                                       | EMPTY_STRING                                                                       | EMPTY_STRING                                                                       | Speciality description should be at least of 7 characters                          |
      | P                                                                                  | EMPTY_STRING                                                                       | Psych Soci                                                                         | EMPTY_STRING                                                                       | EMPTY_STRING                                                                       | EMPTY_STRING                                                                       | EMPTY_STRING                                                                       | EMPTY_STRING                                                                       | verify matching response                                                           |
      | EMPTY_STRING                                                                       | EMPTY_STRING                                                                       | EMPTY_STRING                                                                       | Specialists                                                                        | EMPTY_STRING                                                                       | EMPTY_STRING                                                                       | EMPTY_STRING                                                                       | EMPTY_STRING                                                                       | verify matching response                                                           |
      | EMPTY_STRING                                                                       | EMPTY_STRING                                                                       | EMPTY_STRING                                                                       | EMPTY_STRING                                                                       | Other Specialists                                                                  | EMPTY_STRING                                                                       | EMPTY_STRING                                                                       | EMPTY_STRING                                                                       | verify matching response                                                           |
      | EMPTY_STRING                                                                       | EMPTY_STRING                                                                       | EMPTY_STRING                                                                       | EMPTY_STRING                                                                       | EMPTY_STRING                                                                       | Behavioral Health                                                                  | EMPTY_STRING                                                                       | EMPTY_STRING                                                                       | verify matching response                                                           |
      | EMPTY_STRING                                                                       | EMPTY_STRING                                                                       | EMPTY_STRING                                                                       | EMPTY_STRING                                                                       | EMPTY_STRING                                                                       | EMPTY_STRING                                                                       | Behavioral Health Clinicians                                                       | EMPTY_STRING                                                                       | verify matching response                                                           |
      | EMPTY_STRING                                                                       | EMPTY_STRING                                                                       | EMPTY_STRING                                                                       | EMPTY_STRING                                                                       | EMPTY_STRING                                                                       | EMPTY_STRING                                                                       | EMPTY_STRING                                                                       | Behavioral Health                                                                  | verify matching response                                                           |
      | A                                                                                  | 20                                                                                 | Description                                                                        | phyCategory                                                                        | phyCategory2                                                                       | allied                                                                             | allied2                                                                            | specialtygrouping                                                                  | No matching records found                                                          |

  @TC672168
  @Manual
  @Functional
  @CMD
  Scenario: TC672168 - [RL1]
    Given a user needs to query the table
    When the user does not provide Specialty Code and Prov Type
    Then the service does not initiate a query
    And returns a message of 'SPECIALTY AND PROV TYPE REQUIRED'

  @TC672204
  @Manual
  @Functional
  @CMD
  Scenario: TC672204 - [RL2]
    Given a user provides at least 7 characters of Specialty Code Description
    And a user provides "P" for the provider type value
    When the query/service interrogates the table data
    Then it searches for Specialty Code Description column for records that contain the input text
    And returns a list of matching table records data

  @TC672213
  @Manual
  @Functional
  @CMD
  Scenario: TC672213 - [RL4]
    Given a user provides required minimum input/search parameters
    When the query/service interrogates the table data
    And there were not records matched
    Then a response message generated stating 'NO MATCHING RECORDS FOUNDS'

  @TC672220
  @Manual
  @Functional
  @CMD
  Scenario: TC672220 - [RL5]
    Given a user needs to query the table
    When the user provides a valid PhysCategory code value
    Then the query response provides a list of matching table records data

  @TC672223
  @Manual
  @Functional
  @CMD
  Scenario: TC672223 - [RL6]
    Given a user needs to query the table
    When the user provides a valid PhysCategory2 code value
    Then the query response provides a list of matching table records data

  @TC672227
  @Manual
  @Functional
  @CMD
  Scenario: TC672227 - [RL7]
    Given a user needs to query the table
    When the user provides a valid AlliedCategory code value
    Then the query response provides a list of matching table records data

  @TC672228
  @Manual
  @Functional
  @CMD
  Scenario: TC672228 - [RL8]
    Given a user needs to query the table
    When the user provides a valid AlliedCategory2 code value
    Then the query response provides a list of matching table records data

  @TC672229
  @Manual
  @Functional
  @CMD
  Scenario: TC672229 - [RL9]
    Given a user needs to query the table
    When the user provides a valid SpecialtyGrouping code value
    Then the query response provides a list of matching table records data

