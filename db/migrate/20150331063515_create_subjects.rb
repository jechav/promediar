class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :name
      t.text :description
      t.integer :credits
      t.integer :id_program

      t.timestamps null: false
    end
  end
end
