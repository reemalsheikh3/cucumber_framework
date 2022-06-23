@Google
  #Each feature file must have a Feature name
  #To declare all scenarios in the feature file with a tag, we can put tag on the top of Feature
Feature: Google Search Functionality

  Background:
    Given user navigates to "https://www.google.com/"

  @Regression
  Scenario: Validate Google search
    When user searches for "Tesla" on google
    Then user should see "Tesla" in the url
    And user should see "Tesla" in the title

    @Smoke
  Scenario: Validate Google search results
    When user searches for "Apple" on google
    Then user should see results are more than 0


