Feature: Blogs
  In order to make a blog
  I want to create and manage blogs
  Scenario: Blogs List
    Given I have blogs titled Ruby, Python
    When I go to the blogs_path
    Then I should see "Ruby"
    And I should see "Python"

  @javascript
  Scenario: Add Blog
    When I go to the new_blog_path
    Then I create blog Title, Content Value
    And I should see "Title"
