class CreateTagHasBooks < ActiveRecord::Migration
  def change
    create_table :tag_has_books do |t|
      t.references :book, index: true, foreign_key: true
      t.references :tag, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
