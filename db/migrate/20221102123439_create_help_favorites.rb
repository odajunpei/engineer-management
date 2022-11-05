class CreateHelpFavorites < ActiveRecord::Migration[6.1]
  def change
    create_table :help_favorites do |t|
      t.integer :user_id
      t.integer :help_post_id

      t.timestamps
    end
  end
end
