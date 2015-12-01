class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name, limit: 45, null: false, default: ''

      t.timestamps null: false
    end
  end
end
