class AddDeletedAtColumnToCustomProjects < ActiveRecord::Migration
  def change
    add_column :custom_projects, :deleted_at, :timestamp
    add_index :custom_projects, :deleted_at
  end
end
