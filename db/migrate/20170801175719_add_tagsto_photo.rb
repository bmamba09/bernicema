class AddTagstoPhoto < ActiveRecord::Migration
  def change
  	add_column :photos, :tags, :string
  end
end
