class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :user

  before_create :calculate_points

  def calculate_points
   points = 1 if  question.right_answer == name
   points = 0
  end
end
