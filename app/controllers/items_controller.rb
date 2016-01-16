class ItemsController < ApplicationController

  def locations
    @location_name = params[:name]
    @items = Item.where(location_name: @location_name)
  end

end
