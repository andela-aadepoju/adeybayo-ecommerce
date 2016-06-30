class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.money :price
      t.references :user, index: true

      t.timestamps
    end
  end
end
