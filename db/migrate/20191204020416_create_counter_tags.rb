class CreateCounterTags < ActiveRecord::Migration[5.2]
  def change
    create_table :counter_tags do |t|
      t.integer :counter_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
