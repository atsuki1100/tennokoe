class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
      t.text :title, null: false
      t.text :body, null: false
      t.text :result, null: false

      t.timestamps
    end
  end
end
