#encoding: utf-8
@mr_porter
Feature: 

  @wip
  Scenario: Search for item on the mr porter site
    Given I navigate to the mr porter home page
    When I search for "fish" on the mr porter home page
    Then the search results are displayed on the search page
    And the search results are displayed on the search page contain the contain "fish"