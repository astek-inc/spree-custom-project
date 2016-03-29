class Spree::CustomProjects::CustomProjectMailer < Spree::BaseMailer
  def notification_email(custom_project)
    @custom_project = custom_project
    mail  :from => Spree::CustomProject.mail_from,
          :to => Spree::CustomProject.mail_to,
          :subject => 'New custom project',
          :reply_to => @custom_project.contact_email
  end
end
