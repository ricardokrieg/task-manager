class AddPriorityToTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :priority, :decimal, null: false
    add_index :tasks, :priority
  end
end
