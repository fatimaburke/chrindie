class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.string :title
      t.string :genre
      t.integer :year
      t.string :artist

      t.timestamps
    end
  end
end
