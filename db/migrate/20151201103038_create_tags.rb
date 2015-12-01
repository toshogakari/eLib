class CreateTags < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :name, limit: 45, null: false, default: ''

      t.timestamps null: false
    end
  end
end
