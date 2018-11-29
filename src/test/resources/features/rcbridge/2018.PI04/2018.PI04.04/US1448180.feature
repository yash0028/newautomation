# Last updated on 
@US1448180
@2018.PI04
@2018.PI04.04
@MVP
@Madhur
@Priority_1
@CMD
@releasePast
@iterationPast
Feature: US1448180 - [Unfinished] [Continued] CMD - Create fallout-service REST endpoints for Contract Management Dashboard

  @TC649453
  @Manual
  @Functional
  Scenario Outline: TC649453 - [RL0]
    # Scenario Outline: query flag to load override
    When I send the transaction id "<tid>" to work object complete endpoint
    Then the work object is completed
    Examples:
      | tid                                  |
      | d971bf9e-5b9d-4497-8ca6-99aa0adec47d |

  @TC649454
  @Manual
  @Functional
  Scenario Outline: TC649454 - [RL1]
    # Scenario Outline: update work object item contract master
    When I send the following payload to update contract master work object
      | id                       | <id>                     |
      | selectedContractMaster   | <selectedContractMaster> |
      | usage                    | <usage>                  |
    Then the contract master is updated
    Examples:
      | id                     | selectedContractMaster | usage                  |
      | 1639                   | 1749076                | OVERRIDE_ALWAYS        |
      | 1639                   | 1641                   | OVERRIDE_ALWAYS        |

  @TC649455
  @Manual
  @Functional
  Scenario Outline: TC649455 - [RL2]
    # Scenario Outline: query product group list by transaction id
    When I send the transaction id "<tid>" to products group endpoint
    Then the response includes valid product groups
    Examples:
      | tid                                  |
      | d971bf9e-5b9d-4497-8ca6-99aa0adec47d |

  @TC649456
  @Manual
  @Functional
  Scenario Outline: TC649456 - [RL3]
    # Scenario Outline: update work object item ready
    When I send the following payload to update work object ready state
      | id    | <id>  |
      | ready | true  |
    Then the work object is ready
    Examples:
      | id   |
      | 1639 |

  @TC649457
  @Manual
  @Functional
  Scenario Outline: TC649457 - [RL4]
    # Scenario Outline: query work object item
    When I send the id "<id>" to the work object items endpoint
    Then the response includes valid contract data
    Examples:
      | id   |
      | 1639 |

  @TC649458
  @Manual
  @Functional
  Scenario Outline: TC649458 - [RL5]
    # Scenario Outline: rerun work object
    When I send the transaction id "<tid>" to load contract endpoint
    Then the contract is rerun
    Examples:
      | tid                                  |
      | d971bf9e-5b9d-4497-8ca6-99aa0adec47d |

  @TC649459
  @Manual
  @Functional
  Scenario: TC649459 - [RL6]
    # Scenario: query work object count
    When I send a request to the work object count endpoint
    Then the response includes the current count

  @TC649460
  @Manual
  @Functional
  Scenario Outline: TC649460 - [RL7]
    # Scenario Outline: query work object ready
    When I send the transaction id "<tid>" to the ready work object endpoint
    Then the response includes the ready status of the work object
    Examples:
      | tid                                  |
      | d971bf9e-5b9d-4497-8ca6-99aa0adec47d |

  @TC649461
  @Manual
  @Functional
  Scenario Outline: TC649461 - [RL8]
    # Scenario Outline: query work objects
    When I send the work object status "<status>" to the work object endpoint
    Then the response includes a number of transaction ids with the status of "<status>"
    Examples:
      | status          |
      | ACTION_REQUIRED |
      | RESOLVED        |
      | CANCELLED       |
      | READY           |

