# Last updated on 
@Contract_Rules
@US1368000
@2018.PI04
@2018.PI04.05
@MVP
@10/1_Physician
@Priority_1
@kumar,_Sachin
@CMD
@releasePresent
@iterationPresent
Feature: US1368000 - ENW Indicator Determination

  @TC600518
  @Manual
  @Functional
  @Contract_Rules
  Scenario Outline: TC600518 - [RL0]
    Given "uhgSite" includes "<uhgSite>"
    # (checked against the provider on the roster)
    And "contractSubtypeHealthcare" is "<contractSubtype>"
    When "productServicesExcluded" include one or more below the line "<productServicesExcluded>":
    Then the ENW IND will be populated with "N" within the OCM Contract Model
    Examples:
      | uhgSite                                       | contractSubtype                               | productServicesExcluded                       |
      | UHN Northeast                                 | Medical Group Agreement                       | Charter                                       |
      | UHN Northeast                                 | Medical Group Agreement                       | Compass                                       |
      | UHN Northeast                                 | Medical Group Agreement                       | Core                                          |
      | UHN Northeast                                 | Medical Group Agreement                       | Navigate                                      |
      | UHN Northeast                                 | Medical Group National Agreement              | Charter                                       |
      | UHN Northeast                                 | Medical Group National Agreement              | Compass                                       |
      | UHN Northeast                                 | Medical Group National Agreement              | Core                                          |
      | UHN Northeast                                 | Medical Group National Agreement              | Navigate                                      |
      | UHN Northeast                                 | Practitioner Agreement                        | Charter                                       |
      | UHN Northeast                                 | Practitioner Agreement                        | Compass                                       |
      | UHN Northeast                                 | Practitioner Agreement                        | Core                                          |
      | UHN Northeast                                 | Practitioner Agreement                        | Navigate                                      |
      | UHN Northeast                                 | Provider Organization Participation Agreement | Charter                                       |
      | UHN Northeast                                 | Provider Organization Participation Agreement | Compass                                       |
      | UHN Northeast                                 | Provider Organization Participation Agreement | Core                                          |
      | UHN Northeast                                 | Provider Organization Participation Agreement | Navigate                                      |
      | UHN Northeast                                 | Simplified Medical Group Agreement            | Charter                                       |
      | UHN Northeast                                 | Simplified Medical Group Agreement            | Compass                                       |
      | UHN Northeast                                 | Simplified Medical Group Agreement            | Core                                          |
      | UHN Northeast                                 | Simplified Medical Group Agreement            | Navigate                                      |
      | UHN Northeast                                 | Simplified Physician Agreement                | Charter                                       |
      | UHN Northeast                                 | Simplified Physician Agreement                | Compass                                       |
      | UHN Northeast                                 | Simplified Physician Agreement                | Core                                          |
      | UHN Northeast                                 | Simplified Physician Agreement                | Navigate                                      |
      | UHN Northeast                                 | Simplified Practitioner Group Agreement       | Charter                                       |
      | UHN Northeast                                 | Simplified Practitioner Group Agreement       | Compass                                       |
      | UHN Northeast                                 | Simplified Practitioner Group Agreement       | Core                                          |
      | UHN Northeast                                 | Simplified Practitioner Group Agreement       | Navigate                                      |
      | UHN Northeast                                 | Simplified Physician Agreement                | Charter                                       |
      | UHN Northeast                                 | Simplified Physician Agreement                | Compass                                       |
      | UHN Northeast                                 | Simplified Physician Agreement                | Core                                          |
      | UHN Northeast                                 | Simplified Physician Agreement                | Navigate                                      |
      | UHN Southeast                                 | Medical Group Agreement                       | Charter                                       |
      | UHN Southeast                                 | Medical Group Agreement                       | Compass                                       |
      | UHN Southeast                                 | Medical Group Agreement                       | Core                                          |
      | UHN Southeast                                 | Medical Group Agreement                       | Navigate                                      |
      | UHN Southeast                                 | Medical Group National Agreement              | Charter                                       |
      | UHN Southeast                                 | Medical Group National Agreement              | Compass                                       |
      | UHN Southeast                                 | Medical Group National Agreement              | Core                                          |
      | UHN Southeast                                 | Medical Group National Agreement              | Navigate                                      |
      | UHN Southeast                                 | Practitioner Agreement                        | Charter                                       |
      | UHN Southeast                                 | Practitioner Agreement                        | Compass                                       |
      | UHN Southeast                                 | Practitioner Agreement                        | Core                                          |
      | UHN Southeast                                 | Practitioner Agreement                        | Navigate                                      |
      | UHN Southeast                                 | Provider Organization Participation Agreement | Charter                                       |
      | UHN Southeast                                 | Provider Organization Participation Agreement | Compass                                       |
      | UHN Southeast                                 | Provider Organization Participation Agreement | Core                                          |
      | UHN Southeast                                 | Provider Organization Participation Agreement | Navigate                                      |
      | UHN Southeast                                 | Simplified Medical Group Agreement            | Charter                                       |
      | UHN Southeast                                 | Simplified Medical Group Agreement            | Compass                                       |
      | UHN Southeast                                 | Simplified Medical Group Agreement            | Core                                          |
      | UHN Southeast                                 | Simplified Medical Group Agreement            | Navigate                                      |
      | UHN Southeast                                 | Simplified Physician Agreement                | Charter                                       |
      | UHN Southeast                                 | Simplified Physician Agreement                | Compass                                       |
      | UHN Southeast                                 | Simplified Physician Agreement                | Core                                          |
      | UHN Southeast                                 | Simplified Physician Agreement                | Navigate                                      |
      | UHN Southeast                                 | Simplified Practitioner Group Agreement       | Charter                                       |
      | UHN Southeast                                 | Simplified Practitioner Group Agreement       | Compass                                       |
      | UHN Southeast                                 | Simplified Practitioner Group Agreement       | Core                                          |
      | UHN Southeast                                 | Simplified Practitioner Group Agreement       | Navigate                                      |
      | UHN Southeast                                 | Simplified Physician Agreement                | Charter                                       |
      | UHN Southeast                                 | Simplified Physician Agreement                | Compass                                       |
      | UHN Southeast                                 | Simplified Physician Agreement                | Core                                          |
      | UHN Southeast                                 | Simplified Physician Agreement                | Navigate                                      |
      | UHN West                                      | Medical Group Agreement                       | Charter                                       |
      | UHN West                                      | Medical Group Agreement                       | Compass                                       |
      | UHN West                                      | Medical Group Agreement                       | Core                                          |
      | UHN West                                      | Medical Group Agreement                       | Navigate                                      |
      | UHN West                                      | Medical Group National Agreement              | Charter                                       |
      | UHN West                                      | Medical Group National Agreement              | Compass                                       |
      | UHN West                                      | Medical Group National Agreement              | Core                                          |
      | UHN West                                      | Medical Group National Agreement              | Navigate                                      |
      | UHN West                                      | Practitioner Agreement                        | Charter                                       |
      | UHN West                                      | Practitioner Agreement                        | Compass                                       |
      | UHN West                                      | Practitioner Agreement                        | Core                                          |
      | UHN West                                      | Practitioner Agreement                        | Navigate                                      |
      | UHN West                                      | Provider Organization Participation Agreement | Charter                                       |
      | UHN West                                      | Provider Organization Participation Agreement | Compass                                       |
      | UHN West                                      | Provider Organization Participation Agreement | Core                                          |
      | UHN West                                      | Provider Organization Participation Agreement | Navigate                                      |
      | UHN West                                      | Simplified Medical Group Agreement            | Charter                                       |
      | UHN West                                      | Simplified Medical Group Agreement            | Compass                                       |
      | UHN West                                      | Simplified Medical Group Agreement            | Core                                          |
      | UHN West                                      | Simplified Medical Group Agreement            | Navigate                                      |
      | UHN West                                      | Simplified Physician Agreement                | Charter                                       |
      | UHN West                                      | Simplified Physician Agreement                | Compass                                       |
      | UHN West                                      | Simplified Physician Agreement                | Core                                          |
      | UHN West                                      | Simplified Physician Agreement                | Navigate                                      |
      | UHN West                                      | Simplified Practitioner Group Agreement       | Charter                                       |
      | UHN West                                      | Simplified Practitioner Group Agreement       | Compass                                       |
      | UHN West                                      | Simplified Practitioner Group Agreement       | Core                                          |
      | UHN West                                      | Simplified Practitioner Group Agreement       | Navigate                                      |
      | UHN West                                      | Simplified Physician Agreement                | Charter                                       |
      | UHN West                                      | Simplified Physician Agreement                | Compass                                       |
      | UHN West                                      | Simplified Physician Agreement                | Core                                          |
      | UHN West                                      | Simplified Physician Agreement                | Navigate                                      |
      | UHN Central                                   | Medical Group Agreement                       | Charter                                       |
      | UHN Central                                   | Medical Group Agreement                       | Compass                                       |
      | UHN Central                                   | Medical Group Agreement                       | Core                                          |
      | UHN Central                                   | Medical Group Agreement                       | Navigate                                      |
      | UHN Central                                   | Medical Group National Agreement              | Charter                                       |
      | UHN Central                                   | Medical Group National Agreement              | Compass                                       |
      | UHN Central                                   | Medical Group National Agreement              | Core                                          |
      | UHN Central                                   | Medical Group National Agreement              | Navigate                                      |
      | UHN Central                                   | Practitioner Agreement                        | Charter                                       |
      | UHN Central                                   | Practitioner Agreement                        | Compass                                       |
      | UHN Central                                   | Practitioner Agreement                        | Core                                          |
      | UHN Central                                   | Practitioner Agreement                        | Navigate                                      |
      | UHN Central                                   | Provider Organization Participation Agreement | Charter                                       |
      | UHN Central                                   | Provider Organization Participation Agreement | Compass                                       |
      | UHN Central                                   | Provider Organization Participation Agreement | Core                                          |
      | UHN Central                                   | Provider Organization Participation Agreement | Navigate                                      |
      | UHN Central                                   | Simplified Medical Group Agreement            | Charter                                       |
      | UHN Central                                   | Simplified Medical Group Agreement            | Compass                                       |
      | UHN Central                                   | Simplified Medical Group Agreement            | Core                                          |
      | UHN Central                                   | Simplified Medical Group Agreement            | Navigate                                      |
      | UHN Central                                   | Simplified Physician Agreement                | Charter                                       |
      | UHN Central                                   | Simplified Physician Agreement                | Compass                                       |
      | UHN Central                                   | Simplified Physician Agreement                | Core                                          |
      | UHN Central                                   | Simplified Physician Agreement                | Navigate                                      |
      | UHN Central                                   | Simplified Practitioner Group Agreement       | Charter                                       |
      | UHN Central                                   | Simplified Practitioner Group Agreement       | Compass                                       |
      | UHN Central                                   | Simplified Practitioner Group Agreement       | Core                                          |
      | UHN Central                                   | Simplified Practitioner Group Agreement       | Navigate                                      |
      | UHN Central                                   | Simplified Physician Agreement                | Charter                                       |
      | UHN Central                                   | Simplified Physician Agreement                | Compass                                       |
      | UHN Central                                   | Simplified Physician Agreement                | Core                                          |
      | UHN Central                                   | Simplified Physician Agreement                | Navigate                                      |
      | UHN National                                  | Medical Group Agreement                       | Charter                                       |
      | UHN National                                  | Medical Group Agreement                       | Compass                                       |
      | UHN National                                  | Medical Group Agreement                       | Core                                          |
      | UHN National                                  | Medical Group Agreement                       | Navigate                                      |
      | UHN National                                  | Medical Group National Agreement              | Charter                                       |
      | UHN National                                  | Medical Group National Agreement              | Compass                                       |
      | UHN National                                  | Medical Group National Agreement              | Core                                          |
      | UHN National                                  | Medical Group National Agreement              | Navigate                                      |
      | UHN National                                  | Practitioner Agreement                        | Charter                                       |
      | UHN National                                  | Practitioner Agreement                        | Compass                                       |
      | UHN National                                  | Practitioner Agreement                        | Core                                          |
      | UHN National                                  | Practitioner Agreement                        | Navigate                                      |
      | UHN National                                  | Provider Organization Participation Agreement | Charter                                       |
      | UHN National                                  | Provider Organization Participation Agreement | Compass                                       |
      | UHN National                                  | Provider Organization Participation Agreement | Core                                          |
      | UHN National                                  | Provider Organization Participation Agreement | Navigate                                      |
      | UHN National                                  | Simplified Medical Group Agreement            | Charter                                       |
      | UHN National                                  | Simplified Medical Group Agreement            | Compass                                       |
      | UHN National                                  | Simplified Medical Group Agreement            | Core                                          |
      | UHN National                                  | Simplified Medical Group Agreement            | Navigate                                      |
      | UHN National                                  | Simplified Physician Agreement                | Charter                                       |
      | UHN National                                  | Simplified Physician Agreement                | Compass                                       |
      | UHN National                                  | Simplified Physician Agreement                | Core                                          |
      | UHN National                                  | Simplified Physician Agreement                | Navigate                                      |
      | UHN National                                  | Simplified Practitioner Group Agreement       | Charter                                       |
      | UHN National                                  | Simplified Practitioner Group Agreement       | Compass                                       |
      | UHN National                                  | Simplified Practitioner Group Agreement       | Core                                          |
      | UHN National                                  | Simplified Practitioner Group Agreement       | Navigate                                      |
      | UHN National                                  | Simplified Physician Agreement                | Charter                                       |
      | UHN National                                  | Simplified Physician Agreement                | Compass                                       |
      | UHN National                                  | Simplified Physician Agreement                | Core                                          |
      | UHN National                                  | Simplified Physician Agreement                | Navigate                                      |

  @TC600519
  @Manual
  @Functional
  @Contract_Rules
  Scenario Outline: TC600519 - [RL1]
    Given "uhgSite" includes "<uhgSite>"
    # (Given the provider is active for one or more Employer & Individual products)
    # (checked against the provider on the roster)
    And "contractSubtypeHealthcare" is "<contractSubtype>"
    When "productServicesExcluded" does not include one or more below the line:
      | Charter  |
      | Compass  |
      | Core     |
      | Navigate |
    Then the ENW IND will be populated with "Y" within the OCM Contract Model
    Examples:
    # Note: May not need to create a separate table. May be able to combine several user stories to one table. Product services excluded is equivalent to below the line. GIVEN UHG_Site includes UHN Northeast, UHN Southeast, UHN West, UHN Central or UHN National={Given the provider is active for one or more Employer & Individual products]
      | uhgSite                                       | contractSubtype                               |
      | UHN Northeast                                 | Medical Group Agreement                       |
      | UHN Northeast                                 | Medical Group National Agreement              |
      | UHN Northeast                                 | Practitioner Agreement                        |
      | UHN Northeast                                 | Provider Organization Participation Agreement |
      | UHN Northeast                                 | Simplified Medical Group Agreement            |
      | UHN Northeast                                 | Simplified Physician Agreement                |
      | UHN Northeast                                 | Simplified Practitioner Group Agreement       |
      | UHN Northeast                                 | Simplified Physician Agreement                |
      | UHN Southeast                                 | Medical Group Agreement                       |
      | UHN Southeast                                 | Medical Group National Agreement              |
      | UHN Southeast                                 | Practitioner Agreement                        |
      | UHN Southeast                                 | Provider Organization Participation Agreement |
      | UHN Southeast                                 | Simplified Medical Group Agreement            |
      | UHN Southeast                                 | Simplified Physician Agreement                |
      | UHN Southeast                                 | Simplified Practitioner Group Agreement       |
      | UHN Southeast                                 | Simplified Physician Agreement                |
      | UHN West                                      | Medical Group Agreement                       |
      | UHN West                                      | Medical Group National Agreement              |
      | UHN West                                      | Practitioner Agreement                        |
      | UHN West                                      | Provider Organization Participation Agreement |
      | UHN West                                      | Simplified Medical Group Agreement            |
      | UHN West                                      | Simplified Physician Agreement                |
      | UHN West                                      | Simplified Practitioner Group Agreement       |
      | UHN West                                      | Simplified Physician Agreement                |
      | UHN Central                                   | Medical Group Agreement                       |
      | UHN Central                                   | Medical Group National Agreement              |
      | UHN Central                                   | Practitioner Agreement                        |
      | UHN Central                                   | Provider Organization Participation Agreement |
      | UHN Central                                   | Simplified Medical Group Agreement            |
      | UHN Central                                   | Simplified Physician Agreement                |
      | UHN Central                                   | Simplified Practitioner Group Agreement       |
      | UHN Central                                   | Simplified Physician Agreement                |
      | UHN National                                  | Medical Group Agreement                       |
      | UHN National                                  | Medical Group National Agreement              |
      | UHN National                                  | Practitioner Agreement                        |
      | UHN National                                  | Provider Organization Participation Agreement |
      | UHN National                                  | Simplified Medical Group Agreement            |
      | UHN National                                  | Simplified Physician Agreement                |
      | UHN National                                  | Simplified Practitioner Group Agreement       |
      | UHN National                                  | Simplified Physician Agreement                |

