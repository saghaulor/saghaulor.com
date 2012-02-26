Feature: Visiting the site
  Scenario: An unauthenticated user visits the site
    Given I am an unauthenticated user
    When I visit the site
    Then I should see a link to the resume page
    And I should see a link to the blog page
    And I should see a link to the home page
    And I should see a dropdown to login
