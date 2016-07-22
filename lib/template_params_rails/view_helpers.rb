require "template_params"

module TemplateParamsRails
  module ViewHelpers
    def template_param(*args, &block)
      ::TemplateParams::Assertion.assert(*args, &block)
    end
  end
end
