require 'capybara/dsl'

class Amazon_Search_Resuls
  include Capybara::DSL


  def select_flux_cap
    click_link_or_button('Diamond Select Back To The Future: Flux Capacitor Replica Unlimited Edition')
  end

end
