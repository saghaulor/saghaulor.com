Feature: Blog
  In order to post to my blog and read its comments
  As a user of my blog
  I want to see th blog page of my app

  Scenario: Writing a blog post
    Given I am at /blog
    And I am logged in
    When I click the create post button
    Then I should see a content pane to write my post
    And I should see a pane to add tags to posts
