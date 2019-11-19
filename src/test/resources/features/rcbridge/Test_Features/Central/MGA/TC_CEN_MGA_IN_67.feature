# Last updated on
@MGABusinessTestcases_IN
@releaseUnknown
@iterationUnknown
Feature: MGA Business Testcases_IN

  @TC_CEN_MGA_IN_67
  @Manual
  @User_Interface
  Scenario Outline: TC_CEN_MGA_IN_67- [RL0] Author <paperType> contract in <site>

    Given I am logged into Exari Dev as a valid user and go to the "<site>" site
    And I am using the "<TCName>" data from "<paperType>_CEN_IN.csv" of "<site>" and paper type "<paperType>"
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
    And I Start Workflow
    And I Start Process for Initial Transaction
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

    #Activate
    And I Set Status as Active


     #CMD Check
   #When I have entered the CMD dashboard URL
    #When I search for Contract
    #Then Validate Contract "<contract>" status and request type "<Contractstatus>"

    #NDB Check

    #Make a correction - Add a new TIN to the existing provider in the Roster.
    #When I am logged into Exari Dev
    #And I search Contract using Contract Number
    And I click Make Correction
    And I enter Market Exception Grid in Make Correction
    And I enter Market Exception Grid
    And I set Roster Action as Upload
    And I Download Current Roster
    And I Upload Completed Roster
    And I enter warning in Make Correction
    And I enter validation
    And I acknowledge the warning
    And I enter Group Summary
    Then I Complete Wizard

    #Final capture
    Examples:
      | site          | paperType     | TCName           |
      | central uhn   | MGA           | TC_CEN_MGA_IN_67 |