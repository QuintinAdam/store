class CreateMetaTags < ActiveRecord::Migration
  def change
    create_table :meta_tags do |t|
      t.string   "tag_type"
      t.string   "name"
      t.string   "content"
      t.string   "page_lookup"

      t.timestamps null: false
    end
  end
end
