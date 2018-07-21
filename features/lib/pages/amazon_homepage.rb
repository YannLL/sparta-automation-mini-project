require 'capybara/dsl'

class Amazon_Homepage
  include Capybara::DSL

  HOMEPAGE_URL = 'http://www.amazon.co.uk'

  def visit_home_page
    visit(HOMEPAGE_URL)
    sleep 1


  end

end
