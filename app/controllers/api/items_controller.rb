class Api::ItemsController < ApplicationController
  protect_from_forgery with: :null_session

  def create
    #begin
      @item = Item.create permit_item_params
    #rescue
    #  render json: false.to_json, status: 500
    #end
  end

  def permit_item_params
    params.require(:item).permit :video
  end
end
