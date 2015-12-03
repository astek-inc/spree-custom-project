class CreateCustomProjectStatuses < ActiveRecord::Migration
  def change
    create_table :custom_project_statuses do |t|
      t.string :name
      t.integer :sort_order
      t.timestamps null: false
    end

    custom_project_statuses = [
        {:name => 'New', :sort_order => 1},
        {:name => 'Contacted', :sort_order => 2},
    ]

    custom_project_statuses.each do |item|
      Spree::CustomProjectStatus.create!(item)
    end
  end
end
