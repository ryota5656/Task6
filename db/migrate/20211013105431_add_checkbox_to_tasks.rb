class AddCheckboxToTasks < ActiveRecord::Migration[5.2]
  def change
    add_column :tasks, :checkbox, :boolean, default: false, null: false
  end
end
