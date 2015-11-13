module Spree
  class CustomProjectsController < Spree::StoreController

    def new
      @custom_project = Spree::CustomProject.new
      @custom_project_types = Spree::CustomProjectType.all
    end

    def create

      # Spree::BaseMailer.mail
      #   :from     => (SpreeContactUs.mailer_from || @contact.email),
      #   :reply_to => @contact.email,
      #   :subject  => (SpreeContactUs.require_subject ? @contact.subject : Spree.t(:subject, :email => @contact.email)),
      #   :to       => SpreeContactUs.mailer_to


      @custom_project = Spree::CustomProject.new(custom_project_params)
      if @custom_project.save

        # Email notification to info@designyourwall.com with a link to the custom project in the admin back end.


        redirect_to('/design-your-own', :notice => 'Your information was submitted successfully. You will hear from a representative soon.')
      else
        redirect_to('/design-your-own', :alert => 'An error occurred while attempting to send your message. Please try again.')
      end
    end

    private

      def custom_project_params
        params.require(:custom_project).permit(:contact_name, :contact_email, :confirm_email, :contact_phone, :custom_project_type_id, :image, :description, :agree_to_terms)
      end

  end
end
