class Enrollment < ApplicationRecord
  belongs_to :student
  belongs_to :course

  def enrollment_gpa
    grades_total = 0
    assignment_count = 0
    for assignment in course.assignments do
      grade = assignment.grades.find_by(student_id: student_id)
      if grade
        grades_total += grade.grade
      end

      assignment_count += 1
    end
    if assignment_count > 0
      return grades_total / assignment_count
    else
      return 'N/A'
    end
  end
end
