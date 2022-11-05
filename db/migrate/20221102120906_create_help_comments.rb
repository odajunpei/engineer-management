class CreateHelpComments < ActiveRecord::Migration[6.1]
  def change
    create_table :help_comments do |t|
      t.text :comment
      t.integer :user_id
      t.integer :help_post_id

      t.timestamps
    end
  end
end
