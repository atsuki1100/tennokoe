class Question < ApplicationRecord
  # acts_as_taggable_on :labels 
  # acts_as_taggable

  belongs_to :user
  has_many :answers

  has_many :categorys, through: :category_questions
  has_many :category_questions
end
