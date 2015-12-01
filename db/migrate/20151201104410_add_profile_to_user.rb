class AddProfileToUser < ActiveRecord::Migration
  def change
    change_table :users do |t|
      t.string :name, null: false, default: ''
      t.column :experience, :tinyint, null: false, default: 0
      t.text :profile
      t.references :job, index: true, foreign_key: true
    end
  end
end
