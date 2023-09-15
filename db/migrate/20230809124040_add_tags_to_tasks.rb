class AddTagsToTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :tasks, :tags, :string, array: true, default: []
  end
end
