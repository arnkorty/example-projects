Given(/^I have blogs titled (.+)$/) do |titles|
  titles.split(', ').each do |title|
    Blog.create title: title
  end
    #pending # express the regexp above with the code you wish you had
end

When(/^I go to the blogs_path$/) do 
  visit blogs_path
    # pending # express the regexp above with the code you wish you had
end

When(/^I go to the new_blog_path$/) do 
  visit new_blog_path
    # pending # express the regexp above with the code you wish you had
end


Then(/^I should see "(.*?)"$/) do |arg1|
  @blog = Blog.find_by(title: arg1)

  assert page.has_content?(@blog.title) 
end


Then(/^I create blog (.+)$/) do |blog|
  fill_in "Title", with: blog.split(', ')[0]
  fill_in "Content", with: blog.split(', ')[1]
  click_button 'Create Blog'
    #pending # express the regexp above with the code you wish you had
end

Then(/^I see "(.*?)"$/) do |arg1|
    pending # express the regexp above with the code you wish you had
end
