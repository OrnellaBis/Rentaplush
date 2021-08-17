class CreatePlushes < ActiveRecord::Migration[6.0]
  def change
    create_table :plushes do |t|
      t.string :name
      t.string :category
      t.integer :price_per_day
      t.text :description
      t.string :localisation
      t.string :type_of_event
      t.string :type_of_fur
      t.boolean :cuddle_friendly
      t.boolean :kid_friendly
      t.integer :size
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
