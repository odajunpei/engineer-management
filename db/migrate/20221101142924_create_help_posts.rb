class CreateHelpPosts < ActiveRecord::Migration[6.1]
  def change
    create_table :help_posts do |t|
      t.text :title
      t.text :url
      t.string :image_id
      t.text :description
      t.integer :user_id
      t.timestamps
    end
  end
end
