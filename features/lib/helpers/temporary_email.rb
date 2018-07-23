require 'capybara/dsl'

class Temp_Email
  include Capybara::DSL

  # attr_accessor :testvar

  # def initialize
  # end

  HOMEPAGE_URL = 'https://temp-mail.org/'
  EMAIL_TAG = '#mail'
  TESTVAR = 'sausage'
  @@testvar = 'unchanged value'



  def visit_minute_inbox
    visit(HOMEPAGE_URL)
    sleep 1

  end

  def get_email
    find(EMAIL_TAG).text
    @@testvar = find_by_id('mail').value
  end

  def return_email
    fill_in'twotabsearchtextbox', with: @@testvar
    # TESTVAR
    # fill_in'twotabsearchtextbox', with: @@testvar
  end

  def login_temp_email
    fill_in 'ap_email', with: @@testvar
    sleep 3
    find('#ap_email').native.send_keys(:return)
  end
end
