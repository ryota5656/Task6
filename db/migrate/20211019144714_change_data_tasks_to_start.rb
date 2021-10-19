class ChangeDataTasksToStart < ActiveRecord::Migration[5.2]
  def change
    change_column :tasks, :start, :datetime
  end
end
