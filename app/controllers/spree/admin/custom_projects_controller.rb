module Spree
  module Admin
    class CustomProjectsController < ResourceController

      before_action :get_custom_project_statuses

      private

      def get_custom_project_statuses
        @custom_project_statuses = Spree::CustomProjectStatus.all
      end

      def permitted_resource_params
        params.require(:custom_project).permit(:custom_project_status_id)
      end

    end
  end
end
