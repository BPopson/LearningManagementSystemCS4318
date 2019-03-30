class CreateGrades < ActiveRecord::Migration[5.2]
  def change
    create_table :grades do |t|
      t.integer :assignment_id, null: false
      t.integer :student_id, null: false
      t.integer :grade, null: false

      t.timestamps
    end
  end
end
