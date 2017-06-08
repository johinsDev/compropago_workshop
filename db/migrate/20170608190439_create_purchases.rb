class CreatePurchases < ActiveRecord::Migration[5.1]
  def change
    create_table :purchases do |t|
      t.string :email
      t.references :product, foreign_key: true
      t.string :compropago_id
      t.boolean :status
      t.string :store
      t.string :name

      t.timestamps
    end
  end
end
