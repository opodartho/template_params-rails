require "template_params/rails/view_helpers"

module TemplateParams
  module Rails
    class Railtie < ::Rails::Railtie
      initializer "template_params-rails.view_helpers" do
        ActionView::Base.send :include, ViewHelpers
      end
    end
  end
end
