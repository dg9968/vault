class CreateTaxpayers < ActiveRecord::Migration[5.0]
  def change
    create_table :taxpayers do |t|
      t.text :content
      t.integer :user_id

      t.timestamps
    end

    add_index :taxpayers, [:user_id, :created_at]
  end
end
