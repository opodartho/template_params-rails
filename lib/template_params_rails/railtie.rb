require "template_params_rails/view_helpers"

module TemplateParamsRails
  class Railtie < Rails::Railtie
    initializer "template_params_rails.view_helpers" do
      ActionView::Base.send :include, ViewHelpers
    end
  end
end
