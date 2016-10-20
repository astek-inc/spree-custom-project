module Spree
  class CustomProjectsController < Spree::StoreController

    def new
      current_store.seo_title = 'Custom Wallpaper'
      current_store.meta_description = 'Have the most unique wallpaper in your home or office with wall décor from one of DesignYourWall\'s featured designers!'

      @custom_project = Spree::CustomProject.new
      @custom_project_types = Spree::CustomProjectType.all
    end

    def create
      @custom_project = Spree::CustomProject.new(custom_project_params)
      if verify_recaptcha(model: @custom_project) && @custom_project.save
        Spree::CustomProjects::CustomProjectMailer.notification_email(@custom_project).deliver_later
        redirect_to('/design-your-own', :notice => 'Your information was submitted successfully. You will hear from a representative soon.')
      else
        @custom_project_types = Spree::CustomProjectType.all
        if @custom_project.errors.messages[:base].nil?
          flash[:error] = 'An error occurred while attempting to send your message. Please try again.'
        end
        render :new
      end
    end

    private

    def custom_project_params
      params.require(:custom_project).permit(:contact_name, :contact_email, :confirm_email, :contact_phone, :custom_project_type_id, :image, :description, :agree_to_terms)
    end

  end
end
