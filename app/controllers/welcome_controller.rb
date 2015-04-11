class WelcomeController < ApplicationController
  def index
    @items = Item.all.order(created_at: :desc).limit 12
  end
end
