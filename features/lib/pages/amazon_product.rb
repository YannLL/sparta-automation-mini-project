require 'capybara/dsl'

class Amazon_Product
  include Capybara::DSL

  @item_ref

  def add_to_basket
    find(:id,'add-to-cart-button').click
  end

  def save_item_ref
    @item_ref = find('#productTitle').text
  end
end
