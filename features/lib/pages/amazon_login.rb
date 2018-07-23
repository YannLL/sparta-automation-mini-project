require 'capybara/dsl'

class Amazon_Login
  include Capybara::DSL

  LOGIN_URL = 'https://www.amazon.co.uk/ap/signin'

  def visit_login_page
    visit(LOGIN_URL)
  end


  def page_check
    page.has_xpath?('//*[@id="nav-link-yourAccount"]')
  end

  def incorrect_email
    sleep 3
    page.has_content?('We cannot find an account with that e-mail address')
  end

end
