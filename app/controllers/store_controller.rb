class StoreController < ApplicationController
  def index
    @products = Product.order(:title) #select products from products order by title
  end
end
