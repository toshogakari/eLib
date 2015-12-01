class CreateUserHasSkills < ActiveRecord::Migration
  def change
    create_table :user_has_skills do |t|
      t.references :user, index: true, foreign_key: true
      t.references :skill, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
