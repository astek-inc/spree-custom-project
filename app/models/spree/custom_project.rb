module Spree
  class CustomProject < ActiveRecord::Base

    self.table_name = 'custom_projects'

    belongs_to :custom_project_type

    attr_accessor :confirm_email

    mattr_accessor :mail_to
    mattr_accessor :mail_from

    has_attached_file :image, styles: {thumbnail: 'x90', original: '100%'}
    validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

    def self.setup
      yield self
    end

  end
end
