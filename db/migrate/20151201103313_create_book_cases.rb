class CreateBookCases < ActiveRecord::Migration
  def change
    create_table :book_cases do |t|
      t.column :evaluation, :tinyint, null: false, default: 0
      t.column :level, :tinyint, null: false, default: 0
      t.references :user, index: true, foreign_key: true
      t.references :book, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
