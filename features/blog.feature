Feature: Blog
  Scenario: Writing a blog post
    Given I am logged in
    When I click the create post button
    Then I should see a content pane to write my post
    And I should see a pane to add tags to posts
