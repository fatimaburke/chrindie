Artist.create!([
  {email: "test2@test.com", encrypted_password: "$2a$11$Kg6L5f6gw140/5KZL64Eweas.kfz30.v1KVf.DvejUt5l3Qt5/2om", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 2, current_sign_in_at: "2018-01-03 04:05:16", last_sign_in_at: "2018-01-02 00:48:59", current_sign_in_ip: "127.0.0.1", last_sign_in_ip: "127.0.0.1", avatar_file_name: nil, avatar_content_type: nil, avatar_file_size: nil, avatar_updated_at: nil, name: "Gene Keys", location: "Philadelphia, PA", bio: "I love to touch the hearts of people through singing", website: "www.facebook.com/genekeyska", username: "geneburke"}
])
User.create!([
  {email: "test@test.com", encrypted_password: "$2a$11$lTYYJ0p2MFtFRnzqmSUVI.aSC57CCiRdzOt4TZGLJjRxZaMqyoJ/2", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 0, current_sign_in_at: nil, last_sign_in_at: nil, current_sign_in_ip: nil, last_sign_in_ip: nil, admin: false, avatar_file_name: nil, avatar_content_type: nil, avatar_file_size: nil, avatar_updated_at: nil, username: "fatimaburke", name: "Fatima Burke", location: "Philadelphia, PA", bio: "I'm a fan of Christian Music", website: "www.fatimaburke.com"}
])
Album.create!([
  {title: "Any Day Now", genre: "Traditional Gospel", year: 2000, artist: nil, artist_id: 1, art_file_name: "anydaynow.jpg", art_content_type: "image/jpeg", art_file_size: 32622, art_updated_at: "2018-01-02 00:49:23"}
])
Track.create!([
  {title: "Reliable God", buy_link: "buy link here", artist_id: nil, album_id: 1, song_file_name: "01 Reliable God.mp3", song_content_type: "audio/mp3", song_file_size: 7990473, song_updated_at: "2018-01-02 00:53:19"},
  {title: "Strong", buy_link: "buy link here", artist_id: nil, album_id: 1, song_file_name: "01_Stronger.mp3", song_content_type: "audio/mp3", song_file_size: 5630268, song_updated_at: "2018-01-02 19:47:28"},
  {title: "Better", buy_link: "link stuff", artist_id: nil, album_id: 1, song_file_name: "01 Jessica Reedy_Better-1.mp3", song_content_type: "audio/mp3", song_file_size: 6154493, song_updated_at: "2018-01-02 20:04:51"},
  {title: "Not My End", buy_link: "buy link here", artist_id: nil, album_id: 1, song_file_name: "04 01 Not My End.mp3", song_content_type: "audio/mp3", song_file_size: 5894209, song_updated_at: "2018-01-03 09:40:39"},
  {title: "Conqueror", buy_link: "link stuff", artist_id: nil, album_id: 1, song_file_name: "05 - Conqueror.mp3", song_content_type: "audio/mp3", song_file_size: 9262221, song_updated_at: "2018-01-03 09:44:04"},
  {title: "Don't Worry", buy_link: "yooooo2", artist_id: nil, album_id: 1, song_file_name: "Dont-Worry-RD.mp3", song_content_type: "audio/mp3", song_file_size: 4520146, song_updated_at: "2018-01-03 09:53:19"}
])
