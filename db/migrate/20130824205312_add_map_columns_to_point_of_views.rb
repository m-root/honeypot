class AddMapColumnsToPointOfViews < ActiveRecord::Migration
  def change
    change_table :point_of_views do |t|
      t.float :latitude
      t.float :longitude
      t.boolean :gmaps
    end
  end
end
