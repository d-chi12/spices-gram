class ChangeCommentsColumns < ActiveRecord::Migration[6.0]
  def change
    remove_column :comments, :user, :references
    remove_column :comments, :recipe, :references
    remove_column :comments, :content, :string
  end
end
