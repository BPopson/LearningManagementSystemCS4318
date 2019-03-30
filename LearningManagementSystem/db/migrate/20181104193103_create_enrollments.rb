class CreateEnrollments < ActiveRecord::Migration[5.2]
  def change
    create_table :enrollments do |t|
      t.integer :student_id, null: false
      t.integer :course_id, null: false

      t.timestamps
    end
  end
end
