class CreateCategoryQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :category_questions do |t|
      t.references :category, index: true, foreign_key: true
      t.references :question, index: true, foreign_key: true
      t.timestamps
    end
  end
end
