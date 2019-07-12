class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.datetime :born_on
      t.text :occupation
      t.string :line1
      t.string :line2
      t.string :city
      t.string :state
      t.string :zip
      t.integer :primary_social
      t.integer :spouse_social
      t.string :spouse_name
      t.datetime :spouse_born_on
      t.string :spouse_occupation
      t.boolean :you_dependent
      t.boolean :support
      t.string :dependent1_name
      t.date :dependent1_born_on
      t.integer :dependent1_social
      t.string :dependent1_relationship
      t.integer :dependent1_home
      t.boolean :dependent1_disabled
      t.boolean :dependent1_student
      t.string :dependent2_name
      t.datetime :dependent2_born_on
      t.integer :dependent2_social
      t.string :dependent2_relationship
      t.integer :dependent2_home
      t.boolean :dependent2_disabled
      t.boolean :dependent2_student
      t.string :dependent3_name
      t.date :dependent3_born_on
      t.integer :dependent3_social
      t.string :dependent3_relationship
      t.integer :dependent3_home
      t.boolean :dependent3_disabled
      t.boolean :dependent3_student
      t.string :dependent4_name
      t.date :dependent4_born_on
      t.integer :dependent4_social
      t.string :dependent4_relationship
      t.integer :dependent4_home
      t.boolean :dependent4_disabled
      t.boolean :dependent4_student
      t.string :dependent5_name
      t.date :dependent5_born_on
      t.integer :dependent5_social
      t.string :dependent5_relationship
      t.integer :dependent5_home
      t.boolean :dependent5_disabled
      t.boolean :dependent5_student
      t.boolean :dependent1_support
      t.boolean :dependent2_support
      t.boolean :dependent3_support
      t.boolean :dependent4_support
      t.boolean :dependent5_support

      t.timestamps
    end
  end
end
