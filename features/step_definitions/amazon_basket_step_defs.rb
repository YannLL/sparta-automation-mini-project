# You can implement step definitions for undefined steps with these snippets:

Given("I access the amazon UK home page") do
  @amazon = Amazon_Site.new
  @amazon.amazon_homepage.visit_home_page

end

Given("I search and find a Flux Capacitor") do
  @amazon.amazon_homepage.search_item
  @amazon.amazon_search_results.select_flux_cap
end

When("I click on Add to Basket") do

  
end

Then("The basket list should include the item") do
  pending # Write code here that turns the phrase above into concrete actions
end
