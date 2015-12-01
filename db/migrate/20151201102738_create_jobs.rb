class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name, limit: 255, null: false, default: ''

      t.timestamps null: false
    end
  end
end
