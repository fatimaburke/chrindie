class CreateTracks < ActiveRecord::Migration[5.1]
  def change
    create_table :tracks do |t|
      t.string :title
      t.string :buy_link
      # t.attachment :track
      t.timestamps
    end
  end
end
