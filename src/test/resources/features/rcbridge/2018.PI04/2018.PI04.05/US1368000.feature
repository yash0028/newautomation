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
      | Northeast               | MGA                     | Charter                 |
      | Northeast               | MGA                     | Compass                 |
      | Northeast               | MGA                     | Core                    |
      | Northeast               | MGA                     | Navigate                |
      | Northeast               | IPA                     | Charter                 |
      | Northeast               | IPA                     | Compass                 |
      | Northeast               | IPA                     | Core                    |
      | Northeast               | IPA                     | Navigate                |
      | Northeast               | PAT                     | Charter                 |
      | Northeast               | PAT                     | Compass                 |
      | Northeast               | PAT                     | Core                    |
      | Northeast               | PAT                     | Navigate                |
      | Northeast               | PHO                     | Charter                 |
      | Northeast               | PHO                     | Compass                 |
      | Northeast               | PHO                     | Core                    |
      | Northeast               | PHO                     | Navigate                |
      | Northeast               | SMG                     | Charter                 |
      | Northeast               | SMG                     | Compass                 |
      | Northeast               | SMG                     | Core                    |
      | Northeast               | SMG                     | Navigate                |
      | Northeast               | SPA                     | Charter                 |
      | Northeast               | SPA                     | Compass                 |
      | Northeast               | SPA                     | Core                    |
      | Northeast               | SPA                     | Navigate                |
      | Northeast               | SPG                     | Charter                 |
      | Northeast               | SPG                     | Compass                 |
      | Northeast               | SPG                     | Core                    |
      | Northeast               | SPG                     | Navigate                |
      | Southeast               | MGA                     | Charter                 |
      | Southeast               | MGA                     | Compass                 |
      | Southeast               | MGA                     | Core                    |
      | Southeast               | MGA                     | Navigate                |
      | Southeast               | IPA                     | Charter                 |
      | Southeast               | IPA                     | Compass                 |
      | Southeast               | IPA                     | Core                    |
      | Southeast               | IPA                     | Navigate                |
      | Southeast               | PAT                     | Charter                 |
      | Southeast               | PAT                     | Compass                 |
      | Southeast               | PAT                     | Core                    |
      | Southeast               | PAT                     | Navigate                |
      | Southeast               | PHO                     | Charter                 |
      | Southeast               | PHO                     | Compass                 |
      | Southeast               | PHO                     | Core                    |
      | Southeast               | PHO                     | Navigate                |
      | Southeast               | SMG                     | Charter                 |
      | Southeast               | SMG                     | Compass                 |
      | Southeast               | SMG                     | Core                    |
      | Southeast               | SMG                     | Navigate                |
      | Southeast               | SPA                     | Charter                 |
      | Southeast               | SPA                     | Compass                 |
      | Southeast               | SPA                     | Core                    |
      | Southeast               | SPA                     | Navigate                |
      | Southeast               | SPG                     | Charter                 |
      | Southeast               | SPG                     | Compass                 |
      | Southeast               | SPG                     | Core                    |
      | Southeast               | SPG                     | Navigate                |
      | West                    | MGA                     | Charter                 |
      | West                    | MGA                     | Compass                 |
      | West                    | MGA                     | Core                    |
      | West                    | MGA                     | Navigate                |
      | West                    | IPA                     | Charter                 |
      | West                    | IPA                     | Compass                 |
      | West                    | IPA                     | Core                    |
      | West                    | IPA                     | Navigate                |
      | West                    | PAT                     | Charter                 |
      | West                    | PAT                     | Compass                 |
      | West                    | PAT                     | Core                    |
      | West                    | PAT                     | Navigate                |
      | West                    | PHO                     | Charter                 |
      | West                    | PHO                     | Compass                 |
      | West                    | PHO                     | Core                    |
      | West                    | PHO                     | Navigate                |
      | West                    | SMG                     | Charter                 |
      | West                    | SMG                     | Compass                 |
      | West                    | SMG                     | Core                    |
      | West                    | SMG                     | Navigate                |
      | West                    | SPA                     | Charter                 |
      | West                    | SPA                     | Compass                 |
      | West                    | SPA                     | Core                    |
      | West                    | SPA                     | Navigate                |
      | West                    | SPG                     | Charter                 |
      | West                    | SPG                     | Compass                 |
      | West                    | SPG                     | Core                    |
      | West                    | SPG                     | Navigate                |
      | Central                 | MGA                     | Charter                 |
      | Central                 | MGA                     | Compass                 |
      | Central                 | MGA                     | Core                    |
      | Central                 | MGA                     | Navigate                |
      | Central                 | IPA                     | Charter                 |
      | Central                 | IPA                     | Compass                 |
      | Central                 | IPA                     | Core                    |
      | Central                 | IPA                     | Navigate                |
      | Central                 | PAT                     | Charter                 |
      | Central                 | PAT                     | Compass                 |
      | Central                 | PAT                     | Core                    |
      | Central                 | PAT                     | Navigate                |
      | Central                 | PHO                     | Charter                 |
      | Central                 | PHO                     | Compass                 |
      | Central                 | PHO                     | Core                    |
      | Central                 | PHO                     | Navigate                |
      | Central                 | SMG                     | Charter                 |
      | Central                 | SMG                     | Compass                 |
      | Central                 | SMG                     | Core                    |
      | Central                 | SMG                     | Navigate                |
      | Central                 | SPA                     | Charter                 |
      | Central                 | SPA                     | Compass                 |
      | Central                 | SPA                     | Core                    |
      | Central                 | SPA                     | Navigate                |
      | Central                 | SPG                     | Charter                 |
      | Central                 | SPG                     | Compass                 |
      | Central                 | SPG                     | Core                    |
      | Central                 | SPG                     | Navigate                |
      | National                | MGA                     | Charter                 |
      | National                | MGA                     | Compass                 |
      | National                | MGA                     | Core                    |
      | National                | MGA                     | Navigate                |
      | National                | IPA                     | Charter                 |
      | National                | IPA                     | Compass                 |
      | National                | IPA                     | Core                    |
      | National                | IPA                     | Navigate                |
      | National                | PAT                     | Charter                 |
      | National                | PAT                     | Compass                 |
      | National                | PAT                     | Core                    |
      | National                | PAT                     | Navigate                |
      | National                | PHO                     | Charter                 |
      | National                | PHO                     | Compass                 |
      | National                | PHO                     | Core                    |
      | National                | PHO                     | Navigate                |
      | National                | SMG                     | Charter                 |
      | National                | SMG                     | Compass                 |
      | National                | SMG                     | Core                    |
      | National                | SMG                     | Navigate                |
      | National                | SPA                     | Charter                 |
      | National                | SPA                     | Compass                 |
      | National                | SPA                     | Core                    |
      | National                | SPA                     | Navigate                |
      | National                | SPG                     | Charter                 |
      | National                | SPG                     | Compass                 |
      | National                | SPG                     | Core                    |
      | National                | SPG                     | Navigate                |

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
      | Northeast       | MGA             |
      | Northeast       | IPA             |
      | Northeast       | PAT             |
      | Northeast       | PHO             |
      | Northeast       | SMG             |
      | Northeast       | SPA             |
      | Northeast       | SPG             |
      | Southeast       | MGA             |
      | Southeast       | IPA             |
      | Southeast       | PAT             |
      | Southeast       | PHO             |
      | Southeast       | SMG             |
      | Southeast       | SPA             |
      | Southeast       | SPG             |
      | West            | MGA             |
      | West            | IPA             |
      | West            | PAT             |
      | West            | PHO             |
      | West            | SMG             |
      | West            | SPA             |
      | West            | SPG             |
      | Central         | MGA             |
      | Central         | IPA             |
      | Central         | PAT             |
      | Central         | PHO             |
      | Central         | SMG             |
      | Central         | SPA             |
      | Central         | SPG             |
      | National        | MGA             |
      | National        | IPA             |
      | National        | PAT             |
      | National        | PHO             |
      | National        | SMG             |
      | National        | SPA             |
      | National        | SPG             |

