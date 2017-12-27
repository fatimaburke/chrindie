class AddAttachmentArtToAlbums < ActiveRecord::Migration[4.2]
  def self.up
    change_table :albums do |t|
      t.attachment :art
    end
  end

  def self.down
    remove_attachment :albums, :art
  end
end
