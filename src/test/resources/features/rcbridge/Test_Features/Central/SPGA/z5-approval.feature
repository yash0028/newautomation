# Last updated on 
@US1407217
@releaseUnknown
@iterationUnknown
Feature: US1407217

  @TC624360
  @Manual
  @User_Interface
  Scenario Outline: <TCName> - [RL0] Author <paperType> contract in <site>
    Given I am logged into Exari Dev as a valid user and go to the "<site>" site
    And I am using the "<TCName>" data from "<paperType>_CEN_IN.csv" of "<site>" and paper type "<paperType>"
    And I enter PES Inputs
    And I enter PES Response
    And I select Market Number
    And I enter Request For Participation Response
    And I enter Document Selection
    And I preview Provider Details
    And I enter Practice Locations for SPGA Contract
    And I preview Provider Details
    And I enter Market Exception Grid
    And I enter Market Exception Grid
    And I enter Contract Details
    And I enter HBPs Red Door
    And I enter Market Strategy Grid
    And I enter Appendix 2
    And I enter Payment Appendix
    And I enter Additional Locations
    And I enter Regulatory Appendices
    And I select Provider Roster as None
    And I enter Amendments
    And I enter Group Summary
    Then I Complete Wizard
     #Final Capture - Provider Roster (Add one or more providers to the roster)
    And I Start Workflow
    And I Start Process for Initial Transaction
    #Approval
    And I Approve HBP Red Door
    And I Approve Payment Appendix

    And I Set Status as Final Pending QA
    And I Start Final Capture
    And I enter Contract Details in Final Capture
    And I enter Provider Signatory
    And I enter Our Signatory
    And I enter Market Exception Grid in Final Capture
    And I enter Market Exception Grid
    And I add provider using TIN
    And I select Providers
    And I enter retro code in Provider Roster
    And I acknowledge the warning
    And I enter Group Summary
    Then I Complete Wizard
    And I Set Status as Active
    ##Make Correction - Provider Roster (Add one or more providers to the roster)
#    And I click Make Correction
#    And I enter Market Exception Grid in Make Correction
#    And I enter Market Exception Grid
#    And I set Roster Action as Cancel
#    And I select provider and cancel date
#    And I enter cancel reason
#    And I acknowledge the warning
#    And I enter Group Summary
#    Then I Complete Wizard
    Examples:
      | site          | paperType     | TCName       |
      | central uhn   | SPGA          | approvaldemo |