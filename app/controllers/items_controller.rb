class ItemsController < ApplicationController

  def locations
    @location_name = params[:name]
    @items = Item.where(location_name: @location_name)
    @table_show_categories = true
  end

end
