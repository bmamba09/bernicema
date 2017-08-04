class ChangeDateColumnType < ActiveRecord::Migration
  def change
  	remove_column :photos, :date
  	add_column :photos, :date, :date
  end
end
