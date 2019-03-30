class CreateCourses < ActiveRecord::Migration[5.2]
  def change
    create_table :courses do |t|
      t.string :course_name, null: false
      t.string :semester, null: false
      t.integer :course_size, null: false
      t.string :location, null: false
      t.integer :professor_id, null: false

      t.timestamps
    end
  end
end
