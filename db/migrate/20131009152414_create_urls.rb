class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :original_link
      t.string :shortened_link
      t.integer :click_count

      t.timestamps
    end
  end
end
