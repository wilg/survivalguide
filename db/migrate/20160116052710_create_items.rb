class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :location_name
      t.string :video_url
      t.string :image_url
      t.string :small_image_url
      t.integer :category_id
      t.timestamps null: false
    end
  end
end
