class CreatePrices < ActiveRecord::Migration[7.0]
  def change
    create_table :prices do |t|
      t.string :tier
      t.float :amount
      t.text :description
      t.references :listing, null: false, foreign_key: true

      t.timestamps
    end
  end
end
