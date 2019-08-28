# Last updated on 
@US2009523
@2019.PI09
@releaseFuture
@iterationUnknown
Feature: US2009523 - CMD Data Source Integration - MPM for Commercial NDB UNET Product identifiers

  @TC954880
  @Manual
  @Functional
  Scenario: TC954880 - [RL0]
    Given Payment Appendix properties available in UCM
    When Payment Appendix contains |"All Payer"|"Heritage"|"Signature"|"Navigate"|"Charter"|"Mid Atlantic"|"PCP OCI"|"Core"|"Nexus"|"Doctors Plan"|"UnitedHealthcare Core"|"Options PPO"|"Select Advantage"|"Additional Network"|"OneNet PPO"|"Workers' Compensation"|"Tiered Benefit" |"Oxford Freedom"|"Oxford Metro"|"Oxford Liberty"|"Compass"|"Indemnity"
    Then set$RequestParam == "TRUE"
    And set$ProductClass "Commercial"
    ###

