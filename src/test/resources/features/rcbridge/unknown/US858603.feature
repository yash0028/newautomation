# Last updated on 
@EXARI-11271
@US858603
@releaseUnknown
@iterationUnknown
Feature: US858603 - Follow Approval Process

  @TC565363
  @Automated
  @Functional
  @EXARI-11271
  Scenario: TC565363 - [RL0]
    Given I am a User with access to maintain Entity information
    When I make a change that requires approval
    Then the change flows through an approval process

