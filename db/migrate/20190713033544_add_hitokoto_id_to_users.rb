class AddHitokotoIdToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :hitokoto, foreign_key: true
  end
end
