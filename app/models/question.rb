class Question < ApplicationRecord
  # acts_as_taggable_on :labels 
  # acts_as_taggable

  belongs_to :user
  has_many :answers, dependent: :destroy

  belongs_to :category
  # has_many :category_questions
end
