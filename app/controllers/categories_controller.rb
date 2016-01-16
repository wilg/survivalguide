class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def show
    @category = Category.find(params[:id])
    @items = @category.items.order(:name)
    @has_images = @items.any?{|i| i.small_image_url || i.image_url }
  end

end
