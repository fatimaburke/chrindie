class AddAttachmentTrackToAlbums < ActiveRecord::Migration[5.1]
  def self.up
    change_table :albums do |t|
      t.attachment :track
    end
  end

  def self.down
    drop_attached_file :albums, :track
  end
end
