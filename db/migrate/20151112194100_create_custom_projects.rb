class CreateCustomProjects < ActiveRecord::Migration
  def change
    create_table :custom_projects do |t|
      t.string :contact_name
      t.string :contact_email
      t.string :contact_phone
      t.integer :custom_project_type_id
      t.text :description
      t.boolean :agree_to_terms
      t.timestamps null: false
      t.attachment :image
    end
    add_foreign_key :custom_projects, :custom_project_types
  end
end
