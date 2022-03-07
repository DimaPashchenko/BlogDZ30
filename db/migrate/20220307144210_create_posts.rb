class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.text :content

      #спец метод який создає 2 стовпця: created_at, updated_at
      t.timestamps
    end
  end
end
