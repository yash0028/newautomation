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
    When "productServicesExcluded" include one or more below the line:
      | Charter  |
      | Compass  |
      | Core     |
      | Navigate |
    Then the ENW IND will be populated with "N" within the OCM Contract Model
    Examples:
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

