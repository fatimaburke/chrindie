class AddUsernameToArtists < ActiveRecord::Migration[5.1]
  def change
    add_column :artists, :username, :string
  end
end
