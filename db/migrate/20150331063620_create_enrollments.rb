class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.integer :id_user
      t.integer :id_subject
      t.integer :count

      t.timestamps null: false
    end
  end
end
