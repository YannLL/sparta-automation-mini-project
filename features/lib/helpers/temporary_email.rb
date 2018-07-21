require 'capybara/dsl'

class Temp_Email
  include Capybara::DSL

  HOMEPAGE_URL = 'https://www.minuteinbox.com/'
  EMAIL_TAG = '#email'
  @testvar = 'test'

  def visit_minute_inbox
    visit(HOMEPAGE_URL)
    sleep 1
  end

  def get_email
    sleep 2
    # @testvar = find_by_id('email').text
    @testvar = find(:id,'email').text
    print EMAIL_TAG
  end

  def return_email
    fill_in'twotabsearchtextbox', with: @testvar
    sleep 3
  end
end
