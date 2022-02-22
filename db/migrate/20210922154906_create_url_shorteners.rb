class CreateUrlShorteners < ActiveRecord::Migration[6.1]
  def change
    create_table :url_shorteners do |t|
      t.text :url, presence: true, null: false
      t.string :shortened_url, presence: true, null: false
      t.integer :clicked, default: 0, null: false
      t.integer :status, default: 0
      t.integer :removed_characters, default: 0
      t.timestamps
    end
    add_index :url_shorteners, :shortened_url
  end
end
