module Spree
  class CustomProject < ActiveRecord::Base

    self.table_name = 'custom_projects'

    acts_as_paranoid

    belongs_to :custom_project_type
    belongs_to :custom_project_status

    default_scope { order(created_at: :desc) }

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
