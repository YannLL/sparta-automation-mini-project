# ou can implement step definitions for undefined steps with these snippets:

Given("I access the amazon UK home page using a temporary email") do
  @amazon = Amazon_Site.new
  @amazon.get_temp_email.visit_minute_inbox
  @amazon.get_temp_email.get_email
  @amazon.amazon_homepage.visit_home_page
  sleep 3
end

Given("I wish to register as a new user") do
  @email = @amazon.get_temp_email.return_email
  sleep 3
end

When("I click on the sign in link in the navbar") do
  @amazon.amazon_homepage.click_sign_in_link
end

Then("I should be directed to the authentication page") do
  expect(page).to have_field("email")
end

When("I enter the temporary email address in email input") do
  @amazon.get_temp_email.login_temp_email
end

Then("I should get an error message") do
  expect(@amazon.amazon_login.incorrect_email).to be true
end
