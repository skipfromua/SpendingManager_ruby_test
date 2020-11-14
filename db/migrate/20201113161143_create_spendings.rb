class CreateSpendings < ActiveRecord::Migration[5.2]
  def change
    create_table :spendings do |t|
      t.string :description
      t.float :money
      t.references :list, foreign_key: true

      t.timestamps
    end
  end
end
