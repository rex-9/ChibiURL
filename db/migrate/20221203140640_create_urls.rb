class CreateUrls < ActiveRecord::Migration[7.0]
  def change
    create_table :urls do |t|
      t.text :original_url,    null: false
      t.string :chibi_url,     unique:  true
      t.integer :clicks,       default: 0
      t.boolean :public,       default: false
      t.references :user,      null: false, foreign_key: true

      t.timestamps
    end
  end
end
