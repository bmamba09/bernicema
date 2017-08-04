class AddLifeInsightsToPhotos < ActiveRecord::Migration
  def change
  	add_column :photos, :commute, :boolean, :default => false
  	add_column :photos, :cooked, :boolean, :default => false
  	add_column :photos, :diningout, :boolean, :default => false
  	add_column :photos, :exercise, :boolean, :default => false
  	add_column :photos, :entertainment, :boolean, :default => false
  	add_column :photos, :family, :boolean, :default => false
  	add_column :photos, :friends, :boolean, :default => false
  	add_column :photos, :outdoors, :boolean, :default => false
  	add_column :photos, :sleptwell, :boolean, :default => false
  	add_column :photos, :spiritual, :boolean, :default => false
  	add_column :photos, :travel, :boolean, :default => false
  end
end
