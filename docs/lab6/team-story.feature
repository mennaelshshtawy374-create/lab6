Feature: Submit a maintenance report
  As a reporter
  I want to submit a report with the required details
  So that the facilities team knows what needs repair

  Scenario: Submit a complete report successfully
    Given the reporter has entered a title, description, category, building and room
    When the reporter submits the report
    Then the report is saved with status "Submitted"

  Scenario: Refuse a report with a missing required field
    Given the reporter has entered a description, category, building and room but no title
    When the reporter submits the report
    Then the report is not saved
    And a clear required-field error is shown

  Scenario: Keep the selected building and room
    Given the reporter has entered a complete report for building "Engineering" and room "Lab 3"
    When the reporter submits the report
    Then the saved report shows building "Engineering" and room "Lab 3"
