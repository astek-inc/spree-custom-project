module Spree
  class CustomProjectType < ActiveRecord::Base
    self.table_name = 'custom_project_types'
    has_many :custom_projects
  end
end
