class RemoveStartTimeFromPosts < ActiveRecord::Migration[6.0]
  def change
    remove_column :posts, :start_time, :time
  end
end
