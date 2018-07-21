# ou can implement step definitions for undefined steps with these snippets:

Given("I access the amazon UK home page") do
  @amazon = Amazon_Site.new
  @amazon.amazon_homepage.visit_home_page
end

Given("I wish to register as a new user") do
  pending # Write code here that turns the phrase above into concrete actions

end

When("I click on the sign in link in the navbar") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I shoudl be directed to the authentication page") do
  pending # Write code here that turns the phrase above into concrete actions
end
