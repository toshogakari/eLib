class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :isbn, limit: 13, null: false, default: 0
      t.string :title, limit: 255, null: false, default: ''
      t.text :description
      t.string :pc_image_url, limit: 512
      t.string :mb_image_url, limit: 512
      t.references :category, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
