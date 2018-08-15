class AddCategoryToSubscribers < ActiveRecord::Migration[5.2]
  def change
    add_reference :subscribers, :category, foreign_key: true
  end
end
