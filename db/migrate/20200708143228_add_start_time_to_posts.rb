class AddStartTimeToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :start_time, :time
  end
end
