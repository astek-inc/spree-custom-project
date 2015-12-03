class AddCustomProjectStatusIdColumnToCustomProjects < ActiveRecord::Migration
  def change
    add_column :custom_projects, :custom_project_status_id, :integer, :default => 1
    add_foreign_key :custom_projects, :custom_project_statuses
  end
end
