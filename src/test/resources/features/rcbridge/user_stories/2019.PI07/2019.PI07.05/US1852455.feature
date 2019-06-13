# Last updated on 
@contract-metadata-api
@US1852455
@2019.PI07
@2019.PI07.05
@releasePresent
@iterationPresent
Feature: US1852455 - Exclude inactive Contract Product Description table records in API response (Optum)

  @TC848052
  @Automated
  @Functional
  @contract-metadata-api
  Scenario: TC848052 - [RL0]
    Given Exari provides valid Contract Product Descriptions:
      | Indemnity                             |
      | Medicare Advantage                    |
      | Ohio Medicaid                         |
      | Additional Network                    |
      | Commercial products requiring PCP     |
      | Commercial products NOT requiring PCP |
      | Medicare Advantage                    |
      | VA Medicaid                           |
      | VA CHIP                               |
      | VA Essential Plans                    |
      | UHCP Medicare Advantage               |
      | VA Medicaid LTSS                      |
      | OneNet PPO LLC workers compensation   |
    When sending a request to validate the product groups
    Then only matched records with a "productDescriptionStatus" of "A" are returned

