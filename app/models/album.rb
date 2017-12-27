class Album < ApplicationRecord
  belongs_to :artist
  has_many :tracks, :dependent => :destroy

  has_attached_file :art, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
validates_attachment_content_type :art, content_type: /\Aimage\/.*\z/

has_attached_file :track, :restricted_characters => /[&$+,\/:;=?@<>\[\]\{\}\|\\\^~%#]/, dependent: :destroy
validates_attachment_presence :track
validates_attachment_content_type :track, :content_type => [ 'audio/mpeg', 'audio/mp3' ]
validates_attachment_size :track, :less_than => 20.megabytes
end
