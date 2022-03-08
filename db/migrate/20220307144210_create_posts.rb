class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.text :content
      t.text :author

      #спец метод який создає 2 стовпця: created_at, updated_at
      t.timestamps
    end
  end
end
