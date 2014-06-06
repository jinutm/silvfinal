require 'generators/initjs/resource_helpers'

module Initjs
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      include Initjs::Generators::ResourceHelpers

      source_root File.expand_path('../templates', __FILE__)

      def inject_backbone
        inject_into_file "app/assets/javascripts/application.js", before: "//= require_tree" do
          "//= require #{application_name.underscore}/#{application_name.underscore}.js\n//= require init.js\n"
        end
      end

      def create_app_file
        template "app.coffee", "#{application_path}/#{application_name.underscore}.js.coffee"

        # Alerts
        puts "\n\nInclude the Initjs tag in your application layout (usually found at app/view/layouts/application.html.erb) after the body tag."
        puts "<%= initjs_tag '#{application_name}' %>"
      end
    end
  end
end
