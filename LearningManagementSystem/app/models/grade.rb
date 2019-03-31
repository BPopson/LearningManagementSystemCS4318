class Grade < ApplicationRecord
  belongs_to :assignment
  belongs_to :student
  
  validates :grade, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 100 }
end
