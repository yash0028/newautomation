# Last updated on 
@US1373396
@F232975
Feature: US1373396 - Change Layer7 Urls to Stage8/Prod8

  @TC605370
  @Manual
  @Functional
  @US1373396
  Scenario: TC605370 - [RL0]
    Given a layer7 url is needed,
    When it gets created,
    Then it is created in stage8 and migrated to prod8

