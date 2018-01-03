class Track < ApplicationRecord
  belongs_to :album, optional: true

  has_attached_file :song, :restricted_characters => /[&$+,\/:;=?@<>\[\]\{\}\|\\\^~%#]/, dependent: :destroy
  validates_attachment_presence :song
  validates_attachment_content_type :song, :content_type => [ 'audio/mpeg', 'audio/mp3' ]
  validates_attachment_size :song, :less_than => 20.megabytes

  def mp3
    song.url
  end

end
