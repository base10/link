class CreateEntries < ActiveRecord::Migration[6.1]
  def change
    create_table :entries do |t|
      t.string :title
      t.text :url, null: false
      t.text :notes
      t.boolean :private, default: true
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end

    add_index :entries, [:user_id, :url], unique: true
  end
end
