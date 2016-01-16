class ItemsController < ApplicationController

  def location
    @location_name = params[:name]
    @items = Item.where(location_name: @location_name)
    @table_show_categories = true
  end

  def locations
    @location_names = Item.uniq.pluck(:location_name)
  end

end
