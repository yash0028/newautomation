# Last updated on
@MGABusinessTestcases_OR
@releaseUnknown
@iterationUnknown
Feature: TC_WEST_MGA_OR_80
  @mga_west
  @cancel
  @leo
  @TC_WEST_MGA_OR_80
  @Manual
  @User_Interface
  @UAT_AUTO_WEST
  @UAT_AUTO
  Scenario Outline: TC_WEST_MGA_OR_80 - [RL0] Author <paperType> contract in <site>

    Given I am logged into Exari Dev as a valid user and go to the "<site>" site
    #Draft
    And I am using the "<TCName>" data from "<paperType>_WEST_OR.csv" of "<site>" and paper type "<paperType>"
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
    And I enter Additional Manuals in MGA
    And I enter Payment Appendix
    And I enter Regulatory Appendices
    And I select Provider Roster as None
    And I enter Group Summary
    Then I Complete Wizard
    #Final Capture - Provider Roster (Add one or more providers to the roster)
    And I Start Workflow
    And I Start Process for Initial Transaction
          #Approval
    And I Approve Payment Appendix
          #Final Capture Cont.
    And I Set Status as Final Pending QA
    And I Start Final Capture
    And I enter Contract Details in Final Capture
    And I enter Provider Signatory
    And I enter Our Signatory
    And I enter Market Exception Grid in Final Capture
    And I enter Market Exception Grid
    And I enter Clause Language
    And I add provider using TIN
    And I select Providers
    And I verify Providers
    And I acknowledge the warning
    And I enter Group Summary
    Then I Complete Wizard
    And I Set Status as Active
    #CMD Checking
    #NDB Checking
    #Make Correction - Provider Roster (Cancel one or more providers from the roster)
    And I click Make Correction
    And I enter Market Exception Grid in Make Correction
    And I enter Market Exception Grid
    And I set Roster Action as Cancel
    And I select provider and cancel date
    And I enter cancel reason
    And I acknowledge the warning
    And I enter Group Summary
    Then I Complete Wizard
    #Check CMD
    #Check NDB
    Examples:
      | site          | paperType     | TCName            |
      | west uhn      | MGA           | TC_WEST_MGA_OR_80 |
