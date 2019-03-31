class Assignment < ApplicationRecord
  belongs_to :course
  has_many :grades, :dependent => :destroy

  validates_length_of :assignment_name, :within => 1..50

  def full_assignment_name
    "#{course.course_name} - #{assignment_name}"
  end
end
