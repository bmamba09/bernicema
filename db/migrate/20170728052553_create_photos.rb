class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :photo
      t.text :title
      t.text :description
      t.string :date

      t.timestamps null: false
    end
  end
end
