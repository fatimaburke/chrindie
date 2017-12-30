class Track < ApplicationRecord
  belongs_to :album
  # necessary? vvv
  # belongs_to :artist

  # validates :artist_id, :title, presence:true

  has_attached_file :track, :restricted_characters => /[&$+,\/:;=?@<>\[\]\{\}\|\\\^~%#]/, dependent: :destroy
  validates_attachment_presence :track
  validates_attachment_content_type :track, :content_type => [ 'audio/mpeg', 'audio/mp3' ]
  validates_attachment_size :track, :less_than => 20.megabytes
end
