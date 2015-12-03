module Spree
  class CustomProjectStatus < ActiveRecord::Base
    self.table_name = 'custom_project_statuses'
    has_many :custom_projects
    default_scope { order(sort_order: :asc) }
  end
end

