class CreateLeads < ActiveRecord::Migration[5.2]
  def change
    create_table :leads do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
