# Last updated on 
@Contract_Rules
@US1368000
@2018.PI04
@2018.PI04.05
@releaseUnknown
@iterationUnknown
Feature: US1368000 - ENW Indicator Determination

  @TC600518
  @Automated
  @Functional
  @Contract_Rules
  Scenario Outline: TC600518 - [RL0]
    Given "uhgSite" includes "<uhgSite>"
    # (checked against the provider on the roster)
    And "contractSubtypeHealthcare" is "<contractSubtype>"
    When "productServicesExcluded" include one or more below the line "<productServicesExcluded>"
    Then the ENW IND will be populated with "N" within the OCM Contract Model
    Examples:
      | uhgSite       | contractSubtype                         | productServicesExcluded |
      | Northeast UHN | Medical Group Agreement                 | Charter                 |
      | Northeast UHN | Medical Group Agreement                 | Compass                 |
      | Northeast UHN | Medical Group Agreement                 | Core                    |
      | Northeast UHN | Medical Group Agreement                 | Navigate                |
      | Northeast UHN | Individual Physician Association        | Charter                 |
      | Northeast UHN | Individual Physician Association        | Compass                 |
      | Northeast UHN | Individual Physician Association        | Core                    |
      | Northeast UHN | Individual Physician Association        | Navigate                |
      | Northeast UHN | Practitioner Agreement                  | Charter                 |
      | Northeast UHN | Practitioner Agreement                  | Compass                 |
      | Northeast UHN | Practitioner Agreement                  | Core                    |
      | Northeast UHN | Practitioner Agreement                  | Navigate                |
      | Northeast UHN | Private Health Organization             | Charter                 |
      | Northeast UHN | Private Health Organization             | Compass                 |
      | Northeast UHN | Private Health Organization             | Core                    |
      | Northeast UHN | Private Health Organization             | Navigate                |
      | Northeast UHN | Simplified Medical Group Agreement      | Charter                 |
      | Northeast UHN | Simplified Medical Group Agreement      | Compass                 |
      | Northeast UHN | Simplified Medical Group Agreement      | Core                    |
      | Northeast UHN | Simplified Medical Group Agreement      | Navigate                |
      | Northeast UHN | Simplified Physician Agreement          | Charter                 |
      | Northeast UHN | Simplified Physician Agreement          | Compass                 |
      | Northeast UHN | Simplified Physician Agreement          | Core                    |
      | Northeast UHN | Simplified Physician Agreement          | Navigate                |
      | Northeast UHN | Simplified Practitioner Group Agreement | Charter                 |
      | Northeast UHN | Simplified Practitioner Group Agreement | Compass                 |
      | Northeast UHN | Simplified Practitioner Group Agreement | Core                    |
      | Northeast UHN | Simplified Practitioner Group Agreement | Navigate                |
      | Southeast UHN | Medical Group Agreement                 | Charter                 |
      | Southeast UHN | Medical Group Agreement                 | Compass                 |
      | Southeast UHN | Medical Group Agreement                 | Core                    |
      | Southeast UHN | Medical Group Agreement                 | Navigate                |
      | Southeast UHN | Individual Physician Association        | Charter                 |
      | Southeast UHN | Individual Physician Association        | Compass                 |
      | Southeast UHN | Individual Physician Association        | Core                    |
      | Southeast UHN | Individual Physician Association        | Navigate                |
      | Southeast UHN | Practitioner Agreement                  | Charter                 |
      | Southeast UHN | Practitioner Agreement                  | Compass                 |
      | Southeast UHN | Practitioner Agreement                  | Core                    |
      | Southeast UHN | Practitioner Agreement                  | Navigate                |
      | Southeast UHN | Private Health Organization             | Charter                 |
      | Southeast UHN | Private Health Organization             | Compass                 |
      | Southeast UHN | Private Health Organization             | Core                    |
      | Southeast UHN | Private Health Organization             | Navigate                |
      | Southeast UHN | Simplified Medical Group Agreement      | Charter                 |
      | Southeast UHN | Simplified Medical Group Agreement      | Compass                 |
      | Southeast UHN | Simplified Medical Group Agreement      | Core                    |
      | Southeast UHN | Simplified Medical Group Agreement      | Navigate                |
      | Southeast UHN | Simplified Physician Agreement          | Charter                 |
      | Southeast UHN | Simplified Physician Agreement          | Compass                 |
      | Southeast UHN | Simplified Physician Agreement          | Core                    |
      | Southeast UHN | Simplified Physician Agreement          | Navigate                |
      | Southeast UHN | Simplified Practitioner Group Agreement | Charter                 |
      | Southeast UHN | Simplified Practitioner Group Agreement | Compass                 |
      | Southeast UHN | Simplified Practitioner Group Agreement | Core                    |
      | Southeast UHN | Simplified Practitioner Group Agreement | Navigate                |
      | West UHN      | Medical Group Agreement                 | Charter                 |
      | West UHN      | Medical Group Agreement                 | Compass                 |
      | West UHN      | Medical Group Agreement                 | Core                    |
      | West UHN      | Medical Group Agreement                 | Navigate                |
      | West UHN      | Individual Physician Association        | Charter                 |
      | West UHN      | Individual Physician Association        | Compass                 |
      | West UHN      | Individual Physician Association        | Core                    |
      | West UHN      | Individual Physician Association        | Navigate                |
      | West UHN      | Practitioner Agreement                  | Charter                 |
      | West UHN      | Practitioner Agreement                  | Compass                 |
      | West UHN      | Practitioner Agreement                  | Core                    |
      | West UHN      | Practitioner Agreement                  | Navigate                |
      | West UHN      | Private Health Organization             | Charter                 |
      | West UHN      | Private Health Organization             | Compass                 |
      | West UHN      | Private Health Organization             | Core                    |
      | West UHN      | Private Health Organization             | Navigate                |
      | West UHN      | Simplified Medical Group Agreement      | Charter                 |
      | West UHN      | Simplified Medical Group Agreement      | Compass                 |
      | West UHN      | Simplified Medical Group Agreement      | Core                    |
      | West UHN      | Simplified Medical Group Agreement      | Navigate                |
      | West UHN      | Simplified Physician Agreement          | Charter                 |
      | West UHN      | Simplified Physician Agreement          | Compass                 |
      | West UHN      | Simplified Physician Agreement          | Core                    |
      | West UHN      | Simplified Physician Agreement          | Navigate                |
      | West UHN      | Simplified Practitioner Group Agreement | Charter                 |
      | West UHN      | Simplified Practitioner Group Agreement | Compass                 |
      | West UHN      | Simplified Practitioner Group Agreement | Core                    |
      | West UHN      | Simplified Practitioner Group Agreement | Navigate                |
      | Central UHN   | Medical Group Agreement                 | Charter                 |
      | Central UHN   | Medical Group Agreement                 | Compass                 |
      | Central UHN   | Medical Group Agreement                 | Core                    |
      | Central UHN   | Medical Group Agreement                 | Navigate                |
      | Central UHN   | Individual Physician Association        | Charter                 |
      | Central UHN   | Individual Physician Association        | Compass                 |
      | Central UHN   | Individual Physician Association        | Core                    |
      | Central UHN   | Individual Physician Association        | Navigate                |
      | Central UHN   | Practitioner Agreement                  | Charter                 |
      | Central UHN   | Practitioner Agreement                  | Compass                 |
      | Central UHN   | Practitioner Agreement                  | Core                    |
      | Central UHN   | Practitioner Agreement                  | Navigate                |
      | Central UHN   | Private Health Organization             | Charter                 |
      | Central UHN   | Private Health Organization             | Compass                 |
      | Central UHN   | Private Health Organization             | Core                    |
      | Central UHN   | Private Health Organization             | Navigate                |
      | Central UHN   | Simplified Medical Group Agreement      | Charter                 |
      | Central UHN   | Simplified Medical Group Agreement      | Compass                 |
      | Central UHN   | Simplified Medical Group Agreement      | Core                    |
      | Central UHN   | Simplified Medical Group Agreement      | Navigate                |
      | Central UHN   | Simplified Physician Agreement          | Charter                 |
      | Central UHN   | Simplified Physician Agreement          | Compass                 |
      | Central UHN   | Simplified Physician Agreement          | Core                    |
      | Central UHN   | Simplified Physician Agreement          | Navigate                |
      | Central UHN   | Simplified Practitioner Group Agreement | Charter                 |
      | Central UHN   | Simplified Practitioner Group Agreement | Compass                 |
      | Central UHN   | Simplified Practitioner Group Agreement | Core                    |
      | Central UHN   | Simplified Practitioner Group Agreement | Navigate                |
      | National UHN  | Medical Group Agreement                 | Charter                 |
      | National UHN  | Medical Group Agreement                 | Compass                 |
      | National UHN  | Medical Group Agreement                 | Core                    |
      | National UHN  | Medical Group Agreement                 | Navigate                |
      | National UHN  | Individual Physician Association        | Charter                 |
      | National UHN  | Individual Physician Association        | Compass                 |
      | National UHN  | Individual Physician Association        | Core                    |
      | National UHN  | Individual Physician Association        | Navigate                |
      | National UHN  | Practitioner Agreement                  | Charter                 |
      | National UHN  | Practitioner Agreement                  | Compass                 |
      | National UHN  | Practitioner Agreement                  | Core                    |
      | National UHN  | Practitioner Agreement                  | Navigate                |
      | National UHN  | Private Health Organization             | Charter                 |
      | National UHN  | Private Health Organization             | Compass                 |
      | National UHN  | Private Health Organization             | Core                    |
      | National UHN  | Private Health Organization             | Navigate                |
      | National UHN  | Simplified Medical Group Agreement      | Charter                 |
      | National UHN  | Simplified Medical Group Agreement      | Compass                 |
      | National UHN  | Simplified Medical Group Agreement      | Core                    |
      | National UHN  | Simplified Medical Group Agreement      | Navigate                |
      | National UHN  | Simplified Physician Agreement          | Charter                 |
      | National UHN  | Simplified Physician Agreement          | Compass                 |
      | National UHN  | Simplified Physician Agreement          | Core                    |
      | National UHN  | Simplified Physician Agreement          | Navigate                |
      | National UHN  | Simplified Practitioner Group Agreement | Charter                 |
      | National UHN  | Simplified Practitioner Group Agreement | Compass                 |
      | National UHN  | Simplified Practitioner Group Agreement | Core                    |
      | National UHN  | Simplified Practitioner Group Agreement | Navigate                |

  @TC600519
  @Automated
  @Functional
  @Contract_Rules
  Scenario Outline: TC600519 - [RL1]
    Given "uhgSite" includes "<uhgSite>"
    # (Given the provider is active for one or more Employer & Individual products)
    # (checked against the provider on the roster)
    And "contractSubtypeHealthcare" is "<contractSubtype>"
    When "productServicesExcluded" does not include one or more below the line "Charter, Compass, Core, Navigate"
    Then the ENW IND will be populated with "Y" within the OCM Contract Model
    Examples:
    # Note: May not need to create a separate table. May be able to combine several user stories to one table. Product services excluded is equivalent to below the line. GIVEN UHG_Site includes UHN Northeast, UHN Southeast, UHN West, UHN Central or UHN National={Given the provider is active for one or more Employer & Individual products]
      | uhgSite       | contractSubtype                         |
      | Northeast UHN | Medical Group Agreement                 |
      | Northeast UHN | Individual Physician Association        |
      | Northeast UHN | Practitioner Agreement                  |
      | Northeast UHN | Private Health Organization             |
      | Northeast UHN | Simplified Medical Group Agreement      |
      | Northeast UHN | Simplified Physician Agreement          |
      | Northeast UHN | Simplified Practitioner Group Agreement |
      | Southeast UHN | Medical Group Agreement                 |
      | Southeast UHN | Individual Physician Association        |
      | Southeast UHN | Practitioner Agreement                  |
      | Southeast UHN | Private Health Organization             |
      | Southeast UHN | Simplified Medical Group Agreement      |
      | Southeast UHN | Simplified Physician Agreement          |
      | Southeast UHN | Simplified Practitioner Group Agreement |
      | West UHN      | Medical Group Agreement                 |
      | West UHN      | Individual Physician Association        |
      | West UHN      | Practitioner Agreement                  |
      | West UHN      | Private Health Organization             |
      | West UHN      | Simplified Medical Group Agreement      |
      | West UHN      | Simplified Physician Agreement          |
      | West UHN      | Simplified Practitioner Group Agreement |
      | Central UHN   | Medical Group Agreement                 |
      | Central UHN   | Individual Physician Association        |
      | Central UHN   | Practitioner Agreement                  |
      | Central UHN   | Private Health Organization             |
      | Central UHN   | Simplified Medical Group Agreement      |
      | Central UHN   | Simplified Physician Agreement          |
      | Central UHN   | Simplified Practitioner Group Agreement |
      | National UHN  | Medical Group Agreement                 |
      | National UHN  | Individual Physician Association        |
      | National UHN  | Practitioner Agreement                  |
      | National UHN  | Private Health Organization             |
      | National UHN  | Simplified Medical Group Agreement      |
      | National UHN  | Simplified Physician Agreement          |
      | National UHN  | Simplified Practitioner Group Agreement |

