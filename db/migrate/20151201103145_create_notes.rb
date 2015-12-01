class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.text :note, null: false, default: ''
      t.references :book_case, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
