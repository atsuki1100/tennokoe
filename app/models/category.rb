class Category < ApplicationRecord

  has_many :questions, dependent: :destroy
  # has_many :category_questions
  
end
