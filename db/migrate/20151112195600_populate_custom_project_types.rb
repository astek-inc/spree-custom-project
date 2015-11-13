class PopulateCustomProjectTypes < ActiveRecord::Migration
  def up
    initialize_table

    custom_project_types = [
      {:name => 'Wallpaper'},
      {:name => 'Wall Decal'},
      {:name => 'Mural'},
      {:name => 'Other'},
    ]

    custom_project_types.each do |item|
      Spree::CustomProjectType.create!(item)
    end
  end

  def down
    initialize_table
  end

  private

    def initialize_table
      remove_foreign_key :custom_projects, :custom_project_types
      ActiveRecord::Base.connection.execute('TRUNCATE TABLE custom_project_types')
      ActiveRecord::Base.connection.execute('ALTER SEQUENCE custom_project_types_id_seq RESTART WITH 1')
      add_foreign_key :custom_projects, :custom_project_types
    end
end
