module SpreeCustomProject
  module Generators
    class InstallGenerator < Rails::Generators::Base

      class_option :auto_run_migrations, :type => :boolean, :default => false

      # def add_javascripts
      #   append_file 'vendor/assets/javascripts/spree/frontend/all.js', "//= require spree/frontend/spree_custom_project\n"
      #   append_file 'vendor/assets/javascripts/spree/backend/all.js', "//= require spree/backend/spree_custom_project\n"
      # end

      def add_stylesheets
        inject_into_file 'vendor/assets/stylesheets/spree/frontend/all.css', " *= require spree/frontend/spree_custom_project\n", :before => /\*\//, :verbose => true
      end

      def add_migrations
        run 'bundle exec rake railties:install:migrations FROM=spree_custom_project'
      end

      def run_migrations
        run_migrations = options[:auto_run_migrations] || ['', 'y', 'Y'].include?(ask 'Would you like to run the migrations now? [Y/n]')
        if run_migrations
          run 'bundle exec rake db:migrate'
        else
          puts 'Skipping rake db:migrate, don\'t forget to run it!'
        end
      end

      source_root File.expand_path('../../../templates', __FILE__)
      desc "Creates an initializer in your application's config/initializers dir"
      def copy_initializer
        template 'spree_custom_project.rb', 'config/initializers/spree_custom_project.rb'
      end
    end
  end
end
