class CreateUrls < ActiveRecord::Migration[7.0]
  def change
    create_table :urls do |t|
      t.text :original_url,        null: false
      t.string :chibi_url,     unique:  true
      t.integer :clicks,   default: 0

      t.timestamps
    end
  end
end
