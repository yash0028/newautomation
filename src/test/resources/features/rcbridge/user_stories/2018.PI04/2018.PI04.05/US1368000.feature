# Last updated on 
@Contract_Rules
@US1368000
@2018.PI04
@2018.PI04.05
@releasePast
@iterationPast
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
      | uhgSite                 | contractSubtype         | productServicesExcluded |
      | Northeast UHN           | Medical Group Agreement | Charter                 |
      | Northeast UHN           | Medical Group Agreement | Compass                 |
      | Northeast UHN           | Medical Group Agreement | Core                    |
      | Northeast UHN           | Medical Group Agreement | Navigate                |
      | Northeast UHN           | IPA                     | Charter                 |
      | Northeast UHN           | IPA                     | Compass                 |
      | Northeast UHN           | IPA                     | Core                    |
      | Northeast UHN           | IPA                     | Navigate                |
      | Northeast UHN           | PAT                     | Charter                 |
      | Northeast UHN           | PAT                     | Compass                 |
      | Northeast UHN           | PAT                     | Core                    |
      | Northeast UHN           | PAT                     | Navigate                |
      | Northeast UHN           | PHO                     | Charter                 |
      | Northeast UHN           | PHO                     | Compass                 |
      | Northeast UHN           | PHO                     | Core                    |
      | Northeast UHN           | PHO                     | Navigate                |
      | Northeast UHN           | SMG                     | Charter                 |
      | Northeast UHN           | SMG                     | Compass                 |
      | Northeast UHN           | SMG                     | Core                    |
      | Northeast UHN           | SMG                     | Navigate                |
      | Northeast UHN           | SPA                     | Charter                 |
      | Northeast UHN           | SPA                     | Compass                 |
      | Northeast UHN           | SPA                     | Core                    |
      | Northeast UHN           | SPA                     | Navigate                |
      | Northeast UHN           | SPG                     | Charter                 |
      | Northeast UHN           | SPG                     | Compass                 |
      | Northeast UHN           | SPG                     | Core                    |
      | Northeast UHN           | SPG                     | Navigate                |
      | Southeast UHN           | Medical Group Agreement | Charter                 |
      | Southeast UHN           | Medical Group Agreement | Compass                 |
      | Southeast UHN           | Medical Group Agreement | Core                    |
      | Southeast UHN           | Medical Group Agreement | Navigate                |
      | Southeast UHN           | IPA                     | Charter                 |
      | Southeast UHN           | IPA                     | Compass                 |
      | Southeast UHN           | IPA                     | Core                    |
      | Southeast UHN           | IPA                     | Navigate                |
      | Southeast UHN           | PAT                     | Charter                 |
      | Southeast UHN           | PAT                     | Compass                 |
      | Southeast UHN           | PAT                     | Core                    |
      | Southeast UHN           | PAT                     | Navigate                |
      | Southeast UHN           | PHO                     | Charter                 |
      | Southeast UHN           | PHO                     | Compass                 |
      | Southeast UHN           | PHO                     | Core                    |
      | Southeast UHN           | PHO                     | Navigate                |
      | Southeast UHN           | SMG                     | Charter                 |
      | Southeast UHN           | SMG                     | Compass                 |
      | Southeast UHN           | SMG                     | Core                    |
      | Southeast UHN           | SMG                     | Navigate                |
      | Southeast UHN           | SPA                     | Charter                 |
      | Southeast UHN           | SPA                     | Compass                 |
      | Southeast UHN           | SPA                     | Core                    |
      | Southeast UHN           | SPA                     | Navigate                |
      | Southeast UHN           | SPG                     | Charter                 |
      | Southeast UHN           | SPG                     | Compass                 |
      | Southeast UHN           | SPG                     | Core                    |
      | Southeast UHN           | SPG                     | Navigate                |
      | West UHN                | Medical Group Agreement | Charter                 |
      | West UHN                | Medical Group Agreement | Compass                 |
      | West UHN                | Medical Group Agreement | Core                    |
      | West UHN                | Medical Group Agreement | Navigate                |
      | West UHN                | IPA                     | Charter                 |
      | West UHN                | IPA                     | Compass                 |
      | West UHN                | IPA                     | Core                    |
      | West UHN                | IPA                     | Navigate                |
      | West UHN                | PAT                     | Charter                 |
      | West UHN                | PAT                     | Compass                 |
      | West UHN                | PAT                     | Core                    |
      | West UHN                | PAT                     | Navigate                |
      | West UHN                | PHO                     | Charter                 |
      | West UHN                | PHO                     | Compass                 |
      | West UHN                | PHO                     | Core                    |
      | West UHN                | PHO                     | Navigate                |
      | West UHN                | SMG                     | Charter                 |
      | West UHN                | SMG                     | Compass                 |
      | West UHN                | SMG                     | Core                    |
      | West UHN                | SMG                     | Navigate                |
      | West UHN                | SPA                     | Charter                 |
      | West UHN                | SPA                     | Compass                 |
      | West UHN                | SPA                     | Core                    |
      | West UHN                | SPA                     | Navigate                |
      | West UHN                | SPG                     | Charter                 |
      | West UHN                | SPG                     | Compass                 |
      | West UHN                | SPG                     | Core                    |
      | West UHN                | SPG                     | Navigate                |
      | Central UHN             | Medical Group Agreement | Charter                 |
      | Central UHN             | Medical Group Agreement | Compass                 |
      | Central UHN             | Medical Group Agreement | Core                    |
      | Central UHN             | Medical Group Agreement | Navigate                |
      | Central UHN             | IPA                     | Charter                 |
      | Central UHN             | IPA                     | Compass                 |
      | Central UHN             | IPA                     | Core                    |
      | Central UHN             | IPA                     | Navigate                |
      | Central UHN             | PAT                     | Charter                 |
      | Central UHN             | PAT                     | Compass                 |
      | Central UHN             | PAT                     | Core                    |
      | Central UHN             | PAT                     | Navigate                |
      | Central UHN             | PHO                     | Charter                 |
      | Central UHN             | PHO                     | Compass                 |
      | Central UHN             | PHO                     | Core                    |
      | Central UHN             | PHO                     | Navigate                |
      | Central UHN             | SMG                     | Charter                 |
      | Central UHN             | SMG                     | Compass                 |
      | Central UHN             | SMG                     | Core                    |
      | Central UHN             | SMG                     | Navigate                |
      | Central UHN             | SPA                     | Charter                 |
      | Central UHN             | SPA                     | Compass                 |
      | Central UHN             | SPA                     | Core                    |
      | Central UHN             | SPA                     | Navigate                |
      | Central UHN             | SPG                     | Charter                 |
      | Central UHN             | SPG                     | Compass                 |
      | Central UHN             | SPG                     | Core                    |
      | Central UHN             | SPG                     | Navigate                |
      | National UHN            | Medical Group Agreement | Charter                 |
      | National UHN            | Medical Group Agreement | Compass                 |
      | National UHN            | Medical Group Agreement | Core                    |
      | National UHN            | Medical Group Agreement | Navigate                |
      | National UHN            | IPA                     | Charter                 |
      | National UHN            | IPA                     | Compass                 |
      | National UHN            | IPA                     | Core                    |
      | National UHN            | IPA                     | Navigate                |
      | National UHN            | PAT                     | Charter                 |
      | National UHN            | PAT                     | Compass                 |
      | National UHN            | PAT                     | Core                    |
      | National UHN            | PAT                     | Navigate                |
      | National UHN            | PHO                     | Charter                 |
      | National UHN            | PHO                     | Compass                 |
      | National UHN            | PHO                     | Core                    |
      | National UHN            | PHO                     | Navigate                |
      | National UHN            | SMG                     | Charter                 |
      | National UHN            | SMG                     | Compass                 |
      | National UHN            | SMG                     | Core                    |
      | National UHN            | SMG                     | Navigate                |
      | National UHN            | SPA                     | Charter                 |
      | National UHN            | SPA                     | Compass                 |
      | National UHN            | SPA                     | Core                    |
      | National UHN            | SPA                     | Navigate                |
      | National UHN            | SPG                     | Charter                 |
      | National UHN            | SPG                     | Compass                 |
      | National UHN            | SPG                     | Core                    |
      | National UHN            | SPG                     | Navigate                |

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
      | uhgSite         | contractSubtype |
      | Northeast UHN   | MGA             |
      | Northeast UHN   | IPA             |
      | Northeast UHN   | PAT             |
      | Northeast UHN   | PHO             |
      | Northeast UHN   | SMG             |
      | Northeast UHN   | SPA             |
      | Northeast UHN   | SPG             |
      | Southeast UHN   | MGA             |
      | Southeast UHN   | IPA             |
      | Southeast UHN   | PAT             |
      | Southeast UHN   | PHO             |
      | Southeast UHN   | SMG             |
      | Southeast UHN   | SPA             |
      | Southeast UHN   | SPG             |
      | West UHN        | MGA             |
      | West UHN        | IPA             |
      | West UHN        | PAT             |
      | West UHN        | PHO             |
      | West UHN        | SMG             |
      | West UHN        | SPA             |
      | West UHN        | SPG             |
      | Central UHN     | MGA             |
      | Central UHN     | IPA             |
      | Central UHN     | PAT             |
      | Central UHN     | PHO             |
      | Central UHN     | SMG             |
      | Central UHN     | SPA             |
      | Central UHN     | SPG             |
      | National UHN    | MGA             |
      | National UHN    | IPA             |
      | National UHN    | PAT             |
      | National UHN    | PHO             |
      | National UHN    | SMG             |
      | National UHN    | SPA             |
      | National UHN    | SPG             |

