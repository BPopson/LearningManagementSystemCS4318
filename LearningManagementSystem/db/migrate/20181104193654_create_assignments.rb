class CreateAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :assignments do |t|
      t.integer :course_id, null: false
      t.string :assignment_name, null: false
      t.integer :max_grade, null: false
      
      t.timestamps
    end
  end
end
