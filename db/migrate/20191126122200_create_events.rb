class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.text :body
      t.integer :kind, null: false
      t.references :job, null: false, foreign_key: true

      t.timestamps
    end
  end
end
