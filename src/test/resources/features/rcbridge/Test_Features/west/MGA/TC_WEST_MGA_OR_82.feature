# Last updated on
@MGABusinessTestcases_OR
@releaseUnknown
@iterationUnknown
Feature: TC_WEST_MGA_OR_82

  @TC_WEST_MGA_OR_82
  @Manual
  @User_Interface
  @UAT_AUTO_TESTING
  Scenario Outline: <TCName> - [RL0] Author <paperType> contract in <site>
    Given I am logged into Exari Dev as a valid user and go to the "<site>" site
    And I am using the "<TCName>" data from "<paperType>_WEST_OR.csv" of "<site>" and paper type "<paperType>"

  	#DRAFT
    And I enter PES Inputs
    And I enter PES Response
    And I select Market Number
    And I enter Request For Participation Response
    And I enter Document Selection
    And I preview Provider Details
    And I enter Practice Locations for MGA Contract
    And I preview Provider Details
    And I enter Market Exception Grid
    And I enter Market Exception Grid
    And I enter Contract Details
    And I enter Article Page
    And I enter Signature Block
    And I enter Additional Locations
    And I enter Market Strategy Grid
    And I enter Appendix 2
    And I enter Payment Appendix
    And I enter Regulatory Appendices
    And I select Provider Roster as None
    And I enter Group Summary
    Then I Complete Wizard

    #Final capture

    Examples:
          | site       | paperType     | TCName            |
          | west uhn   | MGA           | TC_WEST_MGA_OR_82 |
