Given /^I am at \/blog$/ do
  get('/blog')
end

Given /^I am logged in$/ do
  @user.logged_in? == true
end

When /^I click the create post button$/ do
    pending # express the regexp above with the code you wish you had
end

Then /^I should see a content pane to write my post$/ do
    pending # express the regexp above with the code you wish you had
end

Then /^I should see a pane to add tags to posts$/ do
    pending # express the regexp above with the code you wish you had
end
