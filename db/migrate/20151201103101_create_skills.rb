class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name, limit: 45, null: false, default: ''

      t.timestamps null: false
    end
  end
end
