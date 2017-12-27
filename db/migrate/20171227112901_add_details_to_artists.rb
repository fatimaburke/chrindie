class AddDetailsToArtists < ActiveRecord::Migration[5.1]
  def change
    add_column :artists, :name, :string
    add_column :artists, :location, :string
    add_column :artists, :bio, :text
    add_column :artists, :website, :string
  end
end
