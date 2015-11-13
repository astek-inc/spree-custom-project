module Spree
  class CustomProject < ActiveRecord::Base
    self.table_name = 'custom_projects'
    belongs_to :custom_project_type
    attr_accessor :confirm_email
    has_attached_file :image, styles: {thumbnail: 'x200', original: '100%'}
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  end
end
