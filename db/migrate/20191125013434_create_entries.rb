class CreateEntries < ActiveRecord::Migration[6.0]
  def change
    create_table :entries do |t|
      t.text :body, null: false
      t.string :author, null: false

      t.timestamps
    end
  end
end
