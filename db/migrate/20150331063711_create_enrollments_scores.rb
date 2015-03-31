class CreateEnrollmentsScores < ActiveRecord::Migration
  def change
    create_table :enrollments_scores do |t|
      t.integer :id_enrollment
      t.integer :id_score

      t.timestamps null: false
    end
  end
end
