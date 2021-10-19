class ChangeDataTasksToEnd < ActiveRecord::Migration[5.2]
  def change
    change_column :tasks, :end, :datetime
  end
end
