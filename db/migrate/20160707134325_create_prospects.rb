class CreateProspects < ActiveRecord::Migration
  def change
    create_table :prospects do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.text :message

      t.timestamps null: false
    end
  end
end
