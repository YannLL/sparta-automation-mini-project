require 'capybara/dsl'
require_relative './pages/amazon_homepage.rb'
# require_relative './pages/bbc_registration.rb'
# require_relative './pages/bbc_login.rb'
require_relative './helpers/temporary_email.rb'

class Amazon_Site

  def amazon_homepage
    Amazon_Homepage.new
  end

  def amazon_login
    Amazon_Login.new  
  end

  def amazon_search_results
    Amazon_Search_Resuls.new
  end

  def get_temp_email
    Temp_Email.new
  end

  def amazon_product
    Amazon_Product.new
  end
end

# amazon = Amazon_Site.new
# amazon_home = amazon.amazon_homepage
# bbc_homelogL
