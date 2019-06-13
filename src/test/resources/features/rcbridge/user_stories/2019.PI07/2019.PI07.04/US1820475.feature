# Last updated on 
@contract-metadata-api
@US1820475
@2019.PI07
@2019.PI07.04
@releasePresent
@iterationPast
Feature: US1820475 - [Continued] Market Product integration EDQ work (Exari) (QE) - Update CMD Tables

  @TC832658
  @Automated
  @Functional
  @contract-metadata-api
  Scenario Outline: TC832658 - [RL0] Validate product group responses
    Given a need get product-group information for pilot products
    When sending a request to validate the product group "<productGroup>"
    Then we receive a response back with details of that product
    Examples:
      | productGroup                          |
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

