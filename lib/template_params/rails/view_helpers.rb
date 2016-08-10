require "template_params"

module TemplateParams
  module Rails
    module ViewHelpers
      def template_param(*args, &block)
        ::TemplateParams::Assertion.assert(*args, &block)
      end
    end
  end
end
