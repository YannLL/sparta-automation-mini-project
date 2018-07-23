require 'capybara/dsl'

class Amazon_Homepage
  include Capybara::DSL

  HOMEPAGE_URL = 'http://www.amazon.co.uk'
  ITEM = 'Flux Capacitor'
  SIGN_IN_LINK_ID = '#nav-link-yourAccount'

  def visit_home_page
    visit(HOMEPAGE_URL)
  end

  def search_item

    fill_in'twotabsearchtextbox', with: ITEM
    find('#twotabsearchtextbox').native.send_keys(:return)

    sleep 10

  end

  def click_sign_in_link
    find(SIGN_IN_LINK_ID).click
  end


end
