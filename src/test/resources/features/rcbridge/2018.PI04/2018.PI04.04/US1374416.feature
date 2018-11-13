# Last updated on 
@US1374416
@2018.PI04
@2018.PI04.04
@MVP
@Madhur
@Priority_1
@CMD
@releasePresent
@iterationPresent
Feature: US1374416 - [Continued] CMD - Create fallout-service REST endpoints for Contract Management Dashboard

  @TC636097
  @Manual
  @Functional
  Scenario: TC636097 - [RL6] query work object count
    # Scenario: query work object count
    When I send a request to the work object count endpoint
    Then the response includes the current count

  @TC636096
  @Manual
  @Functional
  Scenario Outline: TC636096 - [RL5] rerun work object <tid>
    # Scenario Outline: rerun work object
    When I send the transaction id "<tid>" to load contract endpoint
    Then the contract is rerun
    Examples:
      | tid                                  |
      | 01c37d87-0bd5-4a5c-9407-ddd11d9e7591 |

  @TC605561
  @Automated
  @Functional
  Scenario Outline: TC605561 - [RL0] query flag to load override <tid>
    # Scenario Outline: query flag to load override
    When I send the transaction id "<tid>" to work object complete endpoint
    Then the work object is completed
    Examples:
      | tid                                  |
      | 01c37d87-0bd5-4a5c-9407-ddd11d9e7591 |

  @TC636094
  @Manual
  @Functional
  Scenario Outline: TC636094 - [RL3] update work object item ready <id>
    # Scenario Outline: update work object item ready
    When I send the following payload to update work object ready state
      | id    | <id>  |
      | ready | true  |
    Then the work object is ready
    Examples:
      | id   |
      | asdf |

  @TC636093
  @Manual
  @Functional
  Scenario Outline: TC636093 - [RL2] query product group list by transaction id <tid>
    # Scenario Outline: query product group list by transaction id
    When I send the transaction id "<tid>" to products group endpoint
    Then the response includes valid product groups
    Examples:
      | tid                                  |
      | 01c37d87-0bd5-4a5c-9407-ddd11d9e7591 |

  @TC636091
  @Manual
  @Functional
  Scenario Outline: TC636091 - [RL1] update work object item contract master
    # Scenario Outline: update work object item contract master
    When I send the following payload to update contract master work object
      | contractMasterEffectiveDate   | <contractMasterEffectiveDate> |
      | contractMasterName            | asdf                          |
      | contractMasterNumber          | asdf                          |
      | contractSystem                | asdf                          |
      | id                            | 1234                          |
      | selectedContractMaster        | 1234                          |
      | usage                         | asdf                          |
    Then the contract master is updated
    Examples:
      | contractMasterEffectiveDate |
      | 10/10/2018                  |

  @TC636098
  @Automated
  @Functional
  Scenario Outline: TC636098 - [RL8] query work objects <status>
    # Scenario Outline: query work objects
    When I send the work object status "<status>" to the work object endpoint
    Then the response includes a number of transaction ids with the status of "<status>"
    Examples:
      | status          |
      | ACTION_REQUIRED |
      | RESOLVED        |
      | CANCELLED       |
      | READY           |

  @TC636095
  @Manual
  @Functional
  Scenario Outline: TC636095 - [RL4] query work object item <id>
    # Scenario Outline: query work object item
    When I send the id "<id>" to the work object items endpoint
    Then the response includes valid contract data
    Examples:
      | id   |
      | asdf |

