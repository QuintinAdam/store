class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :title
      t.string :category
      t.text :description

      t.timestamps null: false
    end
  end
end
