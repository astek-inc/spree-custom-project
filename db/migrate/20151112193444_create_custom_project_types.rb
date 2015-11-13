class CreateCustomProjectTypes < ActiveRecord::Migration
  def change
    create_table :custom_project_types do |t|
      t.string :name
      t.timestamps null: false
    end
  end
end
