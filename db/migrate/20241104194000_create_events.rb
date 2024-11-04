class CreateEvents < ActiveRecord::Migration[7.2]
  def change
    create_table :events do |t|
      t.datetime :start
      t.integer :duration
      t.string :title
      t.text :description
      t.integer :price
      t.string :location

      t.references :admin, foreign_key: { to_table: :users }, index: true
      t.timestamps
    end
  end
end