class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :artist
      t.string :image_url
      t.belongs_to :playlist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
